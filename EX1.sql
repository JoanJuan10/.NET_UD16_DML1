CREATE DATABASE ex1;

GO

USE ex1;

CREATE TABLE Despachos (
	Numero INT NOT NULL,
	Capacidad INT NOT NULL,
	CONSTRAINT pk_despachos PRIMARY KEY (Numero)
);

CREATE TABLE Directores (
	DNI VARCHAR(8) NOT NULL,
	NomApels NVARCHAR(255) NOT NULL,
	DNIJefe VARCHAR(8),
	Despacho INT,
	CONSTRAINT pk_directores PRIMARY KEY (DNI),
	CONSTRAINT fk_directores1 FOREIGN KEY (DNIJefe) REFERENCES Directores(DNI),
	CONSTRAINT fk_directores2 FOREIGN KEY (Despacho) REFERENCES Despachos(Numero)
);
GO

INSERT INTO Despachos (Numero,Capacidad) VALUES
(1,10),
(2,13),
(3,4),
(4,7),
(5,14),
(6,11),
(7,9),
(8,4),
(9,6),
(10,16);
INSERT INTO Directores (DNI,NomApels,DNIJefe,Despacho) VALUES
('5572941S','Jose Maria',NULL,2),
('1192545N','Antonio José','3426411M',6),
('7702140V','Fernando Parra',NULL,7),
('8551191H','Raul Alvarez',NULL,9),
('0232404Z','Thais Garcia',NULL,3),
('2128238G','Montse Quijano',NULL,1),
('3426411M','Oriol Zahir',NULL,6),
('1344338P','Carla Gomez',NULL,4),
('6899928K','Jan Puro','0232404Z',10),
('4583267K','Paula Serrano',NULL,9);