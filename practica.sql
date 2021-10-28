select *from actor; -- selecciona todos los datos de la tabla actor
select actor_id, first_name,last_name,last_update from actor; -- Es lo mismo que arriba con todas sus columnas
-- AS cambia el nombre de la columna
select actor_id as ID, first_name as nombre,last_name as Apellido ,last_update as ultima_actualizacion from actor; 
select *from city;
-- DISTINCT conocer datos unicos en las tablas, no repetidos
select distinct(customer_id) from payment; -- traemos los datos de la tabla por una distincion en este caso el id
select *from country;
-- ASC elije los campos de manera ascendente de menor a mayor
-- ORDER BY ordena por el campo que le mandemos 
select *from country order by country asc;
select *from country order by country; -- es lo mismo que arriba porque mysql lo ordena todo asc por defecto
-- DESC elije kis campos de manera descendente mayor a menor
select *from country order by country desc;
-- WHERE traemos los datos de una tabla pero buscando por una columna donde se cumple una condicion
select *from actor where first_name="KEVIN";
select *from actor where actor_id=25;
select *from inventory where film_id>50; -- los mayores de 50
select distinct (amount) from payment where amount<3;
select *from staff where staff_id<> 2; -- donde el staff_id sea distinto de 2
select *from language;
select *from language where name <> "German"; -- todos los nombres distintos de German
-- AND solo es true cuando true and true
select *from country;
select *from country where country="Argentina" and country_id=1; -- en este caso no se cumple la condicion and ya que no tiene id=1
-- OR solo es false cuando false or false
select *from country where country="Argentina" or country_id=1; -- caso se cumple la condicion y muestra los datos con esas dos condiciones
-- NOT selecciona donde NO se cumpla esa condicion
select *from category where not name="Action"; 
-- IN es para traer datos en donde se cumpla ese objeto
select *from customer where first_name in ("PATRICIA","MARY");
select *from film;
select *from film where special_features in ("Trailers","Trailers,Deleted Scenes")and rating in("G","NC-17") and length>100;
select *from category where name not in("Games","Children","Animation"); -- muestra en donde no sean
-- BETWEEN
select*from rental;
select*from rental where customer_id=300; 
select*from rental where customer_id between 338 and 350; -- between es un <= => entre <=300<=350
select*from rental where (customer_id between 338 and 350) and staff_id=1;
select *from payment;
select*from payment where amount between 3 and 5;
select*from payment where (amount not between 3 and 5); -- si no está entre esa condicion NOT BETWEEEN
-- LIKE sirve para buscar datos en el que se cumplan ciertos patrones que les indiquemos
select *from actor where first_name like 'A%' and last_name like 'W%'; -- donde la primer letra del nombre sea A y apellido W
select *from actor where first_name like '%A'; -- Donde la ultima letra sea A 
select *from actor where first_name like '%A' and last_name like '%N'; -- donde el nombre termine en A y el apellido termine en N
select *from actor where first_name like "%AL%"; -- Donde encuentre un nombre con esa cadena de caracteres en cualquier posicion
select *from actor where first_name like "C%N"; -- DONDE LA PRIMER LETRA SEA C Y LA ULTIMA N 
-- INNER JOIN ayuda a mostar datos que tienen llaves primarias en comun para acceder a ambos, mientras las tengan en comun
select f.description,f.title,l.name from film f
inner join language l on(f.language_id=l.language_id);
select *from address;
select *from city;
select *from address a
inner join city c on (a.city_id=c.city_id); -- al ponerle * muestra todos los datos donde coincidan las llaves
select a.address as Direccion,a.postal_code as Codigo_Postal,c.city as Ciudad from address a
inner join city c on (a.city_id=c.city_id);


