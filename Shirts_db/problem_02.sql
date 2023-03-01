-- Problem:
--      add new shirt :
-- 		color: purple, name:polo, size: M, last_worn: 50 days 

-- query:
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ("polo shirt", "purple", "M", 50); 

-- Output:

-- +----------+------------+--------+------------+-----------+
-- | shirt_id | article    | color  | shirt_size | last_worn |
-- +----------+------------+--------+------------+-----------+
-- |        1 | t-shirt    | white  | S          |        10 |
-- |        2 | t-shirt    | green  | S          |       200 |
-- |        3 | polo shirt | black  | M          |        10 |
-- |        4 | tank top   | Blue   | S          |        50 |
-- |        5 | t-shirt    | pink   | S          |         0 |
-- |        6 | polo shirt | red    | M          |         5 |
-- |        7 | tank top   | white  | S          |       200 |
-- |        8 | tank top   | blue   | M          |        15 |
-- |        9 | polo shirt | purple | M          |        50 |
-- +----------+------------+--------+------------+-----------+
