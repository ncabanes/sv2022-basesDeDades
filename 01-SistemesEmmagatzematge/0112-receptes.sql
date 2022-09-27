.open receptes
create table receptes (
    nom varchar(50),
    ingredients varchar(100),
    dificultat char(1),
    temps varchar(3),
    detalls varchar(300)
);

insert into receptes values (
    "macarrones con queso", "pasta, queso, tomate", "2", "12", "");
insert into receptes values (
    "sopa de sobre", "sobre de sopa", "1", "3", "");

select * from receptes;
