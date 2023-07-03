/*****************************************************************
LENGUAJE DE CONSULTA ESTRUCTURADO
*****************************************************************/
--Ej1
/*
Operadores de comparación: >, <, >=, <=, =, <>
Operadores lógicos: or, and, not
*/
select *
from cliente
where estado = 'CHIHUAHUA' or estado = 'CHIAPAS' or estado = 'HIDALGO' or
      estado = 'JALISCO';

--Ej1: Mejorando la escritura de la condición --> IN (comparación)
select *
from cliente
where estado in ('CHIHUAHUA','CHIAPAS','HIDALGO','JALISCO');

--Crear una consulta más robusta
select *
from cliente
where lower(estado) in ('chihuahua','chiapas','hidalgo','jalisco');

--Ej2
select *
from prestamo
where (numsucursal = 1 or numsucursal = 128 or numsucursal = 109 or
      numsucursal = 41 or numsucursal = 39 or numsucursal = 110) and
	  importe > 40000;
	  
--Ej2, utilizando el operador IN
select *
from prestamo
where numsucursal in (1,128,109,41,39,110) and importe > 40000;

--Ej3.1, sin incluir los límites
select *
from cuenta
where saldo > 16000 and saldo < 58000 and numsucursal in (62,171,173);

--Ej3.2, incluir los límites
select *
from cuenta
where saldo >= 16000 and saldo <= 58000 and numsucursal in (62,171,173);

--Ej3.3, incluir los límites --> between (comparación)
select *
from cuenta
where saldo between 16000 and 58000 and numsucursal in (62,171,173);

--Ej3.4 Obtener la información de las cuentas que no estén en el rango
-- NOT BETWEEN
select *
from cuenta
where saldo not between 16000 and 58000 and numsucursal in (62,171,173);

--Negando el operador IN --> NOT IN
select *
from cuenta
where saldo between 16000 and 58000 and numsucursal not in (62,171,173);

select *
from cuenta
where saldo not between 16000 and 58000 and numsucursal not in (62,171,173);

--Ej4, formato de fecha habitual
select *
from cuenta
where saldo >= 100000 and fecha >= '01-01-2013' and fecha <= '31-03-2013';

--Ej4.1 formato de fecha estándar
select *
from cuenta
where saldo >= 100000 and fecha >= '2013-01-01' and fecha <= '2013-03-31';

--Ej4.2 formato de fecha estándar con between
select *
from cuenta
where (saldo >= 100000 and fecha between '2013-01-01' and '2013-03-31') or
      (saldo > 65000 and saldo < 85000 and numsucursal in (55,164,63));

--Ej5
select *
from sucursal
where nombresucursal = 'SAN';

--LIKE. Modificador % --> la ocurrencia de 0 o más caracteres
select *
from sucursal
where nombresucursal like 'SAN%';

select *
from sucursal
where lower(nombresucursal) like 'san%';

--ilike --> PostgreSQL
select *
from sucursal
where nombresucursal ilike 'san%';

--Actualización de la información de la BD
update sucursal set estado = 'CDMX' where estado = 'DISTRITO FEDERAL';

select *
from sucursal
where nombresucursal like 'SAN%' and estado <> 'CDMX';

--Otra forma
select *
from sucursal
where nombresucursal like 'SAN%' and estado NOT IN ('CDMX');

--Ej6
select *
from cliente
where nombrecliente ilike '%moya' and
      estado not in ('guerrero','tamaulipas','sonora');
	  
--Ej7
select *
from cliente
where nombrecliente ilike '%alonso%' and
      (direccion ilike '%san %' or direccion ilike '%santa%');
	  
--Ej8
select nombrecliente,estado,nacimiento,direccion
from cliente
where nombrecliente ilike '% alonso %' and 
      (direccion ilike '%manzana%' or direccion ilike '%mzna%');

--Obtener información de lo clientes que tienen un apellido materno de longitud 6
--Guión bajo (_) --> 1 caracter
select *
from cliente
where nombrecliente ilike '% ______';

--Obtener información de lo clientes que tienen un apellido materno de longitud 6
--cuya primera letra es una C.
select *
from cliente
where nombrecliente ilike '% C_____';

--Obtener información de lo clientes que tienen un apellido materno de longitud 6
--cuya +ultima letra es una S.
select *
from cliente
where nombrecliente ilike '% _____s';

select *
from cliente
where nombrecliente ilike '% __A___';

--Buscar cuentas con
select *
from cuenta
where numcta ilike 'C-0022_';

--similar to
select *
from prestamo
where numprestamo similar to 'p-000__';

select *
from prestamo
where lower(numprestamo) similar to 'p-000__';

