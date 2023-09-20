--crear tabla clientes
drop table clientes

select * from clientes
delete from  clientes 
where  nombre='kevin'

create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	edad int, 
	constraint clientes_pk primary Key(cedula)
)