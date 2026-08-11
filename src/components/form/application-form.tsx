"use client";

import { useEffect, useMemo, useState, useTransition } from "react";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { z } from "zod";
import { ArrowLeft, ArrowRight, CheckCircle2, Loader2 } from "lucide-react";
import { submitApplication } from "@/app/apply/actions";

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
  phone: z
    .string()
    .regex(/^(\+234|234|0)\d{10}$/, "Enter a valid Nigerian phone number"),
  has_smartphone: z.enum(["yes", "no"]),
  ward_code: z.string().min(1, "Select a ward"),
  polling_unit_code: z.string().min(1, "Select a polling unit"),
  membership_card: z
    .any()
    .refine(
      (files) => files instanceof FileList && files.length > 0,
      "Upload your membership card",
    ),

  passport: z
    .any()
    .refine(
      (files) => files instanceof FileList && files.length > 0,
      "Upload your passport photo",
    ),
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

  const selectedWardCode = watch("ward_code");

  const filteredPollingUnits = useMemo(() => {
    return pollingUnits.filter((unit) => unit.wardCode === selectedWardCode);
  }, [pollingUnits, selectedWardCode]);

  useEffect(() => {
    setValue("polling_unit_code", "");
  }, [selectedWardCode, setValue]);

  const onSubmit = (values: FormValues) => {
    setMessage(null);
    const formData = new FormData();
    formData.append("surname", values.surname);
    formData.append("first_name", values.first_name);
    formData.append("other_names", values.other_names ?? "");
    formData.append("email", values.email);
    formData.append("phone", values.phone);
    formData.append("has_smartphone", values.has_smartphone);
    formData.append("ward_code", values.ward_code);
    formData.append("polling_unit_code", values.polling_unit_code);
    formData.append("membership_card", values.membership_card[0]);
    formData.append("passport", values.passport[0]);

    startTransition(async () => {
      const result = await submitApplication(formData);
      if (!result.success) {
        setMessage(result.message);
      }
    });
    console.log("FORM SUBMITTED");
    console.log(values);
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
          <p className="text-sm font-semibold uppercase tracking-[0.3em] text-amber-600">
            Expression of interest
          </p>
          <h2 className="mt-2 text-2xl font-semibold text-slate-900">
            Application form
          </h2>
        </div>
        <div className="rounded-full border border-slate-200 bg-slate-50 px-3 py-1 text-sm font-medium text-slate-700">
          Step {step} of 4
        </div>
      </div>

      <form onSubmit={handleSubmit(onSubmit)} className="space-y-6">
        {step === 1 && (
          <div className="grid gap-6 md:grid-cols-2">
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">
                Surname
              </label>
              <input
                {...register("surname")}
                className="w-full rounded-xl border border-slate-300 px-4 py-3"
              />
              {errors.surname && (
                <p className="mt-2 text-sm text-red-600">
                  {errors.surname.message}
                </p>
              )}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">
                First name
              </label>
              <input
                {...register("first_name")}
                className="w-full rounded-xl border border-slate-300 px-4 py-3"
              />
              {errors.first_name && (
                <p className="mt-2 text-sm text-red-600">
                  {errors.first_name.message}
                </p>
              )}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">
                Other names
              </label>
              <input
                {...register("other_names")}
                className="w-full rounded-xl border border-slate-300 px-4 py-3"
              />
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">
                Email address
              </label>
              <input
                type="email"
                {...register("email")}
                className="w-full rounded-xl border border-slate-300 px-4 py-3"
              />
              {errors.email && (
                <p className="mt-2 text-sm text-red-600">
                  {errors.email.message}
                </p>
              )}
            </div>
            <div>
              <label className="mb-2 block text-sm font-medium text-slate-700">
                Phone number
              </label>
              <input
                {...register("phone")}
                className="w-full rounded-xl border border-slate-300 px-4 py-3"
              />
              {errors.phone && (
                <p className="mt-2 text-sm text-red-600">
                  {errors.phone.message}
                </p>
              )}
            </div>
          </div>
        )}

        {step === 2 && (
          <>
            <p className="mb-4 text-sm leading-7 text-slate-600 italic">
              For any question or clarity on Ward and Polling Units, call the organizing secretary (07038905250):
            </p>
            <div className="grid gap-6 md:grid-cols-2">
              <div>
                <label className="mb-2 block text-sm font-medium text-slate-700">
                  Do you have a smartphone?
                </label>
                <select
                  {...register("has_smartphone")}
                  className="w-full rounded-xl border border-slate-300 px-4 py-3"
                >
                  <option value="yes">Yes</option>
                  <option value="no">No</option>
                </select>
                {errors.has_smartphone && (
                  <p className="mt-2 text-sm text-red-600">
                    {errors.has_smartphone.message}
                  </p>
                )}
              </div>
              <div>
                <label className="mb-2 block text-sm font-medium text-slate-700">
                  Ward
                </label>
                <select
                  {...register("ward_code")}
                  className="w-full rounded-xl border border-slate-300 px-4 py-3"
                >
                  <option value="">Select a ward</option>
                  {wards.map((ward) => (
                    <option key={ward.code} value={ward.code}>
                      {ward.name}
                    </option>
                  ))}
                </select>
                {errors.ward_code && (
                  <p className="mt-2 text-sm text-red-600">
                    {errors.ward_code.message}
                  </p>
                )}
              </div>
              <div className="md:col-span-2">
                <label className="mb-2 block text-sm font-medium text-slate-700">
                  Polling unit
                </label>
                <select
                  {...register("polling_unit_code")}
                  className="w-full rounded-xl border border-slate-300 px-4 py-3"
                  disabled={!selectedWardCode}
                >
                  <option value="">
                    {selectedWardCode
                      ? "Select a polling unit"
                      : "Choose a ward first"}
                  </option>
                  {filteredPollingUnits.map((unit) => (
                    <option key={unit.code} value={unit.code}>
                      {unit.name}
                    </option>
                  ))}
                </select>
                {errors.polling_unit_code && (
                  <p className="mt-2 text-sm text-red-600">
                    {errors.polling_unit_code.message}
                  </p>
                )}
              </div>
            </div>
          </>
        )}

        {step === 3 && (
          <>
            <div className="mb-6">
              <h3 className="text-lg font-semibold text-slate-900">
                Upload NDC ONLINE MEMBERSHIP REGISTRATION ID CARD SECTION
              </h3>
              <p className="mt-2 text-sm leading-7 text-slate-600">
                Upload NDC online membership registration ID card. (no party
                membership ID card? Click&register:{" "}
                <a
                  href="https://ndcregister.com/membership/become-without-nin/"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="font-medium text-amber-600 underline underline-offset-4"
                >
                  https://ndcregister.com/membership/become-without-nin/
                </a>{" "}
                or call the organizing secretary for assistance - 07038905250)
              </p>
            </div>
            <div className="grid gap-6 md:grid-cols-2">
              <div>
                <label className="mb-2 block text-sm font-medium text-slate-700">
                  Membership card upload
                </label>
                <input
                  type="file"
                  accept="image/*,.pdf"
                  className="w-full rounded-xl border border-slate-300 px-4 py-3"
                  {...register("membership_card")}
                />
                {errors.membership_card && (
                  <p className="mt-2 text-sm text-red-600">
                    {String(errors.membership_card.message)}
                  </p>
                )}
              </div>
              <div>
                <label className="mb-2 block text-sm font-medium text-slate-700">
                  Passport upload
                </label>
                <input
                  type="file"
                  accept="image/*"
                  className="w-full rounded-xl border border-slate-300 px-4 py-3"
                  {...register("passport")}
                />
                {errors.passport && (
                  <p className="mt-2 text-sm text-red-600">
                    {String(errors.passport.message)}
                  </p>
                )}
              </div>
            </div>
          </>
        )}

        {step === 4 && (
          <div className="rounded-2xl border border-slate-200 bg-slate-50 p-6">
            <div className="flex items-center gap-3 text-emerald-700">
              <CheckCircle2 className="h-5 w-5" />
              <p className="font-medium">
                Review your inputs before submitting
              </p>
            </div>
            <p className="mt-3 text-sm leading-7 text-slate-600">
              Please confirm that the ward, polling unit, and uploaded documents
              are correct. Once submitted, you will receive a reference number
              on the success page.
            </p>
          </div>
        )}

        {message && (
          <div className="rounded-xl border border-red-200 bg-red-50 px-4 py-3 text-sm text-red-700">
            {message}
          </div>
        )}

        <div className="flex flex-col-reverse gap-3 border-t border-slate-200 pt-6 sm:flex-row sm:justify-between">
          <button
            type="button"
            onClick={goBack}
            className="inline-flex items-center justify-center gap-2 rounded-full border border-slate-300 px-5 py-3 font-medium text-slate-700"
            disabled={step === 1}
          >
            <ArrowLeft className="h-4 w-4" />
            Back
          </button>

          {step < 4 ? (
            <button
              type="button"
              onClick={goNext}
              className="inline-flex items-center justify-center gap-2 rounded-full bg-slate-900 px-5 py-3 font-medium text-white"
            >
              Continue
              <ArrowRight className="h-4 w-4" />
            </button>
          ) : (
            <button
              type="submit"
              className="inline-flex items-center justify-center gap-2 rounded-full bg-amber-600 px-5 py-3 font-medium text-white"
              disabled={isPending}
            >
              {isPending ? (
                <Loader2 className="h-4 w-4 animate-spin" />
              ) : (
                <CheckCircle2 className="h-4 w-4" />
              )}
              Submit application
            </button>
          )}
        </div>
      </form>
    </div>
  );
}
