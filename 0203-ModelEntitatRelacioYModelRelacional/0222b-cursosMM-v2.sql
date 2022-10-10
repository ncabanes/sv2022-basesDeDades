.open cursosMM2

-- professors(codi, nom)
-- CP: codi

-- cursos(codi, nom, inici)
-- CP: codi

-- impartir(codi_professor, codi_curso, tema)
-- CP: codi_professor, codi_curso, tema
-- CAj: codi_professor -> professors
-- CAj: codi_curso -> cursos


-- Creació de taules

create table professors(
    codi varchar(5) primary key, 
    nom varchar(30)
);
    
create table cursos(
    codi numeric(3) primary key, 
    nom varchar(30), 
    inici varchar(10)
);

create table impartir(
    codi_professor varchar(5), 
    codi_curso numeric(3), 
    tema numeric(2), 
    primary key (codi_professor, codi_curso, tema),
    foreign key (codi_professor) references professors(codi),
    foreign key (codi_curso) references cursos(codi)
);


-- Inserció de dades

insert into professors values("n", "Nacho");
insert into professors values("j", "Javier");

insert into cursos values(1, "Java", "2022-10-03");
insert into cursos values(23, "C#", "2022-09-20");
insert into cursos values(45, "Oracle", "2022-10-10");

insert into impartir values("n", 1, 1);
insert into impartir values("n", 1, 2);
insert into impartir values("n", 23, 1);
insert into impartir values("n", 23, 2);
insert into impartir values("n", 45, 1);
insert into impartir values("j", 45, 2);
insert into impartir values("n", 45, 3);
insert into impartir values("j", 45, 3);

-- Otenció de dades

select cursos.nom, professors.nom, tema
from cursos, impartir, professors
where impartir.codi_professor = professors.codi
and impartir.codi_curso = cursos.codi;

-- nom     nom     tema
-- ------  ------  ----
-- Java    Nacho   1
-- Java    Nacho   2
-- C#      Nacho   1
-- C#      Nacho   2
-- Oracle  Nacho   1
-- Oracle  Javier  2
-- Oracle  Nacho   3
-- Oracle  Javier  3

