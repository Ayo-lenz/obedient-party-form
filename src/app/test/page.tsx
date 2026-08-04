import { PollingUnitService } from "@/services/pollingUnitService";

export default async function TestPage() {
  const pollingUnits = await PollingUnitService.getAll();

  return (
    <pre>
      {JSON.stringify(pollingUnits.slice(0, 10), null, 2)}
    </pre>
  );
}