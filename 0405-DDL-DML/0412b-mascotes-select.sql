-- .open mascotes1mConsultes

--propietaris (codi,nom,cognoms, telefon)
--CP: codi
--mascotes (codi,nom,tipo,codi_propietari)
--CP: codi

CREATE TABLE propietaris (
    codi NUMERIC(5) PRIMARY KEY, 
    nom VARCHAR(50), 
    cognoms VARCHAR(100), 
    telefon NUMERIC (9));
CREATE TABLE mascotes (
    codi NUMERIC(5) PRIMARY KEY, 
    nom VARCHAR(50), 
    tipus VARCHAR(100), 
    codi_propietari VARCHAR (5));

INSERT INTO propietaris VALUES (1,'Fernando','Garcia',654123851);
INSERT INTO propietaris VALUES (2,'Andrea','Perez',654165851);
INSERT INTO propietaris VALUES (3,'Angel','Rodriguez',663175851);
INSERT INTO propietaris VALUES (4,'Raul','Sanchez',663167851);

INSERT INTO mascotes VALUES (1,'Nieve','Pastor aleman',2);
INSERT INTO mascotes VALUES (2,'Pluto','Mezcla',1);
INSERT INTO mascotes VALUES (3,'Coco','Pastor Belga',3);
INSERT INTO mascotes VALUES (4,'Tara','Podenco',4);

-- Nom i cognoms dels propietaris.

select nom, cognoms from propietaris;

-- Nom i cognoms dels propietaris amb un codi inferior al 3.

select nom, cognoms from propietaris where codi < 3;

-- Nom i cognoms dels propietaris amb un codi que no siga 2.

select nom, cognoms from propietaris where codi <> 2;

-- Noms de les mascotes al costat dels noms dels seus propietaris.

select mascotes.nom, propietaris.nom
from mascotes, propietaris
where mascotes.codi_propietari = propietaris.codi;

-- Noms de les mascotes el nom de les quals comença per P.

select nom 
from mascotes
where nom like 'P%';

-- Noms de les mascotes de 'Raul'.

select mascotes.nom, propietaris.nom
from mascotes, propietaris
where mascotes.codi_propietari = propietaris.codi
and propietaris.nom = 'Raul';

-- Noms de les mascotas que siguen algun tipus de 'Pastor', ordenat alfabèticament.

select nom from mascotes
where tipus like 'Pastor %'
order by nom;

-- Quantitat de mascotes.

select count(*) from mascotes;

-- Telèfon amb el número més baix.

select min(telefon) from propietaris;

-- Noms de les mascotes de 'ANGEL' (potser amb majúscules diferents).
select mascotes.nom, propietaris.nom
from mascotes, propietaris
where mascotes.codi_propietari = propietaris.codi
and upper(propietaris.nom) = 'ANGEL';
