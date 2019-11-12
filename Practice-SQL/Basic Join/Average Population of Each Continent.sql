# Author: Deepak Kumar
select c1.CONTINENT,
floor(avg(c2.POPULATION))
from COUNTRY c1
join CITY c2
where c1.CODE=c2.COUNTRYCODE
group by c1.CONTINENT;