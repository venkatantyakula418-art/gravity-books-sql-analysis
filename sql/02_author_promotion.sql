-- Gravity Books SQL Analysis
-- Analysis: Author with the highest number of books sold

SELECT 
    author.author_name,
    COUNT(order_line.line_id) AS total_books
FROM author
JOIN book_author
    ON author.author_id = book_author.author_id
JOIN order_line
    ON book_author.book_id = order_line.book_id
GROUP BY author.author_name
ORDER BY total_books DESC
LIMIT 1;
