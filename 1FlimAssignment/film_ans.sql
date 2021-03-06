-- TODO: which category of movies released in 2018?
-- SELECT category.Name AS "Category", film.release_year AS "2018 Release Movies", count(*) AS "No. of Movies" FROM 
-- ((category JOIN film_category on category.category_id = film_category.category_id) JOIN
-- film ON film.film_id = film_category.film_id AND film.release_year = 2018) GROUP BY category.Name;

-- TODO: update the address of actor 37 to "677 jazz street"
-- SELECT  actor.address_id FROM 
-- (actor INNER JOIN address ON actor.address_id = address.address_id AND actor.actor_id = 36);

-- UPDATE address SET address.address = "677 jazz street" WHERE 
-- address_id = (SELECT address.address_id FROM 
-- (actor INNER JOIN address ON actor.address_id = address.address_id AND actor.actor_id = 36));

-- UPDATE address SET address = "677 jazz street" WHERE address_id = 35;

-- UPDATE address SET address = "677 jazz street" WHERE 
-- address_id = (SELECT address.address_id FROM 
-- (actor INNER JOIN address ON actor.address_id = address.address_id AND actor.actor_id = 36));

-- UPDATE (actor INNER JOIN address ON actor.address_id = address.address_id 
--         AND actor.actor_id = 36) SET address.address = "677 jaZZ street";

-- TODO: add the new actors (id:105,95) in film ARSENIC INDEPENDENCE (id:41)
-- SELECT film_id, title FROM film WHERE film_id = 41;

-- INSERT INTO film_actor(actor_id, film_id) VALUES
-- (105,41),
-- (95,41);


-- SELECT actor_id, film_id FROM film_actor WHERE film_id = 41;

-- TODO: get the name of films of the actors who belong to India
-- SELECT film_actor.film_id FROM ((((actor INNER JOIN address ON actor.address_id = address.address_id) JOIN 
--                        city ON address.city_id = city.city_id) JOIN 
--                        country ON city.country_id = country.country_id AND country = "INDIA") JOIN 
--                        film_actor ON actor.actor_id = film_actor.actor_id);

-- SELECT title FROM film WHERE film_id IN (SELECT film_actor.film_id FROM ((((actor INNER JOIN address ON actor.address_id = address.address_id) JOIN 
--                        city ON address.city_id = city.city_id) JOIN 
--                        country ON city.country_id = country.country_id AND country = "INDIA") JOIN 
--                        film_actor ON actor.actor_id = film_actor.actor_id));


-- TODO: How many actors are from the United States

-- SELECT count(*) FROM (((actor INNER JOIN address ON actor.address_id = address.address_id)
--                                 JOIN city ON city.city_id = address.city_id) 
--                                 JOIN country ON city.country_id = country.country_id AND country.country = "United States");


-- TODO: get all languages in which films are released in the year between 2001 and 2010
-- SELECT  DISTINCT language.name FROM (film JOIN language ON film.language_id = language.language_id 
--                             AND film.release_year>2001 AND film.release_year<2010);

-- TODO: the film ALONE TRIP (id:17) was actually released in Mandarin, Update the info



-- SELECT language.name FROM (film JOIN language ON film.language_id = language.language_id
--                                             AND film.title = "ALONE TRIP");



-- (SELECT language_id FROM language WHERE name = "Mandarin");

-- UPDATE (film JOIN language ON film.language_id = language.language_id AND film.title = "ALONE TRIP") 
--         SET film.language_id = (SELECT language_id FROM language WHERE name = "Mandarin");

-- TODO: Fetch cast details of films released during 2005 and 2015 with PG rating
-- SELECT CONCAT(actor.first_name , " ",actor.last_name) AS "Actor", film.rating , film.release_year
--             FROM ((film JOIN film_actor ON film.film_id = film_actor.film_id AND (film.release_year=2005 OR film.release_year=2015)) 
--             JOIN actor ON film_actor.actor_id = actor.actor_id) ORDER BY film.release_year ;


-- TODO: In which year most films were released
-- SELECT release_year, count(*) FROM film GROUP BY release_year ORDER BY count(*) DESC LIMIT 1;

-- TODO: In which year least Number were released
-- SELECT release_year, COUNT(*) FROM film GROUP BY release_year ORDER BY COUNT(*) ASC LIMIT 1;


-- TODO: Get the details of the film with maximum length released in 2014
-- SELECT film.title, film.release_year, film.length 
-- FROM film WHERE release_year = 2014 AND length = (SELECT MAX(length) FROM film);

-- TODO: Get all Sci-Fi Movies with NC-17 ratings and language they are screened in 

-- SELECT film.title, language.name, category.name, film.rating FROM 
-- (((film INNER JOIN film_category ON film.film_id = film_category.film_id) INNER JOIN 
-- category ON film_category.category_id = category.category_id AND category.name = "Sci-Fi") INNER JOIN
-- language ON film.language_id =  language.language_id) WHERE rating = "NC-17";

