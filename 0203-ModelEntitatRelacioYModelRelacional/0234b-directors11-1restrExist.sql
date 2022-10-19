.open projectes11b

--DIRECTOR(codi, nom)
--PROJECTE(codi, nom, codDir)
--CP: codi
--CAlt: codDir
--CAj: codDir -> Director

CREATE TABLE director(
    codi VARCHAR(15) PRIMARY KEY,
    nom VARCHAR(30)
);

CREATE TABLE projecte(
    codi VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(40),
	codDir VARCHAR(15) UNIQUE NOT NULL,
	FOREIGN KEY (codDir) REFERENCES director(codi)
);


INSERT INTO director VALUES("jl", "José López");
INSERT INTO director VALUES("pr", "Pedro Ramírez");
INSERT INTO director VALUES("ag", "Antonio Gómez");

INSERT INTO projecte VALUES("1", "Projecte 1", "jl");
INSERT INTO projecte VALUES("1b", "Projecte 1 per a Linux", "pr");

INSERT INTO projecte VALUES("1", "Projecte 2", "jl"); -- !!! Codi projecte duplicat
INSERT INTO projecte VALUES("2", "Projecte 2", "jl"); -- !!! Codi director duplicat
INSERT INTO projecte VALUES("2", "Projecte 2", NULL); -- !!! Director no indicat
INSERT INTO projecte (codi) VALUES("2");              -- !!! Director no indicat

SELECT director.nom, projecte.nom
FROM director, projecte
WHERE projecte.codDir = director.codi;

-- José López|Projecte 1
-- Pedro Ramírez|Projecte 1 per a Linux

