-- Modelo relacional

-- Persona (codi, nom, cognom, carrer, numero, porta)
-- CP: codi
-- VNN: nom
-- VNN: cognom
-- 
-- Telefon (codiPersona, numero)
-- CP: codiPersona, numero

create table personas(
  codi varchar(5) primary key,
  nom varchar(30) not null,
  cognom varchar(60) not null,
  carrer varchar(40),
  numero numeric(4),
  porta varchar(10)
);

create table telefons (
  codiPersona varchar(5),
  numero varchar(15),
  primary key (codiPersona , numero ),
  foreign key(codiPersona) references personas(codi)
);

INSERT INTO personas VALUES("1", "Manel", "Canals", "Carrer 1", 20, "3A");
INSERT INTO personas VALUES("2", "Maria", "Llopis", "Carrer 2", 31, "Baix A");

INSERT INTO telefons VALUES("1", "111 22 33");
INSERT INTO telefons VALUES("2", "111 22 44");
INSERT INTO telefons VALUES("2", "111 22 55");

SELECT nom, cognom, carrer, telefons.numero
FROM personas, telefons
WHERE telefons.codiPersona = personas.codi; 
