.open animales
.tables
.schema mascotas2
-- CREATE TABLE mascotas2 (codigo NUMERIC(4) PRIMARY KEY, nom VARCHAR (50), raça VARCHAR(50));
.mode columm
SELECT * FROM mascotas2;
-- codigo  nom    raça
-- ------  -----  -----
-- 1       Tsuki  gato
-- 2       Coco   perro

INSERT INTO mascotas2 VALUES (3, "Thor", NULL);
SELECT * FROM mascotas2;
UPDATE mascotas2 SET raça="pastor aleman" WHERE codigo=3;
SELECT * FROM mascotas2;
