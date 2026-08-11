"use server";

import { redirect } from "next/navigation";
import { z } from "zod";
import { createClient } from "@/lib/supabase/server";
import { ApplicationService } from "@/services/applicationService";
import { StorageService } from "@/services/storageService";

const schema = z.object({
  surname: z.string().min(1),
  first_name: z.string().min(1),
  other_names: z.string().optional(),
  phone: z.string().regex(/^(\+234|234|0)\d{10}$/),
  has_smartphone: z.enum(["yes", "no"]),
  ward_code: z.string().min(1),
  polling_unit_code: z.string().min(1),
  email: z.string().min(1, "Email is required").email("Enter a valid email address"),
  membership_card: z.custom<File>((value) => value instanceof File && value.size > 0),
  passport: z.custom<File>((value) => value instanceof File && value.size > 0),
});

export async function submitApplication(formData: FormData) {
  const values = {
    surname: String(formData.get("surname") ?? ""),
    first_name: String(formData.get("first_name") ?? ""),
    other_names: String(formData.get("other_names") ?? ""),
    email: String(formData.get("email") ?? ""),
    phone: String(formData.get("phone") ?? ""),
    has_smartphone: String(formData.get("has_smartphone") ?? "yes"),
    ward_code: String(formData.get("ward_code") ?? ""),
    polling_unit_code: String(formData.get("polling_unit_code") ?? ""),
    membership_card: formData.get("membership_card"),
    passport: formData.get("passport"),
  };

  const parsed = schema.safeParse(values);
  if (!parsed.success) {
    return { success: false, message: parsed.error.issues[0]?.message ?? "Please complete the form correctly." };
  }

  const reference = `PARTY-${Date.now().toString().slice(-6)}`;
  const membershipCardFile = parsed.data.membership_card as File;
  const passportFile = parsed.data.passport as File;

  const [membershipCardUrl, passportUrl] = await Promise.all([
    StorageService.upload(membershipCardFile, "membership-cards", `applications/${reference}/membership-card-${Date.now()}-${membershipCardFile.name}`),
    StorageService.upload(passportFile, "passport-photos", `applications/${reference}/passport-${Date.now()}-${passportFile.name}`),
  ]);

  const supabase = await createClient();
  const { data: wardData, error: wardError } = await supabase
    .from("wards")
    .select("id")
    .eq("code", parsed.data.ward_code)
    .single();

  if (wardError || !wardData) {
    return { success: false, message: "The selected ward could not be found." };
  }

  const { data: pollingUnitData, error: pollingUnitError } = await supabase
    .from("polling_units")
    .select("id")
    .eq("code", parsed.data.polling_unit_code)
    .single();

  if (pollingUnitError || !pollingUnitData) {
    return { success: false, message: "The selected polling unit could not be found." };
  }

  await ApplicationService.create({
    surname: parsed.data.surname,
    first_name: parsed.data.first_name,
    other_names: parsed.data.other_names || null,
    phone: parsed.data.phone,
    has_smartphone: parsed.data.has_smartphone === "yes",
    membership_card_url: membershipCardUrl,
    passport_url: passportUrl,
    ward_id: wardData.id,
    polling_unit_id: pollingUnitData.id,
    email: parsed.data.email
  });

  redirect(`/success?reference=${reference}`);
}
