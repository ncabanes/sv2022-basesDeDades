.open examenMM

--Preguntes(codi, enunciat)
--PK:codi

CREATE TABLE preguntes(
	codi NUMERIC(3) PRIMARY KEY,
	enunciat VARCHAR(500)
);

INSERT INTO preguntes VALUES(
    1, "El alumno deberá presentar los ejercicios planteados en este documento");
INSERT INTO preguntes VALUES(
    2, "La puntuación de los distintos ejercicios se indica respectivamente al principio de cada uno");
INSERT INTO preguntes VALUES(
    3, "El alumno deberá entregar los ficheros Cuadrilatero.java");


--Asignatures(codi, tema)
--PK:codi

CREATE TABLE asignatures(
	codi NUMERIC(3) PRIMARY KEY,
	tema VARCHAR(50)
);

INSERT INTO asignatures VALUES(10, "Bases de dades");
INSERT INTO asignatures VALUES(11, "Sistemes");


--Examens(codi, fecha, codi_asignatura)
--PK: codi
--FK:codi_asignatura->asignatura

CREATE TABLE examens(
	codi NUMERIC(4) PRIMARY KEY,
	fecha VARCHAR(10),
	codi_asignatura NUMERIC(3),
	FOREIGN KEY (codi_asignatura) REFERENCES asignatura(codi)
);

INSERT INTO examens VALUES(101, "2022/09/22", 10);
INSERT INTO examens VALUES(102, "2022/07/19", 10);
INSERT INTO examens VALUES(103, "2022/02/01", 11);


--Contindre(codi_examen, codi_pregunta)
--PK:codi_examen, codi_pregunta
--FK:codi_examen->examen
--FK:codi_preguntes->preguntes

CREATE TABLE contindre(
        codi_examen NUMERIC(3),
        codi_pregunta NUMERIC(3),
        PRIMARY KEY (codi_examen, codi_pregunta),
        FOREIGN KEY (codi_examen) REFERENCES examens(codi),
        FOREIGN KEY (codi_pregunta) REFERENCES preguntes(codi)
);
   

INSERT INTO contindre VALUES(101, 1);
INSERT INTO contindre VALUES(101, 2);
INSERT INTO contindre VALUES(101, 3);
INSERT INTO contindre VALUES(102, 1);

--

.mode column
SELECT asignatures.tema, examens.fecha, 
	preguntes.enunciat 
FROM asignatures, contindre, 
	preguntes, examens
WHERE asignatures.codi = examens.codi_asignatura 
AND contindre.codi_examen = examens.codi 
AND contindre.codi_pregunta = preguntes.codi;

-- tema            fecha       enunciat                                            
-- --------------  ----------  ------------------------------------------------------------
-- Bases de dades  2022/09/22  El alumno deberá presentar los ejercicios planteados en este
--                              documento                                          
-- 
-- Bases de dades  2022/09/22  La puntuación de los distintos ejercicios se indica respecti
--                             vamente al principio de cada uno                    
-- 
-- Bases de dades  2022/09/22  El alumno deberá entregar los ficheros Cuadrilatero.java
-- 
-- Bases de dades  2022/07/19  El alumno deberá presentar los ejercicios planteados en este
--                              documento                                          
