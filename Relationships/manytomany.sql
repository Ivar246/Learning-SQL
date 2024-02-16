use tv_review_app;
select * from reviewers;

-- challenge 3
 select  
	first_name,
    last_name, 
    rating
 from reviewers
 join reviews 
 on 
 reviewers.id = reviews.reviewer_id;
 
 -- challenge 4 
 select  first_name, last_name, rating from reviewers
 join reviews 
 on 
 reviewers.id = reviews.reviewer_id;
 
 -- challenge 4
 select  * from reviews
 join reviewers 
 on 
 reviewers.id = reviews.reviewer_id;
 
 
 -- challenge 5 unreviewed series
 select * from series;
 select title, rating from series
 left join reviews
 on 
 series.id = reviews.series_id
 where rating is null;
 
 
 
 -- challenge 6
  select genre, round(avg(rating),1) as avg_rating from series
 join reviews
 on 
 series.id = reviews.series_id
 group by genre order by avg_rating
 ;
 
 
 -- challenge 7 reivewer stats
 select 
 first_name,
 last_name,
 count(rating) as count,
 ifnull(min(rating), 0) as min,
 ifnull(max(rating), 0) as max,
 ifnull(avg(rating), 0) as average,
 case
	when count(rating) >0 then "ACTIVE"
    else "INACTIVE"
end as Statuss
 from reviewers
 left join reviews
 on reviewers.id = reviews.reviewer_id
 group by reviewers.id;


-- optional 
  select 
 first_name,
 last_name,
 count(rating) as count,
 ifnull(min(rating), 0) as min,
 ifnull(max(rating), 0) as max,
 ifnull(avg(rating), 0) as average,
if(count(rating)>0, "ACTIVE", "INACTIVE") AS STATUS
 from reviewers
 left join reviews
 on reviewers.id = reviews.reviewer_id
 group by reviewers.id;
 
 
 -- CHALLENGE 8 title, rating, reviewer name
  select 
  title, 
  rating,
 concat( first_name,
  last_name) as name
  from reviewers
  inner join reviews on 
  reviewers.id = reviews.reviewer_id
  inner join series on
  series.id = reviews.series_id
  order by title;