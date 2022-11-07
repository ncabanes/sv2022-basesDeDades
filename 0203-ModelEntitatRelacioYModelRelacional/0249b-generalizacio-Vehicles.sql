-- estudiants(codi, marca, model, cilindrada, preu)
-- CP:codi
--
-- cotxes(codiVehicle, tipusCombust, consumo)
-- CP:codiVehicle 
-- CAj:codiVehicle -> vehicles
-- 
-- estudiantsAdministratiu(codiVehicle, carnet)
-- CP:codiVehicle
-- CAj:codiVehicle -> vehicles

.open generalitzacioVehicles

CREATE TABLE vehicles(
	codi VARCHAR(12) PRIMARY KEY, 
	marca VARCHAR(20),
	model VARCHAR(30),
	cilindrada NUMERIC(4),
	preu NUMERIC(6)
);

CREATE TABLE cotxes(
	codiVehicle VARCHAR(12) PRIMARY KEY,  
	tipusCombust VARCHAR(10),
	consum NUMERIC(3,1),
	FOREIGN KEY(codiVehicle) REFERENCES vehicles(codi)
);

CREATE TABLE motocicletes(
	codiVehicle VARCHAR(12) PRIMARY KEY,  
	carnet VARCHAR(4),
	FOREIGN KEY(codiVehicle) REFERENCES vehicles(codi)
);

INSERT INTO vehicles VALUES("1","Porsche","911 GT3", null, null);
INSERT INTO vehicles VALUES("2","Honda","CB125R","125", null);

INSERT INTO cotxes VALUES("1","Gasolina", 12.9);
INSERT INTO motocicletes VALUES("2","A1");

SELECT *
FROM vehicles, motocicletes
WHERE motocicletes.codiVehicle = vehicles.codi; 

