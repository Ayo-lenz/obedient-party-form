import Link from "next/link";
import { CheckCircle2 } from "lucide-react";

type SuccessPageProps = {
  searchParams?: Promise<{ reference?: string }>;
};

export default async function SuccessPage({ searchParams }: SuccessPageProps) {
  const params = await searchParams;
  const reference = params?.reference ?? "PARTY-000000";

  return (
    <main className="min-h-screen bg-[linear-gradient(135deg,_#fdfdfd_0%,_#f5f7ff_100%)] px-6 py-16 sm:px-8 lg:px-10">
      <div className="mx-auto flex max-w-3xl flex-col items-center rounded-[2rem] border border-emerald-200 bg-white p-10 text-center shadow-[0_25px_80px_-30px_rgba(15,23,42,0.35)]">
        <div className="rounded-full bg-emerald-100 p-4 text-emerald-700">
          <CheckCircle2 className="h-10 w-10" />
        </div>
        <h1 className="mt-6 text-3xl font-semibold text-slate-900">Application submitted successfully</h1>
        <p className="mt-4 text-lg leading-8 text-slate-600">
          Your expression of interest has been received. Keep your reference number safe for follow-up.
        </p>
        <div className="mt-6 rounded-2xl border border-slate-200 bg-slate-50 px-6 py-4 text-lg font-semibold text-slate-800">
          Reference number: {reference}
        </div>
        <Link href="/" className="mt-8 inline-flex items-center rounded-full bg-slate-900 px-6 py-3 font-medium text-white">
          Return home
        </Link>
      </div>
    </main>
  );
}
