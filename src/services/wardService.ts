import { createClient } from "@/lib/supabase/server";

export class WardService {
  static async getAll() {
    const supabase = await createClient();
    const { data, error } = await supabase.from("wards").select("*").order("name");

    if (error) {
      throw error;
    }

    return data ?? [];
  }
}
