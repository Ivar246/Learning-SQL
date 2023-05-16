-- challenge 4
--      reviewers stat

-- Query
SELECT 
    first_name,
    last_name,
    COUNT(rating) as count,
    IFNULL(min(rating), 0) AS min,
    IFNULL(max(rating), 0) AS max,
    IFNULL(avg(rating), 0) AS average,
    CASE
        WHEN COUNT(rating) >0 THEN "ACTIVE"
        ELSE "INACTIVE"
    END AS Status
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
group BY reviewers.id;

--      OR

SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    IFNULL(avg(rating), 0) AS average,
    IF(count(rating)>0, "ACTIVE", "INACTIVE") AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;



-- Output

-- +------------+-----------+-------+-----+-----+---------+----------+
-- | first_name | last_name | count | min | max | average | Statuss  |
-- +------------+-----------+-------+-----+-----+---------+----------+
-- | Thomas     | Stoneman  |     5 | 7.0 | 9.5 | 8.02000 | ACTIVE   |
-- | Wyatt      | Skaggs    |     9 | 5.5 | 9.3 | 7.80000 | ACTIVE   |
-- | Kimbra     | Masters   |     9 | 6.8 | 9.0 | 7.98889 | ACTIVE   |
-- | Domingo    | Cortes    |    10 | 5.8 | 9.1 | 7.83000 | ACTIVE   |
-- | Colt       | Steele    |    10 | 4.5 | 9.9 | 8.77000 | ACTIVE   |
-- | Pinkie     | Petit     |     4 | 4.3 | 8.8 | 7.25000 | ACTIVE   |
-- | Marlon     | Crafford  |     0 | 0.0 | 0.0 | 0.00000 | INACTIVE |
-- +------------+-----------+-------+-----+-----+---------+----------+
