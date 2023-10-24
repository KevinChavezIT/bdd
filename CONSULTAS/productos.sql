create table producto (
	codigo int not null,
	nombre varchar (50)not null,
	descripcion varchar (200),
	precio money not null, 
	stock int not null,
	constraint producto_pk primary key(codigo)
)

create table ventas(
	id_venta  int, 
	codigo_producto int not null, 
	fecha_venta date not null, 
	cantidad int, 
	constraint ventas_pk primary key(id_venta)
)

--CONSULTAS
select  pro.nombre, pro.stock, ven.cantidad from ventas ven, producto pro
where pro.nombre like '%m%' or pro.descripcion = '0'
--SUBCONSULTA
select nombre, stock from productos ,ventas ven where ven.codigo_producto = 
any (select cantidad from ventas where cantidad='5')

alter table ventas
add constraint ventas_producto_fk
foreign key (codigo_producto)
references producto(codigo)

select * from producto
select * from ventas

insert into producto(codigo, nombre,descripcion,precio,stock)
values('1','chicle', 'acido', '0.15','200');

insert into producto(codigo, nombre,descripcion,precio,stock)
values('2','chupete', 'dulce', '0.25','100');

insert into producto(codigo, nombre,descripcion,precio,stock)
values('3','caramelo', 'amargo', '0.05','150');


insert into ventas(id_venta, codigo_producto,fecha_venta,cantidad)
values('11','1', '23/10/2022', '86');

insert into ventas(id_venta, codigo_producto,fecha_venta,cantidad)
values('22','2', '23/10/2022', '96');

insert into ventas(id_venta, codigo_producto,fecha_venta,cantidad)
values('33','1', '23/10/2022', '76');

insert into ventas(id_venta, codigo_producto,fecha_venta,cantidad)
values('44','3', '23/10/2022', '36');