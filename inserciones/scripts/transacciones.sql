--tabla transacciones

select *from transacciones
update transacciones set tipo='T'
where monto > '100' and monto <'500'
and fecha = '2023-09-19'
and hora between '14:00:00' and '20:00:00'
---------------------------------------

select * from transacciones
where tipo = 'D'

select * from transacciones
where monto between '200' and '2000'

select codigo,monto,tipo,fecha from transacciones
where fecha is not null

create table transacciones (
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary Key(codigo)
) 
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('11','54585','200','D','19/09/2023','19:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('0','01234','155','C','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1','02234','564','D','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('2','03234','486','D','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('3','04234','78','C','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('4','05234','785','D','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('5','06234','7887','C','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('6','07234','787','C','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('7','08234','345','C','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('8','09234','4555','D','19/09/2023','22:39')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('9','01234','5557','C','19/09/2023','22:39')

select * from transacciones