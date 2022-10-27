-- estudiants(codi, nom, adreca, telefon, dataNaixement)
-- CP:codi
--
-- estudiantsInformatica(codiEstudiant, altresConeix)
-- CP:codiEstudiant 
-- CAj:codiEstudiant -> estudiants
-- 
-- estudiantsAdministratiu(codiEstudiant, ppm)
-- CP:codiEstudiant
-- CAj:codiEstudiant -> estudiants

.open generalitzacioEIA

CREATE TABLE estudiants(
	codi VARCHAR(12) PRIMARY KEY, 
	nom VARCHAR(50),
	adreca VARCHAR(100),
	telefon VARCHAR(20),
	dataNaixement VARCHAR(20)
);

CREATE TABLE estudiantsInformatica(
	codiEstudiant VARCHAR(12) PRIMARY KEY,  
	altresConeix VARCHAR(30),
	FOREIGN KEY(codiEstudiant) REFERENCES estudiants(codi)
);

CREATE TABLE estudiantsAdministratiu(
	codiEstudiant VARCHAR(12) PRIMARY KEY,  
	ppm NUMERIC(4),
	FOREIGN KEY(codiEstudiant) REFERENCES estudiants(codi)
);

INSERT INTO estudiants VALUES("1","Aaron","Su casa","111", "2004-01-01");
INSERT INTO estudiants VALUES("2","Abraham","Otra casa","222", "2004-02-02");
INSERT INTO estudiants VALUES("3","Ada","La casa de Ada","333", "2004-03-03");

INSERT INTO estudiantsInformatica VALUES("1","Office");
INSERT INTO estudiantsInformatica VALUES("3","Inteligencia artificial");

INSERT INTO estudiantsAdministratiu VALUES("2",320);

SELECT *
FROM estudiants, estudiantsInformatica
WHERE estudiantsInformatica.codiEstudiant = estudiants.codi; 

SELECT nom, dataNaixement, telefon, ppm
FROM estudiants, estudiantsAdministratiu
WHERE estudiantsAdministratiu.codiEstudiant = estudiants.codi; 
