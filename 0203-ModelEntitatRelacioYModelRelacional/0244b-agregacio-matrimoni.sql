.open juzgados

create table hombres (id numeric(2), nombre varchar(50));
create table mujeres (id numeric(2), nombre varchar(50));
create table juzgados (id varchar(4), nombre varchar(50));

create table casarse (
    id_hombre numeric(2), id_mujer numeric(2), id_juzgado varchar(4), 
    primary key (id_hombre, id_mujer), 
    foreign key (id_hombre) references hombres(id), 
    foreign key (id_mujer) references mujeres(id), 
    foreign key (id_juzgado) references juzgados(id));

insert into hombres values (1, "Juan Pérez");
insert into hombres values (2, "Jose Manuel");

insert into mujeres values (1, "Irene Pérez");
insert into mujeres values (2, "Maria Antonia");

insert into juzgados values ("JSV", "Juzgado San Vicente del Raspeig");
insert into juzgados values ("JA", "Juzgado Alcoy");

insert into casarse values (1, 2, "JSV");
insert into casarse values (2, 1, "JSV");

insert into casarse values (2, 1, "JA"); -- !!

select 
	hombres.nombre as Maridos, 
	mujeres.nombre as Esposas, 
	juzgados.nombre as Juzgado
from hombres, mujeres, juzgados, casarse 
where casarse.id_hombre = hombres.id 
	and casarse.id_mujer = mujeres.id
	and casarse.id_juzgado = juzgados.id;

