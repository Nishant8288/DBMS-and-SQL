-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 12
-- Title      : Using a Subquery
-- Aim        : To use one query inside another query with IN.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE club_a (student_name VARCHAR(30));
INSERT INTO club_a (student_name)
VALUES ('Asha'), ('Rohan'), ('Neha');

CREATE TABLE club_b (student_name VARCHAR(30));
INSERT INTO club_b (student_name)
VALUES ('Neha'), ('Pooja'), ('Meera');

-- ------------------------------------------------------------
-- TASK 1: Names in club_a that are also in club_b
-- ------------------------------------------------------------
SELECT student_name FROM club_a
WHERE student_name IN (SELECT student_name FROM club_b);

-- Expected output:
--   +--------------+
--   | student_name |
--   +--------------+
--   | Neha         |
--   +--------------+
--   1 row in set

-- ------------------------------------------------------------
-- TASK 2: Number of names in club_b
-- ------------------------------------------------------------
SELECT COUNT(*) AS members FROM club_b;

-- Expected output:
--   +---------+
--   | members |
--   +---------+
--   |       3 |
--   +---------+
--   1 row in set

-- ------------------------------------------------------------
-- TASK 3: Names in club_a, sorted
-- ------------------------------------------------------------
SELECT student_name FROM club_a
ORDER BY student_name;

-- Expected output:
--   +--------------+
--   | student_name |
--   +--------------+
--   | Asha         |
--   | Neha         |
--   | Rohan        |
--   +--------------+
--   3 rows in set