--Ej9 (primera aproximación)
select nombresucursal
from sucursal
where nombresucursal ilike '%n' or nombresucursal ilike '%o' or
      nombresucursal ilike '%s' or nombresucursal ilike '%z';

--Ej9 (utilizando expresiones regulares)
/*
Donde:
~ --> Operador de coincidencia para una expresión regulares
. (punto) --> Un caracter (cualquiera)
* --> Cuantificador, 0 o más ocurrencias
[N,O,S,Z] --> Un caracter, cualquiera de los indicados en dentro del []
$ --> Indica el último caracter
*/
select *
from sucursal
where nombresucursal ~ '.*[N,O,S,Z]$';

--Completando el ejercicio 9
/*
Donde:
^ --> Indica el primer caracter
a-d --> Cualquier letra en el rango A a D
*/
select *
from sucursal
where nombresucursal ~* '.*[nosz]$' and
      estado ~* '^[a-dhlo-t].*';
	  
--Se pueden usar comas para separar las posibilidades o no:
select *
from sucursal
where nombresucursal ~ '.*[NOSZ]$';

--Se puede hacer que la expresión sea no sensible a MAY/MIN
select *
from sucursal
where nombresucursal ~* '.*[nosz]$';	  
	  
--Estados cuya letra inicial no es ninguna en el intervalo A-D
-- [^] --> Dentro del corchete indica que no se considera el rango 
select *
from sucursal
where estado ~* '^[^a-d].*';

--Obtener a los clientes ALONSO ALONSO CUALQUIER_APELLIDO
-- (átomo)
-- {n} Número de veces que se desea aparezca el elemento
select nombrecliente
from cliente
where nombrecliente ~* '(alonso ){2}.*';

--Ej10
select nombrecliente
from cliente
where nombrecliente ~* '.* [acdn-r]...[^onrsz]$'

--Algunos aspectos interesantes para el trabajo con rangos
--Ej11
--Sin considerar los límites superior/inferior
select nombrecliente,estado,nacimiento
from cliente
where nacimiento > '13-12-1954' and nacimiento < '26-06-1986';

--Ej12: Considerar los límites
select nombrecliente,estado,nacimiento
from cliente
where nacimiento >= '13-12-1954' and nacimiento <= '26-06-1986' and 
      direccion like '%PRIV%';

--BETWEEN
select nombrecliente,estado,nacimiento
from cliente
where nacimiento between '13-12-1954' and '26-06-1986';

--No recupera ninguna tupla --> están mal colocados los límites
select nombrecliente,estado,nacimiento
from cliente
where nacimiento between '26-06-1986' and '13-12-1954' ;

--Si queremos que la consulta no le importe en orden de los límites
select nombrecliente,estado,nacimiento
from cliente
where nacimiento between symmetric '26-06-1986' and '13-12-1954' ;

--Otras formas de manejar rangos en una fecha
select nombrecliente,estado,nacimiento
from cliente
where nacimiento > '13-12-1954' and nacimiento < '26-06-1986';

--Sin considererar los límites
select nombrecliente,estado,nacimiento
from cliente
where '(1954-12-13,1986-06-26)'::daterange @> nacimiento;

select nombrecliente,estado,nacimiento
from cliente
where nacimiento <@ '(1954-12-13,1986-06-26)'::daterange;

--Considerar los rangos
select nombrecliente,estado,nacimiento
from cliente
where '[1954-12-13,1986-06-26]'::daterange @> nacimiento;

select nombrecliente,estado,nacimiento
from cliente
where nacimiento <@ '[1954-12-13,1986-06-26]'::daterange;

--Otra forma de especificar los rangos
select nombrecliente,estado,nacimiento
from cliente
where daterange('1954-12-13','1986-06-26','[]') @> nacimiento;

select nombrecliente,estado,nacimiento
from cliente
where daterange('1954-12-13','1986-06-26','()') @> nacimiento;

select nombrecliente,estado,nacimiento
from cliente
where daterange('1954-12-13','1986-06-26','[)') @> nacimiento;

select nombrecliente,estado,nacimiento
from cliente
where daterange('1954-12-13','1986-06-26','(]') @> nacimiento;

--El tercer parámetro es opcional, si no se pone, el rango por omisión es [)
select nombrecliente,estado,nacimiento
from cliente
where daterange('1954-12-13','1986-06-26') @> nacimiento;

--Rangos con valores numéricos
select *
from cuenta
where '[65000,85000]'::numrange @> saldo;

select *
from cuenta
where numrange(65000,85000,'()') @> saldo;

--Aplicar formato a fechas o cantidades numéricas
--Para fechas, TO_CHAR
select nombrecliente,estado,nacimiento
from cliente

