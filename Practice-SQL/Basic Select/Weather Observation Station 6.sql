# Author: Deepak Kumar
select CITY
from STATION
where lcase(substring(CITY,1,1)) in ('a','e','i','o','u');