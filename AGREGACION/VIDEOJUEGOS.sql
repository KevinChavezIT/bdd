create table videojuegos(
	codigo int not null, 
	nombre varchar (100)not null, 
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

create table plataformas(
	id_plataforma int, 
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int, 
	constraint plataformas_pk primary key(id_plataforma)
)
--CONSULTAS
select jue.nombre,jue.descripcion,jue.valoracion, plat.nombre_plataforma
from plataformas plat, videojuegos jue where (jue.descripcion ='Guerra' and jue.valoracion >'7')
or (jue.nombre like 'C' and jue.valoracion >'8')
--SUBCONSULTA
select plat.id_plataforma,plat.nombre_plataforma,plat.codigo_videojuego from plataformas plat
where plat.codigo_videojuego= any(select codigo from  videojuegos where nombre='God of war')

--FUNCIONES DE AGREGACION 
select vid.codigo, count(plat.id_plataforma) as "plataformas_total"
from plataformas plat,videojuegos vid
where vid.codigo=plat.codigo_videojuego group by vid.codigo

select round(AVG(valoracion),2) as "valoracion_promedio" from videojuegos

alter table plataformas
add constraint plataformas_videojuegos_fk 
foreign key(codigo_videojuego)
references videojuegos(codigo);

select *from plataformas
select *from videojuegos

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values ('01','steam.com','0');
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values ('02','steam.com','1');
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values ('03','epicGames.com','4');
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values ('04','epicGames.com','3');
