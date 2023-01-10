-- Exercici 04.07

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

--A partir de les dades d'articles, has de mostrar:
-- Els preus multiplicats per 10
-- El valor absolut dels preus
-- La resta de dividir cada preu entre 10
-- Cada preu elevat al quadrat
-- L'arrel quadrada de cada preu

select marca, model, preu,
	preu * 10 as preuPerDeu,
	abs(preu) as valorAbsolutDelPreu,
	mod(preu, 10) as restaDeu,
	power(preu, 2) as quadrat,
	sqrt(preu) as arrel
from articles;

