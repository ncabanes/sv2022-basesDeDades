.open cursos1m

-- Creació de taules

create table professors(codi varchar(5) primary key, nom varchar(30));
create table cursos(
  codi varchar(5) primary key, 
  nom varchar(30), 
  inici varchar(10), 
  codi_professor varchar(5)
);

-- Inserció de dades

insert into professors values("n", "Nacho");
insert into professors values("j", "Javier");

insert into cursos values("j", "Java", "2022-10-03", "n");
insert into cursos values("c#", "C#", "2022-09-20", "n");
insert into cursos values("o", "Oracle", "2022-10-10", "n");

-- Exemples de modificació de dades

update cursos set codi_professor="j" where codi = "o";
replace into cursos values("j", "Java", "2022-10-03", "j");

-- Intent incorrecte de mostrar les dades: camp ambigu

select nom from cursos, professors;

-- Intent incorrecte: producte cartesià

select cursos.nom, professors.nom from cursos, professors;

-- Intent correcte

select cursos.nom, professors.nom from cursos, professors
where professors.codi = cursos.codi_professor;

-- Comprobació dels noms dels atributs

.mode column

select cursos.nom, professors.nom from cursos, professors
where professors.codi = cursos.codi_professor;

-- Alias per als atributs

select cursos.nom as nomCurso, professors.nom as nomProfessor from cursos, professors
where professors.codi = cursos.codi_professor;

-- Alias per a les taules

select c.nom as nomCurso, p.nom as nomProfessor from cursos c, professors p
where p.codi = c.codi_professor;

