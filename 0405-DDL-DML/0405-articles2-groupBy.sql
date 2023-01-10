-- Exercici 04.05

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
insert into articles values('rh', 'Razer', 'Huntsman', NULL, 2);


-- La quantitat de articles de cada marca

select marca, count(*)
from articles
group by marca;

-- La quantitat de articles de cada marca, (que apareixerà 
-- amb la paraula "quantitat"), ordenats de major a menor quantitat
-- i, si la quantitat coincideix, alfabèticament per marca

select marca, count(*) as quantitat
from articles
group by marca
order by quantitat desc, marca asc;

-- El preu mitjà dels articles de cada marca

select marca, avg(preu) as preuMitja
from articles
group by marca;
