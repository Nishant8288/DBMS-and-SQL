-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 7
-- Title      : Using Aggregate Functions
-- Aim        : To use one aggregate function in each query: COUNT, SUM and MAX.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE sales (salesperson VARCHAR(20), region VARCHAR(20), amount INT);
INSERT INTO sales (salesperson, region, amount)
VALUES ('Deepak', 'North', 12000),
       ('Pooja', 'South', 8500),
       ('Deepak', 'South', 9500),
       ('Lata', 'North', 11000);

-- ------------------------------------------------------------
-- TASK 1: Count the sales rows
-- ------------------------------------------------------------
SELECT COUNT(*) AS num_sales FROM sales;

-- Expected output:
--   +-----------+
--   | num_sales |
--   +-----------+
--   |         4 |
--   +-----------+
--   1 row in set

-- ------------------------------------------------------------
-- TASK 2: Total of all amounts
-- ------------------------------------------------------------
SELECT SUM(amount) AS total FROM sales;

-- Expected output:
--   +-------+
--   | total |
--   +-------+
--   | 41000 |
--   +-------+
--   1 row in set

-- ------------------------------------------------------------
-- TASK 3: Highest amount
-- ------------------------------------------------------------
SELECT MAX(amount) AS highest FROM sales;

-- Expected output:
--   +---------+
--   | highest |
--   +---------+
--   |   12000 |
--   +---------+
--   1 row in set
