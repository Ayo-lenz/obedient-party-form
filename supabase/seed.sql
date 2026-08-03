-- Seed wards and polling units from uploaded polling unit data

INSERT INTO public.wards (code, name)
SELECT '20-08-05', 'ILADO/ETIOSA AND ENVIRON'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '20-08-05');

INSERT INTO public.wards (code, name)
SELECT '20-08-08', 'IKOYI l'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '20-08-08');

INSERT INTO public.wards (code, name)
SELECT '24-08-01', 'VICTORIA ISLAND'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '24-08-01');

INSERT INTO public.wards (code, name)
SELECT '24-08-02', 'VICTORIA ISLAND ll'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '24-08-02');

INSERT INTO public.wards (code, name)
SELECT '24-08-03', 'ILASAN HOUSING ESTATE'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '24-08-03');

INSERT INTO public.wards (code, name)
SELECT '24-08-04', 'LEKKI/IKATE AND ENVIRON'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '24-08-04');

INSERT INTO public.wards (code, name)
SELECT '24-08-06', 'AJAH SANGOTEDO'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '24-08-06');

INSERT INTO public.wards (code, name)
SELECT '24-08-09', 'IKOYI ll'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '24-08-09');

INSERT INTO public.wards (code, name)
SELECT '24-08-10', 'OBALENDE'
WHERE NOT EXISTS (SELECT 1 FROM public.wards WHERE code = '24-08-10');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBO-EFON TOWN I', '24-08-05-001'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBO-EFON TOWN II', '24-08-05-002'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBO-EFON TOWN III', '24-08-05-003'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBO-EFON TOWN IV', '24-08-05-004'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBO-EFON TOWN V', '24-08-05-005'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKUN IBEJU TOWN (ALPHA BEACH ROAD BY TRANSFORMER)', '24-08-05-006'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKUN IBEJU TOWN II', '24-08-05-007'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LAFIAJI TOWN I', '24-08-05-008'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LAFIAJI TOWN II', '24-08-05-009'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKUN AJAH PRY. SCH. I', '24-08-05-010'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKUN AJAH PRY. SCH. II', '24-08-05-011'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKUN MOPO AKINLADE PRY. SCH. I', '24-08-05-012'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKUN MOPO AKINLADE PRY. SCH. II', '24-08-05-013'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OGOMBO PRY. SCH. I', '24-08-05-014'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OGOMBO HEALTH CENTRE', '24-08-05-015'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OGOMBO PRY. SCH. II', '24-08-05-016'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OGOMBO PRY. SCH. III', '24-08-05-017'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SECURITY POST (IKOTA HOUSING ESTATE) II', '24-08-05-018'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA HOUSING', '24-08-05-019'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FLAT 548 IKOTA ESTATE I', '24-08-05-020'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FLAT 548 IKOTA ESTATE II', '24-08-05-021'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA HOUSING ESTATE III', '24-08-05-022'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FLAT 890 BAMBOO IKOTA HOUSING ESTATE', '24-08-05-023'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAMBOO ESTATE, I', '24-08-05-024'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAMBOO ESTATE, IKOTA II', '24-08-05-025'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAMBOO ESTATE, IKOTA III', '24-08-05-026'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJIWE TOWN', '24-08-05-027'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLUGBOROGAN TOWN HALL', '24-08-05-028'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ORILE MOBA TOWN', '24-08-05-029'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUMATUL- ISLAMIYA PRY SCHOOL I', '24-08-05-030'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '57, BAALE STR, BY TRANSFORMER', '24-08-05-031'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUMATUL- ISLAMIYA PRY SCHOOL II', '24-08-05-032'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JINADU STR. BY JOHN EJAKUTA STR. JUNCT.', '24-08-05-033'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUMATUL ISLAMIYA PRY SCH III', '24-08-05-034'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FUBARA DUBLIN GREEN STR BY JINADU STR JUNCTION', '24-08-05-035'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '3, MUSTAFA LASISI STR.', '24-08-05-036'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '25, BAALE STR', '24-08-05-037'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAALE STR. BY OLUKOLU STR. JUNCTION', '24-08-05-038'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT OLUKOLU COMPOUND', '24-08-05-039'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '12, OMOBA OLUKOLU SRT. BY OLUAKINBOLA STR. JUNCTION', '24-08-05-040'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'TRANSFORMER BY BAALE STR. LAFIAJI', '24-08-05-041'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF BAALE HOUSE LAFIAJI', '24-08-05-042'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MR. MONEY CLOSE, LAFIAJI', '24-08-05-043'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLOWU STR. JUNCTION BY 20 BAALE STR', '24-08-05-044'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. BAALE HOUSE ROAD', '24-08-05-045'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKUN MOPO PRY. SCH. AKINLADE', '24-08-05-046'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF OWODE OGOMBO CENTRAL MOSQUE', '24-08-05-047'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BY APOSTLE FABUDA STR. JUNCTION BY OGOMBO', '24-08-05-048'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PERO HOTEL JUNCTION, BY TRANSFORMER', '24-08-05-049'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OGOMBO PRY. SCH', '24-08-05-050'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE OGOMBO CENTRAL MOSQUE AT AKAPO COMPOUND', '24-08-05-051'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FLAT 95, IKOTA HOUSING ESTATE', '24-08-05-052'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ROAD 27 BY ROAD 25 JUNCTION IKOTA VILLA ESTATE', '24-08-05-053'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FLAT 137 IKOTA HOUSING ESTATE', '24-08-05-054'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-054');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GEDEGEDE TAPA RESETTLEMENT', '24-08-05-055'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-055');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MINOR ESTATE GATE, LEKKI EXP.', '24-08-05-056'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-056');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FLAT 322, IKOTA MAIN MARKET', '24-08-05-057'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-057');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. M. OYEWOLE CHURCH CLOSE JUNCTION', '24-08-05-058'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-058');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ABRAHAM ADESANYA GATE ALONG OGOMBO', '24-08-05-059'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-059');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ABRAHAM ADESANYA GATE II', '24-08-05-060'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-060');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GRACELAND ESTATE GATE I', '24-08-05-061'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-061');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GRACELAND ESTATE GATE II', '24-08-05-062'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-062');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CROWN ESTATE GATE', '24-08-05-063'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-063');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'UNITED ESTATE GATE', '24-08-05-064'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-064');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF TOPNOTH PLAZA', '24-08-05-065'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-065');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AJIWE GATE', '24-08-05-066'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-066');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE IN AJIWE TOWN', '24-08-05-067'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-067');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SULE OLUSESI ROAD BESIDE CONSERVATION CENTRE', '24-08-05-068'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-068');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BY MOBA CENTRAL MOSQUE', '24-08-05-069'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-069');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF MOBA CENTRAL MOSQUE', '24-08-05-070'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-070');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'HEALTH CENTRE, JUNCTION BY ABEJAMU RD.', '24-08-05-071'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-071');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION BY TRANSFORMER STATION', '24-08-05-072'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-072');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF VOCATIONAL CENTRE', '24-08-05-073'
FROM public.wards w
WHERE w.code = '20-08-05'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-05-073');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADEMOLA OLOKUN', '24-08-08-001'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADEMOLA JUNCTION', '24-08-08-002'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IRETI GRAMMAR SCH. I', '24-08-08-003'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IRETI GRAMMAR SCH. II', '24-08-08-004'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WARDERS'' BARRACKS', '24-08-08-005'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AWOLOWO ROAD', '24-08-08-006'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WARDERS'' BARRACK I', '24-08-08-007'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WARDERS'' BARRACK II', '24-08-08-008'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WARDERS'' BARRACK III', '24-08-08-009'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'RAYMOND NJOKU I', '24-08-08-010'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'RAYMOND NJOKU II', '24-08-08-011'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKOTIE EBOH', '24-08-08-012'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WAHAB FOLAWIYO', '24-08-08-013'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBA OYEKAN/CAMERON', '24-08-08-014'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GLOVER', '24-08-08-015'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MOBOLAJI JOHNSON/ONITANA', '24-08-08-016'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MOBOLAJI JOHNSON', '24-08-08-017'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MOBOLAJI JOHNSON BY B/STOP', '24-08-08-018'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MOBOLAJI JOHNSON/ELEGUSHI', '24-08-08-019'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CORPORATION DRIVE I', '24-08-08-020'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CORPORATION DRIVE II', '24-08-08-021'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DOLPHIN ESTATE EXIT I', '24-08-08-022'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DOLPHIN ESTATE EXIT II', '24-08-08-023'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DOLPHIN ESTATE EXIT III', '24-08-08-024'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKEJA WAY, DOLPHIN ESTATE', '24-08-08-025'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ASSOCIATION AVENUE I', '24-08-08-026'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ASSOCIATION AVENUE II', '24-08-08-027'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ASSOCIATION AVENUE III', '24-08-08-028'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BY MILITARY HOSPITAL', '24-08-08-029'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ST. GEORGES PRY. SCHOOL', '24-08-08-030'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF POLO CLUB', '24-08-08-031'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP POLO CLUB', '24-08-08-032'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF F.O FILLING STATION', '24-08-08-033'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'I68, AWOLOWO ROAD', '24-08-08-034'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. EDUCATION DISTRICT, IKOYI', '24-08-08-035'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. YMCA, IKOYI', '24-08-08-036'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BY STATE HOUSE OFF AWOLOWO ROAD', '24-08-08-037'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WAHAB FOLAWIYO SEC. SCH, OSBORNE', '24-08-08-038'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBA OYEKAN/CAMERON ROAD I', '24-08-08-039'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '53 GLOVER ROAD JUNCTION', '24-08-08-040'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1, ONITANA JUNCTION', '24-08-08-041'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF DSS QUARTERS, ALAGBON', '24-08-08-042'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF ALAGBON', '24-08-08-043'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF MOBOLAJI/ELEGUSHI', '24-08-08-044'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE THE ENTRANCE OF CORPORATION DRIVE', '24-08-08-045'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '173, ISALE EKO WAY', '24-08-08-046'
FROM public.wards w
WHERE w.code = '20-08-08'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-08-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT ARMY CAMP (TARKWA BAY)', '24-08-01-001'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKO ATA I (ABAGBO VILLAGE I)', '24-08-01-002'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKO ATA II (ABAGBO VILLAGE II)', '24-08-01-003'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OGOGORO COMMUNITY I (EBUTE OKO I)', '24-08-01-004'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OGOGORO COMMUNITY II (EBUTE OKO II)', '24-08-01-005'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ATLAS COVE COMMUNITY (OKO KATE)', '24-08-01-006'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'L-YACHT C BUILDING (OKUN AYO)', '24-08-01-007'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BISHOP OLUWOLE STREET I', '24-08-01-008'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BISHOP OLUWOLE STREET II', '24-08-01-009'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAR-BEACH TOWER I', '24-08-01-010'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAR-BEACH TOWER II', '24-08-01-011'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAR-BEACH TOWER III', '24-08-01-012'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAR-BEACH POLICE BARRACKS I', '24-08-01-013'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAR-BEACH POLICE BARRACKS II', '24-08-01-014'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'NAVAL DOCKYARD', '24-08-01-015'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OCEANOGRAPHY & MARINE I', '24-08-01-016'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OCEANOGRAPHY & MARINE II', '24-08-01-017'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SOLOMON CLOSE', '24-08-01-018'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ELIAS CLOSE', '24-08-01-019'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FEDERAL PA,LACE HOTEL', '24-08-01-020'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AIRFORCE PRIMARY SCHOOL I', '24-08-01-021'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AIRFORCE PRIMARY SCHOOL II', '24-08-01-022'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEGICO FLAT I', '24-08-01-023'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEGICO FLAT II', '24-08-01-024'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BONNY CAMP I', '24-08-01-025'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BONNY CAMP II', '24-08-01-026'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BONNY CAMP III', '24-08-01-027'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BONNY CAMP IV', '24-08-01-028'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BONNY CAMP V', '24-08-01-029'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GOVERNMENT COLLEGE V/ISLAND I', '24-08-01-030'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OZUMBA MBADIWE', '24-08-01-031'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KOFO ABAYOMI - I', '24-08-01-032'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KOFO ABAYOMI - II', '24-08-01-033'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IDOWU MARTINS - I', '24-08-01-034'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IDOWU MARTINS - II', '24-08-01-035'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADEOLA ODEKU - I', '24-08-01-036'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADEOLA ODEKU - II', '24-08-01-037'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IDEJO/OJU OLOBUN', '24-08-01-038'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLOGUN AGBAJE/SAKA TINUBU', '24-08-01-039'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SAKA TINUBU/AMODU OJIKUTU I', '24-08-01-040'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SAKA TINUBU/AMODU OJIKUTU II', '24-08-01-041'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SAKA TINUBU/KASUMU EKEMODE', '24-08-01-042'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AGIP CHALET', '24-08-01-043'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AMERICAN EMBASSY CHALET', '24-08-01-044'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT OKO ATA', '24-08-01-045'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT OGOGORO COMMUNITY', '24-08-01-046'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT UAC COMPOUND(ENTRANCE OF OKUN AYO)', '24-08-01-047'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1228, BISHOP OLUWOLE STR', '24-08-01-048'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'EXIT OF BISHOP OLUWOLE STR', '24-08-01-049'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE PLOT 1221A, BISHOP OLUWOLE', '24-08-01-050'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE BAR BEACH POLICE BARRACK', '24-08-01-051'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. BAR BEACH POLICE BARRACKS', '24-08-01-052'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF NEPA CLOSE', '24-08-01-053'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF NTA STATION', '24-08-01-054'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-054');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF SOLOMON CLOSE', '24-08-01-055'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-055');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE FEDERAL PALACE HOTEL', '24-08-01-056'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-056');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE LEGICO FLAT I', '24-08-01-057'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-057');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP LEGICO FLAT', '24-08-01-058'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-058');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF BONNY CAMP GATE', '24-08-01-059'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-059');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'UNDER BRIDGE BONNY CAMP I', '24-08-01-060'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-060');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BONNY CAMP ROUNDABOUT', '24-08-01-061'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-061');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'UNDER BRIDGE BONNY CAMP II', '24-08-01-062'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-062');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GOVERNMENT COLLEGE V/ISLAND II', '24-08-01-063'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-063');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GOVERNMENT COLLEGE V/ISLAND III', '24-08-01-064'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-064');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '5, OZUMBA MBADIWE BY WALTER CARINGTON', '24-08-01-065'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-065');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. NO 1, KOFO ABAYOMI STR.', '24-08-01-066'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-066');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF MUSA TARADU', '24-08-01-067'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-067');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. PLOT 241 KOFO ABAYOMI STR.', '24-08-01-068'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-068');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. 21A, IDOWU MARTINS STR', '24-08-01-069'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-069');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF 12/22 ADEOLA ODEKU', '24-08-01-070'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-070');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OJU OLOBUN BY SAKA TINUBU', '24-08-01-071'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-071');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. NO 1, SAKA TINUBU', '24-08-01-072'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-072');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP SAKA TINUBU/AMODU OJIKUTU JUNCT.', '24-08-01-073'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-073');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1146, GBARO CLOSE OFF AMODU OJIKUTU', '24-08-01-074'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-074');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '14, KASUMU EKEMODE STR.', '24-08-01-075'
FROM public.wards w
WHERE w.code = '24-08-01'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-01-075');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENGINEERING CLOSE', '24-08-02-001'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADEOLA HOPEWELL/AKINBO SAVAGE', '24-08-02-002'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADEOLA HOPEWELL/IDOWU TAYLOR', '24-08-02-003'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANUSI FAFUNWA/OLADELE OLASORE', '24-08-02-004'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANUSI FAFUNWA/OLADELE OLASORE II', '24-08-02-005'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AKIN ADESOLA STREET I', '24-08-02-006'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AKIN ADESOLA STREET II', '24-08-02-007'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KARIMU KOTUN/OKO-AWO CLOSE', '24-08-02-008'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KARIMU KOTUN', '24-08-02-009'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLOSA STREET/TIAMIYU SAVAGE I', '24-08-02-010'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLOSA STREET/TIAMIYU SAVAGE II', '24-08-02-011'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KURAMO TOWN I', '24-08-02-012'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KURAMO TOWN II', '24-08-02-013'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'METHODIST BOYS HIGH SCHOOL I', '24-08-02-014'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'METHODIST BOYS HIGH SCHOOL II', '24-08-02-015'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJOSE ADEOGUN/JUBRIL MARTINS I', '24-08-02-016'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJOSE ADEOGUN/JUBRIL MARTINS II', '24-08-02-017'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJOSE ADEOGUN/JUBRIL MARTINS III', '24-08-02-018'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MURI OKUNOLA STREET I', '24-08-02-019'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MURI OKUNOLA STREET II', '24-08-02-020'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'APESE TOWN I', '24-08-02-021'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'APESE TOWN II', '24-08-02-022'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'APESE TOWN III', '24-08-02-023'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'VICTORIA ISLAND SECONDARY SCHOOL I', '24-08-02-024'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'VICTORIA ISLAND SECONDARY SCHOOL II', '24-08-02-025'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BALARABE MUSA', '24-08-02-026'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'TRANSIT TOWN', '24-08-02-027'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1004 FLAT', '24-08-02-028'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CRESCENT C 1004 FLAT', '24-08-02-029'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1004 FLAT I', '24-08-02-030'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1004 FLAT II', '24-08-02-031'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'F.M.W. & H 1004 FLAT', '24-08-02-032'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1004 FLAT III', '24-08-02-033'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CRESCENT E 1004 FLAT', '24-08-02-034'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1004 FLAT IV', '24-08-02-035'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1004 FLAT V', '24-08-02-036'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF ENGINEERING CLOSE OFF IDOWU TAILOR', '24-08-02-037'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CHURCH GATE BY NURSES HOUSE', '24-08-02-038'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. LAW SCH GATE', '24-08-02-039'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADETOKUNBO ADEMOLA STR ENTRANCE', '24-08-02-040'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. NO 2, IDOWU TAYLOR STR', '24-08-02-041'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'END OF ADEOLA HOPEWELL STR.', '24-08-02-042'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF FREEDOM HOUSE', '24-08-02-043'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE SANUSI FAFUNWA/OLADELE OLASORE JUNCT.', '24-08-02-044'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. COSHARIS MOTORS', '24-08-02-045'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. 1301, AKIN ADESOLA', '24-08-02-046'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF KARIMU KOTUN/OKO-AWO CLOSE', '24-08-02-047'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1382, TIAMIYU SAVAGE', '24-08-02-048'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KURAMO PRY. SCH 1', '24-08-02-049'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF TIAMIYU SAVAGE BY AHMADU BELLO', '24-08-02-050'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. OLOSA STREET/TIAMIYU SAVAGE', '24-08-02-051'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF EKO ATLANTIC', '24-08-02-052'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE EKO ATLANTIC', '24-08-02-053'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'EKO ATLANTIC GATE', '24-08-02-054'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-054');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF MBHS I', '24-08-02-055'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-055');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF MBHS II', '24-08-02-056'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-056');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF SAMUEL ADEDOYIN STR.', '24-08-02-057'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-057');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '177A, SINARI DARANIJO', '24-08-02-058'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-058');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '276, AJOSE ADEOGUN', '24-08-02-059'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-059');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '105A, AJOSE ADEOGUN STR.', '24-08-02-060'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-060');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'YOUNIS BASHORUN JUNCTION OFF AJOSE ADEOGUN STR', '24-08-02-061'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-061');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PLOT 233, JUBRIL MATINS', '24-08-02-062'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-062');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF JUBRIL MARTINS BY MURI OKUNOLA', '24-08-02-063'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-063');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION MURI OKUNOLA STREET', '24-08-02-064'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-064');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP JUNCTION MURI OKUNOLA STREET', '24-08-02-065'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-065');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MURI OKUNOLA STR. BY TESTING GROUND', '24-08-02-066'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-066');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ETIM INYANG BY MURI OKUNOLA', '24-08-02-067'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-067');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. LSDPC MURI OKUNOLA/ ETIM INYANG JUNCTION', '24-08-02-068'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-068');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF FATAI DUROSINMI ETTI', '24-08-02-069'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-069');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'END OF LIGALI AYORINDE BY ONIRU BEACH GATE', '24-08-02-070'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-070');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. ONIRU BEACH GATE', '24-08-02-071'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-071');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WATER CORPORATION BY EVENT CENTRE', '24-08-02-072'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-072');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WATER CORPORATION RD. OPP. ENTERPRISE HUBS', '24-08-02-073'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-073');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF QUEEN PARK EVENT CENTRE', '24-08-02-074'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-074');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ABISOGUN GATE OFF YUSUF ABIODUN RD', '24-08-02-075'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-075');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '24, BY YUSUFF ABIODUN MARY BASSEY RD', '24-08-02-076'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-076');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'NEW MARKET @ ONIGBEFON STR', '24-08-02-077'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-077');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF ONIRU PALACE ROAD', '24-08-02-078'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-078');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF PRINCE ADEMOLA ONIRU OFF OGUNYEMI SRT', '24-08-02-079'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-079');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPPOSITE HOUSE 17, YUSUF ABIODUN STR', '24-08-02-080'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-080');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF MILLEMIUM HOME', '24-08-02-081'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-081');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'VICTORIA ISLAND SECONDARY SCHOOL III', '24-08-02-082'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-082');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'VICTORIA ISLAND JUNIOR SEC. SCH. I', '24-08-02-083'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-083');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'VICTORIA ISLAND JUNIOR SEC. SCH. II', '24-08-02-084'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-084');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KURAMO JUNIOR SCH I', '24-08-02-085'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-085');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KURAMO SENIOR SCH.', '24-08-02-086'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-086');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KURAMO JUNIOR SCH II', '24-08-02-087'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-087');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '42, BALARABE MUSA CRESCENT', '24-08-02-088'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-088');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF BABATUNDE JOSE STR. OFF ADETOKUNBO', '24-08-02-089'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-089');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'TRANSIT TOWN OPP. LAGOSIA RESTAURANT I', '24-08-02-090'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-090');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'TRANSIT TOWN OPP. LAGOSIA RESTAURANT II', '24-08-02-091'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-091');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '20, SAMUEL MANUWA', '24-08-02-092'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-092');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '12, BISHOP ABOYADE COLE', '24-08-02-093'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-093');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF HOUSE 11, 1004 FLAT', '24-08-02-094'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-094');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADJ CENTRAL MOSQUE 1004 ESTATE', '24-08-02-095'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-095');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE CLUSTER A 1004 ESTATE', '24-08-02-096'
FROM public.wards w
WHERE w.code = '24-08-02'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-02-096');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ELF ALAGUNTAN', '24-08-03-001'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ORILE ILESAN TOWN I', '24-08-03-002'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ORILE ILESAN TOWN II', '24-08-03-003'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 81, ILASAN HOUSING ESTATE I', '24-08-03-004'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 81, ILASAN HOUSING ESTATE II', '24-08-03-005'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE I', '24-08-03-006'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE II', '24-08-03-007'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE(169-184)', '24-08-03-008'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE I', '24-08-03-009'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE II', '24-08-03-010'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE III', '24-08-03-011'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE IV', '24-08-03-012'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE (249) I', '24-08-03-013'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE (249) II', '24-08-03-014'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN SECONDARY SCHOOL I', '24-08-03-015'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN SECONDARY SCHOOL II', '24-08-03-016'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE', '24-08-03-017'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE(263) I', '24-08-03-018'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE(263) II', '24-08-03-019'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN HOUSING ESTATE', '24-08-03-020'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MAIYEGUN TOWN I', '24-08-03-021'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MAIYEGUN TOWN II', '24-08-03-022'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILASAN/MAIYEGUN', '24-08-03-023'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GBARA TOWN I', '24-08-03-024'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GBARA TOWN II', '24-08-03-025'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GBARA TOWN III', '24-08-03-026'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLOGOLO TOWN', '24-08-03-027'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'UPDC LEKKI ESTATE GATE I', '24-08-03-028'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'UPDC LEKKI ESTATE GATE II', '24-08-03-029'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'UPDC LEKKI ESTATE BY PLOT 9 CRYSTAL ESTATE JUNCTION', '24-08-03-030'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PLOT 136 UPDC ESTATE ROAD, LEKKI (V)', '24-08-03-031'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'NEIGHBOURHOOD SAFETY CORPS JUCTION', '24-08-03-032'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT MOPOL ZONE', '24-08-03-033'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DR. FAMESHE JUNCTION BY ORILE ILASAN ROAD', '24-08-03-034'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 380 BY IFEOLUWA HOSPITAL JUNCTION', '24-08-03-035'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP BLOCK 132 ILASAN HOUSING ESTATE', '24-08-03-036'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP BLOCK 144 ILASAN HOUSING ESTATE', '24-08-03-037'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BEHIND BLOCK 138 BY MEG-BIG SCH. JUNCTION', '24-08-03-038'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 180 JUNCTION ILASAN HOUSING ESTATE', '24-08-03-039'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 167 ILASAN HOUSING ESTATE', '24-08-03-040'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 129 ILASAN HOUSING ESTATE', '24-08-03-041'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 269 ILASAN HOUSING ESTATE', '24-08-03-042'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 262 ILASAN HOUSING ESTATE', '24-08-03-043'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 156 OPP. ILASAN SECONDARY SCH.', '24-08-03-044'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '4. OBA SAHEED ELEGUSHI STR.', '24-08-03-045'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 12 ILASAN HOUSING ESTATE', '24-08-03-046'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 268 ILASAN HOUSING ESTATE', '24-08-03-047'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 347 ILASAN HOUSING ESTATE', '24-08-03-048'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BLOCK 389 JUNCTION', '24-08-03-049'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF BLOCK 390-410', '24-08-03-050'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MAYEGUN PRY. SCH. I', '24-08-03-051'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AMINU STR. ARO TOWN', '24-08-03-052'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OSENI MAYEGUN BY ABDUL COMPOUND JUNCTION', '24-08-03-053'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MAYEGUN PRY. SCH. II', '24-08-03-054'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-054');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '7, BADRU STR. GBARA', '24-08-03-055'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-055');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF GBARA TOWN', '24-08-03-056'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-056');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GBARA JUNCTION BY BALOGUN STR.', '24-08-03-057'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-057');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MEMUNAT SHITTA STR BY OLOGOLO ROAD JUNCTION', '24-08-03-058'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-058');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BARUWA TOWN BY BARUWA (TRANSFORMER)', '24-08-03-059'
FROM public.wards w
WHERE w.code = '24-08-03'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-03-059');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ITEDO TOWN I', '24-08-04-001'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ITEDO TOWN II', '24-08-04-002'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF IKATE I', '24-08-04-003'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF IKATE II', '24-08-04-004'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKATE LAND I', '24-08-04-005'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKATE LAND II', '24-08-04-006'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKATE LAND III', '24-08-04-007'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKATE LAND IV', '24-08-04-008'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBOKUSU TOWN I', '24-08-04-009'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBOKUSU TOWN II', '24-08-04-010'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBOKUSU TOWN III', '24-08-04-011'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI SCHEME I - I (FIRSTBANK ADMIRALTY WAY)', '24-08-04-012'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI SCHEME I -II (ADMIRALTY WAY)', '24-08-04-013'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI SCHEME I - III (WESTRON CLOSE)', '24-08-04-014'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI SCHEME I - IV( TANTALIZER ROAD)', '24-08-04-015'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI SCHEME I - V ( MODEL PRY. SCH. MARUWA)', '24-08-04-016'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI SCHEME I - VI (CATHOLIC CHURCH)', '24-08-04-017'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI SCHEME I - VII (PAVILION)', '24-08-04-018'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AGUNGI/IDADO TOWN I', '24-08-04-019'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AGUNGI/IDADO TOWN II', '24-08-04-020'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OSAPA LONDON I', '24-08-04-021'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OSAPA LONDON II', '24-08-04-022'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OSAPA LONDON III', '24-08-04-023'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OSAPA LONDON IV', '24-08-04-024'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJIRAN PRY. SCH. I', '24-08-04-025'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJIRAN PRY. SCH. II', '24-08-04-026'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJIRAN PRY. SCH. III', '24-08-04-027'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ODOFIN ST./AJIRAN TOWN', '24-08-04-028'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA PRY. SCH. I', '24-08-04-029'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA PRY. SCH. II', '24-08-04-030'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA PRY. SCH. III', '24-08-04-031'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'VICTORIA GARDEN CITY I', '24-08-04-032'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'VICTORIA GARDEN CITY II', '24-08-04-033'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF CHURCH STREET ITEDO', '24-08-04-034'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. THE APOSTOLIC CHURCH ITEDO', '24-08-04-035'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF HARISON CLOSE, ITEDO', '24-08-04-036'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'END OF HARISON CLOSE, ITEDO', '24-08-04-037'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF IKATE III', '24-08-04-038'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '4, OBA YEKINI ELEGUSHI STR.', '24-08-04-039'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '8, OBA YEKINI ELEGUSHI STR.', '24-08-04-040'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '10, OBA YEKINI ELEGUSHI STR.', '24-08-04-041'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '12, OBA YEKINI ELEGUSHI STR.', '24-08-04-042'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKATE LAND (V)', '24-08-04-043'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '32, OBA YEKINI ELEGUSHI ROAD', '24-08-04-044'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKATE LAND VI', '24-08-04-045'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GBANGBALA STR BY OBA YEKINI ELEGUSHI ROAD', '24-08-04-046'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF FREEDOM WAY', '24-08-04-047'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '18 OBA YEKINI ELEGUSHI ROAD', '24-08-04-048'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP OBA ELEGUSHI PALACE', '24-08-04-049'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '23, OBA ELEGUSHI PALACE ROAD', '24-08-04-050'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF IGBOKUSU TOWN', '24-08-04-051'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'NICON TOWN GATE', '24-08-04-052'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FEMI OKUNU ESTATE GATE PHASE III', '24-08-04-053'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF AL-HUJJAJ MOSQUE, GBOKUSU', '24-08-04-054'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-054');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '15 ERINFOLAMI STR. BY MUYIBI STR. JUNCTION', '24-08-04-055'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-055');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PLATINUM WAY ENTRANCE', '24-08-04-056'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-056');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. FIRST BANK ADMIRALTY WAY', '24-08-04-057'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-057');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADMIRALTY WAY BY WOLE ARIYO STR. JUNCTION', '24-08-04-058'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-058');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADMIRALTY WAY BY OKEKEPO AKANDE STR. JUNCTION', '24-08-04-059'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-059');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. PARKTONIAN HOTEL KAYODE ANIMASHAUN STR.', '24-08-04-060'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-060');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. UBA ADMIRALTY WAY', '24-08-04-061'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-061');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'WESTRON CLOSE BY FATAI AROBIEKE STR.', '24-08-04-062'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-062');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FATAI AROBIEKE SRT. BY ADMIRALTY ROAD JUNCTION', '24-08-04-063'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-063');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'TANTALIZERS ROAD ADMIRALTY ROUNDABOUT', '24-08-04-064'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-064');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLUBUNMI OWA SRT. BY ADMIRALTY WAY', '24-08-04-065'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-065');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OSIBO OFODILE', '24-08-04-066'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-066');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF JOLAYEMI STREET (OPP PINEFIELD SCH.)', '24-08-04-067'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-067');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BASHORUN OKUNSANYA STR BY ADMIRALTY JUNCTION', '24-08-04-068'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-068');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MODEL PRIMARY SCHOOL, OMOWUNMI ADEBIMPE STR.', '24-08-04-069'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-069');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI PHASE I CENTRAL MOSQUE BY OBAOYEKAN', '24-08-04-070'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-070');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DOWEN COLLEGE ADEBAYO DORATHY', '24-08-04-071'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-071');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'THE LAGOON SCH. BY OMOWUNMI ADEBIMPE ROAD', '24-08-04-072'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-072');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CENTRAL LEKKI RESIDENT ESTATE BY OMOWUNMI ADEBIMPE ROAD', '24-08-04-073'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-073');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OTUNBA OGUNGBE ADEDOYIN', '24-08-04-074'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-074');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AKINTOLA AJEIGBE STR. BY OMOWUNMI ADEBIMPE STR.', '24-08-04-075'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-075');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DUROSINMI ETTI JUNCTION BY ADEWUNMI ADEBIMPE STR.', '24-08-04-076'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-076');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AKEEM DICKSON', '24-08-04-077'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-077');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PROVIDENCE STR BY OMOWUNMI ADEBIMPE JUNCTION', '24-08-04-078'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-078');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT OPP. PENNISULA HOTEL, PROVIDENCE SRT.', '24-08-04-079'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-079');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AKINBI DISU SRT. BY PROVIDENCE SRT. JUNCTION', '24-08-04-080'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-080');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ALAYELUWA STR. BY PROVIDENCE SRT. JUNCTION', '24-08-04-081'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-081');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AWKUZU STR. BT HALIFIELD SCHOOL JUNCTION', '24-08-04-082'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-082');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBA OYEKAN ESTATE BY AKEEM DICKSON JUNCTION', '24-08-04-083'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-083');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PAVILON AT ADMIRALTY WAY', '24-08-04-084'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-084');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LEKKI FARM AVENUE BY ADMIRALTY WAY JUNCTION', '24-08-04-085'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-085');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF IDADO MOSQUE', '24-08-04-086'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-086');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CHEVY VIEW ESTATE GATE', '24-08-04-087'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-087');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF AGUNGI AJIRAN', '24-08-04-088'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-088');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '19, AGUNGI AJIRAN ROAD', '24-08-04-089'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-089');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE CHICKEN REPUBLIC AGUNGI AJIRAN ROAD', '24-08-04-090'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-090');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '40 MURITALA STR. OSAPA LONDON', '24-08-04-091'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-091');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '27, BAMIDELE ELETU STR. OSAPA', '24-08-04-092'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-092');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '2, OLUFEMI STR.', '24-08-04-093'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-093');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF FRIENDS COLONY WAY', '24-08-04-094'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-094');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MONARCH GARDEN BY BAMIDELE ELETU', '24-08-04-095'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-095');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '17, EGBODAGBE STR, OSAPA LONDON', '24-08-04-096'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-096');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJIRAN PRY. SCH. AJIRAN ROUND ABOUT IB', '24-08-04-097'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-097');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJIRAN PRY. SCH. AJIRAN ROUND ABOUT IC', '24-08-04-098'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-098');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE THE MOSQUE, AJIRAN', '24-08-04-099'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-099');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF OJOMU VILLA, AJIRAN ILAJE (I)', '24-08-04-100'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-100');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF OJOMU VILLA, AJIRAN ILAJE (II)', '24-08-04-101'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-101');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CARLTON ESTATE MAIN GATE', '24-08-04-102'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-102');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AJIRAN ILAJE', '24-08-04-103'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-103');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ODOFIN STR. BESIDE TRANSFORMER', '24-08-04-104'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-104');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CHARLTON GATE ALONG CHEVRON RD.', '24-08-04-105'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-105');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'NORTHERN FORESHORE ESTATE MAIN GATE', '24-08-04-106'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-106');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CHINESE ESTATE ALONG CHEVRON RD.', '24-08-04-107'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-107');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BAKARE ESTATE MAIN GATE', '24-08-04-108'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-108');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA PRY. SCH IB', '24-08-04-109'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-109');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF BAALE SRT. IKOTA', '24-08-04-110'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-110');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ROAD 2 BY EBUTE IKOTA JUNCTION I', '24-08-04-111'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-111');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA PRY. SCH. IIB', '24-08-04-112'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-112');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ROAD 3 BY RCCG JUNCTION IKOTA', '24-08-04-113'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-113');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ROAD 1 BY ROAD 2 JUNCTION I', '24-08-04-114'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-114');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ROAD 1 BY ROAD 2 JUNCTION II', '24-08-04-115'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-115');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA PRY. SCH. (III B)', '24-08-04-116'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-116');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOTA PRY. SCH. (III C)', '24-08-04-117'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-117');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ROAD 2 BY EBUTE IKOTA JUNCTION II', '24-08-04-118'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-118');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'VICTORIA GARDEN CITY (III)', '24-08-04-119'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-119');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. NO 32A, VICTORIA GARDEN CITY PARK', '24-08-04-120'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-120');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. ROAD 12, JUNCTION VICTORIA GARDEN CITY PARK', '24-08-04-121'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-121');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SECURITY OFFICE, VICTORIA GARDEN CITY PARK', '24-08-04-122'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-122');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INSIDE VICTORIA GARDEN CITY I', '24-08-04-123'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-123');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INSIDE VICTORIA GARDEN CITY II', '24-08-04-124'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-124');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE @ SWISS INT. ROUND ABOUT I', '24-08-04-125'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-125');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE @ SWISS INT. ROUND ABOUT II', '24-08-04-126'
FROM public.wards w
WHERE w.code = '24-08-04'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-04-126');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH PRY. SCHOOL I', '24-08-06-001'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH PRY. SCHOOL II', '24-08-06-002'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH PRY. SCHOOL III', '24-08-06-003'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH PRY. SCHOOL IV', '24-08-06-004'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH HEALTH CENTRE I', '24-08-06-005'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH HEALTH CENTRE II', '24-08-06-006'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH ILAJE BOOTH I', '24-08-06-007'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH ILAJE BOOTH II', '24-08-06-008'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ISALE IJEBU I', '24-08-06-009'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ISALE IJEBU II', '24-08-06-010'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH OPEN SPACE I', '24-08-06-011'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH OPEN SPACE II', '24-08-06-012'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ASOKO TOWN I', '24-08-06-013'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ASOKO TOWN II', '24-08-06-014'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANGOTEDO PRY. SCH. I', '24-08-06-015'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANGOTEDO PRY. SCH. II', '24-08-06-016'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANGOTEDO PRY. SCH. III', '24-08-06-017'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANGOTEDO PRY. SCH. IV', '24-08-06-018'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH PRY. SCHOOL V', '24-08-06-019'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT 5, BALOGUN STREET JUNCTION', '24-08-06-020'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BALOGUN STREET EXIT', '24-08-06-021'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT ROYAL GARDEN ESTATE', '24-08-06-022'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT NO 2, SHITA CLOSE', '24-08-06-023'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH PRY SCHOOL VI', '24-08-06-024'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AIYETORO BERGER STREET', '24-08-06-025'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJAH PRY. SCHOOL VII', '24-08-06-026'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT ALESH HOTEL JUNCTION', '24-08-06-027'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '26/28, AIYETORO RD', '24-08-06-028'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AIYETORO RD. BESIDE 26/28, CELESTIAL CHURCH', '24-08-06-029'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT HEALTH CENTRE', '24-08-06-030'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AJAH ILAJE BOOTH, ILAJE ROAD DOWN', '24-08-06-031'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT ODUGBESE STREET BY NDLEA', '24-08-06-032'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AJAH ILAJE BOOTH, ILAJE ROAD UP', '24-08-06-033'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BERGER JUNCTION BY AIYETORO ROAD', '24-08-06-034'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BY KOJO COMPOUND AGO EGUN', '24-08-06-035'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT OJUPON STR.', '24-08-06-036'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INTERSECTION OF ISALE IJEBU AT OJUPON STR', '24-08-06-037'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE ADEOLA STR. BY KAJOLA MOSQUE', '24-08-06-038'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'TRANSFORMER JUNCTION BY OKE-IKOTA BY ALESH', '24-08-06-039'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BUDE STR. BY THOMAS ESTATE', '24-08-06-040'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT NO 1, OSAPA STR. BY DORIN HOSPITAL GATE', '24-08-06-041'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. VICTORY ESTATE', '24-08-06-042'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '3, JINADU STREET', '24-08-06-043'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT DORIN HOSPITAL GATE', '24-08-06-044'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT MAKARIOUS STREET, AJAH', '24-08-06-045'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '10 FAMILY JUNCTION', '24-08-06-046'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE OPP. LBS. PAN AFRICAN UNIVERSITY', '24-08-06-047'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRSC GATE', '24-08-06-048'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF VINTAGE TREASURE ESTATE, OKO ADO B/STOP. I', '24-08-06-049'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF VINTAGE TREASURE ESTATE, OKO ADO B/STOP. II', '24-08-06-050'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BY TREASURE ESTATE', '24-08-06-051'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF NO 1, ABIODUN BANIRE STR. ALFA OGIDAN', '24-08-06-052'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '16, CHURCH STR. ALFA OGIDAN', '24-08-06-053'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANGOTEDO PRY. SCH. V', '24-08-06-054'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-054');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT SANGOTEDO COUNCIL SECRETARIAT', '24-08-06-055'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-055');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT KM 52, LEKKI EPE', '24-08-06-056'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-056');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANGOTEDO PRY. SCH. VI', '24-08-06-057'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-057');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLOKO CLOSE', '24-08-06-058'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-058');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'RAFIU AJAKAIYE STR', '24-08-06-059'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-059');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF SANGOTEDO COUNCIL SECRETARIAT', '24-08-06-060'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-060');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GANIU OLUBUSE', '24-08-06-061'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-061');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '86 OKEMALE STREET', '24-08-06-062'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-062');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '25, BORROWPIT JUNCTION', '24-08-06-063'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-063');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SANGOTEDO PRY. SCH. VII', '24-08-06-064'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-064');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '21 YAKUBU IMAM OLUFUNKE STR', '24-08-06-065'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-065');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '6, KEJI OLAJIDE STR. MAJEK BASHORUN I', '24-08-06-066'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-066');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. 6, KEJI OLAJIDE STR. MAJEK BASHORUN II', '24-08-06-067'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-06-067');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO PRY. SCH. I', '24-08-07-001'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO PRY. SCH. II', '24-08-07-002'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKE-IRA NLA JUNCTION', '24-08-07-003'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKE-IRA NLA', '24-08-07-004'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO PRY. SCH.', '24-08-07-005'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO TOWN', '24-08-07-006'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BADORE TOWN', '24-08-07-007'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BADORE PRY. SCH.', '24-08-07-008'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LANGBASA PRY. SCH. I', '24-08-07-009'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LANGBASA PRY. SCH. II', '24-08-07-010'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LANGBASA PRY. SCH. III', '24-08-07-011'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SCHOOL PREMISES, ADDO', '24-08-07-012'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SUNNY VILLA BY COMMONWEALTH ADDO', '24-08-07-013'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO PRY SCH, III', '24-08-07-014'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO PRY SCH IV', '24-08-07-015'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IDIORO JUNCTION, ADDO', '24-08-07-016'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OKETIRI JUNCTION BY KEMFORT HOTEL, ADDO', '24-08-07-017'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. HOUSE 4 SALIU OBODO RD. OKEIRA NLA', '24-08-07-018'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SALIU OBODO AT OKEIRA NLA JUNCTION ADDO RD', '24-08-07-019'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GOOD HOME ESTATE JUNCTION', '24-08-07-020'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MARSHYHILL ESTATE BY POWER LINE', '24-08-07-021'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LORD''S WAY JUNCTION', '24-08-07-022'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1, IDOWU BAALE STR. OFF ADO RD. OKEIRA KEKERE', '24-08-07-023'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'END OF CHIEF IDOWU BAALE STR. OFF CELE CLOSE', '24-08-07-024'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AJEBO MARKET BY POWER LINE', '24-08-07-025'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO PRY. SCH. V', '24-08-07-026'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO PRY. SCH. VI', '24-08-07-027'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'TIAMIYU STREET JUNCTION, ADDO', '24-08-07-028'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ITUN EGBE JUNCTION OFF ADDO RD', '24-08-07-029'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADDO KEKERE OWODE ROUND ABOUT', '24-08-07-030'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BADORE PRY SCH. II', '24-08-07-031'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BADORE PRY SCH. III', '24-08-07-032'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BY BAALE BUS STOP JUNCTION', '24-08-07-033'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT AGO-TAPA', '24-08-07-034'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '1, JATTO STR. OPP. CENTRAL MOSQUE', '24-08-07-035'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'COMMUNITY SEN. SEC. SCH. BADORE', '24-08-07-036'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SILVER POINT ESTATE GATE', '24-08-07-037'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT CARWASH OPP. JOYCEVILLE SCH.', '24-08-07-038'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT OLUWASEYI MARKET ISALE IJEBU', '24-08-07-039'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '3, OLAYIWOLA STREET IYEMOJA', '24-08-07-040'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '15, FIRST UNITY ESTATE', '24-08-07-041'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'COOPERATIVE VILLA JUNCTION, COOPERATIVE RD', '24-08-07-042'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SEASIDE ESTATE GATE, PAPA B/STOP', '24-08-07-043'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. BADORE CENTRAL MOSQUE', '24-08-07-044'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION BESIDE 3, KEHINDE AJOSE STR', '24-08-07-045'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LANGBASA PRY. SCH. IV', '24-08-07-046'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LANGBASA PRY. SCH. V', '24-08-07-047'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AKINGUNLA CLOSE LANGBASA', '24-08-07-048'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF KINGLSEY OSU STREET', '24-08-07-049'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LANGBASA PRY. SCH. VI', '24-08-07-050'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LANGBASA PRY. SCH. VII', '24-08-07-051'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT KOBISHESE COMPOUND', '24-08-07-052'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LANGBASA PRY. SCH. VIII', '24-08-07-053'
FROM public.wards w
WHERE w.code = '24-08-06'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-07-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IKOYI/OSBORN ROAD', '24-08-09-001'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'CAMERON ROAD', '24-08-09-002'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'LUGARD/BARROW', '24-08-09-003'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GLOVER ROAD I', '24-08-09-004'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GLOVER ROAD II', '24-08-09-005'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'THOMPSON AVENUE', '24-08-09-006'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PARK VIEW/SOULE CLOSE I', '24-08-09-007'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PARK VIEW/SOULE CLOSE II', '24-08-09-008'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'PARK VIEW/SOULE CLOSE III', '24-08-09-009'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'REEVE ROAD I', '24-08-09-010'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'REEVE ROAD II', '24-08-09-011'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ONITOLO/OJORA ROAD', '24-08-09-012'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GERRARD ROAD I', '24-08-09-013'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'GERRARD ROAD II', '24-08-09-014'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MILVERTON ROAD', '24-08-09-015'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ALEXANDER', '24-08-09-016'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ONIKOYI ROAD', '24-08-09-017'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLOTO/ONISIWO ROAD', '24-08-09-018'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FEMI OKUNNU/LATEEF JAKANDE', '24-08-09-019'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BOURDILLION ROAD', '24-08-09-020'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ONIRU/MOORE ROAD', '24-08-09-021'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AROMIRE/OLUMEGBON', '24-08-09-022'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'RUMENS/OLAWALE DAWODU ROAD', '24-08-09-023'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MACPHERSON AVENUE/ILADO CLOSE I', '24-08-09-024'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'MACPHERSON AVENUE/ILADO CLOSE II', '24-08-09-025'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ADEYEMI LAWSON/ILU DRIVE', '24-08-09-026'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ILABERE AVENUE', '24-08-09-027'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OYINKAN B/STOP', '24-08-09-028'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IPEWU/MEKUNWEN', '24-08-09-029'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FALOMO', '24-08-09-030'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FALOMO POLICE BARRACKS I', '24-08-09-031'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FALOMO POLICE BARRACKS II', '24-08-09-032'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FALOMO POLICE BARRACKS III', '24-08-09-033'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FALOMO POLICE BARRACKS IV', '24-08-09-034'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF BAYO KUKU STR.', '24-08-09-035'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OLU HOLLOW WAY JUNCTION. IKOYI', '24-08-09-036'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '45, CAMERON RD. OPP. COCACOLA', '24-08-09-037'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT OSBORNE FORESHORE ESTATE PHASE I', '24-08-09-038'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE AT OSBORNE FORESHORE ESTATE PHASE II', '24-08-09-039'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'HOUSE 36, LUGARD STREET', '24-08-09-040'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE LAGOS PREPARATRY SCHOOL.', '24-08-09-041'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '33, GLOVER ROAD', '24-08-09-042'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. ENTRANCE THOMPSON AVENUE', '24-08-09-043'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF IGE SHONUBI CR', '24-08-09-044'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'EXIT OF IGE SHONUBI CR', '24-08-09-045'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. 5 SOULE CLOSE, IKOYI', '24-08-09-046'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. HOUSE 9, BODE OLAJUMOKE CRESCENT', '24-08-09-047'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE CLAPTON COURT', '24-08-09-048'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '6, MOSLEY JUNCTION, IKOYI', '24-08-09-049'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF NNPC', '24-08-09-050'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF JABITA CLOSE', '24-08-09-051'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF BANANA ISLAND ROAD', '24-08-09-052'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '8, ONIKOYI ROAD', '24-08-09-053'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPEN SPACE BANANA ISLAND ESTATE', '24-08-09-054'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-054');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. FEMI OKUNNU/LATEEF JAKANDE, IKOYI', '24-08-09-055'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-055');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE 17A BOURDILLON ROAD', '24-08-09-056'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-056');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, '17A BOURDILLON ROAD', '24-08-09-057'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-057');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF ABRAHAMS COURT, IKOYI', '24-08-09-058'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-058');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF ILU DRIVE OFF ADEYEMI LAWSON', '24-08-09-059'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-059');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF IKOYA OFF MACPHERSON', '24-08-09-060'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-060');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'JUNCTION OF OLADELE LAWORE DRIVE', '24-08-09-061'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-061');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INSIDE IRETI PRIMARY SCHOOL, IKOYI', '24-08-09-062'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-062');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE OF POLICE HOSPITAL', '24-08-09-063'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-063');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE POLICE BARRACKS, IKOYI', '24-08-09-064'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-064');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE POLICE BARRACKS OPP. ECOBANK,', '24-08-09-065'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-065');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'UNDER FALOMO BRIDGE', '24-08-09-066'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-066');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INFRONT OF AA COURT CLOSE OFF BOURDILLION RD', '24-08-09-067'
FROM public.wards w
WHERE w.code = '24-08-09'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-09-067');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBALENDE PRY. SCH. I', '24-08-10-001'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-001');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBALENDE PRY. SCH. II', '24-08-10-002'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-002');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBALENDE PRY. SCH. III', '24-08-10-003'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-003');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBALENDE PRY. SCH. IV', '24-08-10-004'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-004');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IJEH HFP HOUSING ESTATE I', '24-08-10-005'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-005');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IJEH HOUSING ESTATE II', '24-08-10-006'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-006');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IJEH HFP HOUSING ESTATE III', '24-08-10-007'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-007');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IJEH HOUSING ESTATE IV', '24-08-10-008'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-008');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'EXIT OF IJEH HOUSING ESTATE', '24-08-10-009'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-009');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'NIGERIA GIRL''S GUIDE ASSOCIATION I', '24-08-10-010'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-010');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'NIGERIA GIRL''S GUIDE ASSOCIATION II', '24-08-10-011'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-011');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'NIGERIA GIRL''S GUIDE ASSOCIATION III', '24-08-10-012'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-012');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DODAN BARRACKS I', '24-08-10-013'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-013');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DODAN BARRACKS II', '24-08-10-014'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-014');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DODAN BARRACKS III', '24-08-10-015'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-015');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'DODAN BARRACKS IV', '24-08-10-016'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-016');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ETI-OSA HEALTH CENTRE', '24-08-10-017'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-017');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'POLICE BARRACKS I', '24-08-10-018'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-018');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'POLICE BARRACKS II', '24-08-10-019'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-019');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'POLICE BARRACKS III', '24-08-10-020'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-020');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KGIRLS MODERN ACADEMY', '24-08-10-021'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-021');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'KEFFI STREET/AUNTY AYO', '24-08-10-022'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-022');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'SCHOOL OF NURSING', '24-08-10-023'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-023');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBO STR./AJENIYA STR. I', '24-08-10-024'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-024');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'AJENIYA STR./OJO ST.', '24-08-10-025'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-025');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ODO/ ST./KEFFI ST.', '24-08-10-026'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-026');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ODO ST./OJO ST.', '24-08-10-027'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-027');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ODO ST./IGBO ST.', '24-08-10-028'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-028');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ODO ST.', '24-08-10-029'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-029');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ST. GREGORY''S ROAD/ODO ST. I', '24-08-10-030'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-030');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ST. GREGORY''S ROAD/ODO ST. II', '24-08-10-031'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-031');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ST. GREGORY''S ROAD/ODO ST. III', '24-08-10-032'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-032');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ST. GREGORY''S COLLEGE I', '24-08-10-033'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-033');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ST. GREGORY''S COLLEGE II', '24-08-10-034'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-034');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'HOLY CHILD COLLEGE I', '24-08-10-035'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-035');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'HOLY CHILD COLLEGE II', '24-08-10-036'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-036');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'HOLY CHILD COLLEGE III', '24-08-10-037'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-037');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBALENDE PRY SCHOOL GATE I', '24-08-10-038'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-038');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBALENDE PRY SCHOOL GATE II', '24-08-10-039'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-039');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OBALENDE PRY SCHOOL GATE III', '24-08-10-040'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-040');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. CENTRAL MOSQUE IJEH DOLPHIN BY KOSOFE RD.', '24-08-10-041'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-041');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. BLOCK 13, AGEGE LANE', '24-08-10-042'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-042');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INSIDE NIGERIA GIRLS GUIDE ASSOCIATION I', '24-08-10-043'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-043');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'INSIDE NIGERIA GIRLS GUIDE ASSOCIATION II', '24-08-10-044'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-044');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE HOUSE 76, OBALENDE', '24-08-10-045'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-045');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE 80 OBALENDE RD', '24-08-10-046'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-046');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF HEALTH CENTRE', '24-08-10-047'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-047');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE POLICE BARRACK BY WOMENS BARRACK', '24-08-10-048'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-048');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE BLOCK 6 OBALENDE POLICE BARRACK', '24-08-10-049'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-049');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'OPP. JUNCTION OF ELESHIN', '24-08-10-050'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-050');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE AUNTY AYO INTERNATIONAL', '24-08-10-051'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-051');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE KEFFI STREET/AUNTY AYO', '24-08-10-052'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-052');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'ENTRANCE KEFFI STREET/AUNTY AYO', '24-08-10-053'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-053');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE 22, AWOLOWO RD', '24-08-10-054'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-054');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'IGBO STR./AJENIYA STR II', '24-08-10-055'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-055');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE JUNCTION OF 62 AJENIYA', '24-08-10-056'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-056');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE JUNCTION OF 62 AJENIYA I', '24-08-10-057'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-057');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE NO 86, ODO OFF KEFFI STR', '24-08-10-058'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-058');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE 32, IGBO STR', '24-08-10-059'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-059');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'FRONT OF 31 ODO STR OFF IGBO STR', '24-08-10-060'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-060');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE NO 1, ODO SRT', '24-08-10-061'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-061');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE NO 1, TOYAN STR', '24-08-10-062'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-062');

INSERT INTO public.polling_units (ward_id, name, code)
SELECT w.id, 'BESIDE NO 48 TOYAN STR', '24-08-10-063'
FROM public.wards w
WHERE w.code = '24-08-10'
AND NOT EXISTS (SELECT 1 FROM public.polling_units pu WHERE pu.code = '24-08-10-063');
