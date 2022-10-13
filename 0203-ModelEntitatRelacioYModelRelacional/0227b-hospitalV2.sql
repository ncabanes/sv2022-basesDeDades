.open hospitalV1

-- paciente(sip, nombre)
-- CP: sip

-- medico (numColeg, nombre, codEspecialidad)
-- CP: numColeg
-- cAj: codEspecialidad -> especialidad
-- VNN: codEspecialidad

-- especialidad (codigo, nombre)
-- CP: codigo

-- atender(numColeg, sip, fechahora, motivo, diagnostico)
-- CP: numColeg, sip, fechahora
-- CAj: numColeg -> medico
-- CAj: sip -> paciente


CREATE TABLE pacientes (
	sip VARCHAR(15) PRIMARY KEY,
	nombre VARCHAR(50)
);

CREATE TABLE especialidades (
	codigo VARCHAR(10) PRIMARY KEY,
	nombre VARCHAR(30)
);

CREATE TABLE medicos (
	numColeg VARCHAR(15) ,
	nombre VARCHAR(50),
	codEspecialidad VARCHAR(10) NOT NULL,
	PRIMARY KEY (numColeg),
	FOREIGN KEY (codEspecialidad) REFERENCES especialidades (codigo)
);


CREATE TABLE atender (
	numColeg VARCHAR(15) ,
	sip VARCHAR(15),
	fechahora VARCHAR(16),
	motivo VARCHAR(50),
	diagnostico VARCHAR(200),
	PRIMARY KEY (numColeg, sip, fechahora),
	FOREIGN KEY (numColeg) REFERENCES medicos (numColeg),
	FOREIGN KEY (sip) REFERENCES pacientes (sip)
);


--

INSERT INTO pacientes VALUES("101a", "Fernando Romay");
INSERT INTO pacientes VALUES("102z", "Antonio Martín");

INSERT INTO especialidades VALUES("cv","Cirugía cardiovascular");
INSERT INTO especialidades VALUES("o","Óptica y optometría");

INSERT INTO medicos VALUES("hjk","Hernán Cortés","cv");

INSERT INTO atender VALUES("hjk","101a","2022-10-13 10:44", 
	"Dolor de pie", "Flujo sanguíneo limitado en pierna izquierda");

--
.mode column

select medicos.nombre as medico, 
	especialidades.nombre as especialidad, 
	pacientes.nombre as paciente,
	fechahora as fecha,
	motivo,
	diagnostico
from medicos, especialidades, pacientes, atender
where medicos.codEspecialidad = especialidades.codigo
	and medicos.numColeg = atender.numColeg
	and pacientes.sip = atender.sip;

-- medico         especialidad            paciente        fecha             motivo        diagnostico
-- -------------  ----------------------  --------------  ----------------  ------------  --------------------------------------------
-- Hernán Cortés  Cirugía cardiovascular  Fernando Romay  2022-10-13 10:44  Dolor de pie  Flujo sanguíneo limitado en pierna izquierda
