import { revalidatePath } from "next/cache";
import { NextRequest, NextResponse } from "next/server";
import { adminClient } from "@/lib/supabase/admin";
import { sendApplicationDecisionEmail } from "@/lib/send-application-decision-email";

export async function POST(request: NextRequest) {
  const formData = await request.formData();
  const applicationId = String(formData.get("application_id") ?? "");
  const status = String(formData.get("status") ?? "pending");
  const redirectTo = String(formData.get("redirect_to") ?? "/admin/applicants");
  const comment = String(formData.get("comment") ?? "").trim();

  if (!applicationId) {
    return NextResponse.json({ error: "Missing application id" }, { status: 400 });
  }

  const supabase = adminClient;
  const { data: existingApplication, error: fetchError } = await supabase
    .from("applications")
    .select("email, first_name, surname, status")
    .eq("id", applicationId)
    .single();

  if (fetchError) {
    return NextResponse.json({ error: fetchError.message }, { status: 500 });
  }

  const updatePayload: { status: string; review_comment?: string } = { status };
  if (comment) {
    updatePayload.review_comment = comment;
  }

  const { error } = await supabase.from("applications").update(updatePayload).eq("id", applicationId);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  if (status === "approved" || status === "rejected") {
    const applicantName = [existingApplication?.first_name, existingApplication?.surname].filter(Boolean).join(" ") || "Applicant";

    try {
      await sendApplicationDecisionEmail({
        to: existingApplication?.email ?? "",
        applicantName,
        status,
        comment,
      });
    } catch (emailError) {
      console.error("Application decision email failed:", emailError);
    }
  }

  revalidatePath("/admin");
  revalidatePath("/admin/applicants");
  revalidatePath(`/admin/applicants/${applicationId}`);

  return NextResponse.redirect(new URL(redirectTo, request.url));
}
