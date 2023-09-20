--tabla cuentas

select *from cuentas
update cuentas set saldo='10'
where cedula_propietario like '17%'
---------------------------------------

select numero_cuenta,saldo from cuentas

select *from cuentas
where fecha_creacion between '2023-07-19' and '2023-09-19'

select numero_cuenta,saldo from cuentas
where fecha_creacion between '2023-07-19' and '2023-09-19'

create table cuentas (
	numero_cuenta char(5)  not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary Key(numero_cuenta)
) 
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00012','17894','10/7/2022','555')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00011','01234','19/7/2023','1000')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00001','01234','19/9/2023','1000')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00002','02234','19/9/2023','100')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00003','03234','19/9/2023','1100')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00004','04234','19/9/2023','501')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00005','05234','19/9/2023','748')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00006','06234','19/9/2023','4142')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00007','07234','19/9/2023','411')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00008','08234','19/9/2023','1444')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00009','09234','19/9/2023','8787')

insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion,saldo)
values ('00010','01034','19/9/2023','0')

select * from cuentas