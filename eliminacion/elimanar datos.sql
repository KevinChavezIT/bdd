--tabla productos
delete from  productos 
where  descripcion is null

--tabla cuentas
delete from  cuentas 
where  cedula_propietario like '10%'

--tabla estudiantes
delete from  estudiantes 
where  cedula like '%05'

--tabla registro entradas
delete from  registro_entrada 
where  extract (month from fecha)='08'

--tabla videojuegos
delete from  videojuegos 
where valoracion < '7'

--tabla transacciones
delete from  transacciones 
where hora between '14:00' and '18:00'
and fecha='2023-08'