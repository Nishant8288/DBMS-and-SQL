-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 9
-- Title      : Aliases and CASE
-- Aim        : To give columns new names and to show a value chosen by a condition.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE exam_result (name VARCHAR(20), marks INT);
INSERT INTO exam_result (name, marks)
VALUES ('Asha', 92),
       ('Rohan', 47),
       ('Neha', 68),
       ('Meera', 33);

-- ------------------------------------------------------------
-- TASK 1: Rename the columns with AS
-- ------------------------------------------------------------
SELECT name AS student_name, marks AS score
FROM exam_result;

-- Expected output:
--   +--------------+-------+
--   | student_name | score |
--   +--------------+-------+
--   | Asha         |    92 |
--   | Rohan        |    47 |
--   | Neha         |    68 |
--   | Meera        |    33 |
--   +--------------+-------+
--   4 rows in set

-- ------------------------------------------------------------
-- TASK 2: Pass or Fail with CASE
-- ------------------------------------------------------------
SELECT name,
       CASE WHEN marks >= 40 THEN 'Pass'
            ELSE 'Fail'
       END AS result
FROM exam_result;

-- Expected output:
--   +-------+--------+
--   | name  | result |
--   +-------+--------+
--   | Asha  | Pass   |
--   | Rohan | Pass   |
--   | Neha  | Pass   |
--   | Meera | Fail   |
--   +-------+--------+
--   4 rows in set

-- ------------------------------------------------------------
-- TASK 3: Marks with 5 bonus marks
-- ------------------------------------------------------------
SELECT name, marks + 5 AS with_bonus
FROM exam_result;

-- Expected output:
--   +-------+------------+
--   | name  | with_bonus |
--   +-------+------------+
--   | Asha  |         97 |
--   | Rohan |         52 |
--   | Neha  |         73 |
--   | Meera |         38 |
--   +-------+------------+
--   4 rows in set
