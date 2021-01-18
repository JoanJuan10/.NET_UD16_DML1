CREATE DATABASE ex4;

GO
USE ex4;

CREATE TABLE Cajeros (
	Codigo INT NOT NULL IDENTITY(1,1),
	NomApels NVARCHAR(255),
	CONSTRAINT pk_cajeros PRIMARY KEY (Codigo)
);
CREATE TABLE Productos (
	Codigo INT NOT NULL IDENTITY(1,1),
	Nombre NVARCHAR(100),
	Precio INT,
	CONSTRAINT pk_productos PRIMARY KEY (Codigo)
);
CREATE TABLE maquinas_registradas (
	Codigo INT NOT NULL IDENTITY(1,1),
	Piso INT,
	CONSTRAINT pk_maquinas PRIMARY KEY (Codigo)
);
CREATE TABLE Venta (
	Cajero INT,
	Maquina INT,
	Producto INT,
	CONSTRAINT pk_venta PRIMARY KEY (Cajero,Maquina,Producto),
	CONSTRAINT fk_venta1 FOREIGN KEY (Cajero) REFERENCES Cajeros(Codigo),
	CONSTRAINT fk_venta2 FOREIGN KEY (Maquina) REFERENCES maquinas_registradas(Codigo),
	CONSTRAINT fk_venta3 FOREIGN KEY (Producto) REFERENCES Productos(Codigo),
);

GO

INSERT INTO Cajeros (NomApels) VALUES
('Cajero1'),
('Cajero2'),
('Cajero3'),
('Cajero4'),
('Cajero5'),
('Cajero6'),
('Cajero7'),
('Cajero8'),
('Cajero9'),
('Cajero10');
INSERT INTO Productos (Nombre, Precio) VALUES
('Producto1', 362),
('Producto2', 461),
('Producto3', 26),
('Producto4', 14),
('Producto5', 53),
('Producto6', 10),
('Producto7', 90),
('Producto8', 112),
('Producto9', 164),
('Producto10', 265);
INSERT INTO maquinas_registradas (Piso) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);
INSERT INTO Venta (Cajero,Maquina,Producto) VALUES
(1,6,3),
(2,1,8),
(3,8,5),
(4,9,7),
(5,4,8),
(6,2,3),
(7,7,2),
(8,1,5),
(9,6,4),
(10,8,6);