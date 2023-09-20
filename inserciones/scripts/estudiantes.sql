--tabla estudiantes

select *from estudiantes
update estudiantes set apellido='Hernandez'
where cedula like '17%'
---------------------------------------

select nombre,cedula from estudiantes

select nombre from estudiantes
where cedula like '17%'

select nombre,apellido from estudiantes
where nombre like 'a%'

create table estudiantes (
	cedula char(10)  not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	
	constraint estudiantes_pk primary Key(cedula)
) 
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('1758300088','anahi','vega','abc@gmail.com','19/09/2004')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('1758300089','daniel','chavez','abc@gmail.com','19/09/2000')

insert into estudiantes(cedula, nombre,apellido,email,fecha_nacimiento)
values ('0123456788','kevin','chavez','abc@gmail.com','19/09/2009')

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