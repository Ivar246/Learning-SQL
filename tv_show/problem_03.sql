-- challenge 3
--  Query for unreviewd series (series which do not have reviews)

-- Query
 SELECT title, rating FROM series
 LEFT JOIN reviews
 ON 
 series.id = reviews.series_id
 WHERE rating IS  NULL;


-- output 

-- +-----------------------+--------+
-- | title                 | rating |
-- +-----------------------+--------+
-- | Malcolm In The Middle |   NULL |
-- | Pushing Daisies       |   NULL |
-- +-----------------------+--------+


-- we can present null as 0

--  Query

SELECT title, ROUND(IFNULL(rating,0),0) FROM series  LEFT JOIN reviews  
ON series.id = reviews.series_id  WHERE rating IS  NULL;


-- output

-- +-----------------------+---------------------------+
-- | title                 | ROUND(IFNULL(rating,0),0) |
-- +-----------------------+---------------------------+
-- | Malcolm In The Middle |                         0 |
-- | Pushing Daisies       |                         0 |
-- +-----------------------+---------------------------+