--Primera modificación: "FRIDAY    04 APRIL     1969"
select nombrecliente as cliente,estado,nacimiento,
       to_char(nacimiento,'DAY dd MONTH yyyy') fecha_formato
from cliente;

select nombrecliente as "Cliente",estado,nacimiento,
       to_char(nacimiento,'DAY dd MONTH yyyy') "Fecha formato"
from cliente;

--Segunda modificación: "Friday    04 April     1969"
select nombrecliente as cliente,estado,nacimiento,
       to_char(nacimiento,'Day dd Month yyyy') fecha_formato
from cliente;

--tercera modificación: "friday    04 april     1969"
select nombrecliente as cliente,estado,nacimiento,
       to_char(nacimiento,'day dd month yyyy') fecha_formato
from cliente;

--Cuarta modificación: 
select nombrecliente as cliente,estado,nacimiento,
       to_char(nacimiento,'Mon dd yyyy') fecha_formato
from cliente;

--Formato para que un número se presente en formato moneda
select saldo,to_char(saldo,'LFM999,999,999.99') saldo_formato
from cuenta;

--Ej13
select fecha,
       extract(year from fecha) año,
	   extract(month from fecha) mes,
	   extract(day from fecha) día,
	   extract(quarter from fecha) trimestre,
	   extract(century from fecha) siglo,
	   extract(dow from fecha) diasemana06, --0 domingo
	   extract(isodow from fecha) diasemana17, --7 domingo
	   extract(doy from fecha) diaaño,
	   extract(week from fecha) semanaaño
from prestamo;

--Ej14
select fecha,
       date_part('year',fecha) año,
	   date_part('month',fecha) mes,
	   date_part('day',fecha) día,
	   date_part('quarter',fecha) trimestre,
	   date_part('century',fecha) siglo,
	   date_part('dow',fecha) diasemana06, --0 domingo
	   date_part('isodow',fecha) diasemana17, --7 domingo
	   date_part('doy',fecha) diaaño,
	   date_part('week',fecha) semanaaño
from cuenta;

--Ej15
select fecha,
       to_char(fecha,'yyyy') año4,
	   to_char(fecha,'yy') año2,
	   to_char(fecha,'month') mes,
	   to_char(fecha,'MONTH') "MES",
	   to_char(fecha,'Month') "Mes",
	   to_char(fecha,'MON') "MON",
	   to_char(fecha,'mon') mon,
	   to_char(fecha,'Mon') "Mon",
	   to_char(fecha,'MM') numeroMes,
	   to_char(fecha,'day') dia,
	   to_char(fecha,'DAY') "DIA",
	   to_char(fecha,'Day') "Dia",
	   to_char(fecha,'DY') "DIA3",
	   to_char(fecha,'dy') dia3,
	   to_char(fecha,'Dy') "Dia3",
	   to_char(fecha,'DD') diames,
	   to_char(fecha,'DDD') diaaño,
	   to_char(fecha,'Q') trimestre,
	   to_char(fecha,'W') semanames,
	   to_char(fecha,'WW') semanaaño
from prestamo;

--Otras funciones, no soportadas
select fecha,year(fecha) año,month(fecha) mes,day(fecha)
from cuenta;

--Ej16
select fecha,
       extract(year from now()) - extract(year from fecha) cant_años,
	   (extract(year from now()) - extract(year from fecha))*12 cant_mes,
	   (extract(year from now()) - extract(year from fecha))*365 cant_dias,
	   (extract(year from now()) - extract(year from fecha))*365.25 cant_dias2,
	   age(current_date,fecha) tiempo,
	   extract(year from age(current_date,fecha)) añosreales
from cuenta;

--Ej17
select fecha,
       fecha + 15 suma15dias,
	   fecha - 15 resta15dias,
	   date(fecha + interval '1 month') suma1mes,
	   date(fecha - interval '3 month') resta3meses,
	   date(fecha + interval '1 year') suma1año,
	   date(fecha - interval '3 year') resta3años,
	   date(fecha + interval '1 day') suma1dia,
	   date(fecha - interval '3 day') resta3dias,
	   date(fecha + interval '5 year 3 month 2 day') suma5y3m2d,
	   fecha + interval '5 year 3 month 2 day 5 hour' suma5y3m2d3h,
	   now() + interval '5 year 3 month 2 day 6 hour 5 minute' suma5y3m2d6h5m,
	   current_date - fecha resta2fechas
from cuenta;

--Ej18
select nombrecliente,nacimiento,
       age(nacimiento) edad1,
	   age(current_date,nacimiento) edad2,
	   age(now(),nacimiento) edad3,
	   extract(year from age(nacimiento)) edadaño,
	   extract(year from current_date) - extract(year from nacimiento) edadaño1,
	   floor((current_date - nacimiento)/365.25) edadreal
