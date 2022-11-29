-- Cliente (cod, nombre)
-- CP: cod

-- Banco (cod, denominación)
-- CP: cod

-- Sucursal (cod, denominación, ubicación, codBanco)
-- CP: cod
-- C.Aj: codBanco -> Banco

-- CuentaCorriente (cod, codSucursal)
-- CP: cod
-- C.Aj: codSucursal -> Sucursal

-- Privilegio (cod, descripción)
-- CP: cod

-- Prestamo (cod, importeInicial, fecha)
-- CP: cod

-- Domiciliación (cod, descripción, codCuenta)
-- CP: cod
-- VNN: codCuenta
-- C.Aj: codCuenta -> CuentaCorriente

-- Tiene(codCliente, codCuenta, codPrivilegio)
-- CP: (codCliente, codCuenta, codPrivilegio)
-- C.Aj: codCliente -> Cliente
-- C.Aj: codCuenta -> CuentaCorriente
-- C.Aj: codPrivilegio -> Privilegio

-- Concede(codSucursal, codPrestamo, codCliente)
-- CP: (codPrestamo, codCliente)
-- VNN: codSucursal
-- C.Aj: codSucursal -> Sucursal
-- C.Aj: codPrestamo -> Prestamo
-- C.Aj: codCliente -> Cliente

