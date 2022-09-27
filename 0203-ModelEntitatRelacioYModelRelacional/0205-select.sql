-- Mascota con el código 3
SELECT * FROM mascotas3 WHERE codigo = 3;

-- Nombre de la mascota con el código 4
SELECT nombre FROM mascotas3 WHERE codigo = 4;

-- Mascota con el código 2 o inferior
SELECT * FROM mascotas3 WHERE codigo <= 2;
-- Operadores: < <= > >= = <>

-- Mascotas llamadas Rocky
SELECT * FROM mascotas3 WHERE nombre = "rocky";

-- Mascotas con una "o" en su nombre
SELECT * FROM mascotas3 WHERE nombre LIKE "%o%";

-- Mascotas sin raza
SELECT * FROM mascotas3 WHERE raza IS NULL;

-- Nombre y raza de la mascotas con código entre 2 y 4, inclusive
SELECT nombre, raza 
FROM mascotas3 
WHERE codigo >= 2 AND codigo <= 4;

SELECT nombre, raza 
FROM mascotas3 
WHERE codigo BETWEEN 2 AND 4;