from cliente;

--Ej19
--Seleccionar toda la información para entender la estructura de la tabla
select *
from cliente,prestatario,prestamo
where cliente.idcliente = prestatario.idcliente and
      prestatario.numprestamo = prestamo.numprestamo;
	  
--Ej19: Escribiendo la consulta con variables de tupla
select nombrecliente,b.numprestamo,to_char(importe,'LFM999,999,999.99') importe,
       to_char(fecha,'Mon dd yyyy') fecha
from cliente a,prestatario b,prestamo c
where a.idcliente = b.idcliente and
      b.numprestamo = c.numprestamo and
	  extract(year from fecha) in (2013,2014) and
	  extract(quarter from fecha) in (1,3);
	 
--Ej19: Utilizando otras funciones de manipulación de fechas
select nombrecliente,b.numprestamo,to_char(importe,'LFM999,999,999.99') importe,
       to_char(fecha,'Mon dd yyyy') fecha
from cliente a,prestatario b,prestamo c
where a.idcliente = b.idcliente and
      b.numprestamo = c.numprestamo and
	  date_part('year',fecha) in (2013,2014) and
	  date_part('quarter',fecha) in (1,3);

--Ej19	  
select nombrecliente,b.numprestamo,to_char(importe,'LFM999,999,999.99') importe,
       to_char(fecha,'Mon dd yyyy') fecha
from cliente a,prestatario b,prestamo c
where a.idcliente = b.idcliente and
      b.numprestamo = c.numprestamo and
	  to_char(fecha,'yyyy') in ('2013','2014') and
	  to_char(fecha,'q') in ('1','3');

/*****************************************************************
EXPRESIONES PARA JOIN EN SQL
*****************************************************************/
create temp table r(a int,b int, c int);
create temp table s(b int,c int, d int);

insert into r values (1,2,3),(6,7,8),(9,7,8),(6,7,18);
insert into s values (2,3,4),(2,3,5),(7,8,10),(2,5,15);

select * from r;
select * from s;

--Producto cartesiano
select *
from r cross join s;

select *
from r,s;

--Join natural
select *
from r natural join s;

--Theta join
--Simular el natural join
select *
from r join s on r.b = s.b and r.c = s.c;

select a,r.b,s.c,d
from r join s on r.b = s.b and r.c = s.c;

select *
from r join s on a < d;

-- Join externo
--POr la izquierda
select *
from r natural left outer join s;

select *
from r natural left join s;

--POr la derecha
select *
from r natural right outer join s;

select *
from r natural right join s;

--Join externo completo
select *
from r natural full outer join s;

select *
from r natural full join s;

--Con theta join un join por la izquierda
--POr la izquierda
select *
from r left outer join s on r.b = s.b and r.c = s.c;

select *
from r left join s on r.b = s.b and r.c = s.c;

--Utilizando una expresión para join en el ejemplo 19:
select nombrecliente,numprestamo,
       to_char(importe,'LFM999,999,999.00') importe,fecha
from (cliente NATURAL JOIN prestatario) NATURAL JOIN prestamo
where extract(year from fecha) in (2013,2014) and
      extract(quarter from fecha) in (1,3);
	  
select nombrecliente,b.numprestamo,
       to_char(importe,'LFM999,999,999.00') importe,fecha
from cliente a JOIN prestatario b ON a.idcliente = b.idcliente JOIN prestamo c
     on c.numprestamo = b.numprestamo
where extract(year from fecha) in (2013,2014) and
      extract(quarter from fecha) in (1,3);
	  
select nombrecliente,b.numprestamo,
       to_char(importe,'LFM999,999,999.00') importe,fecha
from cliente a JOIN prestatario b ON a.idcliente = b.idcliente JOIN prestamo c
     on c.numprestamo = b.numprestamo and extract(year from fecha) in (2013,2014) and
      extract(quarter from fecha) in (1,3); 

--Ej20: Natural Join
select cuenta.*
from cuenta natural join sucursal
where estado in ('YUCATÁN','QUINTANA ROO','MICHOACÁN') and
      extract('year' from fecha) between 2013 and 2015 and
	  extract('month' from fecha) in (1,4,7,10) and
	  extract('dow' from fecha) in (1,3,5);
	  
--Ej20: Theta Join
select a.*
from cuenta a join sucursal b on a.numsucursal = b.numsucursal 
where estado in ('YUCATÁN','QUINTANA ROO','MICHOACÁN') and
      extract('year' from fecha) between 2013 and 2015 and
	  extract('month' from fecha) in (1,4,7,10) and
	  extract('dow' from fecha) in (1,3,5);
	  
