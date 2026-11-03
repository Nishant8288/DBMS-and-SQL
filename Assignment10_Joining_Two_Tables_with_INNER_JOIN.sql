-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 10
-- Title      : Joining Two Tables with INNER JOIN
-- Aim        : To join a department table and an employee table on dept_id.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE department (dept_id INT, dept_name VARCHAR(20));
INSERT INTO department (dept_id, dept_name)
VALUES (10, 'Accounts'),
       (20, 'Sales'),
       (40, 'Research');

CREATE TABLE employee (emp_name VARCHAR(30), dept_id INT, salary INT);
INSERT INTO employee (emp_name, dept_id, salary)
VALUES ('Anita', 10, 90000),
       ('Lata', 20, 55000),
       ('Deepak', 10, 60000),
       ('Pooja', 20, 42000);

-- ------------------------------------------------------------
-- TASK 1: Employee name with department name
-- ------------------------------------------------------------
SELECT e.emp_name, d.dept_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id
ORDER BY e.emp_name;

-- Expected output:
--   +----------+-----------+
--   | emp_name | dept_name |
--   +----------+-----------+
--   | Anita    | Accounts  |
--   | Deepak   | Accounts  |
--   | Lata     | Sales     |
--   | Pooja    | Sales     |
--   +----------+-----------+
--   4 rows in set

-- ------------------------------------------------------------
-- TASK 2: Employees of the Sales department
-- ------------------------------------------------------------
SELECT e.emp_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_name;

-- Expected output:
--   +----------+
--   | emp_name |
--   +----------+
--   | Lata     |
--   | Pooja    |
--   +----------+
--   2 rows in set

-- ------------------------------------------------------------
-- TASK 3: Name, department and salary (highest salary first)
-- ------------------------------------------------------------
SELECT e.emp_name, d.dept_name, e.salary
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;

-- Expected output:
--   +----------+-----------+--------+
--   | emp_name | dept_name | salary |
--   +----------+-----------+--------+
--   | Anita    | Accounts  |  90000 |
--   | Deepak   | Accounts  |  60000 |
--   | Lata     | Sales     |  55000 |
--   | Pooja    | Sales     |  42000 |
--   +----------+-----------+--------+
--   4 rows in set