-- TODO: The actor FRED COSTNER (id: 16) shifted to a new address:
-- 055, Piazzale Michelangelo, Postal Code - 510125, Distict - Rifredi at Florence, Italy.
-- Insert the new city and update the address of the actor. 

-- INSERT INTO city(city, country_id) VALUES 
-- ("Florence", (SELECT country_id FROM country WHERE country = "italy"));

-- SELECT * FROM (actor INNER JOIN address ON actor.address_id = address.address_id AND actor.actor_id = 16);  

-- UPDATE (actor INNER JOIN address ON actor.address_id = address.address_id AND actor.actor_id = 16) 
-- SET address.address = "055 Piazzale Michelangelo", 
-- address.district = "Rifredi", 
-- address.postal_code = "510125",
-- address.city_id = (SELECT city_id FROM city WHERE city.city = "Florence");


-- TODO: Refer PDF for Question (SO BIG)

-- INSERT INTO film(
--     title, 
--     description, 
--     release_year, 
--     language_id, 
--     original_language_id, 
--     rental_duration,
--     rental_rate, 
--     length, 
--     replacement_cost, 
--     rating, 
--     special_features
--     ) VALUES(
--     -- TITLE
--     "No TIme to Die",
--     -- description
--     "Recruiteded to resue a kidnapped Scientist,
--     globe-trotting spy.",
--     -- release_year
--     2020,
--     -- language_id,
--     (SELECT language_id FROM language WHERE name = "English"),
--     -- original_language_id,
--     (SELECT language_id FROM language WHERE name = "English"), 
--     -- rental_duration,
--     6,
--     -- rental_rate, 
--     3.99,
--     -- length, 
--     100,
--     -- replacement_cost, 
--     20.99,
--     -- rating, 
--     "PG-13",
--     -- special_features
--     ("Trailers,Deleted Scenes")
--     );

-- SELECT * FROM film WHERE film.title = "No TIme to Die";

-- TODO: Assign the category Action, Classics, Drama to the movie "No time to Die"

-- SELECT category_id FROM category WHERE name IN("Action","Classics","Drama");
-- INSERT INTO film_category(film_id,category_id) VALUES(
--     (SELECT film_id FROM film WHERE film.title = "No Time To Die"),
--     (SELECT category_id FROM category WHERE name = "Action")
--     );

-- INSERT INTO film_category(film_id,category_id) VALUES(
--     (SELECT film_id FROM film WHERE film.title = "No Time To Die"),
--     (SELECT category_id FROM category WHERE name = "Classics")
--     );

-- INSERT INTO film_category(film_id,category_id) VALUES (
--     (SELECT film_id FROM film WHERE film.title = "No Time To Die"),
--     (SELECT category_id FROM category WHERE name ="Drama")
--     );


-- TODO: Assign the Cast: Penelope Guiness, Nick Wahlberg, Joe swank to the movie "No Time to Die".

-- SELECT * FROM actor WHERE actor.first_name = "Penelope";

-- INSERT INTO film_actor
--     (actor_id, film_id) VALUES 
--     (
--     (SELECT actor.actor_id FROM actor WHERE actor.first_name = "penelope" AND actor.last_name = "guiness"),
--     (SELECT film.film_id from film WHERE film.title = "No Time to Die")
--     );

-- INSERT INTO film_actor
--     (actor_id, film_id) VALUES 
--     (
--     (SELECT actor.actor_id FROM actor WHERE actor.first_name = "Nick" AND actor.last_name = "Wahlberg"),
--     (SELECT film.film_id from film WHERE film.title = "No Time to Die")
--     );

-- INSERT INTO film_actor
--     (actor_id, film_id) VALUES 
--     (
--     (SELECT actor.actor_id FROM actor WHERE actor.first_name = "Joe" AND actor.last_name = "swank"),
--     (SELECT film.film_id from film WHERE film.title = "No Time to Die")
--     );

-- TODO: Assign a new Category Thriller to the movie "Angels LIFE"

-- INSERT INTO category(name) VALUES ("Thriller");

-- INSERT INTO film_category(film_id, category_id) VALUES
-- (
-- (SELECT film.film_id FROM film WHERE film.title = "angels life"),
-- (SELECT category.category_id FROM category WHERE category.name = "thriller")
-- );

-- TODO: which actor acted most of the movies
-- SELECT actor.actor_id, CONCAT(actor.first_name," ",actor.last_name) , COUNT(*) FROM ((film 
-- LEFT JOIN film_actor ON film.film_id = film_actor.film_id) LEFT JOIN 
-- actor ON film_actor.actor_id = actor.actor_id) GROUP BY actor_id ORDER BY count(*) DESC LIMIT 1;

-- TODO: The actor JOHNNY LOLLOBRIGIDA was removed from the movie GRAIL FRANKENSTEIN. 
-- How would you update that record ?


