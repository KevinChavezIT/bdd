create table Transacciones(
	codigo int not null, 
	numero_cuenta char(5) not null, 
	monto money not null, 
	tipo char(1) not null, 
	fecha date not null, 
	hora time not null, 
	constraint transacciones_pk primary key(codigo)
)
create table banco(
	codigo_banco int,
	codigo_transaccion int, 
	detalle varchar(100), 
	constraint banco_pk primary key (codigo_banco)
)

--CONSULTAS
select * from transacciones tran, banco ban
where tran.tipo='C' and ( tran.numero_cuenta between '22001' and '22004')
--SUBCONSULTA
select * from transacciones tran, banco ban where ban.codigo_transaccion='1'

alter table banco
add constraint banco_transacciones_fk 
foreign key(codigo_transaccion)
references transacciones(codigo)

select * from  banco; 
select * from Transacciones;

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('025','01236','666,36','C','11/08/2020','09:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('026','01237','578,36','D','08/01/2023','15:10');

insert into banco(codigo_banco, codigo_transaccion, detalle)
values ('66', '025', 'CREDITO');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values ('77', '54193', 'DEBITO');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values ('88', '95124', 'CREDITO');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values ('99', '26', 'DEBITO');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values ('100', '026', 'DEBITO');
