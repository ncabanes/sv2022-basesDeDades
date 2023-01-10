-- Exercici 04.04

-- .open articlesCategories2

create table categories(
    codi numeric(3) primary key,
    nom varchar(30)
);

create table articles(
    codi varchar(10),
    marca varchar(20),
    model varchar(30),
    preu numeric(6,2),
    codi_categoria numeric(3),
    primary key (codi),
    foreign key (codi_categoria) references categories(codi)
);

-- Introducció de dades d'exemple

insert into categories values(1, 'Ratón gaming');
insert into categories values(2, 'Teclado mecánico');
   
insert into articles values('l203', 'Logitech', 'G203', 47.99, 1);
insert into articles values('rbs', 'Razer', 'Basilisk', 75, 1);
insert into articles values('rbw', 'Razer', 'Blackwidow', 99.99, 2);
insert into articles values('c63', 'Corsair', 'K63', 109.99, 2);

-- A partir de les dades de articles, afig un article sense preu i obtingues:

insert into articles values('rh', 'Razer', 'Huntsman', NULL, 2);

-- La quantitat de dades introduïdes.

select count(*) from articles;

select count(codi) from articles;
select count(preu) from articles;

-- El preu del article més car.

select max(preu) from articles;

-- El preu del article més barat.

select min(preu) from articles;

-- La mitjana de preus.

select avg(preu) from articles;

-- La quantitat de diners necessaris 
-- per a comprar tots els articles

select sum(preu) from articles;
