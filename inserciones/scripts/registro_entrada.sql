--tabla registro entrada

select *from registro_entrada
update registro_entrada set cedula_empleado='082345679 '
where fecha = '2023-08-19'
---------------------------------------

select cedula_empleado,fecha,hora from registro_entrada

select *from registro_entrada
where hora between '7:00' and '14:00'

select *from registro_entrada
where hora > '8:00'

create table registro_entrada (
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registro_entrada_pk primary Key(codigo_registro)
) 
insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('15','1234567899','19/08/2023','20:26')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('00','1234567890','19/09/2023','22:26')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('1','2234567890','19/09/2023','22:27')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('2','2234567890','19/09/2023','22:28')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('3','4234567890','19/09/2023','22:29')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('4','5234567890','19/09/2023','22:30')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('5','6234567890','19/09/2023','22:31')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('6','7234567890','19/09/2023','22:32')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('7','8234567890','19/09/2023','22:33')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('8','9234567890','19/09/2023','22:34')

insert into registro_entrada(codigo_registro, cedula_empleado,fecha,hora)
values ('9','1034567890','19/09/2023','22:35')

select * from registro_entrada