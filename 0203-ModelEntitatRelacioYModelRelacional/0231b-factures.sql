.open facturesV1

--FACTURES(num, comprador, data)
--CP: num
--LINIES(numFactura, numLinea, concepte, quantitat, preu)
--CP: numFactura, numLinea
--CAj: numFactura -> Factures

CREATE TABLE Factures(
	num NUMERIC(5) primary key,
	comprador VARCHAR(30),
	data VARCHAR(10)
);

CREATE TABLE Linies(
	numFactura NUMERIC(5),
	numLinea NUMERIC(5),
	concepte VARCHAR(30),
	quantitat NUMERIC(6,2),
	preu NUMERIC(6,2),
	PRIMARY KEY (numFactura, numLinea),
	FOREIGN KEY (numFactura) REFERENCES Factures(num)
);

INSERT INTO Factures VALUES(1, "Enrique Rodriguez", "2022-10-16");
INSERT INTO Factures VALUES(2, "Selena Torres", "2022-10-17");

INSERT INTO Linies VALUES(1, 1, "Zapatillas Nº12", 1, 19.99);
INSERT INTO Linies VALUES(1, 2, "Calcetines rojos", 2, 5);
INSERT INTO Linies VALUES(1, 3, "Calcetines negros", 2, 4);
INSERT INTO Linies VALUES(2, 1, "Zapatillas Nº7", 1, 30);
INSERT INTO Linies VALUES(2, 2, "Zapatillas Nº10", 1, 20);

.mode column

SELECT f.num, comprador, data, 
	quantitat, preu, quantitat * preu AS total
FROM factures f, linies l
WHERE f.num = l.numFactura
ORDER BY num, numLinea;

-- num  comprador          data        quantitat  preu   total
-- ---  -----------------  ----------  ---------  -----  -----
-- 1    Enrique Rodriguez  2022-10-16  1          19.99  19.99
-- 1    Enrique Rodriguez  2022-10-16  2          5      10
-- 1    Enrique Rodriguez  2022-10-16  2          4      8
-- 2    Selena Torres      2022-10-17  1          30     30
-- 2    Selena Torres      2022-10-17  1          20     20
