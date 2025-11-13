create table netflix_data.countries_released as
(
select *
from
(
SELECT show_id, country_1 as country FROM netflix_data.countries
union 
SELECT show_id, country_2 as country FROM netflix_data.countries
union 
SELECT show_id, country_3 as country FROM netflix_data.countries
union 
SELECT show_id, country_4 as country FROM netflix_data.countries
union 
SELECT show_id, country_5 as country FROM netflix_data.countries
union 
SELECT show_id, country_6 as country FROM netflix_data.countries
union 
SELECT show_id, country_7 as country FROM netflix_data.countries
union 
SELECT show_id, country_8 as country FROM netflix_data.countries
union 
SELECT show_id, country_9 as country FROM netflix_data.countries
union 
SELECT show_id, country_10 as country FROM netflix_data.countries
union 
SELECT show_id, country_11 as country FROM netflix_data.countries
union
SELECT show_id, country_12 as country FROM netflix_data.countries
 )a
where country IS NOT NULL
) 
;