--proyectos(cod_proyecto, nombreproyecto, cod_director, nombredirector)
-- CP: Cod_proyecto
-- CU: Cod_director

.open projectes11c

create table proyectos(
    codProyecto numeric(3) primary key,
    nombreProyecto varchar(40),
    codDirector numeric(3) unique not null,
    nombreDirector varchar(40)
);

insert into proyectos values(1, "Escuela infantil", 1, "Pepita Fernandez");
insert into proyectos values(2, "Universidad Privada", 2, "Ramiro Dominguez");
insert into proyectos values(3, "Aeropuerto Castellon", 3, "Alberto Fabra");
insert into proyectos values(4, "Circuito Formula 1", 4, "Rita Barbera");

select nombreProyecto, nombreDirector from proyectos;

-- Escuela infantil|Pepita Fernandez
-- Universidad Privada|Ramiro Dominguez
-- Aeropuerto Castellon|Alberto Fabra
-- Circuito Formula 1|Rita Barbera
