.open articlesCategories

-- Model relacional

-- categories( codi, nom )
-- CP: codi

-- articles( codi, nom, codi_categoria )
-- CP: codi
-- CAj: codi_categoria -> categories

create table categories(
    codi numeric(3) primary key,
    nom varchar(30)
);

create table articles(
    codi varchar(10),
    nom varchar(30),
    codi_categoria numeric(3),
    primary key (codi),
    foreign key (codi_categoria) references categories(codi)
);

insert into categories values(1, "Ratón gaming");
insert into categories values(2, "Teclado mecánico");
   
insert into articles values("l203", "Logitech G203", 1);
insert into articles values("rbs", "Razer Basilisk", 1);
insert into articles values("rbw", "Razer Blackwidow", 2);
insert into articles values("c63", "Corsair K63", 2);


select articles.nom, categories.nom 
from categories, articles 
where codi_categoria = categoria.codi;


select articles.nom 
from categories, articles 
where codi_categoria = categoria.codi
and articles.nom like "L%"
and categories.nom like "%gaming%";
