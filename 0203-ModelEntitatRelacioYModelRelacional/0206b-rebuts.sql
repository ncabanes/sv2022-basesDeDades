-- Crea una nova taula, que permeta anotar "rebuts" creats per a clients. 
-- De cada rebut s'anotarà el número, el nom del client, la data i l'import 
-- pagat. Tria la clau que consideres adequada

-- Model relacional:
-- REBUT(numero, nom, data, import)
-- CP: numero

.open rebuts

CREATE TABLE rebuts (
  numero NUMERIC(6) PRIMARY KEY, 
  nom VARCHAR (50), 
  data VARCHAR (10), 
  import NUMERIC (5,2)
);

INSERT INTO rebuts VALUES (1, "Juan López", "2022-09-27", 9.5);
INSERT INTO rebuts VALUES (2, "Juan Pérez", "2022-09-27", 12);

SELECT * FROM rebuts;
