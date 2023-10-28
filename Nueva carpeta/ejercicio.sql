create table productos(
	codigo int not null,
	nombre varchar (50)not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
create table proveedores(
	codigo int not null,
	nombre varchar (50)not null,
	telefono char(10) not null,
	constraint proveedores_pk primary key (codigo)
)
create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	pp_precio money  not null,
		constraint producto_fk foreign  key (pp_codigo_producto)references productos(codigo),
		constraint proveedor_fk foreign  key (pp_codigo_proveedor)references proveedores(codigo),
	constraint productos_por_proveedor_pk primary key (pp_codigo_producto,pp_codigo_proveedor)
)
select * from productos
select * from proveedores
select * from productos_por_proveedor
--AGREGACION
insert into productos(codigo,nombre ,stock)
values(100,'Doritos','100')
insert into productos(codigo,nombre ,stock)
values(200,'Kchitos','200')
insert into productos(codigo,nombre ,stock)
values(300,'Papas','300')
insert into productos(codigo,nombre ,stock)
values(400,'Takis','0')
--AGREGACION
insert into proveedores(codigo,nombre ,telefono)
values(1,'Snacks SA','0998877665');
insert into proveedores(codigo,nombre ,telefono)
values(2,'Distrisnakcs','0998898000')
--AGREGACION
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,pp_precio)
values (300,1,0.48)
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,pp_precio)
values (300,2,0.49)
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,pp_precio)
values (100,1,0.50)
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,pp_precio)
values (100,2,0.51)
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,pp_precio)
values (200,1,0.51)
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,pp_precio)
values (400,2,0.50)

--PRIMER PASO: SOLO LOS REGISTROS DE LA TABLA DE ROMPIMIENTO
select *from productos prod, proveedores prov,productos_por_proveedor pp
where pp.pp_codigo_producto = prod.codigo
and pp.pp_codigo_proveedor = prov.codigo

-- BUSQUEDAS PARTICULARES(CONSULTAS)
select prod.codigo, prod.nombre, prov.nombre, pp.pp_precio 
from productos prod, proveedores prov,productos_por_proveedor pp
where pp.pp_codigo_producto = prod.codigo
and pp.pp_codigo_proveedor = prov.codigo
and prod.codigo = 300

