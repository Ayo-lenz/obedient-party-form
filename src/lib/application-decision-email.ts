export function buildApplicationDecisionEmail({
  status,
  applicantName,
  comment,
}: {
  status: "approved" | "rejected";
  applicantName: string;
  comment?: string;
}) {
  const cleanedComment = comment?.trim() || "We will be in touch with the next steps.";
  const decisionText =
    status === "approved"
      ? "Congratulations! Your application has been approved."
      : "We are sorry to inform you that your application has been rejected.";

  const text = [
    `Hello ${applicantName},`,
    "",
    decisionText,
    "",
    "Admin comment:",
    cleanedComment,
    "",
    "Thank you for your interest.",
    "",
    "Best regards,",
    "Party Form Team",
  ].join("\n");

  const html = `
    <div style="font-family: Arial, sans-serif; color: #0f172a; line-height: 1.6;">
      <h2 style="margin: 0 0 12px;">${status === "approved" ? "Application approved" : "Application rejected"}</h2>
      <p>Hello ${applicantName},</p>
      <p>${decisionText}</p>
      <p><strong>Admin comment:</strong> ${cleanedComment}</p>
      <p>Thank you for your interest.</p>
      <p>Best regards,<br />Party Form Team</p>
    </div>
  `;

  return {
    subject:
      status === "approved"
        ? "Your application has been approved"
        : "Your application has been rejected",
    text,
    html,
  };
}
