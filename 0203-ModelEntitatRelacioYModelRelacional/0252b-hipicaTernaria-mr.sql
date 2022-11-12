--Caballo(Codigo, Nombre)
-- CP: Codigo

--Persona(Codigo, Nombre, Direccion)
-- CP: Codigo

--Alumno(codalumno)
-- CP: Codalumno
-- CAj: Codalumno --> Persona

--Entrenador(codentrenador)
-- CP: Codentrenador
-- CAj: Codentrenador --> Persona

--Pertenecer(codcaballo, codalumno)
-- CP: Codcaballo, codalumno)
-- CAj: Codcaballo --> Caballo
-- CAj: Codalumno --> Alumno

--DarClase(codalumno, codentrenador, codcaballo, fecha, hora)
-- CP(codalumno, codentrenador, codcaballo, fecha, hora)
-- CAJ: Codalumno --> alumno
-- CAj: Codentrenador --> entrenador
-- CAj: Codcaballo --> caballo
