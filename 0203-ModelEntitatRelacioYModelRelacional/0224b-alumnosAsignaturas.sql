-- alumnos(id,nombre)
-- CP:id
-- 
-- asignaturas(id,nombre)
-- CP:id
-- 
-- notas(id_alumno,id_asignatura,nota,anyo)
-- CP:id_alumno,id_asignatura,anyo
-- CAj:id_alumno->alumnos
-- CAj:id_asignatura->asignaturas

.open alumnosAsignaturas

CREATE TABLE alumnos(
	id NUMERIC(3) PRIMARY KEY, 
	nombre VARCHAR(50)
);

CREATE TABLE asignaturas(
	id NUMERIC(3) PRIMARY KEY, 
	nombre VARCHAR(60)
);

CREATE TABLE notas(
	id_alumno NUMERIC(3), 
	id_asignatura NUMERIC(3), 
	anyo NUMERIC(4), 
	nota NUMERIC(4,2), 
	PRIMARY KEY(id_alumno,id_asignatura,anyo), 
	FOREIGN KEY(id_alumno) REFERENCES alumnos(id), foreign key (id_asignatura) references asignaturas(id));

INSERT INTO alumnos VALUES(111,"Alejandro");
INSERT INTO alumnos VALUES(112,"Carlos");

INSERT INTO asignaturas VALUES(1,"Bases de Datos");
INSERT INTO asignaturas VALUES(2,"Programación");

INSERT INTO notas VALUES(111,1,2021,6);
INSERT INTO notas VALUES(111,1,2022,9);
INSERT INTO notas VALUES(112,1,2022,9);
INSERT INTO notas VALUES(112,2,2022,5);

SELECT alumnos.id, alumnos.nombre, 
	asignaturas.nombre, notas.anyo, notas.nota 
FROM alumnos, asignaturas, notas 
WHERE alumnos.id=id_alumno 
	AND asignaturas.id=id_asignatura;

-- 111|Alejandro|Bases de Datos|2021|6
-- 111|Alejandro|Bases de Datos|2022|9
-- 112|Carlos|Bases de Datos|2022|9
-- 112|Carlos|Programación|2022|5
