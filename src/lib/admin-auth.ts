import { cookies } from "next/headers";
import { redirect } from "next/navigation";

export async function requireAdmin() {
  const cookieStore = await cookies();
  const sessionCookie = cookieStore.get("admin_session");

  if (!sessionCookie?.value) {
    redirect("/admin/login");
  }

  return sessionCookie.value;
}

export async function isAdminAuthenticated() {
  const cookieStore = await cookies();
  return Boolean(cookieStore.get("admin_session")?.value);
}
