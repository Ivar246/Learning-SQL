-- Problem: 
-- 	update white color shirt size to "X" and color offWhite

-- Before:
-- +----------+------------+--------+------------+-----------+
-- | shirt_id | article    | color  | shirt_size | last_worn |
-- +----------+------------+--------+------------+-----------+
-- |        1 | t-shirt    | white  | S          |        10 |
-- |        2 | t-shirt    | green  | S          |       200 |
-- |        3 | polo shirt | black  | L          |        10 |
-- |        4 | tank top   | Blue   | S          |        50 |
-- |        5 | t-shirt    | pink   | S          |         0 |
-- |        6 | polo shirt | red    | L          |         0 |
-- |        7 | tank top   | white  | S          |       200 |
-- |        8 | tank top   | blue   | M          |        15 |
-- |        9 | polo shirt | purple | L          |        50 |
-- +----------+------------+--------+------------+-----------+

-- query:

UPDATE shirts SET shirt_size="X", color="Offwhite" WHERE color="white";

-- After:

-- +----------+------------+----------+------------+-----------+
-- | shirt_id | article    | color    | shirt_size | last_worn |
-- +----------+------------+----------+------------+-----------+
-- |        1 | t-shirt    | Offwhite | X          |        10 |
-- |        2 | t-shirt    | green    | S          |       200 |
-- |        3 | polo shirt | black    | L          |        10 |
-- |        4 | tank top   | Blue     | S          |        50 |
-- |        5 | t-shirt    | pink     | S          |         0 |
-- |        6 | polo shirt | red      | L          |         0 |
-- |        7 | tank top   | Offwhite | X          |       200 |
-- |        8 | tank top   | blue     | M          |        15 |
-- |        9 | polo shirt | purple   | L          |        50 |
-- +----------+------------+----------+------------+-----------+
