
-- First We use sakila
USE sakila;

-- To show tables we 
SHOW TABLES;

-- To get all from table actor
SELECT *
FROM actor;

-- To get all from table film
SELECT *
FROM film;

-- To get all from table customer
SELECT *
FROM customer;

-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name AS language
FROM language;

-- 3.3 List of first names of all employees from the staff table

SELECT first_name 
FROM staff;

-- Retrieve unique release years.
SELECT distinct release_year  
FROM film;

-- 5. Counting records for database insights:
-- 		5.1 Determine the number of stores that the company has.

SELECT COUNT(store_id)
FROM store;
 -- SAME AS
 
 SELECT COUNT(*)
 FROM store;

-- 		5.2 Determine the number of employees that the company has.

 SELECT COUNT(*)
 FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(*) 
FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental;

-- Retrieve the 10 longest films.
SELECT *
FROM film
ORDER BY length DESC 
LIMIT 10;

-- 7. Use filtering techniques in order to:
-- 		7.1 Retrieve all actors with the first name "SCARLETT".

SELECT *
FROM actor
WHERE first_name = 'Scarlett';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- 		Hint: use LIKE operator. More information here.
SELECT *
FROM film
WHERE title LIKE '%armageddon%' AND length > 100;


-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
