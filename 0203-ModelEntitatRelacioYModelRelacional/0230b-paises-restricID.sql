.open ciudadesPaises

--Pais(nombre)
--CP: nombre

--Ciudad(nombrePais, nombre)
--CP: nombrePais, nombre

CREATE TABLE paises(
  nombre VARCHAR(30) PRIMARY KEY
);

CREATE TABLE ciudades(
  nombrePais VARCHAR(30),
  nombre VARCHAR(50),
  PRIMARY KEY(nombrePais, nombre),
  FOREIGN KEY (nombrePais) REFERENCES paises(nombre)
);

INSERT INTO paises VALUES("España");
INSERT INTO paises VALUES("EUA");

INSERT INTO ciudades VALUES("España", "Toledo");
INSERT INTO ciudades VALUES("EUA", "Toledo");

SELECT paises.nombre AS pais, ciudades.nombre AS ciudad
FROM paises, ciudades
WHERE paises.nombre = ciudades.nombrePais;

