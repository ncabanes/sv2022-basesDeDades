.open amistades

CREATE TABLE amigos2(
    codigo VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR(50),
    email  VARCHAR(100)
);

INSERT INTO amigos2 VALUES ("B","Borja","b@gmail.com");
SELECT * FROM amigos2;
