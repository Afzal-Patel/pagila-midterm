/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 */

SELECT country_id,count(customer_id)
FROM customer
JOIN address USING (address_id)
JOIN city USING (city_id)
JOIN country USING (country_id)
GROUP BY country_id
ORDER BY count(customer_id) DESC
LIMIT 1;
