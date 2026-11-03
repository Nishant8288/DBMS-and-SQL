-- ============================================================
-- Name       : Nishant
-- Roll No    : 2410303310
-- Assignment : 11
-- Title      : Other Kinds of Joins
-- Aim        : To use a left join, a cross join and a natural join on two small tables.
-- Course     : DBMS & SQL Lab (BCS552), Invertis University, Bareilly
-- ============================================================

-- ------------------------------------------------------------
-- SET-UP (type these first; they are not a task)
-- ------------------------------------------------------------
CREATE TABLE team (team_id INT, team_name VARCHAR(20));
INSERT INTO team (team_id, team_name)
VALUES (1, 'Eagles'),
       (2, 'Tigers'),
       (3, 'Lions');

CREATE TABLE player (player_name VARCHAR(30), team_id INT, age INT);
INSERT INTO player (player_name, team_id, age)
VALUES ('Asha', 1, 24),
       ('Meera', 1, 22),
       ('Arjun', 2, 27);

-- ------------------------------------------------------------
-- TASK 1: LEFT JOIN: every team with its players
-- ------------------------------------------------------------
SELECT t.team_name, p.player_name
FROM team t
LEFT JOIN player p ON t.team_id = p.team_id
ORDER BY t.team_name, p.player_name;

-- Expected output:
--   +-----------+-------------+
--   | team_name | player_name |
--   +-----------+-------------+
--   | Eagles    | Asha        |
--   | Eagles    | Meera       |
--   | Lions     | NULL        |
--   | Tigers    | Arjun       |
--   +-----------+-------------+
--   4 rows in set

-- ------------------------------------------------------------
-- TASK 2: CROSS JOIN: every team and player pair
-- ------------------------------------------------------------
SELECT t.team_name, p.player_name
FROM team t
CROSS JOIN player p
ORDER BY t.team_name, p.player_name;

-- Expected output:
--   +-----------+-------------+
--   | team_name | player_name |
--   +-----------+-------------+
--   | Eagles    | Arjun       |
--   | Eagles    | Asha        |
--   | Eagles    | Meera       |
--   | Lions     | Arjun       |
--   | Lions     | Asha        |
--   | Lions     | Meera       |
--   | Tigers    | Arjun       |
--   | Tigers    | Asha        |
--   | Tigers    | Meera       |
--   +-----------+-------------+
--   9 rows in set

-- ------------------------------------------------------------
-- TASK 3: NATURAL JOIN: player with team name
-- ------------------------------------------------------------
SELECT player_name, team_name
FROM player
NATURAL JOIN team
ORDER BY player_name;

-- Expected output:
--   +-------------+-----------+
--   | player_name | team_name |
--   +-------------+-----------+
--   | Arjun       | Tigers    |
--   | Asha        | Eagles    |
--   | Meera       | Eagles    |
--   +-------------+-----------+
--   3 rows in set
