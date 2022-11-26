-- autores (cod, nombre)
-- CP: cod

-- idiomas (cod, nombre)
-- CP: cod

-- editoriales (cod, nombre)
-- CP: cod

-- sedes (cod, ubicacion)
-- CP: cod

-- libros (cod, codIdioma, codEditorial, titulo, fechaPublicacion)
-- CP: cod
-- C.Aj: codIdioma -> idiomas
-- C.Aj: codEditorial -> editoriales
-- C.Aj: codIdioma -> idiomas

-- ejemplares (cod, codLibro, codSede, estado)
-- CP: cod, codLibro
-- C.Aj: codLibro -> libros
-- C.Aj: codSede -> sedes

-- escribir (codAutor, codLibro)
-- CP: codAutor, codLibro
-- C.Aj: codAutor -> autores
-- C.Aj: codLibro -> libros

-- socios (cod, nombre, direccion, telefono)
-- CP: cod

-- tomarPrestado (codSocio, codEjemplar, FechaEntrega, FechaDevolucionPrevista, FechaDevolucionReal)
-- CP: codSocio, codEjemplar, FechaEntrega
-- C.Aj: codSocio -> socios
-- C.Aj: codEjemplar -> ejemplares

