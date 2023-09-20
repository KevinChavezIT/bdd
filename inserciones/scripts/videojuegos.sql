--tabla videojuegos

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