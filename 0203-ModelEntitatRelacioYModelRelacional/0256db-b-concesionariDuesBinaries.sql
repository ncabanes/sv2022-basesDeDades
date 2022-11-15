
-- propietarios(dni,nombre,direccion,ciudad,telefono,email)
-- PK: dni

-- vendedores(codigo,nombre)
-- PK: codigo

-- vehiculos(bastidor,matricula,modelo,codigo_vendedor,dni_propietario,fecha_venta)
-- PK: bastidor
-- FK: codigo_vendedor -> vendedores
-- FK: dni_propietario -> propietarios

-- suv(bastidor, alturaSuelo)
-- PK: bastidor
-- FK: bastidor -> vehiculos

-- coches(bastidor)
-- PK: bastidor
-- FK: bastidor -> vehiculos

-- comercial(bastidor,capacidadCarga)
-- PK: bastidor
-- FK: bastidor -> vehiculos



