# Author: Deepak Kumar
select CITY, length(CITY)
from STATION
where length(CITY) = (select min(length(CITY))
                             from station)
order by CITY asc
limit 1;

select CITY, length(CITY)
from STATION
where length(CITY) = (select max(length(CITY))
                             from station)
order by CITY asc
limit 1;