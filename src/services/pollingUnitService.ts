import { createClient } from "@/lib/supabase/server";

type WardRow = {
  id: string;
  code: string;
};

type PollingUnitRow = {
  id: string;
  code: string;
  name: string;
  ward_id: string;
};

export class PollingUnitService {
  static async getAll() {
    const supabase = await createClient();

    // Load all wards
    const { data: wards, error: wardError } = await supabase
      .from("wards")
      .select("id, code");

    if (wardError) {
      throw wardError;
    }

    // Create ward lookup map
    const wardMap = new Map<string, string>();

    (wards as WardRow[]).forEach((ward) => {
      wardMap.set(ward.id, ward.code);
    });

    // Load polling units
    const { data: pollingUnits, error } = await supabase
      .from("polling_units")
      .select("id, code, name, ward_id")
      .order("name");

    if (error) {
      throw error;
    }

    return ((pollingUnits ?? []) as PollingUnitRow[]).map((unit) => ({
      code: unit.code,
      name: unit.name,
      ward_id: unit.ward_id,
      wardCode: wardMap.get(unit.ward_id) ?? "",
    }));
  }

  static async getByWard(wardId: string) {
    const supabase = await createClient();

    const { data: ward } = await supabase
      .from("wards")
      .select("code")
      .eq("id", wardId)
      .single();

    const { data: pollingUnits, error } = await supabase
      .from("polling_units")
      .select("id, code, name, ward_id")
      .eq("ward_id", wardId)
      .order("name");

    if (error) {
      throw error;
    }

    return ((pollingUnits ?? []) as PollingUnitRow[]).map((unit) => ({
      code: unit.code,
      name: unit.name,
      ward_id: unit.ward_id,
      wardCode: ward?.code ?? "",
    }));
  }
}