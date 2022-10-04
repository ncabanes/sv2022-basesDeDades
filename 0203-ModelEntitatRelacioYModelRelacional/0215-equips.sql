.open futbol;

create table equipo(
    codigo numeric(2) primary key,
    nombre varchar(30)
);

create table jugador(
    codigo varchar(10) primary key,
    nombre varchar(30),
    codigo_equipo numeric(2)
);

insert into equipo values(
    1, "Real Madrid"
);
insert into equipo values(
    2, "Atletico Madrid"
);
   
insert into jugador values(
    "ben", "Benzema", 1
);
insert into jugador values(
    "car", "Carrasco", 2
);
insert into jugador values(
    "vin", "Vinicius", 1
);
insert into jugador values(
    "obl", "Oblak", 2
);

select jugador.nombre, equipo.nombre 
from equipo, jugador 
where codigo_equipo = equipo.codigo;

-- Benzema|Real Madrid
-- Carrasco|Atletico Madrid
-- Vinicius|Real Madrid
-- Oblak|Atletico Madrid
