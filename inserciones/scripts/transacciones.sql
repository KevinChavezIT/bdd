--tabla transacciones

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