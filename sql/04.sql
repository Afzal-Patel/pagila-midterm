/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query SELECT query that:
 * Lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 * (You may choose to either include or exclude the movie 'AMERICAN CIRCUS' in the results.)
 */

SELECT title
FROM film
JOIN film_actor USING (film_id)
JOIN actor USING (actor_id)
WHERE actor_id IN
(SELECT actor_id
FROM actor
JOIN film_actor USING (actor_id)
JOIN film USING (film_id)
WHERE film.title = 'AMERICAN CIRCUS')
AND title != 'AMERICAN CIRCUS'
GROUP BY title
HAVING COUNT(actor_id) >= 2
ORDER BY title ASC;
