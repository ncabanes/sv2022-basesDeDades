.open projectes11a

--DIRECTOR(codi, nom)
--PROJECTE(codi, nom)

--DIRIGIR(codDir, codPro)
--CP: codDir
--CAlt: codPro
--CAj: codDir -> Director
--CAj: codPro -> Projecte

CREATE TABLE director(
    codi VARCHAR(15) PRIMARY KEY,
    nom VARCHAR(30)
);

CREATE TABLE projecte(
    codi VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(40)
);

CREATE TABLE dirigir(
    codDir VARCHAR(15) PRIMARY KEY,
    codPro VARCHAR(10) UNIQUE,
    FOREIGN KEY (codDir) REFERENCES director(codi),
    FOREIGN KEY (codPro) REFERENCES projecte(codi)
);

INSERT INTO director VALUES("jl", "José López");
INSERT INTO director VALUES("pr", "Pedro Ramírez");
INSERT INTO director VALUES("ag", "Antonio Gómez");

INSERT INTO projecte VALUES("1", "Projecte 1");
INSERT INTO projecte VALUES("1b", "Projecte 1 per a Linux");
INSERT INTO projecte VALUES("2", "Projecte 2");

INSERT INTO dirigir VALUES("jl", "1");
INSERT INTO dirigir VALUES("pr", "1b");

INSERT INTO dirigir VALUES("jl", "2"); -- !!!
INSERT INTO dirigir VALUES("ag", "1"); -- !!!

SELECT director.nom, projecte.nom
FROM director, projecte, dirigir
WHERE dirigir.codDir = director.codi
AND dirigir.codPro = projecte.codi;

-- José López|Projecte 1
-- Pedro Ramírez|Projecte 1 per a Linux

