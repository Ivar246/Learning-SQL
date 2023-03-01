-- Problem:
-- 		select all medium shirts and print out every thing but shirt_id

-- query: 

SELECT article, color, shirt_size, last_worn FROM shirts where shirt_size = "M";

-- Output:

-- +------------+--------+------------+-----------+
-- | article    | color  | shirt_size | last_worn |
-- +------------+--------+------------+-----------+
-- | polo shirt | black  | M          |        10 |
-- | polo shirt | red    | M          |         5 |
-- | tank top   | blue   | M          |        15 |
-- | polo shirt | purple | M          |        50 |
-- +------------+--------+------------+-----------+
