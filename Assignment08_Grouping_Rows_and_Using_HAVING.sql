-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 8
-- Title      : Grouping Rows and Using HAVING
-- Aim        : To group rows by region and to check the totals of each group.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE shop_sale (salesperson VARCHAR(20), region VARCHAR(20), amount INT);
INSERT INTO shop_sale (salesperson, region, amount)
VALUES ('Deepak', 'North', 12000),
       ('Pooja', 'South', 8500),
       ('Deepak', 'South', 9500),
       ('Lata', 'North', 11000);

-- ------------------------------------------------------------
-- TASK 1: Number of sales in each region
-- ------------------------------------------------------------
SELECT region, COUNT(*) AS num_sales
FROM shop_sale
GROUP BY region
ORDER BY region;

-- Expected output:
--   +--------+-----------+
--   | region | num_sales |
--   +--------+-----------+
--   | North  |         2 |
--   | South  |         2 |
--   +--------+-----------+
--   2 rows in set

-- ------------------------------------------------------------
-- TASK 2: Total amount in each region
-- ------------------------------------------------------------
SELECT region, SUM(amount) AS total
FROM shop_sale
GROUP BY region
ORDER BY region;

-- Expected output:
--   +--------+-------+
--   | region | total |
--   +--------+-------+
--   | North  | 23000 |
--   | South  | 18000 |
--   +--------+-------+
--   2 rows in set

-- ------------------------------------------------------------
-- TASK 3: Regions whose total is more than 20000
-- ------------------------------------------------------------
SELECT region, SUM(amount) AS total
FROM shop_sale
GROUP BY region
HAVING SUM(amount) > 20000
ORDER BY region;

-- Expected output:
--   +--------+-------+
--   | region | total |
--   +--------+-------+
--   | North  | 23000 |
--   +--------+-------+
--   1 row in set
