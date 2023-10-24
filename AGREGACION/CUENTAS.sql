create table usuario(
	cedula char(10) not null,
	nombre varchar(25)not null,
	apellido varchar(25)not null,
	tipo_cuenta varchar(20),
	limite_credito decimal (10,2),
	
	constraint usuario_pk primary key (cedula)
)
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_usuario char(10) not null,
	fecha_creacion date not null,
	saldo money not null,
	
	constraint cuentas_pk primary key (numero_cuenta)
)
--CONSULTAS
select us.nombre,cu.numero_cuenta from usuario us,cuentas cu
where cu.saldo between 100::money and 1000::money;
--SUBCONSULTA
select * from cuentas , usuario where fecha_creacion =
any (select fecha_creacion from cuentas where fecha_creacion between '21/09/2022' and '21-09-2023')

--FUNCIONES DE AGREGACION 
select round(avg(cast(cue.saldo as numeric)),2) from cuentas cue, usuario us
where cue.cedula_usuario = us.cedula 
and us.cedula ='0123456788'

select us.tipo_cuenta ,count(cue.numero_cuenta) from cuentas cue,usuario us
where cue.cedula_usuario = us.cedula
group by us.tipo_cuenta

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_usuario)
references usuario(cedula)

select *from usuario 
select * from cuentas

insert into usuario(cedula, nombre, apellido, tipo_cuenta, limite_credito)
values('0123456789', 'Juan', 'Montalvo', 'ACREDITADA','500.20');

insert into usuario(cedula, nombre, apellido, tipo_cuenta, limite_credito)
values('0123456788', 'Pedro', 'Perez', 'ACREDITADA','100.00');

insert into usuario(cedula, nombre, apellido, tipo_cuenta, limite_credito)
values('0123456787', 'Maria', 'Jose', 'ACREDITADA','350.80');

insert into cuentas (numero_cuenta,cedula_usuario,fecha_creacion,saldo)
values ('12358','0123456789','10/05/2050',200);

insert into cuentas (numero_cuenta,cedula_usuario,fecha_creacion,saldo)
values ('89547','0123456788','05/12/2008',500);

insert into cuentas (numero_cuenta,cedula_usuario,fecha_creacion,saldo)
values ('02358','0123456787','25/06/2023',1000);

insert into usuario(cedula, nombre, apellido, tipo_cuenta, limite_credito)
values('2557875896', 'Diego', 'Morales', 'ACREDITADA','5000.20');

insert into usuario(cedula, nombre, apellido, tipo_cuenta, limite_credito)
values('2557085967', 'Rosa', 'Perez', 'ACREDITADA','50.20');

insert into usuario(cedula, nombre, apellido, tipo_cuenta, limite_credito)
values('2557548263', 'Victoria', 'Montoya', 'ACREDITADA','520.10');


