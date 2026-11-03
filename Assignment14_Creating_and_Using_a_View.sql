-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 14
-- Title      : Creating and Using a View
-- Aim        : To save a query as a view and then read the view.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE score (name VARCHAR(30), subject VARCHAR(20), marks INT);
INSERT INTO score (name, subject, marks)
VALUES ('Asha', 'Maths', 78),
       ('Rohan', 'Maths', 64),
       ('Neha', 'Maths', 88),
       ('Kiran', 'Maths', 52);

-- ------------------------------------------------------------
-- TASK 1: Create the view high_scores
-- ------------------------------------------------------------
CREATE VIEW high_scores AS
SELECT name, marks FROM score
WHERE marks >= 70;

-- Expected output:
--   Query OK

-- ------------------------------------------------------------
-- TASK 2: Show all rows of the view
-- ------------------------------------------------------------
SELECT * FROM high_scores;

-- Expected output:
--   +------+-------+
--   | name | marks |
--   +------+-------+
--   | Asha |    78 |
--   | Neha |    88 |
--   +------+-------+
--   2 rows in set

-- ------------------------------------------------------------
-- TASK 3: Show only the names, sorted
-- ------------------------------------------------------------
SELECT name FROM high_scores
ORDER BY name;

-- Expected output:
--   +------+
--   | name |
--   +------+
--   | Asha |
--   | Neha |
--   +------+
--   2 rows in set
