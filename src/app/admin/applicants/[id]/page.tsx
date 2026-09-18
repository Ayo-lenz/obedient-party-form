import Link from "next/link";
import { ArrowLeft, BadgeCheck, CheckCircle2, FileText, ShieldCheck, XCircle } from "lucide-react";
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

export default async function ApplicantDetailPage({ params }: { params: Promise<{ id: string }> }) {
  await requireAdmin();
  const { id } = await params;
  const supabase = adminClient;

  const { data: application } = await supabase
    .from("applications")
    .select("id, status, created_at, surname, first_name, other_names, phone, has_smartphone, ward_id, polling_unit_id, membership_card_url, passport_url")
    .eq("id", id)
    .single();

  if (!application) {
    return (
      <main className="min-h-screen bg-slate-50 px-6 py-16">
        <div className="mx-auto max-w-3xl rounded-[1.5rem] border border-slate-200 bg-white p-10 text-center shadow-sm">
          <p className="text-sm font-semibold uppercase tracking-[0.3em] text-amber-600">Not found</p>
          <h1 className="mt-3 text-2xl font-semibold text-slate-900">This application could not be found.</h1>
        </div>
      </main>
    );
  }

  const [{ data: ward }, { data: pollingUnit }] = await Promise.all([
    supabase.from("wards").select("name").eq("id", application.ward_id).single(),
    supabase.from("polling_units").select("name").eq("id", application.polling_unit_id).single(),
  ]);

  return (
    <main className="min-h-screen bg-[linear-gradient(135deg,_#fdfdfd_0%,_#f5f7ff_100%)] px-6 py-16 sm:px-8 lg:px-10">
      <div className="mx-auto max-w-6xl">
        <Link href="/admin/applicants" className="inline-flex items-center gap-2 rounded-full border border-slate-300 bg-white px-4 py-2 text-sm font-medium text-slate-700">
          <ArrowLeft className="h-4 w-4" />
          Back to applicants
        </Link>

        <div className="mt-6 grid gap-6 lg:grid-cols-[1.3fr_0.7fr]">
          <div className="rounded-[1.5rem] border border-slate-200 bg-white p-8 shadow-sm">
            <div className="flex flex-wrap items-center justify-between gap-3">
              <div>
                <p className="text-sm font-semibold uppercase tracking-[0.3em] text-amber-600">Applicant profile</p>
                <h1 className="mt-2 text-3xl font-semibold text-slate-900">{application.first_name} {application.surname}</h1>
              </div>
              <span className={`rounded-full px-3 py-1 text-sm font-medium uppercase ${statusClass(application.status)}`}>{application.status}</span>
            </div>

            <div className="mt-8 grid gap-4 sm:grid-cols-2">
              <div className="rounded-[1.1rem] border border-slate-200 bg-slate-50 p-4">
                <p className="text-sm text-slate-500">Phone</p>
                <p className="mt-2 font-semibold text-slate-900">{application.phone}</p>
              </div>
              <div className="rounded-[1.1rem] border border-slate-200 bg-slate-50 p-4">
                <p className="text-sm text-slate-500">Other names</p>
                <p className="mt-2 font-semibold text-slate-900">{application.other_names ?? "—"}</p>
              </div>
              <div className="rounded-[1.1rem] border border-slate-200 bg-slate-50 p-4">
                <p className="text-sm text-slate-500">Smartphone</p>
                <p className="mt-2 font-semibold text-slate-900">{application.has_smartphone ? "Yes" : "No"}</p>
              </div>
              <div className="rounded-[1.1rem] border border-slate-200 bg-slate-50 p-4">
                <p className="text-sm text-slate-500">Submitted</p>
                <p className="mt-2 font-semibold text-slate-900">{new Date(application.created_at).toLocaleString()}</p>
              </div>
            </div>

            <div className="mt-8 rounded-[1.1rem] border border-slate-200 bg-slate-50 p-5">
              <div className="flex items-center gap-2 text-slate-900">
                <FileText className="h-5 w-5 text-amber-600" />
                <h2 className="text-lg font-semibold">Ward and polling unit</h2>
              </div>
              <div className="mt-4 flex flex-wrap gap-3 text-sm text-slate-600">
                <div className="rounded-full border border-slate-200 bg-white px-3 py-2">Ward: {ward?.name ?? "—"}</div>
                <div className="rounded-full border border-slate-200 bg-white px-3 py-2">Polling unit: {pollingUnit?.name ?? "—"}</div>
              </div>
            </div>
          </div>

          <div className="space-y-6">
            <div className="rounded-[1.5rem] border border-slate-200 bg-white p-6 shadow-sm">
              <div className="flex items-center gap-2 text-slate-900">
                <BadgeCheck className="h-5 w-5 text-amber-600" />
                <h2 className="text-lg font-semibold">Review actions</h2>
              </div>
              <div className="mt-5 space-y-3">
                <form action="/admin/applicants/update" method="POST">
                  <input type="hidden" name="application_id" value={application.id} />
                  <input type="hidden" name="status" value="approved" />
                  <input type="hidden" name="redirect_to" value="/admin/applicants" />
                  <button className="flex w-full items-center justify-center gap-2 rounded-full border border-emerald-200 bg-emerald-50 px-4 py-3 text-sm font-semibold text-emerald-700">
                    <CheckCircle2 className="h-4 w-4" />
                    Approve application
                  </button>
                </form>
                <form action="/admin/applicants/update" method="POST">
                  <input type="hidden" name="application_id" value={application.id} />
                  <input type="hidden" name="status" value="rejected" />
                  <input type="hidden" name="redirect_to" value="/admin/applicants" />
                  <button className="flex w-full items-center justify-center gap-2 rounded-full border border-red-200 bg-red-50 px-4 py-3 text-sm font-semibold text-red-700">
                    <XCircle className="h-4 w-4" />
                    Reject application
                  </button>
                </form>
              </div>
            </div>

            <div className="rounded-[1.5rem] border border-slate-200 bg-white p-6 shadow-sm">
              <div className="flex items-center gap-2 text-slate-900">
                <ShieldCheck className="h-5 w-5 text-amber-600" />
                <h2 className="text-lg font-semibold">Documents</h2>
              </div>
              <div className="mt-4 space-y-3 text-sm text-slate-600">
                <a href={application.membership_card_url} target="_blank" rel="noreferrer" className="block rounded-full border border-slate-200 px-4 py-3 text-center font-medium text-slate-700">
                  View membership card
                </a>
                <a href={application.passport_url} target="_blank" rel="noreferrer" className="block rounded-full border border-slate-200 px-4 py-3 text-center font-medium text-slate-700">
                  View passport photo
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
