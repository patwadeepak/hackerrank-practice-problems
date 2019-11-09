# Author: Deepak Kumar
select distinct CITY 
from STATION
where lcase(left(city,1)) not in ('a','e','i','o','u')
and lcase(right(city,1)) not in ('a','e','i','o','u');

# Using regex
select distinct CITY
from STATION
where CITY rlike '^[^AEIOU].*[^aeiou]$';