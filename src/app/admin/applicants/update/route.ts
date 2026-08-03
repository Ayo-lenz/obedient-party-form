import { revalidatePath } from "next/cache";
import { NextRequest, NextResponse } from "next/server";
import { adminClient } from "@/lib/supabase/admin";

export async function POST(request: NextRequest) {
  const formData = await request.formData();
  const applicationId = String(formData.get("application_id") ?? "");
  const status = String(formData.get("status") ?? "pending");
  const redirectTo = String(formData.get("redirect_to") ?? "/admin/applicants");

  if (!applicationId) {
    return NextResponse.json({ error: "Missing application id" }, { status: 400 });
  }

  const supabase = adminClient;
  const { error } = await supabase.from("applications").update({ status }).eq("id", applicationId);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  revalidatePath("/admin");
  revalidatePath("/admin/applicants");
  revalidatePath(`/admin/applicants/${applicationId}`);

  return NextResponse.redirect(new URL(redirectTo, request.url));
}
