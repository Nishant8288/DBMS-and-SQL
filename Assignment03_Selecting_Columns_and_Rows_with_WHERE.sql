-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 3
-- Title      : Selecting Columns and Rows with WHERE
-- Aim        : To show some columns of a table, and to show only the rows that match a condition.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE student (roll_no INT, name VARCHAR(30), marks INT);
INSERT INTO student (roll_no, name, marks)
VALUES (101, 'Asha', 78),
       (102, 'Rohan', 64),
       (103, 'Neha', 88),
       (104, 'Deepak', 52);

-- ------------------------------------------------------------
-- TASK 1: Show only the name and marks of all students
-- ------------------------------------------------------------
SELECT name, marks FROM student;

-- Expected output:
--   +--------+-------+
--   | name   | marks |
--   +--------+-------+
--   | Asha   |    78 |
--   | Rohan  |    64 |
--   | Neha   |    88 |
--   | Deepak |    52 |
--   +--------+-------+
--   4 rows in set

-- ------------------------------------------------------------
-- TASK 2: Show all columns of students with marks greater than 60
-- ------------------------------------------------------------
SELECT * FROM student
WHERE marks > 60;

-- Expected output:
--   +---------+-------+-------+
--   | roll_no | name  | marks |
--   +---------+-------+-------+
--   |     101 | Asha  |    78 |
--   |     102 | Rohan |    64 |
--   |     103 | Neha  |    88 |
--   +---------+-------+-------+
--   3 rows in set

-- ------------------------------------------------------------
-- TASK 3: Show the name of the student whose roll_no is 103
-- ------------------------------------------------------------
SELECT name FROM student
WHERE roll_no = 103;

-- Expected output:
--   +------+
--   | name |
--   +------+
--   | Neha |
--   +------+
--   1 row in set
