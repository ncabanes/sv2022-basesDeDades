-- Autor(Codi, Nom)
-- CP: Codi

-- LLibre(Codi, Titol, codiEditor)
-- CP: Codi
-- CF: codiEditor --> Autor

-- Escriure(codiEditor, CodiLLibre)
-- CP: (codiEditor, CodiLLibre)
-- CF: codiEditor --> Autor
-- CF: CodiLlibre --> Llibre

CREATE TABLE autors(
	codi VARCHAR(12) PRIMARY KEY,  
	nom VARCHAR(30)
);

CREATE TABLE llibres(
	codi NUMERIC(6) PRIMARY KEY,  
	titol VARCHAR(50),
	codiEditor VARCHAR(12),
	FOREIGN KEY(codiEditor) REFERENCES autors(codi)
);

CREATE TABLE escriure(
	codiEditor VARCHAR(12),
	codiLlibre NUMERIC(6),
	PRIMARY KEY (codiEditor, codiLlibre),
	FOREIGN KEY(codiEditor) REFERENCES autors(codi),
	FOREIGN KEY(codiLlibre) REFERENCES llibres(codi)
);

INSERT INTO autors VALUES ("a", "Andrés");
INSERT INTO autors VALUES ("b", "Bartolo");

INSERT INTO llibres VALUES (1, "Llibre 1", "a");
INSERT INTO llibres VALUES (2, "Llibre 2", "b");

INSERT INTO escriure VALUES ("a", 1);
INSERT INTO escriure VALUES ("b", 1);
INSERT INTO escriure VALUES ("a", 2);

.mode column

-- Llibres i autors

SELECT autors.nom as autor, llibres.titol 
FROM autors, llibres, escriure
WHERE llibres.codi = escriure.codiLlibre
	AND autors.codi = escriure.codiEditor;

-- Llibres i editors

SELECT llibres.titol, autors.nom as editor
FROM autors, llibres
WHERE llibres.codiEditor = autors.codi;

-- Llibres, autors i editors

SELECT autor.nom as nomAutor, editor.nom as nomEditor, titol
FROM autors autor, autors editor, llibres, escriure
WHERE escriure.codiLlibre = llibres.codi
	AND escriure.codiEditor = autor.codi
	AND llibres.codiEditor = editor.codi;
