-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 15
-- Title      : Indexes and Adding a Row
-- Aim        : To create an index on a column, read rows by that column, and add a row.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE customer (
    customer_id  INT PRIMARY KEY,
    name         VARCHAR(30) NOT NULL,
    city         VARCHAR(20)
);
INSERT INTO customer (customer_id, name, city)
VALUES (1, 'Kiran', 'Kochi'),
       (2, 'Deepak', 'Delhi'),
       (3, 'Lata', 'Mumbai'),
       (4, 'Asha', 'Delhi');

-- ------------------------------------------------------------
-- TASK 1: Create the index idx_city
-- ------------------------------------------------------------
CREATE INDEX idx_city ON customer (city);

-- Expected output:
--   Query OK

-- ------------------------------------------------------------
-- TASK 2: Customers who live in Delhi
-- ------------------------------------------------------------
SELECT name FROM customer
WHERE city = 'Delhi'
ORDER BY name;

-- Expected output:
--   +--------+
--   | name   |
--   +--------+
--   | Asha   |
--   | Deepak |
--   +--------+
--   2 rows in set

-- ------------------------------------------------------------
-- TASK 3: Add customer 5 and show the table
-- ------------------------------------------------------------
INSERT INTO customer (customer_id, name, city)
VALUES (5, 'Arjun', 'Pune');
SELECT * FROM customer ORDER BY customer_id;

-- Expected output:
--   Query OK, 1 row affected
--   +-------------+--------+--------+
--   | customer_id | name   | city   |
--   +-------------+--------+--------+
--   |           1 | Kiran  | Kochi  |
--   |           2 | Deepak | Delhi  |
--   |           3 | Lata   | Mumbai |
--   |           4 | Asha   | Delhi  |
--   |           5 | Arjun  | Pune   |
--   +-------------+--------+--------+
--   5 rows in set
