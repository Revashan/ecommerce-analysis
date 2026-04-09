
/* Table creation*/
CREATE TABLE ecommerce_data (
    customer_id VARCHAR(50),
    customer_unique_id VARCHAR(50),
    customer_city VARCHAR(50),
    customer_state VARCHAR(50),
    order_id VARCHAR(50),
    order_purchase_timestamp TIMESTAMP,
    product_id VARCHAR(50),
    product_category_name VARCHAR(100),
    price FLOAT,
    payment_value FLOAT,
    year INT,
    month INT
);

/*Total sales*/
SELECT SUM(payment_value) AS total_sales
FROM ecommerce_data;

/*sale by state*/
SELECT customer_state, SUM(payment_value) AS total_sales
FROM ecommerce_data
GROUP BY customer_state
ORDER BY total_sales DESC;

/*Top 10 customers*/
SELECT customer_unique_id, SUM(payment_value) AS total_spent
FROM ecommerce_data
GROUP BY customer_unique_id
ORDER BY total_spent DESC
LIMIT 10;

/*monthly sale trend*/
SELECT year, month, SUM(payment_value) AS monthly_sales
FROM ecommerce_data
GROUP BY year, month
ORDER BY year, month;

/*Top product categories*/

SELECT product_category_name, SUM(payment_value) AS revenue
FROM ecommerce_data
GROUP BY product_category_name
ORDER BY revenue DESC
LIMIT 10;

/*Average order value */

SELECT AVG(payment_value) AS avg_order_value
FROM ecommerce_data;

/*Repeat  customers*/

SELECT customer_unique_id, COUNT(order_id) AS total_orders
FROM ecommerce_data
GROUP BY customer_unique_id
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC;

/*Customer Segmentation*/

SELECT 
    customer_unique_id,
    COUNT(order_id) AS frequency,
    SUM(payment_value) AS monetary,
    CASE 
        WHEN SUM(payment_value) > 1000 THEN 'High Value'
        WHEN SUM(payment_value) BETWEEN 500 AND 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS segment
FROM ecommerce_data
GROUP BY customer_unique_id;

/* Top State per month*/
SELECT year, month, customer_state, total_sales
FROM (
    SELECT 
        year,
        month,
        customer_state,
        SUM(payment_value) AS total_sales,
        RANK() OVER (PARTITION BY year, month ORDER BY SUM(payment_value) DESC) AS rnk
    FROM ecommerce_data
    GROUP BY year, month, customer_state
) t
WHERE rnk = 1;

