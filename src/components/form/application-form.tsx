"use client";

import { useEffect, useMemo, useState, useTransition } from "react";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { z } from "zod";
import { ArrowLeft, ArrowRight, CheckCircle2, Loader2 } from "lucide-react";
import { submitApplication } from "@/app/apply/actions";
import { isValidUploadedFile } from "@/lib/file-validation";

type Ward = {
  id?: string;
  code: string;
  name: string;
};

type PollingUnit = {
  code: string;
  name: string;
  wardCode: string;
};

type ApplicationFormProps = {
  wards: Ward[];
  pollingUnits: PollingUnit[];
};

const schema = z.object({
  surname: z.string().min(1, "Surname is required"),
  first_name: z.string().min(1, "First name is required"),
  other_names: z.string().optional(),
  email: z.string().min(1, "Email is required").email("Enter a valid email address"),
  home_address: z.string().min(1, "Home address is required"),
  phone: z.string().regex(/^(\+234|234|0)\d{10}$/, "Enter a valid Nigerian phone number"),
  has_smartphone: z.enum(["yes", "no"]),
  ward_code: z.string().min(1, "Select a ward"),
  polling_unit_code: z.string().min(1, "Select a polling unit"),
  membership_card: z.custom<File>((value) => value instanceof File && value.size > 0, "Upload your membership card"),
  passport: z.custom<File>((value) => value instanceof File && value.size > 0, "Upload your passport photo"),
});

type FormValues = z.infer<typeof schema>;

