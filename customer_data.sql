/* CUSTOMER JOINED DATA - to get client's amount expenditure on dvd rental and addresses */
--data: DVD rental database/ PostgreSQL 14.0: customer, payment, address, city tables

SELECT payment.customer_id, 
SUM(amount) AS customer_spent, 
first_name, last_name, 
first_name || ' ' || last_name AS full_name,
address.address_id,
district, 
city.city_id, city.city

FROM customer   
/*joining on customer_id to get names, 
joining on address_id to get district from address table
join on city_id to get city names */

INNER JOIN payment ON payment.customer_id = customer.customer_id
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id
GROUP BY payment.customer_id, first_name, last_name, full_name, address.address_id, district, city.city_id, city.city
ORDER BY SUM(amount) DESC








