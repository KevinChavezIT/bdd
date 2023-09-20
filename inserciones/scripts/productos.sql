--tabla productos

create table productos (
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary Key(codigo)
) 
select * from productos 
where nombre like 'q%'

select * from productos 
where descripcion is null
 
select * from productos  
where precio between '2' and '3'

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('1','cable','usb','1.00','5')

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('2','mouse','alambrico','20','10')

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('3','teclado','rgb','15','7')

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('4','monitor','gaming','300','2')

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('5','cpu','intel','500','1')

insert into productos(codigo, nombre,precio,stock)
values ('6','camara','50','3')

insert into productos(codigo, nombre,precio,stock)
values ('7','ventilador','75','3')

insert into productos(codigo, nombre,precio,stock)
values ('8','silla','120','7')

select * from productos