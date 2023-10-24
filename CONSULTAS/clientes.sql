
create table cliente(
	cedula char(10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	constraint cliente_pk primary key(cedula)
)
create table compras(
	id_compra int, 
	cedula char(10) not null, 
	fecha_compra date not null, 
	monto decimal not null,
	constraint compras_pk primary key(id_compra)
)
--CONSULTAS
select cl.nombre,cl.apellido from clientes cl,compras co
where co.cedula like '%7%'
--SUBCONSULTA
select * from  clientes cl   
where cl.cedula = (select cl.cedula from clientes cl where cl.nombre = 'Monica');

alter table compras
add constraint compras_cliente_fk
foreign key (cedula)
references cliente(cedula)

select * from cliente
select * from compras

insert into cliente (cedula, nombre, apellido)
values('0123584678', 'Daniel', 'Tubon');

insert into cliente (cedula, nombre, apellido)
values('5215478945', 'Anahi', 'Vega');

insert into cliente (cedula, nombre, apellido)
values('5215478545', 'Monica', 'aaaa');

insert into compras(id_compra, cedula, fecha_compra, monto)
values('002', '0123584678', '08/11/2023',74.00); 

insert into compras(id_compra, cedula, fecha_compra, monto)
values('003', '0123584678', '18/10/2023',15.00); 

insert into compras(id_compra, cedula, fecha_compra, monto)
values('004', '5215478945', '20/08/2025',82.00); 

insert into compras(id_compra, cedula, fecha_compra, monto)
values('005', '0123584678', '13/10/2029',11.00); 

insert into compras(id_compra, cedula, fecha_compra, monto)
values('006', '5215478945', '28/05/2022',33.00); 