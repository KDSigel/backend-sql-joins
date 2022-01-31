-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city
SELECT first_name, last_name, customer_list.address, customer_list.city FROM customer
LEFT JOIN customer_list ON customer_list.id = customer.customer_id