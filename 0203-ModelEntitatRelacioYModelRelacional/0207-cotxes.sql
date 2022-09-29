-- Crea una base de dades amb informació bàsica de cotxes (codi, marca, model, any 
-- de llançament). Afig almenys 3 dades d'exemple, un dels quals no tindrà any. A 
-- continuació, mostra:
-- 
-- - Els cotxes de marca Toyota.
-- 
-- - Els cotxes que no siguen de marca Honda.
-- 
-- - Els cotxes el model dels quals continga "911".
-- 
-- - Els cotxes de l'any 2000 o anteriors.
-- 
-- - Els cotxes per als quals no coneixem l'any de llançament

.open cotxes

CREATE TABLE cotxes (
  codi NUMERIC (3) primary key, 
  marca VARCHAR (30), 
  model VARCHAR (50), 
  any NUMERIC (4));

INSERT INTO cotxes VALUES (1, "Citroen", "C3", 2001);
INSERT INTO cotxes VALUES (2, "Toyota", "Yaris", 1999);
INSERT INTO cotxes VALUES (3, "Honda", "Civic", 1972);
INSERT INTO cotxes VALUES (4, "Toyota", "Corolla", 1966);
INSERT INTO cotxes VALUES (5, "Peugeot", "206", 1998);
INSERT INTO cotxes VALUES (6, "Nissan", "Qashqai", NULL);
INSERT INTO cotxes VALUES (7, "Ford", "Mustang", NULL);

SELECT * FROM cotxes WHERE marca = "Toyota";

SELECT * FROM cotxes WHERE marca <> "Honda";

SELECT * FROM cotxes WHERE model LIKE "%911%";

SELECT * FROM cotxes WHERE any <= 2000;

SELECT * FROM cotxes WHERE any IS NULL;
