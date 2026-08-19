-- Gravity Books SQL Analysis
-- Analysis: Highest-order cities for warehouse placement

SELECT 
    address.city,
    country.country_name,
    COUNT(cust_order.order_id) AS total_orders
FROM cust_order
JOIN customer_address
    ON cust_order.dest_address_id = customer_address.address_id
JOIN address
    ON customer_address.address_id = address.address_id
JOIN country
    ON address.country_id = country.country_id
GROUP BY 
    address.city,
    country.country_name
ORDER BY total_orders DESC
LIMIT 5;
