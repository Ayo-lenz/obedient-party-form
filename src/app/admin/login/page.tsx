"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { LogIn } from "lucide-react";

export default function AdminLoginPage() {
  const router = useRouter();
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const onSubmit = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    if (password === process.env.NEXT_PUBLIC_ADMIN_PASSWORD) {
      document.cookie = "admin_session=authenticated; path=/; max-age=3600";
      router.push("/admin");
      return;
    }

    setError("Invalid admin password");
  };

  return (
    <main className="flex min-h-screen items-center justify-center bg-[linear-gradient(135deg,_#fdfdfd_0%,_#f5f7ff_100%)] px-6 py-16">
      <div className="w-full max-w-md rounded-[2rem] border border-slate-200 bg-white p-8 shadow-[0_20px_80px_-30px_rgba(15,23,42,0.35)]">
        <div className="flex items-center gap-3 text-amber-600">
          <LogIn className="h-5 w-5" />
          <p className="text-sm font-semibold uppercase tracking-[0.3em]">Admin access</p>
        </div>
        <h1 className="mt-4 text-3xl font-semibold text-slate-900">Sign in</h1>
        <p className="mt-3 text-sm leading-7 text-slate-600">Enter the admin password to view applications and manage status.</p>

        <form onSubmit={onSubmit} className="mt-8 space-y-4">
          <input
            type="password"
            value={password}
            onChange={(event) => setPassword(event.target.value)}
            placeholder="Admin password"
            className="w-full rounded-xl border border-slate-300 px-4 py-3"
          />
          {error ? <p className="text-sm text-red-600">{error}</p> : null}
          <button type="submit" className="w-full rounded-full bg-slate-900 px-5 py-3 font-medium text-white">
            Continue
          </button>
        </form>
      </div>
    </main>
  );
}
