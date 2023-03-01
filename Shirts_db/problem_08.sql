-- Problem: 
-- 	Delete all old shirts last_worn 200 days ago
    
-- Before:
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


-- query:

DELETE FROM shirts WHERE last_worn>=200;

-- After:

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
