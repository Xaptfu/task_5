--1
SELECT category, COUNT(*)
FROM products
GROUP BY category;

--2
SELECT category, COUNT(*)
FROM products
GROUP BY category
ORDER BY COUNT(*) DESC;