-- challenge 5
--      title, rating, reviewer name from series, reviews, reviewer name from reviewers table res[ectove;uu]



-- Query:

SELECT 
    title, 
    rating,
    CONCAT( first_name, last_name) AS name
FROM reviewers
INNER JOIN reviews 
ON reviewers.id = reviews.reviewer_id
INNER JOIM series
ON series.id = reviews.series_id
  order by title;

--Output

-- +----------------------+--------+----------------+
-- | title                | rating | name           |
-- +----------------------+--------+----------------+
-- | Archer               |    8.0 | ThomasStoneman |
-- | Archer               |    7.5 | WyattSkaggs    |
-- | Archer               |    8.5 | KimbraMasters  |
-- | Archer               |    7.7 | DomingoCortes  |
-- | Archer               |    8.9 | ColtSteele     |
-- | Arrested Development |    8.1 | ThomasStoneman |
-- | Arrested Development |    6.0 | DomingoCortes  |
-- | Arrested Development |    8.0 | KimbraMasters  |
-- | Arrested Development |    8.4 | PinkiePetit    |
-- | Arrested Development |    9.9 | ColtSteele     |
-- | Bob's Burgers        |    7.0 | ThomasStoneman |
-- | Bob's Burgers        |    7.5 | PinkiePetit    |
-- | Bob's Burgers        |    8.0 | DomingoCortes  |
-- | Bob's Burgers        |    7.1 | KimbraMasters  |
-- | Bob's Burgers        |    8.0 | ColtSteele     |
-- | Bojack Horseman      |    7.5 | ThomasStoneman |
-- | Bojack Horseman      |    7.8 | KimbraMasters  |
-- | Bojack Horseman      |    8.3 | DomingoCortes  |
-- | Bojack Horseman      |    7.6 | WyattSkaggs    |
-- | Bojack Horseman      |    8.5 | ColtSteele     |
-- | Breaking Bad         |    9.5 | ThomasStoneman |
-- | Breaking Bad         |    9.0 | KimbraMasters  |
-- | Breaking Bad         |    9.1 | DomingoCortes  |
-- | Breaking Bad         |    9.3 | WyattSkaggs    |
-- | Breaking Bad         |    9.9 | ColtSteele     |
-- | Curb Your Enthusiasm |    6.5 | WyattSkaggs    |
-- | Curb Your Enthusiasm |    7.8 | KimbraMasters  |
-- | Curb Your Enthusiasm |    8.8 | DomingoCortes  |
-- | Curb Your Enthusiasm |    8.4 | WyattSkaggs    |
-- | Curb Your Enthusiasm |    9.1 | ColtSteele     |
-- | Fargo                |    9.1 | WyattSkaggs    |
-- | Fargo                |    9.7 | ColtSteele     |
-- | Freaks and Geeks     |    8.5 | DomingoCortes  |
-- | Freaks and Geeks     |    7.8 | WyattSkaggs    |
-- | Freaks and Geeks     |    8.8 | PinkiePetit    |
-- | Freaks and Geeks     |    9.3 | ColtSteele     |
-- | General Hospital     |    5.5 | WyattSkaggs    |
-- | General Hospital     |    6.8 | KimbraMasters  |
-- | General Hospital     |    5.8 | DomingoCortes  |
-- | General Hospital     |    4.3 | PinkiePetit    |
-- | General Hospital     |    4.5 | ColtSteele     |
-- | Halt and Catch Fire  |    9.9 | ColtSteele     |
-- | Seinfeld             |    8.0 | KimbraMasters  |
-- | Seinfeld             |    7.2 | DomingoCortes  |
-- | Stranger Things      |    8.5 | WyattSkaggs    |
-- | Stranger Things      |    8.9 | KimbraMasters  |
-- | Stranger Things      |    8.9 | DomingoCortes  |
-- +----------------------+--------+----------------+
