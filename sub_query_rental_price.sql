/*Implement SUB_QUERY to select only movies with rental price above average rental price. + data string manipulations   */
--PostgreSQL 14.0
--database: movie database: FILM

SELECT title, rental_rate, rating,
TO_CHAR(last_update, 'MONTH YYYY') AS last_rent_date,
DATE(last_update),
UPPER(title) || ' ' || length || ' '|| 'min.' AS movie_time

from film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film)
ORDER BY rental_rate DESC