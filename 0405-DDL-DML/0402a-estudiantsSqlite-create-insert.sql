-- Exercici 04.02

CREATE TABLE estudiants ( 
  nia NUMERIC(10) PRIMARY KEY, 
  nom VARCHAR(25), 
  cognoms VARCHAR(50), 
  email VARCHAR(100)
); 

INSERT INTO estudiants VALUES (23, 'Michael', 'Jordan', 'michael@jordan.com');
INSERT INTO estudiants VALUES (32, 'Earvin', 'Johnson', 'magic@johnson.com');
INSERT INTO estudiants VALUES (34, 'Hakeem', 'Olajuwon', 'hakeem@olaju.com');

INSERT INTO estudiants VALUES (11, 'Isaiah', 'Thomas', NULL);
INSERT INTO estudiants (nia, nom, cognoms) VALUES (33, 'Larry', 'Bird');
INSERT INTO estudiants (nom, cognoms, nia) VALUES ('Dominique', 'Wilkins', 21);

-- 1. Dades de tots els estudiants
-- 2. Dades de l'estudiant amb el nia 21
-- 3. Nom de l'estudiant amb el nia 32
-- 4. Nom i cognoms dels estudiants el nia dels quals no siga el 33
-- 5. E-mails dels estudiants el nia dels quals estiga entre 20 i 40
-- 6. Nom i cognoms dels estudiants el correu dels quals comence amb "m"
-- 7. Dades del estudiants que no continguen una "a" en el seu nom ni en els seus cognoms
-- 8. Dades del estudiants per als quals coneguem l'email
-- 9. Dades del estudiants el nom dels quals tinga una "a" i l'email dels quals no coneguem
-- 10. Nom dels estudiants que no s'anomenen "Michael"
