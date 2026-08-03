from pathlib import Path
import json
import re

source = Path(r"C:\Users\USER\Downloads\Pasted text(2).txt")
text = source.read_text(encoding="utf-8")
lines = [line.rstrip("\n") for line in text.splitlines()]

section_pattern = re.compile(r"^(\d{2}-\d{2}-\d{2})\s*\((.+)\)\s*$")
unit_code_pattern = re.compile(r"^\d{2}-\d{2}-\d{2}-\d{3}$")

wards = []
ward_names = {}
polling_units = []

idx = 0
while idx < len(lines):
    raw = lines[idx].strip()
    heading_match = section_pattern.match(raw)
    if heading_match:
        ward_code = heading_match.group(1)
        ward_name = heading_match.group(2).strip()
        idx += 1
        section_lines = []
        while idx < len(lines):
            candidate = lines[idx].strip()
            if section_pattern.match(candidate):
                break
            section_lines.append(candidate)
            idx += 1

        parsed_units = []
        i = 0
        while i < len(section_lines):
            line = section_lines[i]
            if not line:
                i += 1
                continue
            if line.startswith("Polling Unit Delimeter") or line.startswith("Polling Unit Name") or line.startswith("Remark"):
                i += 1
                continue
            if re.match(r"^\d+\s+Polling units found$", line):
                i += 1
                continue
            if unit_code_pattern.match(line):
                if i + 1 < len(section_lines):
                    name = section_lines[i + 1].strip()
                    if name and not name.upper().startswith("EXISTING PU") and not name.upper().startswith("NEW PU"):
                        parsed_units.append((line, name))
                    i += 2
                    continue
            i += 1

        if parsed_units:
            if ward_code not in ward_names:
                ward_names[ward_code] = ward_name
                wards.append({"code": ward_code, "name": ward_name})
            for code, name in parsed_units:
                polling_units.append({"wardCode": ward_code, "code": code, "name": name})
        continue
    idx += 1

wards = sorted(wards, key=lambda item: item["code"])
polling_units = sorted(polling_units, key=lambda item: (item["wardCode"], item["code"]))

root = Path(__file__).resolve().parent.parent
(root / "data").mkdir(exist_ok=True)
(root / "data" / "wards.json").write_text(json.dumps(wards, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
(root / "data" / "polling-units.json").write_text(json.dumps(polling_units, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

seed_lines = ["-- Seed wards and polling units from uploaded polling unit data", ""]
for ward in wards:
    ward_code = ward["code"]
    ward_name = ward["name"].replace("'", "''")
    seed_lines.extend([
        f"INSERT INTO public.wards (code, name)",
        f"SELECT '{ward_code}', '{ward_name}'",
        f"WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '{ward_code}');",
        "",
    ])

for unit in polling_units:
    unit_code = unit["code"]
    unit_name = unit["name"].replace("'", "''")
    ward_code = unit["wardCode"]
    seed_lines.extend([
        "INSERT INTO public.polling_units (ward_id, name, code)",
        f"SELECT w.id, '{unit_name}', '{unit_code}'",
        "FROM public.wards w",
        f"WHERE w.code = '{ward_code}'",
        f"AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '{unit_code}');",
        "",
    ])

(root / "supabase" / "seed.sql").write_text("\n".join(seed_lines), encoding="utf-8")

print(f"Generated {len(wards)} wards and {len(polling_units)} polling units")
print("Files written to data/wards.json, data/polling-units.json, and supabase/seed.sql")
