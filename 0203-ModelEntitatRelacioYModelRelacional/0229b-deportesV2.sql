.open deportes2

--Deporte(codigo, nombre)
--CP: codigo

--Categoria(codigo, nombre)
--CP: codigo

--Usuario(dni, nombre, codCategoria)
--CP: dni
--CAj: codCategoria -> Categorias
--VNN: codCategoria

--Practica(codUsuario, codDeporte, desde, hasta)
--CP: codUsuario, codDeporte, desde
--CAj: codUsuario -> Usuario
--CAj: codDeporte -> Deporte

.mode column

CREATE TABLE Deportes(
  codigo NUMERIC(3) PRIMARY KEY,
  nombre VARCHAR(30)
);

CREATE TABLE Categorias(
  codigo NUMERIC(3) PRIMARY KEY,
  nombre VARCHAR(30)
);

CREATE TABLE Usuarios(
  dni VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(30),
  codCategoria NUMERIC(3) NOT NULL,
  FOREIGN KEY (codCategoria) REFERENCES Categorias(codigo)
);

CREATE TABLE Practican(
  codUsuario VARCHAR(9),
  codDeporte NUMERIC(3),
  desde VARCHAR(8),
  hasta VARCHAR(8),
  PRIMARY KEY(codUsuario, codDeporte, desde),
  FOREIGN KEY (codUsuario) REFERENCES Usuarios(codigo),
  FOREIGN KEY (codDeporte) REFERENCES Deportes(codigo)
);

INSERT INTO Deportes VALUES(1, "Baloncesto");
INSERT INTO Deportes VALUES(2, "Tenis");
INSERT INTO Deportes VALUES(3, "Natación");
INSERT INTO Deportes VALUES(4, "Futbol");

INSERT INTO Categorias VALUES(1, "Benjamin");
INSERT INTO Categorias VALUES(2, "Alevin");
INSERT INTO Categorias VALUES(3, "Infantil");
INSERT INTO Categorias VALUES(4, "Cadete");
INSERT INTO Categorias VALUES(5, "Juvenil");

INSERT INTO Usuarios VALUES("51234956A", "Paco Fernandez", 5);
INSERT INTO Usuarios VALUES("51234956B", "Alonso Rico", 4);
INSERT INTO Usuarios VALUES("51234934A", "Sara Pacheco", 2);
INSERT INTO Usuarios VALUES("51221956A", "Alejandro Garcia", 2);

INSERT INTO Practican VALUES("51234956A", 1, "01-09-22", "01-10-22" );
INSERT INTO Practican VALUES("51234956A", 1, "01-10-22", "01-11-22" );
INSERT INTO Practican VALUES("51234956B", 2, "01-10-22", "15-10-22" );
INSERT INTO Practican VALUES("51234934A", 2, "01-11-22", "01-12-22" );
INSERT INTO Practican VALUES("51234934A", 3, "01-11-22", "01-12-22" );
INSERT INTO Practican VALUES("51221956A", 3, "01-10-22", "01-11-22" );
INSERT INTO Practican VALUES("51221956A", 4, "01-10-22", "01-11-22" );

SELECT d.nombre AS Deporte, 
  c.nombre AS Categoria, 
  u.nombre AS Cliente, 
  p.desde, 
  p.hasta
FROM Deportes d, 
  Categorias c, 
  Usuarios u, 
  Practican P
WHERE d.codigo = codDeporte 
  AND u.dni = codUsuario 
  AND c.codigo = codCategoria;

-- Deporte     Categoria  Cliente           desde     hasta
-- ----------  ---------  ----------------  --------  --------
-- Baloncesto  Juvenil    Paco Fernandez    01-09-22  01-10-22
-- Baloncesto  Juvenil    Paco Fernandez    01-10-22  01-11-22
-- Tenis       Cadete     Alonso Rico       01-10-22  15-10-22
-- Tenis       Alevin     Sara Pacheco      01-11-22  01-12-22
-- Natación    Alevin     Sara Pacheco      01-11-22  01-12-22
-- Natación    Alevin     Alejandro Garcia  01-10-22  01-11-22
-- Futbol      Alevin     Alejandro Garcia  01-10-22  01-11-22

