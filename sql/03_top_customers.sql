-- Gravity Books SQL Analysis
-- Analysis: Top 10 customers by number of books ordered

SELECT 
    customer.customer_id,
    first_name,
    last_name,
    COUNT(order_line.book_id) AS total_orders
FROM customer
JOIN cust_order
    ON customer.customer_id = cust_order.customer_id
JOIN order_line
    ON cust_order.order_id = order_line.order_id
GROUP BY 
    customer.customer_id,
    customer.first_name,
    customer.last_name
ORDER BY total_orders DESC
LIMIT 10;
