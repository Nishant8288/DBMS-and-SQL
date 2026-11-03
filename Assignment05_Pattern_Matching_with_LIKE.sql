-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 5
-- Title      : Pattern Matching with LIKE
-- Aim        : To find titles that match a pattern with the LIKE operator.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE book (title VARCHAR(40), category VARCHAR(20), copies INT);
INSERT INTO book (title, category, copies)
VALUES ('Database Systems', 'Computer', 3),
       ('Digital Electronics', 'Electronics', 2),
       ('Data Structures in C', 'Computer', 2),
       ('Short Stories', 'Literature', 1);

-- ------------------------------------------------------------
-- TASK 1: Titles that start with Data
-- ------------------------------------------------------------
SELECT title FROM book
WHERE title LIKE 'Data%';

-- Expected output:
--   +----------------------+
--   | title                |
--   +----------------------+
--   | Database Systems     |
--   | Data Structures in C |
--   +----------------------+
--   2 rows in set

-- ------------------------------------------------------------
-- TASK 2: Titles that end with the letter C
-- ------------------------------------------------------------
SELECT title FROM book
WHERE title LIKE '%C';

-- Expected output:
--   +----------------------+
--   | title                |
--   +----------------------+
--   | Data Structures in C |
--   +----------------------+
--   1 row in set

-- ------------------------------------------------------------
-- TASK 3: Titles whose second letter is h
-- ------------------------------------------------------------
SELECT title FROM book
WHERE title LIKE '_h%';

-- Expected output:
--   +---------------+
--   | title         |
--   +---------------+
--   | Short Stories |
--   +---------------+
--   1 row in set
