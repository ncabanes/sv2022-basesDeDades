-- alumnos(id,nombre)
-- CP:id
--
-- profesores(id,nombre)
-- CP:id 
-- 
-- asignaturas(id,nombre)
-- CP:id
--
-- asistir(id_alumno,id_profesor,id_asignatura, nota)
-- CP:id_alumno,id_profesor,id_asignatura
-- CAj:id_alumno->alumnos
-- CAj:id_profesor->profesores
-- CAj:id_asignatura->asignaturas

.open alumnosProfesAsignaturasMMM

CREATE TABLE alumnos(
    id NUMERIC(3) PRIMARY KEY, 
    nombre VARCHAR(50)
);

CREATE TABLE profesores(
    id NUMERIC(3) PRIMARY KEY, 
    nombre VARCHAR(60)
);

CREATE TABLE asignaturas(
    id NUMERIC(3) PRIMARY KEY, 
    nombre VARCHAR(60)
);

CREATE TABLE asistir(
    id_alumno NUMERIC(3), 
    id_profesor NUMERIC(3), 
    id_asignatura NUMERIC(3),
    nota NUMERIC(3,1),
    PRIMARY KEY(id_alumno,id_profesor,id_asignatura), 
    FOREIGN KEY(id_alumno) REFERENCES alumnos(id), 
    FOREIGN KEY(id_profesor) REFERENCES profesores(id), 
    FOREIGN KEY(id_asignatura) REFERENCES asignaturas(id)
);

INSERT INTO alumnos VALUES(111,"Alejandro");
INSERT INTO alumnos VALUES(112,"Carlos");

INSERT INTO profesores VALUES(501,"Prof.1");
INSERT INTO profesores VALUES(502,"Prof.2");

INSERT INTO asignaturas VALUES(1,"Bases de Datos");
INSERT INTO asignaturas VALUES(2,"Programación");

INSERT INTO asistir VALUES(111, 501, 1, 10);
INSERT INTO asistir VALUES(111, 502, 2, 9);
INSERT INTO asistir VALUES(112, 501, 1, 8.2);
INSERT INTO asistir VALUES(112, 502, 2, 7.5);

INSERT INTO asistir VALUES(112, 501, 2, 10);

SELECT alumnos.nombre, profesores.nombre, asignaturas.nombre, nota
FROM alumnos, profesores, asignaturas, asistir
WHERE alumnos.id = id_alumno 
AND profesores.id = id_profesor
AND asignaturas.id = id_asignatura;


