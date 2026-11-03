-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 6
-- Title      : Sorting Rows and Removing Repeats
-- Aim        : To sort the rows of a result, remove repeated values, and show only some rows.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE product (product_name VARCHAR(30), category VARCHAR(20), price INT);
INSERT INTO product (product_name, category, price)
VALUES ('Pen', 'Stationery', 15),
       ('Notebook', 'Stationery', 60),
       ('Calculator', 'Electronics', 850),
       ('Bag', 'Office', 500);

-- ------------------------------------------------------------
-- TASK 1: Products sorted by price, highest first
-- ------------------------------------------------------------
SELECT product_name, price FROM product
ORDER BY price DESC;

-- Expected output:
--   +--------------+-------+
--   | product_name | price |
--   +--------------+-------+
--   | Calculator   |   850 |
--   | Bag          |   500 |
--   | Notebook     |    60 |
--   | Pen          |    15 |
--   +--------------+-------+
--   4 rows in set

-- ------------------------------------------------------------
-- TASK 2: Each category once, sorted by category
-- ------------------------------------------------------------
SELECT DISTINCT category FROM product
ORDER BY category;

-- Expected output:
--   +-------------+
--   | category    |
--   +-------------+
--   | Electronics |
--   | Office      |
--   | Stationery  |
--   +-------------+
--   3 rows in set

-- ------------------------------------------------------------
-- TASK 3: The two most expensive products
-- ------------------------------------------------------------
SELECT product_name, price FROM product
ORDER BY price DESC
LIMIT 2;

-- Expected output:
--   +--------------+-------+
--   | product_name | price |
--   +--------------+-------+
--   | Calculator   |   850 |
--   | Bag          |   500 |
--   +--------------+-------+
--   2 rows in set