--Ej 20: Sin where
select a.*
from cuenta a join sucursal b on a.numsucursal = b.numsucursal and
     estado in ('YUCATÁN','QUINTANA ROO','MICHOACÁN') and
      extract('year' from fecha) between 2013 and 2015 and
	  extract('month' from fecha) in (1,4,7,10) and
	  extract('dow' from fecha) in (1,3,5);

--Ej21
select a.idcliente,a.nombrecliente,a.nacimiento,b.idcliente,b.nombrecliente,b.nacimiento
from cliente a,cliente b
where a.nacimiento = b.nacimiento and a.idcliente <> b.idcliente;

--Como no necesito los valore de la tabla "original" y la "copia"
select a.idcliente,a.nombrecliente,a.nacimiento
from cliente a,cliente b
where a.nacimiento = b.nacimiento and a.idcliente <> b.idcliente;

--Limpiar valores duplicados
select distinct a.idcliente,a.nombrecliente,a.nacimiento
from cliente a,cliente b
where a.nacimiento = b.nacimiento and a.idcliente <> b.idcliente
order by nacimiento;

--Ordenamiento descendente (explícita)
select distinct a.idcliente,a.nombrecliente,a.nacimiento
from cliente a,cliente b
where a.nacimiento = b.nacimiento and a.idcliente <> b.idcliente
order by nacimiento desc;

select distinct a.idcliente,a.nombrecliente,a.nacimiento
from cliente a,cliente b
where a.nacimiento = b.nacimiento and a.idcliente <> b.idcliente
order by nacimiento asc;

select distinct a.idcliente,a.nombrecliente,a.nacimiento,b.nacimiento
from cliente a,cliente b
where a.nacimiento = b.nacimiento and a.idcliente <> b.idcliente
order by a.nacimiento asc;

--Solución completa para el ej 20
select distinct a.idcliente,a.nombrecliente,a.nacimiento,d.numcta,fecha
from cliente a,cliente b,ctacliente c,cuenta d
where a.nacimiento = b.nacimiento and a.idcliente <> b.idcliente and
      a.idcliente = c.idcliente and c.numcta = d.numcta and
	  extract('year' from fecha) = 2013 and
	  extract('quarter' from fecha) in (2,4)
order by nacimiento;

--Ej 21 con Theta join
select distinct a.idcliente,a.nombrecliente,a.nacimiento,d.numcta,fecha
from ((cliente a join cliente b on a.nacimiento = b.nacimiento and a.idcliente <> b.idcliente)
     join ctacliente c on a.idcliente = c.idcliente) join
	 cuenta d on c.numcta = d.numcta and extract('year' from fecha) = 2013 and
	  extract('quarter' from fecha) in (2,4)
order by nacimiento;

--Ej22
select distinct a.idcliente,a.nombrecliente,d.numprestamo,
       to_char(importe,'LFM999,999,999.00') importe,fecha
from cliente a join cliente b on a.nombrecliente = b.nombrecliente and
     a.idcliente <> b.idcliente join prestatario c on a.idcliente = c.idcliente join
	 prestamo d on c.numprestamo = d.numprestamo and
	 importe between 10000 and 60000 and 
	 extract('year' from fecha) between 2012 and 2015  and
	 extract('month' from fecha) = 7
order by nombrecliente;

--Ej23
select * from prestatario
union
select * from ctacliente;

select idcliente from prestatario
union
select idcliente from ctacliente;

--Si queremos mantener los valores duplicados: UNION ALL
select idcliente from prestatario
union all
select idcliente from ctacliente;

--Ej24
select * from ctacliente
except
select * from prestatario; --Toda la información de ctacliente

--Quitar el valor que las hace diferentes
select idcliente from ctacliente
except
select idcliente from prestatario;

--Resta y mantener duplicados
select idcliente from ctacliente
except all
select idcliente from prestatario;

select distinct idcliente
from ctacliente natural left join prestatario
where numprestamo is null;

--Resolver con JOIN NATURAL-->LEFT
select idcliente,numcta
from ctacliente natural left join prestatario
where numprestamo is null;

--Ej. 25
select * from prestatario
intersect
select * from ctacliente;

--Quitar el elemento diferenciador
select idcliente from prestatario
intersect
select idcliente from ctacliente;

select distinct idcliente
from ctacliente natural join prestatario;

--Mantener los valores duplicados
select idcliente from prestatario
intersect all
select idcliente from ctacliente;


--Clientes que tienen cuenta y prestamo
select *
from ctacliente natural join prestatario

--Cliente que tienen prestamo, pero no cuenta
select idcliente,numprestamo
from ctacliente natural right join prestatario
where numcta is null;

--Group by
--El saldo total de todo el banco
select sum(saldo) total_saldo
from cuenta;

select saldo from cuenta; --Consulta de detalle

