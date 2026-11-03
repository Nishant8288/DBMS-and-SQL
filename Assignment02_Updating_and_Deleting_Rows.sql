-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 2
-- Title      : Updating and Deleting Rows
-- Aim        : To change a value in a row, then delete a row, and check the table after each step.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE stock (item_code INT, item_name VARCHAR(30), quantity INT);
INSERT INTO stock (item_code, item_name, quantity)
VALUES (1, 'Notebook', 50),
       (2, 'Pen', 120),
       (3, 'Bag', 0);

-- ------------------------------------------------------------
-- TASK 1: Change the quantity of item_code 1 to 80
-- ------------------------------------------------------------
UPDATE stock SET quantity = 80 WHERE item_code = 1;
SELECT * FROM stock;

-- Expected output:
--   Query OK, 1 row affected
--   +-----------+-----------+----------+
--   | item_code | item_name | quantity |
--   +-----------+-----------+----------+
--   |         1 | Notebook  |       80 |
--   |         2 | Pen       |      120 |
--   |         3 | Bag       |        0 |
--   +-----------+-----------+----------+
--   3 rows in set

-- ------------------------------------------------------------
-- TASK 2: Add 10 to the quantity of item_code 2
-- ------------------------------------------------------------
UPDATE stock SET quantity = quantity + 10 WHERE item_code = 2;
SELECT * FROM stock;

-- Expected output:
--   Query OK, 1 row affected
--   +-----------+-----------+----------+
--   | item_code | item_name | quantity |
--   +-----------+-----------+----------+
--   |         1 | Notebook  |       80 |
--   |         2 | Pen       |      130 |
--   |         3 | Bag       |        0 |
--   +-----------+-----------+----------+
--   3 rows in set

-- ------------------------------------------------------------
-- TASK 3: Delete the row of item_code 3
-- ------------------------------------------------------------
DELETE FROM stock WHERE item_code = 3;
SELECT * FROM stock;

-- Expected output:
--   Query OK, 1 row affected
--   +-----------+-----------+----------+
--   | item_code | item_name | quantity |
--   +-----------+-----------+----------+
--   |         1 | Notebook  |       80 |
--   |         2 | Pen       |      130 |
--   +-----------+-----------+----------+
--   2 rows in set
