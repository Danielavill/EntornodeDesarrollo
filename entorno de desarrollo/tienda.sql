create table if not exists cliente(
id_cliente int primary key,
clie_nombre varchar,
clie_apellido varchar,
clie_direccion varchar,
clie_telefono numeric,
clie_correo varchar,
clie_registradopor varchar,
clie_echacmabio varchar
);

CREATE TABLE if not exists producto(
id_producto int primary key,
prod_nombre varchar,
prod_precio int,
pro_fechavencimiento date,
prod_registradopor varchar,
prod_fechacambio varchar
);

CREATE TABLE if not exists compra(
id_compra int primary key,
id_cliente int,
id_producto int,
comp_fecha date,
comp_cantidad int,
comp_registradopor varchar,
comp_fechacambio varchar,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

INSERT INTO cliente (id_cliente, clie_nombre, clie_apellido, clie_direccion, clie_telefono, clie_correo)
VALUES ('01','yasid', 'berbesi', 'san pedro','3042025620', 'berbesiyasid@gmail.com');
 select * from cliente;
 
 INSERT INTO cliente (id_cliente, clie_nombre, clie_apellido, clie_direccion, clie_telefono, clie_correo)
VALUES ('02','daniela', 'villamizar', 'simon bolivra','3223412500', 'danielavillamizar@gmail.com');
 select * from cliente;
 
 INSERT INTO producto (id_producto, prod_nombre, prod_precio ,pro_fechavencimiento)
VALUES ('01','celular', '2500000', '25/10/2025');
 select * from producto;
 
 INSERT INTO producto (id_producto, prod_nombre, prod_precio ,pro_fechavencimiento)
VALUES ('02','computador', '3500000', '25/10/2028');
 select * from producto;
 
 INSERT INTO compra (id_compra, id_cliente ,id_producto ,comp_fecha,comp_cantidad)
VALUES ('01','01', '02', '05/04/2024', '1');
 select * from compra;
 
 INSERT INTO compra (id_compra, id_cliente ,id_producto ,comp_fecha,comp_cantidad)
VALUES ('02','02', '01', '05/04/2024', '3');
 select * from compra;
 

 SELECT c.id_compra, cl.clie_nombre, cl.clie_apellido, p.prod_nombre, p.prod_percio, c.comp_fecha, c.comp_cantidad
FROM compra c
JOIN cliente cl ON c.id_cliente = cl.id_cliente
JOIN producto p ON c.id_producto = p.id_producto
WHERE cl.id_cliente = '01'; -- Cambia '01' por el ID del cliente que deseas consultar
 