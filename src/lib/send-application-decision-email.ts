import nodemailer from "nodemailer";
import { buildApplicationDecisionEmail } from "@/lib/application-decision-email";

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

  const gmailUser = process.env.GMAIL_USER;
  const gmailPassword = process.env.GMAIL_APP_PASSWORD;

  if (!gmailUser || !gmailPassword) {
    console.warn("GMAIL_USER or GMAIL_APP_PASSWORD is not configured. Skipping email send.");
    return { success: false, skipped: true };
  }

  const email = buildApplicationDecisionEmail({ status, applicantName, comment });
  const transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
      user: gmailUser,
      pass: gmailPassword,
    },
  });

  const result = await transporter.sendMail({
    from: gmailUser,
    to,
    subject: email.subject,
    text: email.text,
    html: email.html,
  });

  return { success: true, id: result.messageId ?? null };
}
