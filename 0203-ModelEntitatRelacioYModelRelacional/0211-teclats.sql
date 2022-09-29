-- Base de dades "hardware", amb una primera taula "teclats". De cada teclat 
-- anotarem: codi (per exemple CK65R), marca (per exemple Corsair), model (p.e. 
-- K65 Rapidfire), format (p.e. TKL), preu (p.e. 99,99), valoració (p.e. 4,7). 
-- Afig almenys 3 dades d'exemple, un dels quals no sabrem el format. A 
-- continuació, mostra:
-- 
-- - Els teclats de marca Logitech.
-- - Els teclats que no siguen de marca HP.
-- - Els teclats el model dels quals continga "MX".
-- - Els teclats de menys de 100 euros per als quals sí que coneixem el format.


.open hardware

CREATE TABLE teclats (
  codi VARCHAR (10) primary key, 
  marca VARCHAR (30), 
  model VARCHAR (50), 
  format VARCHAR (10), 
  preu NUMERIC (6,2)
  valoracio NUMERIC (3,1)
);

INSERT INTO teclats VALUES (
    "CK65", "Corsair", "K65 Rapidfire", "TKL", 
    99.99, 4.7);

INSERT INTO teclats VALUES (
    "L512", "Logitech", "G512", NULL, 
    NULL, NULL);

INSERT INTO teclats (codi, marca, model) VALUES (
    "RB", "Razer", "Blackwidow");
    
SELECT * FROM teclats WHERE marca = "Logitech";

SELECT * FROM teclats WHERE marca <> "HP";

SELECT * FROM teclats WHERE modelo LIKE "%MX%";

SELECT * FROM teclats WHERE preu < 100 
    AND  format IS NOT NULL;
