import { adminClient } from "@/lib/supabase/admin";

export class StorageService {
  static async upload(
    file: File,
    bucket: "passport-photos" | "membership-cards",
    path: string
  ) {
    const { data, error } = await adminClient.storage
      .from(bucket)
      .upload(path, file, {
        upsert: true,
        contentType: file.type,
      });

    if (error) throw error;

    const { data: publicUrlData } = adminClient.storage
      .from(bucket)
      .getPublicUrl(data.path);

    return publicUrlData.publicUrl;
  }
}