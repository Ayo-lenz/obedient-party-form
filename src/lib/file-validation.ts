export function isValidUploadedFile(value: unknown): value is File {
  return value instanceof File && value.size > 0;
}
