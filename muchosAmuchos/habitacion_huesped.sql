create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
)
create table huespedes(
	id int not null,
	nombres varchar (45) not null,
	apellidos varchar (45) not null,
	telefono char (10),
	correo varchar (45),
	direccion varchar (45),
	ciudad varchar (45),
	pais varchar (45),
	constraint huespedes_pk primary key (id)
)
create table reservas(
	habitacion int not null,
	huesped_id int not null,
	inicio_fecha date,
	fin_fecha date,
		constraint habitaciones_fk foreign  key (habitacion)references habitaciones(habitacion_numero),
		constraint huespedes_fk foreign  key (huesped_id)references huespedes(id),
	constraint habitaciones_huespedes_pk primary key (habitacion,huesped_id)
)

select * from habitaciones
select * from huespedes
select * from reservas

insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
								 

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
												
								
insert into reservas values (2,10,'11/05/2023','12/05/2023'),
						    (2,9,'11/05/2023','12/05/2023'),
							(1,1,'22/06/2023','23/06/2023'),
							(1,2,'22/06/2023','23/06/2023'),
							(1,3,'22/06/2023','23/06/2023'),
							(1,4,'22/06/2023','23/06/2023'),
							(12,5,'01/01/2023','02/01/2023'),
							(11,6,'11/08/2023','12/08/2023'),
							(10,7,'11/05/2023','12/05/2023'),
							(9,8,'11/05/2023','12/05/2023');
							
--CONSULTAS
select h.habitacion_numero, hu.nombres, hu.apellidos
from habitaciones h, reservas r, huespedes hu
where h.habitacion_numero = r.habitacion_id
AND hu.id = r.huesped_id
--SUBCONSULTA
select nombres, apellidos
from huespedes
where id IN (select huesped_id from reservas where habitacion_id = 2)
--AGREGACION
select h.habitacion_numero, COUNT(r.huesped_id) AS cantidad_huespedes
from habitaciones h, reservas r
where h.habitacion_numero = r.habitacion_id
GROUP BY h.habitacion_numero

--CONSULTAS 2
select h.habitacion_numero, h.piso, hu.nombres, hu.apellidos
from habitaciones h, reservas r, huespedes hu
where h.piso = 4
and h.habitacion_numero = r.habitacion_id
and hu.id = r.huesped_id
--SUBCONSULTA 2
select nombres, apellidos
from huespedes
where id IN (select huesped_id from reservas where habitacion_id = 3)
--AGREGACION 2
select h.habitacion_numero, AVG(r.huesped_id) AS promedio_huespedes
from habitaciones h, reservas r
where h.habitacion_numero = r.habitacion_id
GROUP BY h.habitacion_numero

--CONSULTAS 3
select h.habitacion_numero, hu.nombres, hu.apellidos
from habitaciones h, reservas r, huespedes hu
where h.habitacion_numero = r.habitacion_id
AND hu.id = r.huesped_id
--SUBCONSULTA 3
select nombres, apellidos
from huespedes
where id IN (select huesped_id from reservas where habitacion_id = 4)
--AGREGACION 3
select h.habitacion_numero, SUM(h.precio_por_noche) AS total_recaudado
from habitaciones h, reservas r
where h.habitacion_numero = r.habitacion_id
GROUP BY h.habitacion_numero
