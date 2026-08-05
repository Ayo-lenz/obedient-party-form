import Link from "next/link";
import { ArrowRight, BadgeCheck, ClipboardList, ShieldCheck, Smartphone } from "lucide-react";

export function LandingPage() {
  return (
    <main className="min-h-screen bg-[radial-gradient(circle_at_top_left,_rgba(250,204,21,0.16),_transparent_35%),linear-gradient(135deg,_#fdfdfd_0%,_#f5f7ff_100%)]">
      <section className="mx-auto flex max-w-7xl flex-col gap-8 px-6 py-16 sm:px-8 lg:px-10 lg:py-24">
        <div className="overflow-hidden rounded-[2rem] border border-slate-200 bg-white/80 shadow-[0_30px_90px_-30px_rgba(15,23,42,0.35)] backdrop-blur-xl">
          <div className="grid gap-10 p-8 sm:p-10 lg:grid-cols-[1.2fr_0.8fr] lg:p-14">
            <div className="flex flex-col justify-center">
              <div className="mb-6 inline-flex w-fit items-center gap-2 rounded-full border border-amber-200 bg-amber-50 px-3 py-1 text-sm font-medium text-amber-800">
                <BadgeCheck className="h-4 w-4" />
                NDC · Eti-Osa LGA
              </div>

              <h1 className="max-w-3xl text-4xl font-semibold tracking-tight text-slate-900 sm:text-5xl lg:text-6xl">
                Polling Unit Leaders Expression of Interest
              </h1>

              <p className="mt-5 max-w-2xl text-lg leading-8 text-slate-600">
                Join the movement by expressing interest to serve as a polling unit leader in Eti-Osa LGA.
                This streamlined process helps us verify your details, confirm your ward and polling unit, and
                keep everything organized for the next phase.
              </p>

              <div className="mt-8 flex flex-col gap-3 sm:flex-row">
                <Link
                  href="/apply"
                  className="inline-flex items-center justify-center gap-2 rounded-full bg-slate-900 px-6 py-3 font-medium text-white transition hover:bg-slate-800"
                >
                  Start your application
                  <ArrowRight className="h-4 w-4" />
                </Link>
                <div className="inline-flex items-center gap-2 rounded-full border border-slate-200 bg-white px-4 py-3 text-sm text-slate-600">
                  <ShieldCheck className="h-4 w-4 text-emerald-600" />
                  Secure and verified submission
                </div>
              </div>

              <div className="mt-10 grid gap-4 sm:grid-cols-3">
                <div className="rounded-2xl border border-slate-200 bg-slate-50 p-4">
                  <div className="flex items-center gap-2 text-sm font-semibold text-slate-800">
                    <ClipboardList className="h-4 w-4 text-amber-600" />
                    Quick review
                  </div>
                  <p className="mt-2 text-sm text-slate-600">A four-step form with review before submission.</p>
                </div>
                <div className="rounded-2xl border border-slate-200 bg-slate-50 p-4">
                  <div className="flex items-center gap-2 text-sm font-semibold text-slate-800">
                    <Smartphone className="h-4 w-4 text-amber-600" />
                    Mobile friendly
                  </div>
                  <p className="mt-2 text-sm text-slate-600">Built for quick completion on any device.</p>
                </div>
                <div className="rounded-2xl border border-slate-200 bg-slate-50 p-4">
                  <div className="flex items-center gap-2 text-sm font-semibold text-slate-800">
                    <BadgeCheck className="h-4 w-4 text-amber-600" />
                    Verified process
                  </div>
                  <p className="mt-2 text-sm text-slate-600">Your ward and polling unit details are validated.</p>
                </div>
              </div>
            </div>

            <div className="rounded-[1.5rem] border border-slate-200 bg-slate-900 p-7 text-white shadow-xl">
              <p className="text-sm font-semibold uppercase tracking-[0.3em] text-amber-300">Important notice</p>
              <h2 className="mt-3 text-2xl font-semibold">Who can apply?</h2>
              <ul className="mt-6 space-y-4 text-sm leading-7 text-slate-200">
                <li className="rounded-2xl border border-white/10 bg-white/5 p-4">You must be a resident of the selected ward and polling unit.</li>
                <li className="rounded-2xl border border-white/10 bg-white/5 p-4">You need a valid membership card and passport photograph for verification.</li>
                <li className="rounded-2xl border border-white/10 bg-white/5 p-4">A smartphone is required for the expression-of-interest process.</li>
              </ul>
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}
