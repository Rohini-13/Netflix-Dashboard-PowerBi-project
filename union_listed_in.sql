create table netflix_data.netflix_listed_in as
(
select *
from
(
SELECT show_id, listed_in_1 as category FROM netflix_data.`listed in` 
union 
SELECT show_id, listed_in_2 as category FROM netflix_data.`listed in`
union 
SELECT show_id, listed_in_3 as category FROM Netflix_data.`listed in`

 )a
where category IS NOT NULL
)