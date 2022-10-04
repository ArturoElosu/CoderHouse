use proyectocoder;

create table Clientes (
id_cliente INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (50) NOT NULL,
apellido VARCHAR (50) NOT NULL,
fecha_nacimiento DATE NOT NULL,
telefono NUMERIC (12,0) NOT NULL,
email VARCHAR (50) NOT NULL,
PRIMARY KEY (id_cliente)
);

create table Productos (
id_producto INT AUTO_INCREMENT NOT NULL,
marca VARCHAR (50) NOT NULL,
modelo VARCHAR (50) NOT NULL,
cilindrada NUMERIC (4,0) NOT NULL,
anio_fabricacion DATE NOT NULL,
precio FLOAT (12,2),
PRIMARY KEY (id_producto)
);

create table Categorias (
id_categoria INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (50) NOT NULL,
PRIMARY KEY (id_categoria)
);

create table Accesorios (
id_accesorio INT AUTO_INCREMENT NOT NULL,
id_categoria INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
modelo VARCHAR (50) NOT NULL,
precio FLOAT (12,2),
PRIMARY KEY (id_accesorio),
FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

create table Ventas (
id_venta INT AUTO_INCREMENT NOT NULL,
id_cliente INT NOT NULL,
id_producto INT NOT NULL,
id_accesorio INT NOT NULL,
precio_total FLOAT (12,2) NOT NULL,
PRIMARY KEY (id_venta),
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
FOREIGN KEY (id_accesorio) REFERENCES Accesorios(id_accesorio)
);

create table PostVenta (
id_postventa INT AUTO_INCREMENT NOT NULL,
id_cliente INT NOT NULL,
id_producto INT NOT NULL,
kilometraje NUMERIC (10,0) NOT NULL,
fecha_service DATE NOT NULL,
service_en_tiempo BOOLEAN NOT NULL,
garantia BOOLEAN NOT NULL,
precio FLOAT (12,2),
PRIMARY KEY (id_postventa),
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

SELECT * FROM postventa;

/*
DROP TABLES en ORDEN

drop table PostVenta;
drop table Ventas;
drop table Accesorios;
drop table Categorias;
drop table Productos;
drop table Clientes;
*/