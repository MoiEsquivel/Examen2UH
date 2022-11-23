--Crear base de datos
CREATE DATABASE Ventas

use Ventas

CREATE TABLE Cajeros
(
Codigo_Cajero int identity,
Nombre nvarchar(50) NOT NULL,
Apellido nvarchar(50) NOT NULL,
CONSTRAINT PK_codigo PRIMARY KEY (Codigo_Cajero)
)

CREATE TABLE Productos
(
Codigo_Producto int identity,
Nombre nvarchar(100) NOT NULL,
Precio float default 0,
CONSTRAINT PK_codiproduc PRIMARY KEY (Codigo_Producto)
)

CREATE TABLE Maquina_Registradora
(
Codigo_Maquina int identity,
Piso int,
CONSTRAINT PK_codigomaqui PRIMARY KEY (Codigo_Maquina)
)

CREATE TABLE Ventas
(
Cajero int,
Maquina int,
N_Fac int identity,
Fecha date DEFAULT getdate() null,
Producto int,
CONSTRAINT PK_codifac PRIMARY KEY (N_Fac),
CONSTRAINT FK_cajero FOREIGN KEY (Cajero) REFERENCES Cajeros (Codigo_Cajero),
CONSTRAINT FK_maquina FOREIGN KEY (Maquina) REFERENCES Maquina_Registradora (Codigo_Maquina),
CONSTRAINT FK_caje FOREIGN KEY (Producto) REFERENCES Productos (Codigo_Producto)
)
Insert into Ventas (Cajero,Maquina,Producto)values(2,3,1)

Insert into Cajeros (Nombre,Apellido) Values ('Moises','Esquivel'),('Maria','Arias')

Insert into Productos (Nombre,Precio) Values ('Asus',1000),('MacBook',5000),('VivoBook',2500)
Select * from Productos
Insert into Maquina_Registradora (Piso) Values (1),(2),(3)

update Productos set Nombre = 'Dell', Precio = 5000 where Codigo_Producto = 1

Select  v.N_Fac,v.Fecha,c.Nombre,c.Apellido, p.Nombre,p.Precio,mr.Piso
from Ventas v
inner join Cajeros c on v.Cajero = c.Codigo_Cajero 
inner join Productos p on v.Producto = p.Codigo_Producto
inner join Maquina_Registradora mr on v.Maquina = mr.Codigo_Maquina where N_Fac = 14

Select N_Fac from Ventas 