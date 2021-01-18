CREATE DATABASE ex5;

GO
USE ex5;

CREATE TABLE Facultad (
	Codigo INT NOT NULL,
	Nombre NVARCHAR(100),
	CONSTRAINT pk_facultad PRIMARY KEY (Codigo)
);
CREATE TABLE Investigadores (
	DNI VARCHAR(8) NOT NULL,
	NomApels NVARCHAR(255),
	Facultad INT,
	CONSTRAINT pk_investigadores PRIMARY KEY (DNI),
	CONSTRAINT fk_investigadores FOREIGN KEY (Facultad) REFERENCES Facultad(Codigo)
);
CREATE TABLE Equipos (
	NumSerie CHAR(4) NOT NULL,
	Nombre NVARCHAR(100),
	Facultad INT,
	CONSTRAINT pk_equipo PRIMARY KEY (NumSerie),
	CONSTRAINT fk_equipo FOREIGN KEY (Facultad) REFERENCES Facultad(Codigo)
);
CREATE TABLE Reserva (
	DNI VARCHAR(8),
	NumSerie CHAR(4),
	Comienzo DATETIME,
	Fin DATETIME,
	CONSTRAINT pk_reserva PRIMARY KEY (DNI,NumSerie),
	CONSTRAINT fk_reserva1 FOREIGN KEY (DNI) REFERENCES Investigadores(DNI),
	CONSTRAINT fk_reserva2 FOREIGN KEY (NumSerie) REFERENCES Equipos(NumSerie)
);
GO


INSERT INTO Facultad (Codigo,Nombre) VALUES 
(1,'Facultad1'),
(2,'Facultad2'),
(3,'Facultad3'),
(4,'Facultad4'),
(5,'Facultad5'),
(6,'Facultad6'),
(7,'Facultad7'),
(8,'Facultad8'),
(9,'Facultad9'),
(10,'Facultad10');

INSERT INTO Investigadores (DNI, NomApels, Facultad) VALUES
('3618592R','Nombre1',1),
('1781456T','Nombre2',2),
('3651592T','Nombre3',3),
('3618692V','Nombre4',4),
('3656292L','Nombre5',5),
('4618622R','Nombre6',6),
('3611792R','Nombre7',7),
('3667182R','Nombre8',8),
('1633692R','Nombre9',9),
('3792092R','Nombre10',10);

INSERT INTO Equipos (NumSerie, Nombre, Facultad) VALUES
('523','Nombre1',1),
('613','Nombre2',2),
('717','Nombre3',3),
('16','Nombre4',4),
('91','Nombre5',5),
('17','Nombre6',6),
('94','Nombre7',7),
('62','Nombre8',8),
('74','Nombre9',9),
('727','Nombre10',10);

INSERT INTO Reserva (DNI, NumSerie,Comienzo,Fin) VALUES
('3618692V','613','04/03/2000','05/03/2000'),
('3651592T','94','04/03/2000','05/03/2000'),
('3618592R','74','04/03/2000','05/03/2000'),
('3618592R','727','04/03/2000','05/03/2000'),
('3667182R','94','04/03/2000','05/03/2000'),
('3651592T','16','04/03/2000','05/03/2000'),
('1633692R','717','04/03/2000','05/03/2000'),
('3618692V','17','04/03/2000','05/03/2000'),
('3792092R','62','04/03/2000','05/03/2000'),
('3667182R','613','04/03/2000','05/03/2000');