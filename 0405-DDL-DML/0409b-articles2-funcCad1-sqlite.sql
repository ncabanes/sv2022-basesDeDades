-- Exercici 04.09

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
insert into articles values('ss1', 'Steelseries', NULL, NULL, 2);

--A partir de les dades d'articles, has de mostrar:

-- Marca i model en majúscules
select upper(marca) as marca, upper(model) as model
from articles;


-- Marques en minúscules, sense repetits, 
-- precedides per "Marca: "

select distinct 'Marca: ' || lower(marca) as detalls
from articles;


-- Caràcter 97 del codi ASCII

select char(97) from articles;

select char(97);
