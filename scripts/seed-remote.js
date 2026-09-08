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
const supabaseKey = env.SUPABASE_SERVICE_ROLE_KEY || env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error("Missing Supabase environment variables");
  process.exit(1);
}

if (!env.SUPABASE_SERVICE_ROLE_KEY) {
  console.warn("Warning: SUPABASE_SERVICE_ROLE_KEY is not set; writes may fail under row-level security.");
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

    // Insert or update wards
    console.log("\nInserting wards...");
    for (const ward of wards) {
      try {
        const { data: existingWard, error: selectError } = await supabase
          .from("wards")
          .select("id")
          .eq("code", ward.code)
          .maybeSingle();

        if (selectError && selectError.code !== "PGRST116") {
          throw selectError;
        }

        if (existingWard) {
          const { error } = await supabase
            .from("wards")
            .update({ name: ward.name })
            .eq("id", existingWard.id);

          if (error) {
            console.error(`Error updating ward ${ward.code}:`, error);
          } else {
            console.log(`✓ Ward ${ward.code} updated`);
          }
        } else {
          const { error } = await supabase
            .from("wards")
            .insert({ code: ward.code, name: ward.name });

          if (error) {
            console.error(`Error inserting ward ${ward.code}:`, error);
          } else {
            console.log(`✓ Ward ${ward.code} inserted`);
          }
        }
      } catch (e) {
        console.error(`Exception inserting ward ${ward.code}:`, e);
      }
    }

    // Get ward IDs for linking polling units
    const { data: wardsWithIds } = await supabase.from("wards").select("id, code");
    const wardMap = new Map(wardsWithIds?.map((w) => [w.code, w.id]) || []);

    console.log(`Ward map has ${wardMap.size} entries`);

    // Insert or update polling units
    console.log("\nInserting polling units...");
    for (const unit of pollingUnits) {
      const wardId = wardMap.get(unit.wardCode);
      if (!wardId) {
        console.warn(`⚠ Ward ID not found for ward code ${unit.wardCode}, skipping polling unit ${unit.code}`);
        continue;
      }

      try {
        const { data: existingUnit, error: selectError } = await supabase
          .from("polling_units")
          .select("id")
          .eq("code", unit.code)
          .maybeSingle();

        if (selectError && selectError.code !== "PGRST116") {
          throw selectError;
        }

        if (existingUnit) {
          const { error } = await supabase
            .from("polling_units")
            .update({ ward_id: wardId, name: unit.name })
            .eq("id", existingUnit.id);

          if (error) {
            console.error(`Error updating polling unit ${unit.code}:`, error);
          } else {
            console.log(`✓ Polling unit ${unit.code} updated`);
          }
        } else {
          const { error } = await supabase
            .from("polling_units")
            .insert({ ward_id: wardId, name: unit.name, code: unit.code });

          if (error) {
            console.error(`Error inserting polling unit ${unit.code}:`, error);
          } else {
            console.log(`✓ Polling unit ${unit.code} inserted`);
          }
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
