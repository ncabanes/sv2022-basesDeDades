.open mascotas1m

--propietario (codigo,nombre,apellidos, telefono)
--CP: codigo
--mascotas (codigo,nombre,tipo,codi_propietario)
--CP: codigo

CREATE TABLE propietarios (
    codigo VARCHAR (5) PRIMARY KEY, 
    nombre VARCHAR(50), 
    apellidos VARCHAR(100), 
    telefono NUMERIC (9));
CREATE TABLE mascotas (
    codigo VARCHAR (5) PRIMARY KEY, 
    nombre VARCHAR(50), 
    tipo VARCHAR(100), 
    codi_propietario VARCHAR (5));

INSERT INTO propietarios VALUES (1,"Fernando","Garcia",654123851);
INSERT INTO propietarios VALUES (2,"Andrea","Perez",654165851);
INSERT INTO propietarios VALUES (3,"Angel","Rodriguez",663175851);
INSERT INTO propietarios VALUES (4,"Raul","Sanchez",663167851);

INSERT INTO mascotas VALUES (1,"Nieve","Pastor aleman",2);
INSERT INTO mascotas VALUES (2,"Pluto","Mezcla",1);
INSERT INTO mascotas VALUES (3,"Coco","Pastor Belga",3);
INSERT INTO mascotas VALUES (4,"Tara","Podenco",4);


.mode column

-- Noms de les mascotes al costat dels noms dels seus propietaris.

SELECT propietarios.nombre AS Propietario, mascotas.nombre AS nombreMascota 
    FROM propietarios, mascotas 
    WHERE propietarios.codigo = mascotas.codi_propietario;

-- Propietario  nombreMascota
-- -----------  -------------
-- Andrea       Nieve
-- Fernando     Pluto
-- Angel        Coco
-- Raul         Tara


-- Noms de les mascotes el nom de les quals comença per P.

SELECT * FROM mascotas WHERE nombre LIKE "P%";


-- Noms de les mascotes de Fernando.

-- Usando el código:

SELECT nombre FROM mascotas WHERE mascotas.codi_propietario = 1;

-- Usando el nombre:

SELECT mascotas.nombre
    FROM propietarios, mascotas 
    WHERE propietarios.codigo = mascotas.codi_propietario
    AND propietarios.nombre = "Fernando";


-- Noms de les mascotes el propietari de les quals tinga un codi inferior al 5.

SELECT * FROM mascotas WHERE mascotas.codi_propietario < 5;
