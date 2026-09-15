export function isValidUploadedFile(value: unknown): value is File {
  if (!value || typeof value !== "object") {
    return false;
  }

  const candidate = value as Partial<File> & { size?: number; name?: string; type?: string };
  const hasFileShape = typeof candidate.size === "number" && typeof candidate.name === "string" && typeof candidate.type === "string";

  if (!hasFileShape || candidate.size === undefined || candidate.size <= 0) {
    return false;
  }

  return typeof File !== "undefined" ? value instanceof File : candidate instanceof Blob;
}
