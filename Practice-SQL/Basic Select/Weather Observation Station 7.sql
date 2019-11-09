# Author: Deepak Kumar
select distinct CITY
from STATION
where lcase(right(CITY,1)) in ('a','e','i','o','u')
and lcase(left(CITY,1)) in ('a','e','i','o','u');

# Using regex
select distinct city
from station
where city rlike '^[AEIOU].*[aeiou]$';