import { createClient } from "@/lib/supabase/server";

export default async function TestPage() {
  const supabase = await createClient();

  const { data, error } = await supabase
    .from("polling_units")
    .select("id, code, name, ward_id, wards(code)");

  return (
    <pre>{JSON.stringify({ data, error }, null, 2)}</pre>
  );
}