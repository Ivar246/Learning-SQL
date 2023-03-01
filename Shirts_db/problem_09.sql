-- Problem: 
--      Delete all tank top shirts 

-- Before:

-- +----------+------------+----------+------------+-----------+
-- | shirt_id | article    | color    | shirt_size | last_worn |
-- +----------+------------+----------+------------+-----------+
-- |        1 | t-shirt    | Offwhite | X          |        10 |
-- |        3 | polo shirt | black    | L          |        10 |
-- |        4 | tank top   | Blue     | S          |        50 |
-- |        5 | t-shirt    | pink     | S          |         0 |
-- |        6 | polo shirt | red      | L          |         0 |
-- |        8 | tank top   | blue     | M          |        15 |
-- |        9 | polo shirt | purple   | L          |        50 |
-- +----------+------------+----------+------------+-----------+


-- query:

DELETE FROM shirts WHERE article= "tank top";

-- After:

-- +----------+------------+----------+------------+-----------+
-- | shirt_id | article    | color    | shirt_size | last_worn |
-- +----------+------------+----------+------------+-----------+
-- |        1 | t-shirt    | Offwhite | X          |        10 |
-- |        3 | polo shirt | black    | L          |        10 |
-- |        5 | t-shirt    | pink     | S          |         0 |
-- |        6 | polo shirt | red      | L          |         0 |
-- |        9 | polo shirt | purple   | L          |        50 |
-- +----------+------------+----------+------------+-----------+

