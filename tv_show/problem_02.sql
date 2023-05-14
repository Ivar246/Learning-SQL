-- Challenge 2
--   query for first_name, last_name and rating from reviewers and reviews table


 select  
	first_name,
    last_name, 
    rating
 from reviewers
 join reviews 
on reviewers.id = reviews.reviewer_id;
 

 -- output

 +------------+-----------+--------+
-- | first_name | last_name | rating |
-- +------------+-----------+--------+
-- | Thomas     | Stoneman  |    8.0 |
-- | Thomas     | Stoneman  |    8.1 |
-- | Thomas     | Stoneman  |    7.0 |
-- | Thomas     | Stoneman  |    7.5 |
-- | Thomas     | Stoneman  |    9.5 |
-- | Wyatt      | Skaggs    |    7.5 |
-- | Wyatt      | Skaggs    |    7.6 |
-- | Wyatt      | Skaggs    |    9.3 |
-- | Wyatt      | Skaggs    |    6.5 |
-- | Wyatt      | Skaggs    |    8.4 |
-- | Wyatt      | Skaggs    |    9.1 |
-- | Wyatt      | Skaggs    |    7.8 |
-- | Wyatt      | Skaggs    |    5.5 |
-- | Wyatt      | Skaggs    |    8.5 |
-- | Kimbra     | Masters   |    8.5 |
-- | Kimbra     | Masters   |    8.0 |
-- | Kimbra     | Masters   |    7.1 |
-- | Kimbra     | Masters   |    7.8 |
-- | Kimbra     | Masters   |    9.0 |
-- | Kimbra     | Masters   |    7.8 |
-- | Kimbra     | Masters   |    6.8 |
-- | Kimbra     | Masters   |    8.0 |
-- | Kimbra     | Masters   |    8.9 |
-- | Domingo    | Cortes    |    7.7 |
-- | Domingo    | Cortes    |    6.0 |
-- | Domingo    | Cortes    |    8.0 |
-- | Domingo    | Cortes    |    8.3 |
-- | Domingo    | Cortes    |    9.1 |
-- | Domingo    | Cortes    |    8.8 |
-- | Domingo    | Cortes    |    8.5 |
-- | Domingo    | Cortes    |    5.8 |
-- | Domingo    | Cortes    |    7.2 |
-- | Domingo    | Cortes    |    8.9 |
-- | Colt       | Steele    |    8.9 |
-- | Colt       | Steele    |    9.9 |
-- | Colt       | Steele    |    8.0 |
-- | Colt       | Steele    |    8.5 |
-- | Colt       | Steele    |    9.9 |
-- | Colt       | Steele    |    9.1 |
-- | Colt       | Steele    |    9.7 |
-- | Colt       | Steele    |    9.3 |
-- | Colt       | Steele    |    4.5 |
-- | Colt       | Steele    |    9.9 |
-- | Pinkie     | Petit     |    8.4 |
-- | Pinkie     | Petit     |    7.5 |
-- | Pinkie     | Petit     |    8.8 |
-- | Pinkie     | Petit     |    4.3 |
-- +------------+-----------+--------+
