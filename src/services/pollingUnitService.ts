import { createClient } from "@/lib/supabase/server";

export class PollingUnitService {
  static async getAll() {
    const supabase = await createClient();

    const { data, error } = await supabase
      .from("polling_units")
      .select("id, code, name, ward_id, wards(code)")
      .order("name");

    if (error) {
      throw error;
    }

    return (data ?? []).map((unit) => ({
      code: unit.code,
      name: unit.name,
      wardCode: Array.isArray(unit.wards)
        ? unit.wards[0]?.code ?? ""
        : "",
      ward_id: unit.ward_id,
    }));
  }

  static async getByWard(wardId: string) {
    const supabase = await createClient();

    const { data, error } = await supabase
      .from("polling_units")
      .select("id, code, name, ward_id, wards(code)")
      .eq("ward_id", wardId)
      .order("name");

    if (error) {
      throw error;
    }

    return (data ?? []).map((unit) => ({
      code: unit.code,
      name: unit.name,
      wardCode: Array.isArray(unit.wards)
        ? unit.wards[0]?.code ?? ""
        : "",
      ward_id: unit.ward_id,
    }));
  }
}