-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name

SELECT film.title FROM film
LEFT JOIN inventory ON inventory.film_id = film.film_id
LEFT JOIN rental ON rental.inventory_id = inventory.inventory_id
LEFT JOIN customer ON customer.customer_id = rental.customer_id
LEFT JOIN customer_list ON customer_list.id = customer.customer_id
WHERE city = 'Dundee'