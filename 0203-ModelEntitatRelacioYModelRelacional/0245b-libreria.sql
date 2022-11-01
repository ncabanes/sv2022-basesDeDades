-- Modelo relacional

-- autores(codigo,nombre)
-- PK: codigo

-- editoriales(codigo,denominacion)
-- PK: codigo

-- libros(codigo,titulo,codigoAutor,codigoEditorial)
-- PK: codigo
-- FK: codigoAutor -> autores
-- FK: codigoEditorial -> editoriales

-- participar(codigoLibro,codigoAutor)
-- PK: codigoLibro,codigoAutor
-- FK: codigoLibro -> libros
-- FK: codigoAutor -> autores

.openLibreria

CREATE TABLE autores(
	codigo NUMERIC (3) PRIMARY KEY,
	nombre VARCHAR (30)
);

CREATE TABLE editoriales(
	codigo NUMERIC (3) PRIMARY KEY,
	denominacion VARCHAR (50)
);

CREATE TABLE libros(
	codigo NUMERIC (3) PRIMARY KEY,
	titulo VARCHAR (50),
	codigoAutor NUMERIC (3),
	codigoEditorial NUMERIC (3),
	FOREIGN KEY (codigoAutor) REFERENCES autores(codigo),
	FOREIGN KEY (codigoEditorial) REFERENCES editoriales(codigo)
);

CREATE TABLE serCoautor(
	codigoAutor NUMERIC (3),
	codigoLibro NUMERIC (3),
	PRIMARY KEY (codigoLibro,codigoAutor),
	FOREIGN KEY (codigoLibro) REFERENCES libros(codigo)
	FOREIGN KEY (codigoAutor) REFERENCES autores(codigo)
);

INSERT INTO autores VALUES (1,"Luis Alberto");
INSERT INTO autores VALUES (2,"Cristian Cabrera");
INSERT INTO autores VALUES (3,"Antonio Manuel");
INSERT INTO autores VALUES (4,"Lorenzo Juan");
INSERT INTO autores VALUES (5,"Juan José");

INSERT INTO editoriales VALUES (10,"Anaya");
INSERT INTO editoriales VALUES (11,"SM");

INSERT INTO libros VALUES (100,"Amanece otro dia",1,10);
INSERT INTO libros VALUES (101,"Ensayos para vivir",2,11);

INSERT INTO serCoautor VALUES (3,100);
INSERT INTO serCoautor VALUES (4,100);
INSERT INTO serCoautor VALUES (5,101);

-- Ver detalles básicos de un libro
SELECT titulo, nombre, denominacion
FROM autores, libros, editoriales
WHERE libros.codigoAutor = autores.codigo
AND libros.codigoEditorial = editoriales.codigo;

-- Ver coautores de los libros
SELECT titulo, nombre
FROM libros, autores, serCoautor
WHERE serCoautor.codigoAutor = autores.codigo
AND serCoautor.codigoLibro = libros.codigo;

-- Ver todos los datos de un libro (algunos repetitivos)
SELECT libros.codigo AS codigoLibro, titulo, 
	autor.codigo AS codigoAutor, autor.nombre, 
	editoriales.codigo AS codigoEditorial, denominacion,
	colab.codigo AS codigoColaborador, colab.nombre 
FROM autores autor, autores colab, libros, editoriales, serCoautor
WHERE libros.codigoAutor = autor.codigo
AND libros.codigoEditorial = editoriales.codigo
AND serCoautor.codigoLibro = libros.codigo
AND serCoautor.codigoAutor = colab.codigo;
