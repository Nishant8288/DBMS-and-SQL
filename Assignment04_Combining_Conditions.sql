-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 4
-- Title      : Combining Conditions
-- Aim        : To combine conditions with AND, check a range with BETWEEN, and check a list of values with IN.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE player (name VARCHAR(30), team VARCHAR(20), runs INT);
INSERT INTO player (name, team, runs)
VALUES ('Asha', 'Eagles', 45),
       ('Meera', 'Tigers', 72),
       ('Arjun', 'Eagles', 30),
       ('Kiran', 'Lions', 88);

-- ------------------------------------------------------------
-- TASK 1: Eagles players with more than 35 runs (AND)
-- ------------------------------------------------------------
SELECT name, runs FROM player
WHERE team = 'Eagles' AND runs > 35;

-- Expected output:
--   +------+------+
--   | name | runs |
--   +------+------+
--   | Asha |   45 |
--   +------+------+
--   1 row in set

-- ------------------------------------------------------------
-- TASK 2: Players with runs between 40 and 80 (BETWEEN)
-- ------------------------------------------------------------
SELECT name, runs FROM player
WHERE runs BETWEEN 40 AND 80;

-- Expected output:
--   +-------+------+
--   | name  | runs |
--   +-------+------+
--   | Asha  |   45 |
--   | Meera |   72 |
--   +-------+------+
--   2 rows in set

-- ------------------------------------------------------------
-- TASK 3: Players of Tigers or Lions (IN)
-- ------------------------------------------------------------
SELECT name, team FROM player
WHERE team IN ('Tigers', 'Lions');

-- Expected output:
--   +-------+--------+
--   | name  | team   |
--   +-------+--------+
--   | Meera | Tigers |
--   | Kiran | Lions  |
--   +-------+--------+
--   2 rows in set
