# Author: Deepak Kumar
select CITY
from STATION
where lcase(left(city,1)) not in ('a','e','i','o','u')
or lcase(right(city,1)) not in ('a','e','i','o','u');

# Using regex
select distinct CITY
from STATION
where CITY not rlike '^[AEIOU].*[aeiou]$';