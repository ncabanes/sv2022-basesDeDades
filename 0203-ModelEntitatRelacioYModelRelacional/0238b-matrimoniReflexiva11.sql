--Persona(DNI, Nombre, DNIconyuge)
-- CP: DNI
-- CAj: DNIconyuge --> Persona

.open matrimonio11;

create table personas(
	dni varchar(9) primary key,
	nombre varchar(50), 
	dniconyuge varchar(9) unique,
	foreign key (dniconyuge) references personas (dni)
);

insert into personas values("1", "Alvaro", NULL);
insert into personas values("2", "Irene", "3");
insert into personas values("3", "Ramiro", "2");

insert into personas values("2", "Irene", "4"); -- Código duplicado
-- Runtime error: UNIQUE constraint failed: personas.dni (19)

insert into personas values("2", "Irene", "2"); -- Cónyuge duplicado
-- Runtime error: UNIQUE constraint failed: personas.dniconyuge (19)

select p1.nombre, p2.nombre
from personas p1, personas p2
where p1.dniconyuge = p2.dni;

--Irene|Ramiro
--Ramiro|Irene
