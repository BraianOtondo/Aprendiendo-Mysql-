-- EJERCICIOS

-- Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.
select store_id, first_name, last_name from customer;
-- Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.
select store_id as Tienda, first_name as Nombre, last_name as Apellido from customer;
-- Ordena de manera descendente la columna Apellido
select store_id as Tienda, first_name as Nombre, last_name as Apellido from customer order by Apellido desc;
-- Consulta la tabla payment de la base de datos sakila.
select *from payment;
-- ¿Cuál es la cantidad mas baja y mas alta de la columna amount?
select payment_id as ID_Pago, amount as Cantidad from payment order by Cantidad;
-- Consulta description, release_year de la tabla film de la base de datos sakila.
select description, release_year from film;
-- Filtra la información donde title sea IMPACT ALADDIN
select *from film where title="IMPACT ALADDIN"; -- ES IMPORTANTE SABER QUE DATOS DEBEMOS MOSTRAR EN LAS CONSULTAS, LOS DATOS SON PRIVADOS AVECES
-- Consulta la tabla payment de la base de datos sakila.
select *from payment;
-- Filtra la información donde amount sea mayor a 0.99.
select *from payment where amount>0.99;
-- Consulta la tabla payment de la base de datos sakila.
select *from payment;
-- Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.
select *from payment where customer_id=36 and amount>0.99 and staff_id=1;
-- Consulta la tabla rental de la base de datos sakila.
select *from rental;
-- Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100
select *from rental where not staff_id=1 and customer_id>250 and inventory_id<100;
-- Consulta la tabla film_text de la base de datos sakila.
select *from film_text;
-- Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT
select* from film_text where title in ("ZORRO ARK","VIRGIN DAISY","UNITED PILOT");
-- Consulta la tabla city de la base de datos sakila.
select*from city;
-- Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.
select*from city where city in ("Chiayi","Dongying","Fukuyama", "Kilis");
-- Consulta la tabla payment de la base de datos sakila.
select*from payment;
-- Filtra la información donde amount esté entre 2.99 y 4.99,  staff_id sea igual a 2 y customer_id sea 1 y 2.
select *from payment where (amount between 2.99 and 4.99) and (staff_id=2) and (customer_id in (1,2)); 
-- Consulta la tabla address de la base de datos sakila.
select *from address;
-- Filtra la información donde city_id esté entre 300 y 350,  
select *from address where city_id between 300 and 350;
-- Consulta la tabla film de la base de datos sakila.
select *from film;
-- Filtra la información donde rental_rate esté entre 0.99 y 2.99, length sea menor igual de 50  y replacement_cost sea menor de 20.
select *from film where (rental_rate between 0.99 and 2.99) and (length<=50) and (replacement_cost<20);
-- Consulta la tabla film de la base de datos sakila.
select *from film;
-- Filtra la información donde release_year sea igual a 2006  y title empiece con ALI.
select *from film where release_year =2006 and title like "ALI%";
