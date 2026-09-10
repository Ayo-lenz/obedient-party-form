import { createClient } from "@/lib/supabase/server";

export class StorageService {
  static async upload(file: File, bucket: "passport-photos" | "membership-cards", path: string) {
    const supabase = await createClient();
    const { data, error } = await supabase.storage.from(bucket).upload(path, file, {
      upsert: true,
      contentType: file.type,
    });

    if (error) {
      throw error;
    }

    const { data: publicUrlData } = supabase.storage.from(bucket).getPublicUrl(data.path);
    return publicUrlData.publicUrl;
  }
}
