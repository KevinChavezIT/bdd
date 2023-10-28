create table ciudad(
	id int not null,
	nombre varchar (45)not null,
		constraint ciudad_pk primary key (id)
)
create table municipio(
	id int not null,
	nombre varchar(45),
	ciudad_id int,
		constraint municipio_pk primary key (id),
		constraint ciudad_fk foreign key (ciudad_id) references ciudad(id)
)
create table proyecto(
	id int not null,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
		constraint proyecto_pk primary key (id)
)
create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
		constraint municipio_fk foreign  key (municipio_id)references municipio(id),
		constraint proyecto_fk foreign  key (proyecto_id)references proyecto(id),
		constraint proyecto_municipio_pk primary key (municipio_id,proyecto_id)
)

select * from ciudad
select * from municipio
select * from proyecto
select * from proyecto_municipio

insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');

insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);

insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							
insert into proyecto_municipio values (5,1),
									  (5,3),
									  (2,1),
									  (1,2),
									  (4,1),
									  (9,2),
									  (10,1),
									  (6,3),
									  (3,1),
									  (7,2);
			
--CONSULTAS 
select m.nombre AS nombre_municipio, p.proyecto AS nombre_proyecto
from municipio m, proyecto p, proyecto_municipio pm
where m.id = pm.municipio_id
and p.id = pm.proyecto_id
--SUBCONSULTA 
select proyecto
from proyecto
where id IN (select proyecto_id from proyecto_municipio where municipio_id = 1)
--AGREGACION 
select m.nombre AS nombre_municipio, COUNT(pm.proyecto_id) AS cantidad_proyectos
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
GROUP BY m.nombre

--CONSULTAS 2
select m.nombre AS nombre_municipio, p.proyecto AS nombre_proyecto
from municipio m, proyecto p, proyecto_municipio pm
where m.id = pm.municipio_id
and p.id = pm.proyecto_id
and m.nombre like '%GAD%'
--AGREGACION 2
select m.nombre AS nombre_municipio, MIN(pm.proyecto_id) AS minimo_proyecto_id
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
GROUP BY m.nombre;

--CONSULTAS 3
select m.nombre AS nombre_municipio, c.nombre AS nombre_ciudad
from municipio m, ciudad c
where m.ciudad_id = c.id;
--SUBCONSULTA 3
select proyecto
from proyecto
WHERE id IN (select proyecto_id from proyecto_municipio where municipio_id = 3);

--AGREGACION 3
select m.nombre AS nombre_municipio, MAX(pm.proyecto_id) AS maximo_proyecto_id
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
GROUP BY m.nombre;
