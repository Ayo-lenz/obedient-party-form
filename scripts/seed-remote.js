const { createClient } = require("@supabase/supabase-js");
const fs = require("fs");
const path = require("path");

// Load .env.local
const envPath = path.join(process.cwd(), ".env.local");
const envContent = fs.readFileSync(envPath, "utf-8");
const env = {};
envContent.split("\n").forEach((line) => {
  const [key, value] = line.split("=");
  if (key && value) {
    env[key.trim()] = value.trim();
  }
});

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error("Missing Supabase environment variables");
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function runSeed() {
  try {
    console.log("Loading seed data...");

    const wardsPath = path.join(process.cwd(), "data", "wards.json");
    const pollingUnitsPath = path.join(process.cwd(), "data", "polling-units.json");

    const wards = JSON.parse(fs.readFileSync(wardsPath, "utf-8"));
    const pollingUnits = JSON.parse(fs.readFileSync(pollingUnitsPath, "utf-8"));

    console.log(`Found ${wards.length} wards and ${pollingUnits.length} polling units`);

    // Insert wards
    console.log("\nInserting wards...");
    for (const ward of wards) {
      try {
        const { data, error } = await supabase
          .from("wards")
          .upsert({ code: ward.code, name: ward.name }, { onConflict: "code" });

        if (error) {
          console.error(`Error inserting ward ${ward.code}:`, error);
        } else {
          console.log(`✓ Ward ${ward.code} inserted`);
        }
      } catch (e) {
        console.error(`Exception inserting ward ${ward.code}:`, e);
      }
    }

    // Get ward IDs for linking polling units
    const { data: wardsWithIds } = await supabase.from("wards").select("id, code");
    const wardMap = new Map(wardsWithIds?.map((w) => [w.code, w.id]) || []);

    console.log(`Ward map has ${wardMap.size} entries`);

    // Insert polling units
    console.log("\nInserting polling units...");
    for (const unit of pollingUnits) {
      const wardId = wardMap.get(unit.wardCode); // Use wardCode, not ward_code
      if (!wardId) {
        console.warn(`⚠ Ward ID not found for ward code ${unit.ward_code}, skipping polling unit ${unit.code}`);
        continue;
      }

      try {
        const { data, error } = await supabase
          .from("polling_units")
          .upsert({ ward_id: wardId, name: unit.name, code: unit.code }, { onConflict: "code" });

        if (error) {
          console.error(`Error inserting polling unit ${unit.code}:`, error);
        } else {
          console.log(`✓ Polling unit ${unit.code} inserted`);
        }
      } catch (e) {
        console.error(`Exception inserting polling unit ${unit.code}:`, e);
      }
    }

    console.log("\n✓ Seed completed successfully!");
    process.exit(0);
  } catch (error) {
    console.error("Seed failed:", error);
    process.exit(1);
  }
}

runSeed();
