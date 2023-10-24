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
