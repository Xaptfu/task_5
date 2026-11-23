--1
SELECT * FROM products WHERE category = 'Электроника';
--2
SELECT * FROM products 
WHERE category = 'Одежда' AND name LIKE '%женские%';
--3
SELECT * FROM products 
WHERE category IN ('Продукты', 'Книги');
--4
SELECT * FROM products 
WHERE category <> 'Бытовая техника';
--5
SELECT * FROM products 
WHERE category IN ('Электроника', 'Одежда', 'Книги');
--6
SELECT * FROM products 
WHERE (category = 'Электроника' AND name LIKE '%Samsung%') 
   OR (category = 'Бытовая техника');
--7
SELECT * FROM products 
WHERE (
    category IN ('Электроника', 'Одежда', 'Бытовая техника') 
    AND id BETWEEN 1 AND 15 
    AND name NOT LIKE '%Samsung%'
) 
OR category = 'Книги';