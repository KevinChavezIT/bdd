create table registros_entrada(
	codigo_registro int not null, 
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registro_pk primary key(codigo_registro)
)
create table empleado(
	codigo_empleado int not null, 
	nombre varchar (25)not null,
	fecha date not null, 
	hora time not null, 
	constraint empleado_pk primary key (codigo_empleado)
)

drop table registros_entrada
drop table empleado

alter table registros_entrada
add column codigo_empleado int not null;

alter table registros_entrada
add constraint registros_entrada_codigo_empleado_fk 
foreign key(codigo_empleado)
references empleado(codigo_empleado)

select * from  empleado; 
select * from registros_entrada;

insert into empleado(codigo_empleado, nombre, fecha, hora)
values(1, 'Luigi', '12/12/2012', '05:00');

insert into empleado(codigo_empleado, nombre, fecha, hora)
values(2, 'Donkey', '25/09/2020', '03:30');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values('77895', '6598785325', '05/07/2023', '8:00', '2');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values('23547', '6598754325', '12/09/2023', '4:00', '1');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values('34533', '6586754325', '22/11/2023', '2:00', '2');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values('54789', '6598759825', '09/05/2023', '7:00', '1');