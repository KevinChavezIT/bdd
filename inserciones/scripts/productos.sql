--tabla productos

select *from productos
update productos set stock='0'
where descripcion is null

create table productos (
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary Key(codigo)
) 
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (11,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (21,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (31,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (41,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (51,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (61,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (71,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (81,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (91,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (15,'Coca Cola',3.50,300);


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