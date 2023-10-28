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

insert into personas(cedula, nombre, apellido)
values ('1714616123','Santiago','Mosquera');

insert into personas(cedula, nombre, apellido,estatura)
values ('1714616124','Pepe','Mujica',1.85);

insert into personas(cedula, nombre, apellido,numero_hijos)
values ('1714616125','Santiago','Ramos',2);

insert into personas(cedula, nombre, apellido, numero_hijos, estatura, fecha_nacimiento,hora_nacimiento,cantidad_ahorrada, estado_civil_codigo)
values ('1714616126','Estefania','Mosquera',1, 1.58,'22/05/2000','22:54', 200.34);

insert into personas (cedula, nombre, apellido)
values('0992287345','Leonel','Messi');

insert into personas(cedula, nombre, apellido)
values ('1792287345', Cristiano, Ronaldo);

insert into personas (cedula, nombre, apellido)
values ('1563759684','Jefferson', 'Romero');

select * from personas

alter table personas
add column estado_civil_codigo char(1) not null

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null, 
	constraint estado_civil_pk primary key(codigo)
)

alter table personas
add constraint personas_estado_civil_fk foreign key(estado_civil_codigo)
references estado_civil(codigo)

insert into personas (cedula, nombre, apellido, estado_civil_codigo)
values ('1715638954','Santiago','Mosquera','U');

insert into personas (cedula, nombre, apellido, estado_civil_codigo)
values ('1715638922','Santiago','Mosquera','U');

select *from estado_civil

insert into estado_civil(codigo, descripcion)
values('U', 'UNION LIBRE');

insert into estado_civil(codigo, descripcion)
values('C', 'CASADO');

insert into estado_civil(codigo, descripcion)
values('S', 'SOLTERO');

--tabla prestamo 
create table prestamo(
	id_prestamo int, 
	cedula char(10),
	monto money, 
	fecha_prestamo date, 
	hora_prestamo time, 
	garante varchar(40), 
	constraint prestamo_pk primary key (id_prestamo)
)

drop table prestamo

alter table prestamo
add constraint prestamo_cedula_fk foreign key(cedula)
references personas(cedula)

insert into personas(cedula, nombre, apellido, numero_hijos, estatura, fecha_nacimiento,hora_nacimiento,cantidad_ahorrada, estado_civil_codigo)
values ('1714616126','Estefania','Mosquera',1, 1.58,'22/05/2000','22:54', 200.34, 'U');
insert into personas(cedula, nombre, apellido, numero_hijos, estatura, fecha_nacimiento,hora_nacimiento,cantidad_ahorrada, estado_civil_codigo)
values ('1714616146','Daniela','Morelas',3, 1.68,'22/05/2004','22:53', 2000.58, 'C');

insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(4523,'1714616126',5000.23,'22/05/2014','09:00','Daniela Luján');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(2,'1714616126',10000,'22/05/2015','10:00','Diego Boneta');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(3,'1714616126',6000.56,'22/05/2016','13:00','Rosario Rosero');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(54,'1714616126',4000.23,'22/05/2017','14:00','Jefferson Montufar');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(45,'1714616126',900,'22/05/2018','11:00','Enrique MOntoya');

insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(6352,'1714616146',5000.23,'22/05/2014','09:00','Daniela Luján');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(65,'1714616146',10000,'22/05/2015','10:00','Diego Boneta');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(32,'1714616146',6000.56,'22/05/2016','13:00','Rosario Rosero');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(68,'1714616146',4000.23,'22/05/2017','14:00','Jefferson Montufar');
insert into prestamo(id_prestamo, cedula, monto, fecha_prestamo, hora_prestamo, garante)
values(41,'1714616146',900,'22/05/2018','11:00','Enrique MOntoya');


--CONSULTAS
select pe.cedula, pe.nombre, pe.apellido, ec.descripcion 
from personas pe, estado_civil ec
where pe.estado_civil_codigo=ec.codigo
and nombre='Santiago'

--CONSULTAS Y SUBCONSULTAS
--Consulta: 
select pe.cantidad_ahorrada, pre.monto, pre.garante from personas pe,prestamo pre
where pre.monto between 100::money and 1000::money

--subconsulta:
select * from personas where cedula = 
any(select cedula from personas where nombre='Daniela')

--AGREGACION
--OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS
--COUNT --sirve para contar los registros

select count (ec.codigo) from personas per, estado_civil ec 
where per.estado_civil_codigo=ec.codigo and estado_civil_codigo ='C'


--AVG PROMEDIO
select AVG(cast(cantidad_ahorrada as numeric)) from personas

select AVG(cast(cantidad_ahorrada as numeric)) from personas per, estado_civil ec 
where per.estado_civil_codigo=ec.codigo and estado_civil_codigo ='C'

--MAX, MIN, SUM

select MAX(cast(cantidad_ahorrada as numeric)) from personas;
select MIN(cast(cantidad_ahorrada as numeric)) from personas;
select SUM(cast(cantidad_ahorrada as numeric)) from personas;

select SUM(cast(cantidad_ahorrada as numeric)) from personas per, estado_civil ec 
where per.estado_civil_codigo=ec.codigo and estado_civil_codigo ='C'

--AGRUPANDO LOS DATOS MEDIANTE (group by)
select estado_civil_codigo, count(*) from personas 
group by estado_civil_codigo

select estado_civil_codigo, sum(numero_hijos) from personas
group by estado_civil_codigo


--FUNCIONES DE AGREGACION 
select per.cedula,sum(pre.monto)AS "suma_total_prestamo" from personas per, prestamo pre
where per.cedula = pre.cedula
group by per.cedula

select  count (*) AS "total_personas" from personas
where numero_hijos >1












