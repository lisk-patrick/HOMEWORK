use sakila;

select first_name,last_name from actor;

select concat(first_name, " ", last_name) as 'Actor Name'
from actor;

SELECT *
FROM actor
WHERE first_name = 'JOE';

Select * From actor
Where last_name like '%G%'
  And last_name like '%E%'
  And last_name like '%N%';
  
Select * From actor
Where last_name like '%L%'
  And last_name like '%I%';

SELECT country, country_id
FROM country
WHERE country IN ('Afghanistan','Bangladesh', 'China');

ALTER TABLE actor
ADD COLUMN middle_name varchar(20); 

ALTER TABLE actor
MODIFY COLUMN middle_name blob(20);

ALTER TABLE actor
DROP COLUMN middle_name;

SELECT last_name from sakila.actor;
SELECT count(last_name) from actor;

SELECT COUNT(last_name), last_name
FROM actor
GROUP BY last_name
HAVING last_name = last_name
AND count(last_name) > 1; 

UPDATE actor
SET first_name = 'Harpo'
WHERE actor_id = 172;

select first_name, last_name, address
from staff
join address on
staff.address_id = address.address_id;

select first_name, last_name, sum(amount)
from payment
inner join staff on
staff.staff_id = payment.staff_id
group by payment.staff_id;

SELECT title, (
SELECT COUNT(*) 
FROM inventory 
WHERE film.film_id = inventory.film_id ) 
AS 'Number of Copies'
FROM film;


select film from film
where film_id in
(
	select 'English'
    from film
    where film like '%K' and '%E'
);


