--equips(codi, nom)
-- CP: codi

--jugar(codiEquip1, codiEquip2, data)
-- CP: (codiEquip1, codiEquip2, data)
-- CAj: codiEquip1 -> equips
-- CAj: codiEquip2 -> equips

.open equipsReflex

create table equips(
    codi varchar(3) primary key,
    nom varchar(40)
);

create table jugar(
    codiEquip1 varchar(3),
    codiEquip2 varchar(3),
    data varchar(10),
    primary key (codiEquip1, codiEquip2, data),
    foreign key (codiEquip1) REFERENCES equips(codi),
    foreign key (codiEquip2) REFERENCES equips(codi)
);

insert into equips values("do", "Dortmund");
insert into equips values("ba", "Bayern");
insert into equips values("du", "Düsseldorf");

insert into jugar values("do", "du", "2022-09-20");
insert into jugar values("do", "ba", "2022-10-18");
insert into jugar values("do", "du", "2022-10-20");

select e1.nom, e2.nom, data
from equips e1, equips e2, jugar
where codiEquip1 = e1.codi 
and codiEquip2 = e2.codi;
