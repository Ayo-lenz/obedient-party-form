-- Enable UUID generation
create extension if not exists "pgcrypto";

-- ============================================================
-- WARDS
-- ============================================================

create table if not exists public.wards (
    id uuid primary key default gen_random_uuid(),
    name text not null,
    code text not null unique,
    created_at timestamptz not null default now()
);

create index if not exists idx_wards_code
on public.wards(code);

-- ============================================================
-- POLLING UNITS
-- ============================================================

create table if not exists public.polling_units (
    id uuid primary key default gen_random_uuid(),

    ward_id uuid not null
        references public.wards(id)
        on delete cascade,

    name text not null,

    code text,

    created_at timestamptz not null default now()
);

create index if not exists idx_polling_units_ward
on public.polling_units(ward_id);

-- ============================================================
-- APPLICATIONS
-- ============================================================

create table if not exists public.applications (

    id uuid primary key default gen_random_uuid(),

    surname text not null,

    first_name text not null,

    other_names text,

    phone text not null unique,

    has_smartphone boolean not null,

    membership_card_url text not null,

    passport_url text not null,

    ward_id uuid
        references public.wards(id),

    polling_unit_id uuid
        references public.polling_units(id),

    status text not null default 'pending',

    created_at timestamptz not null default now()
);

create index if not exists idx_applications_ward
on public.applications(ward_id);

create index if not exists idx_applications_status
on public.applications(status);

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================

alter table public.wards enable row level security;
alter table public.polling_units enable row level security;
alter table public.applications enable row level security;

-- ============================================================
-- PUBLIC READ ACCESS
-- ============================================================

create policy "Anyone can view wards"
on public.wards
for select
using (true);

create policy "Anyone can view polling units"
on public.polling_units
for select
using (true);

create policy "Anyone can create application"
on public.applications
for insert
with check (true);