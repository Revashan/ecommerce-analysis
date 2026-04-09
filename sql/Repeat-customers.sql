/* Repeated customers segregation*/

SELECT customer_unique_id, COUNT(*) AS frequency
FROM customers
GROUP BY customer_unique_id
HAVING COUNT(*) > 1;
