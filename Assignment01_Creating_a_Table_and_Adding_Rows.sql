-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 1
-- Title      : Creating a Table and Adding Rows
-- Aim        : To create a table, add three rows with one INSERT statement, and show the table.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- TASK 1: Create the student table
-- ------------------------------------------------------------
CREATE TABLE student (
    roll_no  INT,
    name     VARCHAR(30),
    marks    INT
);

-- Expected output:
--   Query OK

-- ------------------------------------------------------------
-- TASK 2: Add three rows with one INSERT
-- ------------------------------------------------------------
INSERT INTO student (roll_no, name, marks)
VALUES (101, 'Asha', 78),
       (102, 'Rohan', 64),
       (103, 'Neha', 88);

-- Expected output:
--   Query OK, 3 rows affected

-- ------------------------------------------------------------
-- TASK 3: Show all columns and all rows
-- ------------------------------------------------------------
SELECT * FROM student;

-- Expected output:
--   +---------+-------+-------+
--   | roll_no | name  | marks |
--   +---------+-------+-------+
--   |     101 | Asha  |    78 |
--   |     102 | Rohan |    64 |
--   |     103 | Neha  |    88 |
--   +---------+-------+-------+
--   3 rows in set
