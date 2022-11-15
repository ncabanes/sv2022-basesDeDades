
-- priopietarios(dni,nombre,direccion,ciudad,telefono,email)
-- PK: dni

-- vendedores(codigo,nombre)
-- PK: codigo

-- vehiculos(bastidor,matricula,modelo,codigo_vendedor,dni_propietario,fecha_venta)
-- PK: bastidor
-- FK: codigo_vendedor -> vendedores
-- FK: dni_propietario -> propietarios

-- sub(altura)
-- FK: bastidor -> vehiculos

-- coches(bastidor)
-- FK: bastidor -> vehiculos

-- comercial(bastidor,capacidad)
-- FK: bastidor -> vehiculos



