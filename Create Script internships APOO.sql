create table if not exists "Proiect APOO".angajati
(
    id                  integer not null
        constraint angajati_pk
            primary key,
    nume                varchar,
    email               varchar,
    functie             varchar,
    cadru_de_activitate varchar,
    expertiza           varchar,
    observatii          varchar
);

alter table "Proiect APOO".angajati
    owner to postgres;

create table if not exists "Proiect APOO".internship
(
    nume_pozitie         varchar,
    platit               boolean default false,
    numar_ore_saptamanal integer,
    id_coordonator       integer
        constraint internship_pk3
            unique,
    id_echipa            integer
        constraint internship_pk
            unique,
    data_inceput         date,
    data_sfarsit         date,
    observatii           varchar,
    stare                varchar,
    id                   integer not null
        constraint id
            primary key,
    id_angajat_intern    integer
        constraint internship_pk2
            unique
        constraint internship_angajati_id_fk
            references "Proiect APOO".angajati
);

alter table "Proiect APOO".internship
    owner to postgres;

create table if not exists "Proiect APOO".activitati
(
    id                integer not null
        constraint activitati_pk
            primary key,
    nume              varchar,
    descriere         varchar,
    data_creare       date,
    termen_finalizare date,
    id_internship     integer
        constraint activitati_internship_id_fk
            references "Proiect APOO".internship,
    ore_estimate      integer,
    stare             varchar,
    observatii        varchar
);

alter table "Proiect APOO".activitati
    owner to postgres;

create index if not exists "Internship_stare_index"
    on "Proiect APOO".internship (stare);

create table if not exists "Proiect APOO".legaturi_echipe
(
    id_echipa  serial
        constraint legaturi_echipe_internship_id_echipa_fk
            references "Proiect APOO".internship (id_echipa),
    id_angajat integer not null
        constraint legaturi_echipe_angajati_id_fk
            references "Proiect APOO".angajati
);

alter table "Proiect APOO".legaturi_echipe
    owner to postgres;

create table if not exists "Proiect APOO".echipamente
(
    id            integer not null
        constraint echipamente_pk
            primary key,
    nume          varchar,
    serial_number integer,
    tip           varchar,
    id_angajat    integer
        constraint echipamente_angajati_id_fk
            references "Proiect APOO".angajati
);

alter table "Proiect APOO".echipamente
    owner to postgres;

