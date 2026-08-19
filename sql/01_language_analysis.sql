-- Gravity Books SQL Analysis
-- Analysis: Languages with the lowest number of orders

SELECT 
    book.language_id,
    book_language.language_name,
    COUNT(order_line.book_id) AS TotalOrders
FROM book
JOIN book_language
    ON book.language_id = book_language.language_id
LEFT JOIN order_line
    ON book.book_id = order_line.book_id
GROUP BY 
    book.language_id,
    book_language.language_name
ORDER BY TotalOrders ASC
LIMIT 10;
