--sucursales(ciudad, codigoPostal, numero, calle)
--CP: ciudad
--VNN: codigoPostal, numero, calle

--departamentos(ciudad, nombre, codigoJefe)
--CP: ciudad, nombre
--C.Alt: codigoJefe
--C.Aj: ciudad ---> sucursales
--C.Aj: codigoJefe ---> empleados

--telefonosDepartamento(codigoDepartamento, numero)
--CP: codigoDepartamento, numero
--C.Aj: codigoDepartamento ---> departamentos

--empleados(codigo, edad, sueldo, apellido, codigoDepartamento, incorporacion)
--CP: codigo
--C.Aj: codigoDepartamento ---> departamentos
--VNN: edad, sueldo, apellido, incorporacion

--proyectos(nombre, presupuesto, lanzamiento)
--CP: nombre
--VNN: presupuesto

--hace(codigoEmpleado, codigoProyecto)
--CP: codigoEmpleado, codigoProyecto
--C.Aj: codigoEmpleado ---> empleados
--C.Aj: codigoProyecto ---> proyectos
