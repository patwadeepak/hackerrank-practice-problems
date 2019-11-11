# Author: Deepak Kumar
select concat(Name,"(",left(Occupation,1),")")
from OCCUPATIONS
order by Name asc;

select concat("There are a total of ", count(*) as cnt," ", lcase(Occupation),"s.")
from OCCUPATIONS
group by Occupation
order by count(*) asc, Occupation asc;