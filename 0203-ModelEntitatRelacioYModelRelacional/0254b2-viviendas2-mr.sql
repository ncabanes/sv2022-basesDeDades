--Localidad(Codigo, Nombre)
-- CP: Codigo

--Vivienda(Codigo, Direccion, codLocalidad)
-- CP: Codigo
-- CAj: codLocalidad --> Localidad

--Persona(Codigo, Nombre, codVivienda, codCabeza)
-- CP: Codigo
-- CAj: codVivienda --> Vivienda
-- CAj: codCabeza --> Persona

--Tener(codPersona, codVivienda)
-- CP: (codPersona, codVivienda)
-- CAj: codPersona --> Persona
-- CAj: codVivienda --> Vivienda
