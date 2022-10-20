-- treballadors(codi, nom, adreca, telef, email, codiCap)
-- CP: codi
-- CAj: codiCap -> treballadors


.open treballadorsReflex1M

create table treballadors(
    codi varchar(3) primary key,
    nom varchar(40),
    adreca varchar(60),
    telef varchar(20),
    email varchar(40),
    codiCap varchar(3),
    foreign key (codiCap) REFERENCES treballadors(codi)
);

insert into treballadors values("ev", "Erik Varela", "Su calle", "96", NULL, NULL);
insert into treballadors values("pv", "Pablo Varó", "La otra calle", NULL, "@2", "ev");

select treb.nom, cap.nom
from treballadors treb, treballadors cap
where treb.codiCap = cap.codi;

-- Pablo Varó|Erik Varela
