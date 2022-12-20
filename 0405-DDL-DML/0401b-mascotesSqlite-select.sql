-- Basat en els exercicis 02.03 a 02.05

CREATE TABLE mascotes (
  codi NUMERIC(4) PRIMARY KEY, 
  nom VARCHAR (50), 
  raca VARCHAR (100)
);

INSERT INTO mascotes VALUES (1, "Jaina", "Pastor belga");
INSERT INTO mascotes VALUES (2, "Rocky", "Pastor alemany");
INSERT INTO mascotes VALUES (3, "Daisy", "");  -- Poc raonable
INSERT INTO mascotes VALUES (4, "Thor", NULL); -- NULL en comptes d'un valor
INSERT INTO mascotes (codi, nom) VALUES (5, "Nieve"); -- Només alguns camps
INSERT INTO mascotes (nom, codi) VALUES ("Golfo", 6); -- Ordre canviat

-- Mascota amb el codi 3
SELECT * FROM mascotes WHERE codi = 3;

-- Nom de la mascota amb el codi 4
SELECT nom FROM mascotes WHERE codi = 4;

-- Mascotes amb el codi 2 o inferior
SELECT * FROM mascotes WHERE codi <= 2;
-- Operadors: < <= > >= = <>

-- Mascotes anomenades Rocky
SELECT * FROM mascotes WHERE nom = "rocky";

-- Mascotes amb una "o" en el seu nom
SELECT * FROM mascotes WHERE nom LIKE "%o%";

-- Mascotes sense raça
SELECT * FROM mascotes WHERE raca IS NULL;

-- Nom i raça de la mascotes amb codi entre 2 i 4, inclusivament
SELECT nom, raca 
FROM mascotes 
WHERE codi >= 2 AND codi <= 4;

SELECT nom, raca 
FROM mascotes 
WHERE codi BETWEEN 2 AND 4;
