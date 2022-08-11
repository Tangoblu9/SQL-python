/* SELECT ROUND(AVG(rental_rate),2)
FROM film */ 
/* SELECT title, rental_rate    - SUBQUERY with film where rental rate is > AVG rental rate
FROM film
WHERE rentaL_rate > (SELECT ROUND(AVG(rental_rate),2) FROM film) */ 

WITH average_rate (srednia) AS 
(SELECT ROUND(AVG(rental_rate),2) FROM film),

rental_rate AS 
(SELECT rating, sum(rental_rate) as total_rental_price
FROM film
WHERE rating in('R','PG-13')
GROUP BY rating
ORDER BY sum(rental_rate) DESC)

SELECT title, rental_rate
FROM film f, average_rate av   /*take CTE table average_rate and FILM table      */
WHERE f.rental_rate > av.srednia
ORDER by rental_rate ASC




