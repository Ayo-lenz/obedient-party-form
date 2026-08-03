import { NextResponse } from "next/server";
import { adminClient } from "@/lib/supabase/admin";

export async function GET() {
  const supabase = adminClient;
  const { data: applications } = await supabase
    .from("applications")
    .select("id, status, surname, first_name, other_names, phone, created_at")
    .order("created_at", { ascending: false });

  const rows = (applications ?? []).map((application: {
    id: string;
    status: string;
    surname: string;
    first_name: string;
    other_names?: string | null;
    phone: string;
    created_at: string;
  }) => [
    application.id,
    application.first_name,
    application.surname,
    application.other_names ?? "",
    application.phone,
    application.status,
    new Date(application.created_at).toISOString(),
  ]);

  const csv = [
    ["id", "first_name", "surname", "other_names", "phone", "status", "created_at"].join(","),
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
