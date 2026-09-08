-- Make polling unit code globally unique so upserts can safely target code values
create unique index if not exists idx_polling_units_code
on public.polling_units(code);
