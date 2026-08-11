import { ApplicationForm } from "@/components/form/application-form";
import { WardService } from "@/services/wardService";
import { PollingUnitService } from "@/services/pollingUnitService";

export default async function ApplyPage() {
  const [wards, pollingUnits] = await Promise.all([
    WardService.getAll(),
    PollingUnitService.getAll(),
  ]);

  return (
    <main className="min-h-screen bg-[linear-gradient(135deg,_#fdfdfd_0%,_#f5f7ff_100%)] px-6 py-16 sm:px-8 lg:px-10">
      <div className="mx-auto max-w-6xl">
        <div className="mb-8 max-w-3xl">
          <p className="text-sm font-semibold uppercase tracking-[0.3em] text-amber-600">
            Application
          </p>
          <h1 className="mt-3 text-4xl font-semibold text-slate-900 sm:text-5xl">
            NDC Et-Osa LGA polling unit leaders expression of interest form
          </h1>
          <div className="mt-4 text-lg leading-8 text-slate-600">
            <p>
              Note: ALL APPLICANTS MUST BE A REGISTERED MEMBER OF THE NDC PARTY.
            </p>
            <ul className="mt-2 list-inside list-disc text-sm text-slate-500">
              <li className="mb-2">
                Submission of this expression of interest form does not
                guarantee appointment. All the application will be subject to
                approval terms, conditions and selection criteria of the
                structure.
              </li>
              <li className="mb-2">
                This streamlined process is targeted at verifying details,
                confirm ward and polling unit, and keep everything organized for
                the next phase⁠.
              </li>
            </ul>
          </div>
        </div>

        <ApplicationForm
          wards={wards as Array<{ code: string; name: string }>}
          pollingUnits={
            pollingUnits as Array<{
              wardCode: string;
              code: string;
              name: string;
            }>
          }
        />
      </div>
    </main>
  );
}