--El menor saldo
select min(saldo) menor_saldo
from cuenta;

--El saldo mayor
select max(saldo) mayor_saldo
from cuenta;

--El saldo promedio
select avg(saldo) mayor_saldo
from cuenta;

--El total de cuentas en el banco
select count(numcta) mayor_saldo
from cuenta;

select count(distinct numcta) mayor_saldo
from cuenta;

select count(*) mayor_saldo
from cuenta;

--El saldo menor de la sucursal CUAJIMALPA
select min(saldo)
from cuenta natural join sucursal
where nombresucursal = 'CUAJIMALPA'

select *
from cuenta natural join sucursal
where nombresucursal = 'CUAJIMALPA'

--El menor saldo de cada sucursal en el banco
select nombresucursal,min(saldo)
from cuenta natural join sucursal
group by nombresucursal
order by 1;

--Ej26
select to_char(min(saldo),'LFM999,999,999.00') "Saldo menor",
       to_char(max(saldo),'LFM999,999,999.00') "Saldo mayor",
	   to_char(avg(saldo),'LFM999,999,999.00') "Saldo promedio",
	   to_char(sum(saldo),'LFM999,999,999.00') "Total saldo",
	   count(numcta) "Total cuentas"
from cuenta;

--Ej27
select to_char(min(saldo),'LFM999,999,999.00') "Saldo menor",
       to_char(max(saldo),'LFM999,999,999.00') "Saldo mayor",
	   to_char(avg(saldo),'LFM999,999,999.00') "Saldo promedio",
	   to_char(sum(saldo),'LFM999,999,999.00') "Total saldo",
	   count(numcta) "Total cuentas"
from cuenta natural join sucursal
where nombresucursal = 'NOGALES';

--Ej28: Crear un resumen para varios grupos --> GROUP BY
select nombresucursal,to_char(min(saldo),'LFM999,999,999.00') "Saldo menor",
       to_char(max(saldo),'LFM999,999,999.00') "Saldo mayor",
	   to_char(avg(saldo),'LFM999,999,999.00') "Saldo promedio",
	   to_char(sum(saldo),'LFM999,999,999.00') "Total saldo",
	   count(numcta) "Total cuentas"
from cuenta natural join sucursal
group by nombresucursal
order by 1;

--Cambiando la granularidad = detalle
select estado,to_char(min(saldo),'LFM999,999,999.00') "Saldo menor",
       to_char(max(saldo),'LFM999,999,999.00') "Saldo mayor",
	   to_char(avg(saldo),'LFM999,999,999.00') "Saldo promedio",
	   to_char(sum(saldo),'LFM999,999,999.00') "Total saldo",
	   count(numcta) "Total cuentas"
from cuenta natural join sucursal
group by estado --Controlamos la granularidad
order by 1;

--El resumen por estado y sucursal
select estado,nombresucursal,
       to_char(min(saldo),'LFM999,999,999.00') "Saldo menor",
       to_char(max(saldo),'LFM999,999,999.00') "Saldo mayor",
	   to_char(avg(saldo),'LFM999,999,999.00') "Saldo promedio",
	   to_char(sum(saldo),'LFM999,999,999.00') "Total saldo",
	   count(numcta) "Total cuentas"
from cuenta natural join sucursal
group by estado,nombresucursal --Controlamos la granularidad
order by 1,nombresucursal;

--Ej29
select estado,nombresucursal,extract(year from fecha) año,
       date_part('quarter',fecha) trimestre,
	   to_char(avg(importe),'LFM999,999,999.00') "Importe promedio",
	   count(numprestamo) "Total prestatarios"
from prestamo natural join sucursal
group by estado,nombresucursal,extract(year from fecha),date_part('quarter',fecha)
order by 1,2,3,4;

--Ej29: Theta join
select estado,nombresucursal,extract(year from fecha) año,
       date_part('quarter',fecha) trimestre,
	   to_char(avg(importe),'LFM999,999,999.00') "Importe promedio",
	   count(numprestamo) "Total prestatarios"
from prestamo a join sucursal b on a.numsucursal = b.numsucursal
group by estado,nombresucursal,extract(year from fecha),date_part('quarter',fecha)
order by 1,2,3,4;

--Ej30
select a.estado,a.nombresucursal,extract(year from b.fecha) año,
      date_part('quarter',b.fecha) trimestre,
	  count(b.numcta) "Total cuentahabientes",
	  count(c.numprestamo) "Total prestatarios"
from sucursal a join cuenta b on a.numsucursal = b.numsucursal join
     prestamo c on c.numsucursal = a.numsucursal and
	 extract(year from b.fecha) = extract(year from c.fecha) and
	 date_part('quarter',b.fecha) = date_part('quarter',c.fecha)
