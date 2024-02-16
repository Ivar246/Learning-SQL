-- inner join 
-- Query
SELECT *
FROM Student
    JOIN Papers ON Student.id = Papers.student_id;
-- +----+------------+-------------+-------+------------+
-- | id | first_name | title       | grade | student_id |
-- +----+------------+-------------+-------+------------+
-- |  1 | John       | Mathematics |    90 |          1 |
-- |  1 | John       | Science     |    85 |          1 |
-- |  2 | Emily      | English     |    92 |          2 |
-- |  2 | Emily      | History     |    88 |          2 |
-- |  4 | Sarah      | Geography   |    95 |          4 |
-- +----+------------+-------------+-------+------------+