--1
SELECT * FROM prices WHERE price BETWEEN 1000 AND 50000;
--2
SELECT price FROM prices WHERE price BETWEEN 500 AND 70000
 AND product_id <=5 ;
--3
SELECT price FROM prices WHERE price BETWEEN 60000 AND 70000
 OR price  <=100 ;