import Link from "next/link";
import {
  Award,
  BadgeCheck,
  Eye,
  Search,
  ShieldCheck,
  Sparkles,
  Users,
} from "lucide-react";
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

export default async function AdminDashboardPage() {
  await requireAdmin();
  const supabase = adminClient;

  const { data: applications, error } = await supabase
    .from("applications")
    .select("*")
    .order("created_at", { ascending: false });

  console.log("Applications:", applications);
  console.log("Error:", error);

  const { count: pendingCount } = await supabase
    .from("applications")
    .select("*", { count: "exact", head: true })
    .eq("status", "pending");

  const { count: approvedCount } = await supabase
    .from("applications")
    .select("*", { count: "exact", head: true })
    .eq("status", "approved");

  const { count: rejectedCount } = await supabase
    .from("applications")
    .select("*", { count: "exact", head: true })
    .eq("status", "rejected");

  const totalApplicants = applications?.length ?? 0;
  const stats = [
    { label: "Total applicants", value: totalApplicants, icon: Users },
    { label: "Pending", value: pendingCount ?? 0, icon: Search },
    { label: "Approved", value: approvedCount ?? 0, icon: BadgeCheck },
    { label: "Rejected", value: rejectedCount ?? 0, icon: ShieldCheck },
  ];

  return (
    <main className="min-h-screen bg-[linear-gradient(135deg,_#fdfdfd_0%,_#f5f7ff_100%)] px-6 py-16 sm:px-8 lg:px-10">
      <div className="mx-auto max-w-7xl">
        <div className="mb-8 overflow-hidden rounded-[2rem] border border-slate-200 bg-white shadow-sm">
          <div className="flex flex-col gap-6 bg-gradient-to-r from-slate-900 via-slate-800 to-slate-700 p-8 text-white lg:flex-row lg:items-end lg:justify-between">
            <div>
              <p className="text-sm font-semibold uppercase tracking-[0.3em] text-amber-400">
                Admin dashboard
              </p>
              <h1 className="mt-3 text-3xl font-semibold">
                Applicants overview
              </h1>
              <p className="mt-3 max-w-2xl text-sm text-slate-300">
                Review submissions, move applications through the pipeline, and
                keep the campaign team aligned with a clear snapshot of
                progress.
              </p>
            </div>
            <div className="flex flex-wrap gap-3">
              <Link
                href="/admin/applicants"
                className="rounded-full bg-white px-5 py-3 font-medium text-slate-900"
              >
                Review applicants
              </Link>
              <Link
                href="/admin/applicants/export"
                className="rounded-full border border-white/30 px-5 py-3 font-medium text-white"
              >
                Export CSV
              </Link>
            </div>
          </div>
        </div>

        <div className="grid gap-4 md:grid-cols-4">
          {stats.map((stat) => {
            const Icon = stat.icon;
            return (
              <div
                key={stat.label}
                className="rounded-[1.25rem] border border-slate-200 bg-white p-5 shadow-sm"
              >
                <div className="flex items-center justify-between">
                  <p className="text-sm text-slate-600">{stat.label}</p>
                  <Icon className="h-5 w-5 text-amber-600" />
                </div>
                <p className="mt-4 text-3xl font-semibold text-slate-900">
                  {stat.value}
                </p>
              </div>
            );
          })}
        </div>

        <div className="mt-8 rounded-[1.5rem] border border-slate-200 bg-white p-6 shadow-sm">
          <div className="flex flex-wrap items-center justify-between gap-3">
            <div className="flex items-center gap-2 text-slate-900">
              <Award className="h-5 w-5 text-amber-600" />
              <h2 className="text-xl font-semibold">Recent applications</h2>
            </div>
            <div className="inline-flex items-center gap-2 rounded-full border border-slate-200 bg-slate-50 px-3 py-2 text-sm text-slate-600">
              <Sparkles className="h-4 w-4 text-amber-600" />
              Live review queue
            </div>
          </div>

          <div className="mt-6 overflow-hidden rounded-2xl border border-slate-200">
            <table className="min-w-full divide-y divide-slate-200 text-sm">
              <thead className="bg-slate-50 text-left text-slate-600">
                <tr>
                  <th className="px-4 py-3 font-medium">Applicant</th>
                  <th className="px-4 py-3 font-medium">Phone</th>
                  <th className="px-4 py-3 font-medium">Status</th>
                  <th className="px-4 py-3 font-medium">Created</th>
                  <th className="px-4 py-3 font-medium">Action</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-slate-200 bg-white">
                {(applications ?? [])
                  .slice(0, 6)
                  .map(
                    (application: {
                      id: string;
                      first_name: string;
                      surname: string;
                      phone: string;
                      status: string;
                      created_at: string;
                    }) => (
                      <tr key={application.id}>
                        <td className="px-4 py-3 font-medium text-slate-900">
                          {application.first_name} {application.surname}
                        </td>
                        <td className="px-4 py-3 text-slate-600">
                          {application.phone}
                        </td>
                        <td className="px-4 py-3">
                          <span
                            className={`rounded-full px-3 py-1 text-xs font-medium uppercase ${statusClass(application.status)}`}
                          >
                            {application.status}
                          </span>
                        </td>
                        <td className="px-4 py-3 text-slate-600">
                          {new Date(
                            application.created_at,
                          ).toLocaleDateString()}
                        </td>
                        <td className="px-4 py-3">
                          <Link
                            href={`/admin/applicants/${application.id}`}
                            className="inline-flex items-center gap-2 rounded-full border border-slate-200 px-3 py-2 text-sm font-medium text-slate-700"
                          >
                            <Eye className="h-4 w-4" />
                            View
                          </Link>
                        </td>
                      </tr>
                    ),
                  )}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </main>
  );
}
