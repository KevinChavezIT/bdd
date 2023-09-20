--tabla productos
select * from  productos 
where stock ='10' and precio < '10';

select nombre,stock from  productos 
where nombre like '%m%' or descripcion like '% %';

select nombre from productos 
where descripcion is null or stock ='0';

--tabla cuentas
select numero_cuenta,saldo from cuentas 
where  saldo > '100' and saldo <'1000';

select * from cuentas
from fecha_creacion  between '2023-07-20' and '2022-09-19';

select *from cuentas
from saldo ='0' or cedula_propietario like '%2';

--tabla estudiantes
select nombre,apellido from estudiantes 
where  nombre like 'm%' or apellido like '%z';

select nombre from estudiantes 
where cedula like '%32%'and cedula '18%';

select nombres, apellido from estudiantes 
where cedula like '%06' or cedula like '17%';

--tabla registro entradas
select * from registro_entrada
where extract (month from fecha) ='09'or cedula_empleado like '17%';

select * from registro_entrada
where extract (month from fecha) ='0'and cedula_empleado like '17%'
and hora between '08:00' and '12:00';

select * from registro_entrada
where (extract (month from fecha) ='08'and cedula_empleado like '17%'
and hora between '08:00' and '12:00') or extract (month from fecha) ='09'
and cedula_empleado like '08%' and hora between '09:00' and '13:00';

--tabla videojuegos
select *from videojuegos
where nombre like '%c%' or valoracion ='7';

select *from videojuegos 
where codigo between '3'and '7' or valoracion ='7';

select *from videojuegos
where (valoracion > '7' and nombre like 'c%') 
or valoracion > '8' and nombre like 'd%';

--tabla transacciones
select *from transacciones 
where tipo ='C' and numero_cuenta between '222001' and '22004';

select *from transacciones 
where tipo ='D' and fecha='25/05/2023' and numero_cuenta between '22007' and '22010'; 

select *from transacciones 
where codigo between '1' and '5' and numero_cuenta between '222002' and '22004'
and fecha between '26/05/2023' and '29/05/2023' ;