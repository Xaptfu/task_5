--1
SELECT * FROM products
--2
SELECT name, category FROM products;
--3
SELECT DISTINCT category FROM products;
--4
SELECT * FROM products ORDER BY name ASC;
--5
SELECT * FROM products ORDER BY name DESC;
--6
SELECT * FROM products LIMIT 10;
--7
SELECT * FROM products LIMIT 10 OFFSET 10;
--8
SELECT * FROM products ORDER BY RANDOM() LIMIT 5;
--9
SELECT category FROM products ORDER BY category ASC;
--10
SELECT * FROM products ORDER BY category ASC, name ASC;