--tabla videojuegos

select *from videojuegos
update videojuegos set descripcion='mejor puntuado'
where valoracion > '9'
---------------------------------------

select * from videojuegos
where nombre like 'c%'

select * from videojuegos
where valoracion between '9'and '10'

select * from videojuegos
where descripcion is null

create table videojuegos (
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary Key(codigo)
) 
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);


insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('9','spiderman','saltos','10')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('8','cars','correr','9')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('0','lol','estrategia','5')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('1','valorant','shooter','5')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('2','counter','shooter','3')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('3','fifa','futbol','5')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('4','mario','entretenido','5')

insert into videojuegos(codigo,nombre,valoracion)
values ('5','ufc','5')

insert into videojuegos(codigo,nombre,valoracion)
values ('6','san andres','5')

insert into videojuegos(codigo,nombre,valoracion)
values ('7','nfs','5')

select * from videojuegos