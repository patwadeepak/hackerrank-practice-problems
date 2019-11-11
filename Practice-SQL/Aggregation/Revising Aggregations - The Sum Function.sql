# Author: Deepak Kumar
select sum(population)
from city
where lcase(district) = 'california';