group by a.estado,a.nombresucursal,extract(year from b.fecha),
      date_part('quarter',b.fecha);
	  
--Ejercicio 29
select estado,nombresucursal,extract(year from fecha) as año,
       date_part('quarter',fecha) as trimestre,
	   count(numprestamo) as "Total prestatarios",
	   to_char(avg(importe),'LFM999,999,999.00') as "Importe promedio"
from prestamo a join sucursal b on
     a.numsucursal = b.numsucursal
group by estado,nombresucursal,extract(year from fecha),
         date_part('quarter',fecha)
order by estado,nombresucursal,año,trimestre;

--Con NATURAL JOIN
select estado,nombresucursal,extract(year from fecha) as año,
       date_part('quarter',fecha) as trimestre,
	   count(numprestamo) as "Total prestatarios",
	   to_char(avg(importe),'LFM999,999,999.00') as "Importe promedio"
from prestamo natural join sucursal b
group by estado,nombresucursal,extract(year from fecha),
         date_part('quarter',fecha)
order by estado,nombresucursal,año,trimestre;

--Ejercicio 30: sin distinct
select a.estado,a.nombresucursal,extract(year from b.fecha) as año,
         date_part('quarter',b.fecha) as trimestre,
		 count(b.numcta) as "Total cuentahabientes",
		 count(c.numprestamo) "Total prestatarios"
from sucursal a join cuenta b on a.numsucursal = b.numsucursal
     join prestamo c on c.numsucursal = a.numsucursal and
	                          extract(year from b.fecha) = extract(year from c.fecha) and
							  date_part('quarter',b.fecha) = date_part('quarter',c.fecha)
group by a.estado,a.nombresucursal,extract(year from b.fecha),
         date_part('quarter',b.fecha);

--Mejorando el resultado
select a.estado,a.nombresucursal,extract(year from b.fecha) as año,
         date_part('quarter',b.fecha) as trimestre,
		 count(distinct b.numcta) as "Total cuentahabientes",
		 count(distinct c.numprestamo) "Total prestatarios"
from sucursal a join cuenta b on a.numsucursal = b.numsucursal
     join prestamo c on c.numsucursal = a.numsucursal and
	                          extract(year from b.fecha) = extract(year from c.fecha) and
							  date_part('quarter',b.fecha) = date_part('quarter',c.fecha)
group by a.estado,a.nombresucursal,extract(year from b.fecha),
         date_part('quarter',b.fecha);

--Ejercicio 31: lo modifiqué a 2 cuentas al menos
select estado,nombrecliente,
       avg(saldo) saldoprom,
	   count(c.numcta) total_ctas
from cliente a join ctacliente b on
     a.idcliente = b.idcliente
	 join cuenta c on c.numcta = b.numcta
	 and lower(estado) = 'chiapas'
group by estado,nombrecliente
having count(c.numcta) > 2
order by estado;

--Sucursales que tienen un saldo promedio entre 80 mil y 95 mil
select estado,nombresucursal,to_char(avg(saldo),'LFM999,999,999.00') saldo_prom
from cuenta natural join sucursal
group by estado,nombresucursal
having avg(saldo) between 80000 and 95000;

--Estados que tiene al menos 300 prestatarios y que sean de estados con letra ACM
select estado,count(numprestamo) prestatarios
from prestamo natural join sucursal
group by estado
having count(numprestamo) >= 300 and estado ~ '^[ACM]';

--Otra forma
select estado,count(numprestamo) prestatarios
from prestamo natural join sucursal
where estado ~ '^[ACM]'
group by estado
having count(numprestamo) >= 300;

/***SUBCONSULTAS****
-Operaadores para producir valor booleano
Sea s un valor o una tupla y R una relación (Tabla)

1. s IN R
2. s > ANY R (s > SOME R) --> Operadores : <,>=,<=,<>
3. s > ALL R --> Operadores : <,>=,<=,<>
4. EXISTS R

Estos operadores se pueden utilzar en su versión negada
1. s NOT IN R
2. NOT s > ANY R (s > SOME R) --> Operadores : <,>=,<=,<>
3. NOT s > ALL R --> Operadores : <,>=,<=,<>
4. NOT EXISTS R
*/

--Ej32
select distinct a.idcliente,nombrecliente,numcta,numprestamo
from cliente a join ctacliente b on a.idcliente = b.idcliente join
     prestatario c on c.idcliente = a.idcliente;
	 
--Utilizando subconsultas
select distinct idcliente,nombrecliente
from cliente natural join ctacliente
where idcliente in (select idcliente from prestatario)
order by 2;

--Otra forma
select distinct idcliente,nombrecliente
from cliente
where idcliente in (select idcliente from ctacliente
				   intersect
				   select idcliente from prestatario);

