-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 13
-- Title      : UNION and INTERSECT
-- Aim        : To combine two lists of names, and to find the names that are in both lists.
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
-- TASK 1: UNION: all names, each once
-- ------------------------------------------------------------
SELECT student_name FROM club_a
UNION
SELECT student_name FROM club_b
ORDER BY student_name;

-- Expected output:
--   +--------------+
--   | student_name |
--   +--------------+
--   | Asha         |
--   | Meera        |
--   | Neha         |
--   | Pooja        |
--   | Rohan        |
--   +--------------+
--   5 rows in set

-- ------------------------------------------------------------
-- TASK 2: INTERSECT: names in both clubs
-- ------------------------------------------------------------
SELECT student_name FROM club_a
INTERSECT
SELECT student_name FROM club_b
ORDER BY student_name;

-- Expected output:
--   +--------------+
--   | student_name |
--   +--------------+
--   | Neha         |
--   +--------------+
--   1 row in set

-- ------------------------------------------------------------
-- TASK 3: UNION ALL: all names with repeats
-- ------------------------------------------------------------
SELECT student_name FROM club_a
UNION ALL
SELECT student_name FROM club_b
ORDER BY student_name;

-- Expected output:
--   +--------------+
--   | student_name |
--   +--------------+
--   | Asha         |
--   | Meera        |
--   | Neha         |
--   | Neha         |
--   | Pooja        |
--   | Rohan        |
--   +--------------+
--   6 rows in set
