import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function GET() {
  const supabase = await createClient();
  const { data: applications } = await supabase
    .from("applications")
    .select(
      "id, status, surname, first_name, other_names, phone, home_address, review_comment, created_at"
    )
    .order("created_at", { ascending: false });

  const rows = (applications ?? []).map((application: {
    id: string;
    status: string;
    surname: string;
    first_name: string;
    other_names?: string | null;
    phone: string;
    home_address?: string | null;
    review_comment?: string | null;
    created_at: string;
  }) => [
    application.id,
    application.first_name,
    application.surname,
    application.other_names ?? "",
    // Format phone to start with 0: +234XXXXXXXXXX -> 0XXXXXXXXXX, 234XXXXXXXXXX -> 0XXXXXXXXXX
    (() => {
      const p = String(application.phone ?? "").trim();
      if (!p) return "";
      if (p.startsWith("+234")) return "0" + p.slice(4);
      if (p.startsWith("234")) return "0" + p.slice(3);
      if (p.startsWith("0")) return p;
      return p;
    })(),
    application.status,
    application.home_address ?? "",
    application.review_comment ?? "",
    new Date(application.created_at).toISOString(),
  ]);

  const csv = [
    [
      "id",
      "first_name",
      "surname",
      "other_names",
      "phone",
      "status",
      "home_address",
      "review_comment",
      "created_at",
    ].join(","),
    ...rows.map((row) => row.map((value) => `"${String(value).replaceAll('"', '""')}"`).join(",")),
  ].join("\n");

  return new NextResponse(csv, {
    status: 200,
    headers: {
      "Content-Type": "text/csv; charset=utf-8",
      "Content-Disposition": `attachment; filename="applications-${Date.now()}.csv"`,
    },
  });
}