--Cuidado --> Consulta corrrelacionada
select distinct idcliente
from ctacliente a
where exists (select * from prestatario 
			  where idcliente = a.idcliente);
			  
--Ej33
select nombrecliente
from prestatario natural join cliente
where nombrecliente not in ('%HERNÁNDEZ%','%PÉREZ%'); --error

select idcliente,nombrecliente
from prestatario natural join cliente
where nombrecliente not like '%HERNÁNDEZ%'
except
select idcliente,nombrecliente
from prestatario natural join cliente
where nombrecliente like '%PÉREZ%';

--Con NOT IN
select distinct idcliente,nombrecliente
from prestatario natural join cliente
where nombrecliente not like '%HERNÁNDEZ%' and 
      idcliente not in (select idcliente
						from prestatario natural join cliente
						where nombrecliente like '%PÉREZ%');
						
--Ej34
select nombrecliente
from cliente a join ctacliente b on a.idcliente = b.idcliente join
     cuenta c on c.numcta = b.numcta join 
	 sucursal d on d.numsucursal = c.numsucursal and nombresucursal = 'CUAJIMALPA'
where a.idcliente in
(select idcliente
from prestatario natural join prestamo natural join sucursal
where nombresucursal = 'CUAJIMALPA');

--Otra forma de hacerlo
select idcliente,nombrecliente
from cliente natural join 
((select idcliente from ctacliente natural join cuenta natural join sucursal
where nombresucursal = 'CUAJIMALPA')
intersect
(select idcliente from prestatario natural join prestamo natural join sucursal
where nombresucursal = 'CUAJIMALPA')) a;

--EXISTS
select c.idcliente,nombrecliente
from (ctacliente natural join cuenta natural join sucursal) a join cliente c on
     a.idcliente = c.idcliente and nombresucursal = 'CUAJIMALPA' and
	 exists
	 (select idcliente
	 from prestatario natural join prestamo natural join sucursal
	 where nombresucursal = 'CUAJIMALPA' and idcliente = a.idcliente);
	 
--Ej35
select distinct idcliente,nombrecliente
from (prestatario natural join cliente) p
where not exists 
(select * from ctacliente where idcliente = p.idcliente);

--Otra forma
select idcliente,nombrecliente
from cliente natural join 
((select idcliente from prestatario
except
select idcliente from ctacliente)) a;

--Ej36
select *
from sucursal
where activo > any(select activo from sucursal where estado = 'SONORA');

--Otra forma
select *
from sucursal
where activo > (select min(activo) from sucursal where estado = 'SONORA');

--Sin subconsultas
select distinct a.nombresucursal
from sucursal a,sucursal b
where a.activo > b.activo and b.estado = 'SONORA';

--Ej37
select idcliente,nombrecliente
from cliente natural join 
(select idcliente from ctacliente
intersect
select idcliente from prestatario) A;

--Ej38
select nombresucursal,to_char(avg(saldo),'LFM999,999,999.00') saldoprom
from sucursal natural join cuenta
group by nombresucursal
having avg(saldo) >= all (select avg(saldo) from cuenta
					      group by numsucursal);
						  
--Otra forma
select *,to_char(saldoprom,'LFM999,999,999.00') saldoprom
from sucursal natural join
(select numsucursal,avg(saldo) saldoprom
from cuenta
group by numsucursal
having avg(saldo) = (select max(saldoprom) from (select numsucursal,avg(saldo) saldoprom
												 from cuenta group by numsucursal) a)) a;
												 
--Otra forma
select *
from sucursal natural join
(select numsucursal,avg(saldo) saldoprom
 from cuenta
 group by numsucursal
 having avg(saldo) = (select avg(saldo)
					  from cuenta
					  group by numsucursal
					  order by 1 desc limit 1)) as a;

--Ej 39
select distinct idcliente,nombrecliente
from (cliente natural join ctacliente) c
where not exists 
(select nombresucursal
from sucursal
where estado = 'GUANAJUATO'
except
select nombresucursal
from sucursal natural join cuenta natural join ctacliente
where idcliente = c.idcliente);

--Ej40
select idcliente,nombrecliente,saldo,
case 
when saldo between 10000 and 20000 then 'Tarjeta clásica'
when saldo > 20000 and saldo <= 35000 then 'Tarjeta oro'
when saldo > 35000 and saldo <= 50000 then 'Tarjeta premium'
when saldo > 50000 then 'Tarjeta Platinum'
else 'Sin tarjeta' 
end tipotarjeta
from (select idcliente,nombrecliente,sum(saldo) saldo
	  from cliente natural join ctacliente natural join cuenta
	   group by idcliente) a;