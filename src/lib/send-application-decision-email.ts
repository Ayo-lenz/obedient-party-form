import { Resend } from "resend";
import { buildApplicationDecisionEmail } from "@/lib/application-decision-email";

const resend = new Resend(process.env.RESEND_API_KEY);

export async function sendApplicationDecisionEmail({
  to,
  applicantName,
  status,
  comment,
}: {
  to: string;
  applicantName: string;
  status: "approved" | "rejected";
  comment?: string;
}) {
  if (!to) {
    return { success: false, skipped: true };
  }

  if (!process.env.RESEND_API_KEY) {
    console.warn("RESEND_API_KEY is not configured. Skipping email send.");
    return { success: false, skipped: true };
  }

  const email = buildApplicationDecisionEmail({ status, applicantName, comment });

  const result = await resend.emails.send({
    from: process.env.RESEND_FROM_EMAIL || "onboarding@resend.dev",
    to,
    subject: email.subject,
    text: email.text,
    html: email.html,
  });

  if (result.error) {
    throw new Error(result.error.message);
  }

  return { success: true, id: result.data?.id ?? null };
}
