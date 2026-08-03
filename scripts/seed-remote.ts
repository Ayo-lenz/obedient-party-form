import { createClient } from "@supabase/supabase-js";
import fs from "fs";
import path from "path";

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

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
      const { error } = await supabase
        .from("wards")
        .upsert({ code: ward.code, name: ward.name }, { onConflict: "code" });

      if (error) {
        console.error(`Error inserting ward ${ward.code}:`, error);
      } else {
        console.log(`✓ Ward ${ward.code} inserted`);
      }
    }

    // Get ward IDs for linking polling units
    const { data: wardsWithIds } = await supabase.from("wards").select("id, code");
    const wardMap = new Map(wardsWithIds?.map((w) => [w.code, w.id]) || []);

    // Insert polling units
    console.log("\nInserting polling units...");
    for (const unit of pollingUnits) {
      const wardId = wardMap.get(unit.ward_code);
      if (!wardId) {
        console.warn(`⚠ Ward ID not found for ward code ${unit.ward_code}, skipping polling unit ${unit.code}`);
        continue;
      }

      const { error } = await supabase
        .from("polling_units")
        .upsert({ ward_id: wardId, name: unit.name, code: unit.code }, { onConflict: "code" });

      if (error) {
        console.error(`Error inserting polling unit ${unit.code}:`, error);
      } else {
        console.log(`✓ Polling unit ${unit.code} inserted`);
      }
    }

    console.log("\n✓ Seed completed successfully!");
  } catch (error) {
    console.error("Seed failed:", error);
    process.exit(1);
  }
}

runSeed();