export function ApplicationForm({ wards, pollingUnits }: ApplicationFormProps) {
  const [step, setStep] = useState(1);
  const [isPending, startTransition] = useTransition();
  const [message, setMessage] = useState<string | null>(null);

  const {
    register,
    handleSubmit,
    watch,
    setValue,
    formState: { errors },
  } = useForm<FormValues>({
    resolver: zodResolver(schema),
    defaultValues: {
      has_smartphone: "yes",
    },
  });

  const [membershipCardName, setMembershipCardName] = useState<string>("No file chosen");
  const [passportName, setPassportName] = useState<string>("No file chosen");
  const [membershipCardFile, setMembershipCardFile] = useState<File | null>(null);
  const [passportFile, setPassportFile] = useState<File | null>(null);
  const [debugInfo, setDebugInfo] = useState<string>("Debug: no files selected yet.");

  const selectedWardCode = watch("ward_code");

  const filteredPollingUnits = useMemo(() => {
    return pollingUnits.filter((unit) => unit.wardCode === selectedWardCode);
  }, [pollingUnits, selectedWardCode]);

  useEffect(() => {
    setValue("polling_unit_code", "");
  }, [selectedWardCode, setValue]);

  const handleFileSelection = (field: "membership_card" | "passport", file: File | null) => {
    console.log("[upload-debug] handleFileSelection", { field, file });

    if (!file) {
      console.error("[upload-debug] file is null/empty for field:", field);
      setValue(field, undefined as never, { shouldValidate: true, shouldDirty: true });
      if (field === "membership_card") {
        setMembershipCardFile(null);
        setMembershipCardName("No file chosen");
      } else {
        setPassportFile(null);
        setPassportName("No file chosen");
      }
      setDebugInfo(`Debug: ${field === "membership_card" ? "membership_card" : "passport"} cleared.`);
      return;
    }

    setValue(field, file, { shouldValidate: true, shouldDirty: true });
    if (field === "membership_card") {
      setMembershipCardFile(file);
      setMembershipCardName(file.name);
    } else {
      setPassportFile(file);
      setPassportName(file.name);
    }

    const valid = isValidUploadedFile(file);
    const safeName = file.name || "unnamed";
    const sizeText = `${file.size} bytes`;
    console.log("[upload-debug] selected file details", {
      field,
      name: safeName,
      size: file.size,
      type: file.type,
      validFile: valid,
      instanceOfFile: file instanceof File,
    });
    setDebugInfo(`Debug: ${field} selected = ${safeName}, validFile=${valid}, size=${sizeText}, type=${file.type || "unknown"}`);
  };

  const onSubmit = (values: FormValues) => {
    setMessage(null);

    const membershipCard = membershipCardFile ?? values.membership_card;
    const passport = passportFile ?? values.passport;

    console.log("[upload-debug] submit payload values", {
      values,
      membershipCard,
      passport,
      membershipCardType: typeof membershipCard,
      passportType: typeof passport,
      membershipCardIsFile: membershipCard instanceof File,
      passportIsFile: passport instanceof File,
    });

    const membershipValid = isValidUploadedFile(membershipCard);
    const passportValid = isValidUploadedFile(passport);

    console.log("[upload-debug] validation result", {
      membershipValid,
      passportValid,
      membershipCardName: membershipCard ? membershipCard.name : "none",
      passportName: passport ? passport.name : "none",
    });

    setDebugInfo(
      `Debug: membership_card valid=${membershipValid} (${membershipCard ? membershipCard.name : "none"}), passport valid=${passportValid} (${passport ? passport.name : "none"})`
    );

    if (!membershipValid) {
      console.error("[upload-debug] Membership card validation failed.");
      setMessage("Please upload your membership card.");
      return;
    }

    if (!passportValid) {
      console.error("[upload-debug] Passport validation failed.");
      setMessage("Please upload your passport photo.");
      return;
    }

    const formData = new FormData();
    formData.append("surname", values.surname);
    formData.append("first_name", values.first_name);
    formData.append("other_names", values.other_names ?? "");
    formData.append("email", values.email);
    formData.append("home_address", values.home_address);
    formData.append("phone", values.phone);
    formData.append("has_smartphone", values.has_smartphone);
    formData.append("ward_code", values.ward_code);
    formData.append("polling_unit_code", values.polling_unit_code);
    formData.append("membership_card", membershipCard, membershipCard.name);
    formData.append("passport", passport, passport.name);

    console.log("[upload-debug] formData keys before submit", {
      hasMembershipCard: formData.get("membership_card") instanceof File,
      hasPassport: formData.get("passport") instanceof File,
      membershipCardName: formData.get("membership_card") ? (formData.get("membership_card") as File).name : "none",
      passportName: formData.get("passport") ? (formData.get("passport") as File).name : "none",
    });

    startTransition(async () => {
      try {
        const result = await submitApplication(formData);
        if (!result.success) {
          setMessage(result.message);
        }
      } catch (error) {
        console.error("[upload-debug] submitApplication failed", error);
        setMessage("Something went wrong while submitting your application.");
      }
    });
  };

  const goNext = async () => {
    if (step === 1) {
      setStep(2);
      return;
    }
    if (step === 2) {
      setStep(3);
      return;
    }
    if (step === 3) {
      setStep(4);
    }
  };

  const goBack = () => {
    if (step > 1) {
      setStep(step - 1);
    }
  };

  return (
    <div className="mx-auto max-w-4xl rounded-[2rem] border border-slate-200 bg-white p-6 shadow-[0_20px_80px_-30px_rgba(15,23,42,0.35)] sm:p-8">
      <div className="mb-8 flex items-center justify-between">
        <div>
          <p className="text-sm font-semibold uppercase tracking-[0.3em] text-amber-600">Expression of interest</p>
          <h2 className="mt-2 text-2xl font-semibold text-slate-900">Application form</h2>
        </div>
        <div className="rounded-full border border-slate-200 bg-slate-50 px-3 py-1 text-sm font-medium text-slate-700">
          Step {step} of 4
        </div>
      </div>

      <form onSubmit={handleSubmit(onSubmit)} className="space-y-6">
        {step === 1 && (
          <div className="grid gap-6 md:grid-cols-2">
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Surname</label>
              <input {...register("surname")} className="w-full rounded-xl border border-slate-300 px-4 py-3" />
              {errors.surname && <p className="mt-2 text-sm text-red-600">{errors.surname.message}</p>}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">First name</label>
              <input {...register("first_name")} className="w-full rounded-xl border border-slate-300 px-4 py-3" />
              {errors.first_name && <p className="mt-2 text-sm text-red-600">{errors.first_name.message}</p>}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Other names</label>
              <input {...register("other_names")} className="w-full rounded-xl border border-slate-300 px-4 py-3" />
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Email address</label>
              <input {...register("email")} type="email" className="w-full rounded-xl border border-slate-300 px-4 py-3" />
              {errors.email && <p className="mt-2 text-sm text-red-600">{errors.email.message}</p>}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Home address</label>
              <input {...register("home_address")} className="w-full rounded-xl border border-slate-300 px-4 py-3" />
              {errors.home_address && <p className="mt-2 text-sm text-red-600">{errors.home_address.message}</p>}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Phone number</label>
              <input {...register("phone")} className="w-full rounded-xl border border-slate-300 px-4 py-3" />
              {errors.phone && <p className="mt-2 text-sm text-red-600">{errors.phone.message}</p>}
            </div>
          </div>
        )}

        {step === 2 && (
          <div className="grid gap-6 md:grid-cols-2">
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Do you have a smartphone?</label>
              <select {...register("has_smartphone")} className="w-full rounded-xl border border-slate-300 px-4 py-3">
                <option value="yes">Yes</option>
                <option value="no">No</option>
              </select>
              {errors.has_smartphone && <p className="mt-2 text-sm text-red-600">{errors.has_smartphone.message}</p>}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Ward</label>
              <select {...register("ward_code")} className="w-full rounded-xl border border-slate-300 px-4 py-3">
                <option value="">Select a ward</option>
                {wards.map((ward) => (
                  <option key={ward.code} value={ward.code}>
                    {ward.name}
                  </option>
                ))}
              </select>
              {errors.ward_code && <p className="mt-2 text-sm text-red-600">{errors.ward_code.message}</p>}
            </div>
            <div className="md:col-span-2">
              <label className="mb-2 block text-sm font-medium text-slate-700">Polling unit</label>
              <select {...register("polling_unit_code")} className="w-full rounded-xl border border-slate-300 px-4 py-3" disabled={!selectedWardCode}>
                <option value="">{selectedWardCode ? "Select a polling unit" : "Choose a ward first"}</option>
                {filteredPollingUnits.map((unit) => (
                  <option key={unit.code} value={unit.code}>
                    {unit.name}
                  </option>
                ))}
              </select>
              {errors.polling_unit_code && <p className="mt-2 text-sm text-red-600">{errors.polling_unit_code.message}</p>}
            </div>
          </div>
        )}

        {step === 3 && (
          <div className="grid gap-6 md:grid-cols-2">
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Membership card upload</label>
              <input
                type="file"
                accept="image/*,.pdf"
                className="w-full rounded-xl border border-slate-300 px-4 py-3"
                {...register("membership_card")}
                onChange={(e) => {
                  const file = e.target.files?.[0] ?? null;
                  handleFileSelection("membership_card", file);
                }}
              />
              <p className="mt-2 text-sm text-slate-600">{membershipCardName}</p>
              <p className="mt-2 rounded-md border border-amber-200 bg-amber-50 px-2 py-1 text-[11px] font-medium text-amber-800">
                {debugInfo.includes("membership_card") ? debugInfo : `Debug: membership_card not selected`}
              </p>
              {errors.membership_card && <p className="mt-2 text-sm text-red-600">{errors.membership_card.message}</p>}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">Passport upload</label>
              <input
                type="file"
                accept="image/*"
                className="w-full rounded-xl border border-slate-300 px-4 py-3"
                {...register("passport")}
                onChange={(e) => {
                  const file = e.target.files?.[0] ?? null;
                  handleFileSelection("passport", file);
                }}
              />
              <p className="mt-2 text-sm text-slate-600">{passportName}</p>
              <p className="mt-2 rounded-md border border-amber-200 bg-amber-50 px-2 py-1 text-[11px] font-medium text-amber-800">
                {debugInfo.includes("passport") ? debugInfo : `Debug: passport not selected`}
              </p>
              {errors.passport && <p className="mt-2 text-sm text-red-600">{errors.passport.message}</p>}
            </div>
          </div>
        )}

        {step === 4 && (
          <div className="rounded-2xl border border-slate-200 bg-slate-50 p-6">
            <div className="flex items-center gap-3 text-emerald-700">
              <CheckCircle2 className="h-5 w-5" />
              <p className="font-medium">Review your inputs before submitting</p>
            </div>
            <p className="mt-3 text-sm leading-7 text-slate-600">
              Please confirm that the ward, polling unit, and uploaded documents are correct. Once submitted, you
              will receive a reference number on the success page.
            </p>
          </div>
        )}

        {message && (
          <div className="rounded-xl border border-red-200 bg-red-50 px-4 py-3 text-sm text-red-700">{message}</div>
        )}

        <div className="flex flex-col-reverse gap-3 border-t border-slate-200 pt-6 sm:flex-row sm:justify-between">
          <button type="button" onClick={goBack} className="inline-flex items-center justify-center gap-2 rounded-full border border-slate-300 px-5 py-3 font-medium text-slate-700" disabled={step === 1}>
            <ArrowLeft className="h-4 w-4" />
            Back
          </button>

          {step < 4 ? (
            <button type="button" onClick={goNext} className="inline-flex items-center justify-center gap-2 rounded-full bg-slate-900 px-5 py-3 font-medium text-white">
              Continue
              <ArrowRight className="h-4 w-4" />
            </button>
          ) : (
            <button type="submit" className="inline-flex items-center justify-center gap-2 rounded-full bg-amber-600 px-5 py-3 font-medium text-white" disabled={isPending}>
              {isPending ? <Loader2 className="h-4 w-4 animate-spin" /> : <CheckCircle2 className="h-4 w-4" />}
              Submit application
            </button>
          )}
        </div>
      </form>
    </div>
  );
}
