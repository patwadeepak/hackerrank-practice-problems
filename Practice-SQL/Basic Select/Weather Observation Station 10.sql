# Author: Deepak Kumar
select distinct CITY
from STATION
where lcase(right(city,1)) not in ('a','e','i','o','u');

# using regex
select distinct CITY
from STATION
where city rlike '[^aeiou]$';