create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar (50) not null, 
	email varchar (50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

create table colegio(
	id_colegio int not null,
	nombre varchar(50) not null,
	direccion varchar (50),
	telefono int, 
	constraint colegio_pk primary key (id_colegio)
)

--CONSULTAS
select co.id_colegio,es.nombre,es.apellido from colegio co, estudiantes es
where es.apellido like '%n%'
--SUBCONSULTA
select * from  estudiantes es where es.id_colegio = 
any (select id_colegio from colegio where nombre='Belen')

drop table estudiantes
drop table colegio
alter table estudiantes
add column id_colegio int not null;

alter table estudiantes
add constraint estudiantes_colegio_fk 
foreign key(id_colegio)
references colegio(id_colegio);

select *from estudiantes
select *from colegio

insert into colegio(id_colegio, nombre, direccion, telefono)
values (1,'Ana', 'quito', '12345');
insert into colegio(id_colegio, nombre, direccion, telefono)
values (2,'Belen', 'guayaquil', '54321');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, id_colegio)
values ('9875648597','Pedro','Jose','Pedro2@gmail.com','15/01/2018','1');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, id_colegio)
values ('3548521576','Mario','Pervis','Pervis@gmail.com','27/09/2012','2');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, id_colegio)
values ('0235987620','Anita','Caloi','Anita1@gmail.com','05/09/2015','1' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, id_colegio)
values ('6546546546','Maria','Carmen','Carmen5@gmail.com','22/01/2009','2');