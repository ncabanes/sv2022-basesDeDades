.open cursosMM

-- professors(codi, nom)
-- CP: codi

-- cursos(codi, nom, inici)
-- CP: codi

-- impartir(codi_professor, codi_curso)
-- CP: codi_professor, codi_curso
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
    primary key (codi_professor, codi_curso),
    foreign key (codi_professor) references professors(codi),
    foreign key (codi_curso) references cursos(codi)
);


-- Inserció de dades

insert into professors values("n", "Nacho");
insert into professors values("j", "Javier");

insert into cursos values(1, "Java", "2022-10-03");
insert into cursos values(23, "C#", "2022-09-20");
insert into cursos values(45, "Oracle", "2022-10-10");

insert into impartir values("n", 1);
insert into impartir values("n", 23);
insert into impartir values("n", 45);
insert into impartir values("j", 45);

-- Intent incorrecte: producte cartesià

select cursos.nom, professors.nom 
from cursos, impartir, professors;

-- Intent correcte

select cursos.nom, professors.nom 
from cursos, impartir, professors
where impartir.codi_professor = professors.codi
and impartir.codi_curso = cursos.codi;

