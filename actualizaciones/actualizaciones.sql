--tabla cuentas

select *from cuentas
update cuentas set saldo='10'
where cedula_propietario like '17%'
---------------------------------------
--tabla estudiantes

select *from estudiantes
update estudiantes set apellido='Hernandez'
where cedula like '17%'
---------------------------------------
--tabla productos

select *from productos
update productos set stock='0'
where descripcion is null
----------------------------------------
--tabla registro entrada

select *from registro_entrada
update registro_entrada set cedula_empleado='082345679 '
where extract (month from fecha) ='08'
---------------------------------------
--tabla transacciones

select *from transacciones
update transacciones set tipo='T'
where monto > '100' and monto <'500'
and fecha = '2023-09-19'
and hora between '14:00:00' and '20:00:00'
---------------------------------------
--tabla videojuegos

select *from videojuegos
update videojuegos set descripcion='mejor puntuado'
where valoracion > '9'
---------------------------------------