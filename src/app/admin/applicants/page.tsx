import Link from "next/link";
import { CheckCircle2, Download, Eye, Search, XCircle } from "lucide-react";
import { requireAdmin } from "@/lib/admin-auth";
import { adminClient } from "@/lib/supabase/admin";

function statusClass(status: string) {
  switch (status) {
    case "approved":
      return "bg-emerald-100 text-emerald-800";
    case "rejected":
      return "bg-rose-100 text-rose-800";
    default:
      return "bg-amber-100 text-amber-800";
  }
}

export default async function ApplicantsPage({ searchParams }: { searchParams?: Promise<{ q?: string; status?: string }> }) {
  await requireAdmin();
  const params = await searchParams;
  const q = params?.q ?? "";
  const status = params?.status ?? "all";

  const supabase = adminClient;
  let query = supabase.from("applications").select("id, status, surname, first_name, phone, created_at, ward_id, polling_unit_id").order("created_at", { ascending: false });

  if (q) {
    query = query.or(`surname.ilike.%${q}%,first_name.ilike.%${q}%,phone.ilike.%${q}%`);
  }

  if (status !== "all") {
    query = query.eq("status", status);
  }

  const [{ data: applications }, { count: pendingCount }, { count: approvedCount }, { count: rejectedCount }] = await Promise.all([
    query,
    supabase.from("applications").select("id", { count: "exact", head: true }).eq("status", "pending"),
    supabase.from("applications").select("id", { count: "exact", head: true }).eq("status", "approved"),
    supabase.from("applications").select("id", { count: "exact", head: true }).eq("status", "rejected"),
  ]);

  const applicationRows = (applications ?? []) as Array<{
    id: string;
    first_name: string;
    surname: string;
    phone: string;
    status: string;
    ward_id?: string | null;
    polling_unit_id?: string | null;
  }>;

  const wardIds = Array.from(new Set(applicationRows.map((application) => application.ward_id).filter((id): id is string => Boolean(id))));
  const pollingUnitIds = Array.from(new Set(applicationRows.map((application) => application.polling_unit_id).filter((id): id is string => Boolean(id))));

  const [{ data: wardsData }, { data: pollingUnitsData }] = await Promise.all([
    supabase.from("wards").select("id, name").in("id", wardIds),
    supabase.from("polling_units").select("id, name").in("id", pollingUnitIds),
  ]);

  const wardMap = new Map((wardsData ?? []).map((ward: { id: string; name: string }) => [ward.id, ward.name]));
  const pollingUnitMap = new Map((pollingUnitsData ?? []).map((unit: { id: string; name: string }) => [unit.id, unit.name]));

  return (
    <main className="min-h-screen bg-[linear-gradient(135deg,_#fdfdfd_0%,_#f5f7ff_100%)] px-6 py-16 sm:px-8 lg:px-10">
      <div className="mx-auto max-w-7xl">
        <div className="mb-8 flex flex-wrap items-center justify-between gap-4">
          <div>
            <p className="text-sm font-semibold uppercase tracking-[0.3em] text-amber-600">Applicants</p>
            <h1 className="mt-2 text-3xl font-semibold text-slate-900">Manage applications</h1>
          </div>
          <Link href="/admin" className="rounded-full border border-slate-300 bg-white px-5 py-3 font-medium text-slate-700">
            Back to dashboard
          </Link>
        </div>

        <div className="mb-6 flex flex-col gap-4 rounded-[1.4rem] border border-slate-200 bg-white p-4 shadow-sm md:flex-row md:items-center md:justify-between">
          <form className="flex flex-1 flex-wrap items-center gap-3" method="GET">
            <div className="flex min-w-[240px] flex-1 items-center gap-2 rounded-full border border-slate-300 px-4 py-3">
              <Search className="h-4 w-4 text-slate-500" />
              <input name="q" defaultValue={q} placeholder="Search by name or phone" className="w-full bg-transparent outline-none" />
            </div>
            <select name="status" defaultValue={status} className="rounded-full border border-slate-300 px-4 py-3 text-sm">
              <option value="all">All statuses</option>
              <option value="pending">Pending</option>
              <option value="approved">Approved</option>
              <option value="rejected">Rejected</option>
            </select>
            <button className="rounded-full bg-slate-900 px-4 py-3 text-sm font-medium text-white">Apply</button>
            <Link href="/admin/applicants" className="rounded-full border border-slate-300 px-4 py-3 text-sm font-medium text-slate-700">
              Reset
            </Link>
          </form>
          <Link href="/admin/applicants/export" className="inline-flex items-center gap-2 rounded-full border border-slate-300 px-4 py-3 text-sm font-medium text-slate-700">
            <Download className="h-4 w-4" />
            Export CSV
          </Link>
        </div>

        <div className="mb-6 grid gap-3 md:grid-cols-3">
          <div className="rounded-[1.1rem] border border-slate-200 bg-white p-4 shadow-sm">
            <p className="text-sm text-slate-500">Visible applicants</p>
            <p className="mt-2 text-2xl font-semibold text-slate-900">{applicationRows.length}</p>
          </div>
          <div className="rounded-[1.1rem] border border-slate-200 bg-white p-4 shadow-sm">
            <p className="text-sm text-slate-500">Pending review</p>
            <p className="mt-2 text-2xl font-semibold text-slate-900">{pendingCount ?? 0}</p>
          </div>
          <div className="rounded-[1.1rem] border border-slate-200 bg-white p-4 shadow-sm">
            <p className="text-sm text-slate-500">Approved / rejected</p>
            <p className="mt-2 text-2xl font-semibold text-slate-900">{(approvedCount ?? 0) + (rejectedCount ?? 0)}</p>
          </div>
        </div>

        <div className="overflow-hidden rounded-[1.5rem] border border-slate-200 bg-white shadow-sm">
          <table className="min-w-full divide-y divide-slate-200 text-sm">
            <thead className="bg-slate-50 text-left text-slate-600">
              <tr>
                <th className="px-4 py-3 font-medium">Applicant</th>
                <th className="px-4 py-3 font-medium">Phone</th>
                <th className="px-4 py-3 font-medium">Status</th>
                <th className="px-4 py-3 font-medium">Ward / PU</th>
                <th className="px-4 py-3 font-medium">Actions</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-200 bg-white">
              {applicationRows.map((application) => (
                <tr key={application.id}>
                  <td className="px-4 py-3 font-medium text-slate-900">{application.first_name} {application.surname}</td>
                  <td className="px-4 py-3 text-slate-600">{application.phone}</td>
                  <td className="px-4 py-3">
                    <span className={`rounded-full px-3 py-1 text-xs font-medium uppercase ${statusClass(application.status)}`}>{application.status}</span>
                  </td>
                  <td className="px-4 py-3 text-slate-600">{wardMap.get(application.ward_id ?? "") ?? "—"} / {pollingUnitMap.get(application.polling_unit_id ?? "") ?? "—"}</td>
                  <td className="px-4 py-3">
                    <div className="flex flex-wrap gap-2">
                      <Link href={`/admin/applicants/${application.id}`} className="inline-flex items-center gap-2 rounded-full border border-slate-200 px-3 py-2 text-sm font-medium text-slate-700">
                        <Eye className="h-4 w-4" />
                        View
                      </Link>
                      <form action="/admin/applicants/update" method="POST">
                        <input type="hidden" name="application_id" value={application.id} />
                        <input type="hidden" name="status" value="approved" />
                        <input type="hidden" name="redirect_to" value={`/admin/applicants?q=${q}&status=${status}`} />
                        <button className="inline-flex items-center gap-2 rounded-full border border-emerald-200 bg-emerald-50 px-3 py-2 text-sm font-medium text-emerald-700">
                          <CheckCircle2 className="h-4 w-4" />
                          Approve
                        </button>
                      </form>
                      <form action="/admin/applicants/update" method="POST">
                        <input type="hidden" name="application_id" value={application.id} />
                        <input type="hidden" name="status" value="rejected" />
                        <input type="hidden" name="redirect_to" value={`/admin/applicants?q=${q}&status=${status}`} />
                        <button className="inline-flex items-center gap-2 rounded-full border border-red-200 bg-red-50 px-3 py-2 text-sm font-medium text-red-700">
                          <XCircle className="h-4 w-4" />
                          Reject
                        </button>
                      </form>
                    </div>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    </main>
  );
}
