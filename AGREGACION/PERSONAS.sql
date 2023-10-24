create table personas(
	cedula char(10) not null,
 	nombre varchar (50) not null,
 	apellido varchar (50) not null,
 	estatura decimal,
  	fecha_nacimiento date,
 	hora_nacimiento time,
 	cantidad_ahorrada money, 
 	numero_hijos int,
 	constraint persona_pk primary key (cedula)	
)
create table prestamo(
	id_prestamo int, 
	cedula char(10),
	monto money, 
	fecha_prestamo date, 
	hora_prestamo time, 
	garante varchar(40), 
	constraint prestamo_pk primary key (id_prestamo)
)
--CONSULTAS
select pe.cantidad_ahorrada, pre.monto, pre.garante from personas pe,prestamo pre
where pre.monto between 100::money and 1000::money
--SUBCONSULTA
select * from personas where cedula = 
any(select cedula from personas where nombre='Keyla')

--FUNCIONES DE AGREGACION 
select per.cedula,sum(pre.monto)AS "suma_total_prestamo" from personas per, prestamo pre
where per.cedula = pre.cedula
group by per.cedula

select  count (*) AS "total_personas" from personas
where numero_hijos >'1'


alter table prestamo
add constraint prestamo_cedula_fk 
foreign key(cedula)
references personas(cedula)

select * from  prestamo; 
select * from personas;

insert into personas(cedula, nombre, apellido, numero_hijos, estatura, fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('5897884589','Keyla','Vega','1', '1.50','22/05/2023','12:44', '500,33');
insert into personas(cedula, nombre, apellido, numero_hijos, estatura, fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('5896624888','HEydi','Chave','3', '1.60','22/05/2024','20:55', '200,55');

insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('66','5897624888','30000','22/01/2015','11:00','Delia Vega');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('55','5897624589','1000.88','22/02/2016','16:00','Vega ARmado');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('77','5897624888','8000.11','22/03/2017','10:00','gabriela Vega');