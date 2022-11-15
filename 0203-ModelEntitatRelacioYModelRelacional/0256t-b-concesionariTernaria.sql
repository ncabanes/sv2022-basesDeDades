-- vendedores(codigo, nombre)
-- CP: codigo

-- clientes(dni, nombre, direccion, correo, ciudad, telefono)
-- CP: dni

-- coches(codigo, modelo, matricula, precio)
-- CP: codigo

-- comerciales(capacidadCarga, codigoCoche)
-- CP: codigoVehiculo
-- CAj: codigoCoche --> coches

-- SUVs(altura, codigoCoche)
-- CP: codigoCoche
-- CAj: codigoCoche --> coches

-- cochesNormales(codigoCoche)
-- CP: codigoCoche
-- CAj: codigoCoche --> coches

-- vender (codigoCoche, dniCliente, codigoVendedor, fecha)
-- CP: codigoCoche, codigoVendedor
-- CAlt: codigoCoche, dniCliente
-- CAj: codigoCoche --> coches
-- CAj: codigoVendedor --> vendedores
-- CAj: dniCliente --> clientes