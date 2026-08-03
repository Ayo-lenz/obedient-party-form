import { createClient } from "@/lib/supabase/server";
import { adminClient } from "@/lib/supabase/admin";

export class ApplicationService {
  static async create(payload: {
    surname: string;
    first_name: string;
    other_names?: string | null;
    phone: string;
    has_smartphone: boolean;
    membership_card_url: string;
    passport_url: string;
    ward_id: string;
    polling_unit_id: string;
  }) {
    const { data, error } = await adminClient
      .from("applications")
      .insert(payload)
      .select()
      .single();

    if (error) {
      if (error.code === "23505") {
        throw new Error(
          "An application has already been submitted with this phone number.",
        );
      }

      throw error;
    }

    return data;
  }
}
