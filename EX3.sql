CREATE DATABASE ex3;

GO

USE ex3;

CREATE TABLE Cientificos (
	DNI VARCHAR(8) NOT NULL,
	NomApels NVARCHAR(255) NOT NULL,
	CONSTRAINT pk_cientificos PRIMARY KEY (DNI)
);
CREATE TABLE Proyecto (
	Id CHAR(4),
	Nombre NVARCHAR(255) NOT NULL,
	Horas INT NOT NULL,
	CONSTRAINT pk_proyecto PRIMARY KEY (Id)
);
CREATE TABLE Asignado_a (
	Cientifico VARCHAR(8) NOT NULL,
	Proyecto CHAR(4) NOT NULL,
	CONSTRAINT pk_asignado PRIMARY KEY (Cientifico, Proyecto),
	CONSTRAINT fk_asignado1 FOREIGN KEY (Cientifico) REFERENCES Cientificos(DNI),
	CONSTRAINT fk_asignado2 FOREIGN KEY (Proyecto) REFERENCES Proyecto(Id)
);
GO

INSERT INTO Cientificos (DNI, NomApels) VALUES

('5572941S','Cientifico1'),
('5472941S','Cientifico2'),
('5571941S','Cientifico3'),
('5572984S','Cientifico4'),
('5516941S','Cientifico5'),
('5572041S','Cientifico6'),
('5572942R','Cientifico7'),
('5072563U','Cientifico8'),
('5571641A','Cientifico9'),
('5721673B','Cientifico10');

INSERT INTO Proyecto (Id,Nombre,Horas) VALUES
('1','Cientifico10',10),
('2','Cientifico10',10),
('3','Cientifico10',10),
('4','Cientifico10',10),
('5','Cientifico10',10),
('6','Cientifico10',10),
('7','Cientifico10',10),
('8','Cientifico10',10),
('9','Cientifico10',10),
('10','Cientifico10',10);

INSERT INTO Asignado_a (Cientifico, Proyecto) VALUES
('5572941S','1'),
('5472941S','2'),
('5571941S','7'),
('5572984S','4'),
('5572984S','3'),
('5572941S','5'),
('5572041S','9'),
('5572941S','6'),
('5721673B','8'),
('5571641A','10');