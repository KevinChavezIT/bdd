--tabla estudiantes

create table estudiantes (
	cedula char(10)  not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	
	constraint estudiantes_pk primary Key(cedula)
) 

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0123456789','juan','pepe','abc@gmail.com','19/09/2023')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0223456789','mario','bros','abc@gmail.com','19/09/2023')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0323456789','luigi','bros','abc@gmail.com','19/09/2023')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0423456789','princesa','peach','abc@gmail.com','19/09/2023')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0523456789','donkey','kong','abc@gmail.com','19/09/2023')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0623456789','bowser','tortuga','abc@gmail.com','19/09/2023')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0723456789','yoshi','sapito','abc@gmail.com','19/09/2023')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0823456789','toad','homgo','abc@gmail.com','19/09/2023')

select * from estudiantes