-- Exercici 04.03 (02.19 ampliat)

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


-- Consultes variades

-- 1. Dades de les categories.
-- 2. Marca, model i preu dels articles.
-- 3. Marca, model i preu dels articles, el preu dels quals és major que 20 i menor que 100.
-- 4. Marca, model i nom de categoria per a tots els articles.
-- 5. Marca i model dels articles de categoria "Ratón gaming".
-- 6. Marca i model dels articles de categoria "Ratón gaming", la marca del qual comença per L.
-- 7. Marques que comencen per L o per R.
-- 8. Marques que comencen per L o per R, sense duplicats.
-- 9. Marca, model i preu dels articles, ordenats del més car al més barat.
-- 10. Marca, model i nom de categoria per a tots els articles, ordenats per marca, ascendent, i, si coincideix, per model, també ascendent.
