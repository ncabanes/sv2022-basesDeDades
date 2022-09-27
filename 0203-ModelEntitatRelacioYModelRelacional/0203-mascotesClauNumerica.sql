CREATE TABLE mascotas3 (
  codigo NUMERIC(4) PRIMARY KEY, 
  nombre VARCHAR (50), 
  raza VARCHAR (100)
);

INSERT INTO mascotas3 VALUES (1, "Jaina", "Pastor belga");
INSERT INTO mascotas3 VALUES (2, "Rocky", "Pastor alemán");

SELECT * FROM mascotas3;
