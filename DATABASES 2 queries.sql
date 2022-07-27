-- SLIDE 10

SELECT 
    * 
FROM 
    category;

-- SLIDE 11

-- asdasdasda

/* asdasdasda
 asdasdasda
*/ 

-- SLIDE 12

SELECT 
    name, 
    category_id, 
FROM 
    category;

-- SLIDE 13

SELECT 
    first_name
FROM 
    actor;

SELECT 
    DISTINCT first_name
FROM 
    actor;

-- SLIDE 14

SELECT 
    title, 
    replacement_cost + rental_rate
FROM film;

SELECT 
    title, 
    replacement_cost + rental_rate AS price
FROM film;

-- SLIDE 18/19

SELECT *
FROM film
WHERE length >184;

-- SLIDE 22

SELECT *
FROM film
WHERE 
    length >184 AND  
    release_year = 2006 AND 
    rating <> 'R';

-- SLIDE 23

SELECT *
FROM film
WHERE length BETWEEN 60 AND 120;

-- SLIDE 24

SELECT *
FROM film
WHERE rental_duration IN (4, 7);

SELECT *
FROM film
WHERE rating IN ('R', 'PG-13' );

-- SLIDE 27

-- SLIDE 34

SELECT COUNT(*)
FROM film
WHERE rating = 'PG-13';

-- SLIDE 35

SELECT COUNT(DISTINCT first_name)
FROM actor;

SELECT
COUNT(film_id) AS num_films,
SUM(length) AS total_lenght
FROM film
WHERE rating = 'R';

-- SLIDE 37

SELECT
rating,
COUNT(film_id) AS num_films,
SUM(length) AS total_lenght
FROM film
GROUP BY rating;

-- SLIDE 38

SELECT
rating,
COUNT(film_id) AS num_films,
SUM(length) AS total_lenght
FROM film
GROUP BY rating
HAVING COUNT(film_id) > 200;

-- SLIDE 40

SELECT * FROM category;

SELECT category_id FROM category WHERE name = 'Music';

SELECT * 
FROM film_category
WHERE category_id = (
    SELECT category_id 
    FROM category 
    WHERE name = 'Music');

-- SLIDE 43

SELECT SUM(length)
FROM film;

SELECT DISTINCT rating
FROM film;

SELECT * FROM film;

SELECT title, length FROM film
WHERE title LIKE '%Cat%';

SELECT length FROM film WHERE rating = 'R';

-- SLIDE 44

SELECT * FROM film
WHERE length >= ALL (
    SELECT length FROM film WHERE rating = 'R'
);

-- SLIDE 45

SELECT * FROM film
WHERE length >= ALL (
    SELECT length FROM film WHERE rating = 'R'
);

-- SLIDE 48

CREATE TABLE tabla1 (
    row_id INT PRIMARY KEY,
    row_value VARCHAR(50)
);

INSERT INTO tabla1 (row_id,row_value)
VALUES (1,'x1'),(2,'x2'),(3,'x3');

CREATE TABLE tabla2 (
    row_id INT PRIMARY KEY,
    row_value VARCHAR(50)
);

INSERT INTO tabla2 (row_id,row_value)
VALUES (1,'y1'),(2,'y2'),(4,'y3');

-- SLIDE 49

SELECT x.*, y.*
FROM tabla1 x, tabla2 y;

-- SLIDE 51

SELECT x.*, y.*
FROM tabla1 x, tabla2 y
WHERE x.row_id = y.row_id;

SELECT x.*, y.*
FROM tabla1 x JOIN tabla2 y
ON x.row_id = y.row_id;

-- SLIDE 52

SELECT x.*, y.*
FROM tabla1 x LEFT OUTER JOIN tabla2 y
ON x.row_id = y.row_id;

SELECT x.*, y.*
FROM tabla1 x RIGHT OUTER JOIN tabla2 y
ON x.row_id = y.row_id;

SELECT x.*, y.*
FROM tabla1 x FULL OUTER JOIN tabla2 y
ON x.row_id = y.row_id;

-- SLIDE 54

SELECT length FROM film WHERE rating = 'R'
UNION
SELECT length FROM film WHERE rating = 'PG-13';

-- SLIDE 55

SELECT * FROM language lan
WHERE EXISTS( 
    SELECT * 
    FROM film 
    WHERE language_id = lan.language_id
);