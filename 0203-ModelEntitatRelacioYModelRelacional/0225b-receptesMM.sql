.open recetasMM

-- receta(codigo, nombre, instrucciones, dificultad, tiempo)
-- CP: codigo

-- ingrediente (codigo, nombre, precio100g)
-- CP: codigo

-- contiene(codigo_receta, codi_ingrediente, cantidad)
-- CP: codigo_receta, codigo_ingrediente
-- CAj: codigo_receta -> receta
-- CAj: codigo_ingrediente -> ingrediente

CREATE TABLE receta (
	codigo VARCHAR(5) primary key,
	nombre VARCHAR(30),
	instrucciones VARCHAR(200),
	dificultad NUMERIC(2),
	tiempo NUMERIC(3)
);

CREATE TABLE ingrediente (
	codigo VARCHAR(5) PRIMARY KEY,
	nombre VARCHAR(30),
	precio100g NUMERIC(5,2)
);

CREATE TABLE contiene (
	codigo_receta VARCHAR(5),
	codigo_ingrediente VARCHAR(5),
	cantidad NUMERIC(6,2),
	PRIMARY KEY (codigo_receta, codigo_ingrediente),
	FOREIGN KEY (codigo_receta) REFERENCES receta(codigo),
	FOREIGN KEY (codigo_ingrediente) REFERENCES ingrediente(codigo)
);

--

INSERT INTO receta VALUES(
	"1","macarrones con queso",
	"instrucciones de mac.queso",
	3, 15);

INSERT INTO ingrediente VALUES("mac","macarrones",0.40);
INSERT INTO ingrediente VALUES("qr","queso rallado",1.50);

INSERT INTO contiene VALUES("1","mac",250);
INSERT INTO contiene VALUES("1","qr",20);

--

select receta.nombre, receta.instrucciones, 
	receta.dificultad, receta.tiempo, 
	ingrediente.nombre, ingrediente.precio100g, 
	contiene.cantidad
from receta, ingrediente, contiene
where contiene.codigo_receta = receta.codigo
and contiene.codigo_ingrediente = ingrediente.codigo;

-- macarrones con queso|instrucciones de mac.queso|3|15|macarrones|0.4|250
-- macarrones con queso|instrucciones de mac.queso|3|15|queso rallado|1.5|20