-- SELECT actor_id FROM film_actor WHERE film_id = (SELECT film_id FROM film WHERE title = "GRAIL FRANKENSTEIN");

-- DELETE FROM film_actor where
-- actor_id = (SELECT actor_id FROM actor WHERE first_name = "JOHNNY" AND last_name = "LOLLOBRIGIDA") AND 
-- film_id = (SELECT film_id FROM film WHERE title = "GRAIL FRANKENSTEIN");


-- TODO: The HARPER DYING movie is an animated movie with Drama and Comedy. 
-- Assign these categories to the movie

--  SELECT category_id FROM film_category WHERE film_id = (SELECT film_id FROM film WHERE title = "HARPER DYING");

-- UPDATE film_category SET category_id = (SELECT category_id FROM category WHERE name = "Drama") 
-- WHERE film_id = (SELECT film_id FROM film WHERE title = "HARPER DYING");

-- INSERT INTO film_category(film_id, category_id) VALUES
-- ((SELECT film_id FROM film WHERE title = "HARPER DYING"),(SELECT category_id FROM category WHERE name = "comedy")),
-- ((SELECT film_id FROM film WHERE title = "HARPER DYING"),(SELECT category_id FROM category WHERE name = "animation"));

-- TODO: The entire cast of the movie WEST LION has changed. 
-- The new actors are DAN TORN, MAE HOFFMAN, SCARLETT DAMON. 
-- How would you date the record in the safest way


-- SELECT actor_id FROM film_actor WHERE film_id = (SELECT film_id FROM film WHERE title = "WEST LION");
-- DELETE FROM film_actor WHERE film_id = (SELECT film_id FROM film WHERE title = "WEST LION");


-- INSERT INTO film_actor(actor_id,film_id) VALUES 
-- ((SELECT actor_id FROM actor where first_name = "dan" AND last_name = "torn"),
-- (SELECT film_id FROM film WHERE title = "WEST LION")),

-- ((SELECT actor_id FROM actor where first_name = "mae" AND last_name = "hoffman"),
-- (SELECT film_id FROM film WHERE title = "WEST LION")),

-- ((SELECT actor_id FROM actor where first_name = "scarlett" AND last_name = "damon"),
-- (SELECT film_id FROM film WHERE title = "WEST LION"));


-- TODO: How many actors acted in fims released in 2017?

-- SELECT film_id FROM film WHERE release_year = 2017;
-- SELECT film_actor.actor_id, film.release_year, COUNT(*) FROM 
-- (film INNER JOIN film_actor ON film.film_id = film_actor.film_id) WHERE film.release_year = 2017 
-- GROUP BY film_actor.actor_id ORDER BY count(*) DESC LIMIT 1;

-- TODO: How many Sci-Fi films released between the year 2007 and 2017
-- SELECT film.title, category.name, film.release_year FROM ((film INNER JOIN film_category ON film.film_id = film_category.film_id) INNER JOIN
-- category ON film_category.category_id = category.category_id) 
-- WHERE category.name = "sci-Fi" AND film.release_year BETWEEN 2007 AND 2017
-- ORDER BY film.release_year;


-- TODO: Fetch the actors of the movie WESTWARD SEABISCUIT with the city they live in.
-- SELECT CONCAT(actor.first_name," ",actor.last_name) AS Actors, city.city FROM ((actor INNER JOIN address ON actor.address_id = address.address_id)
-- INNER JOIN city ON address.city_id = city.city_id) 
-- WHERE actor.actor_id IN ((SELECT film_actor.actor_id FROM film_actor 
-- WHERE film_actor.film_id = (SELECT film_id FROM film WHERE film.title = "WESTWARD SEABISCUIT")));

-- TODO: What is the total length of all movies played in 2008?
-- SELECT SUM(film.length) AS "TOTAL LENGTH" FROM film WHERE film.release_year = 2008;

-- TODO: which film has the shortest length? In which language and year was it released?

-- SELECT film.title AS "FILM TITLE", language.name AS "LANGUAGE", film.release_year, film.length FROM (film 
-- INNER JOIN language ON film.language_id = language.language_id) 
-- WHERE film.length = (SELECT MIN(film.length) FROM film);

-- TODO: How many movies were released each year?
-- SELECT film.release_year, count(*) FROM film GROUP BY film.release_year ORDER BY film.release_year;

-- TODO: How many languages of movies were released each year?
-- SELECT film.release_year, COUNT(DISTINCT film.language_id) AS "LANGUAGES" FROM film GROUP BY film.release_year; 

-- TODO: which actor did least movies
-- SELECT film_actor.actor_id,CONCAT(actor.first_name," ",actor.last_name) AS "ACTOR NAME",count(*) FROM 
-- ((film INNER JOIN film_actor ON film.film_id = film_actor.film_id) INNER JOIN
-- actor ON film_actor.actor_id = actor.actor_id) 
-- GROUP BY film_actor.actor_id ORDER BY COUNT(*) LIMIT 1;


