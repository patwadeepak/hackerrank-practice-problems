# Author: Deepak Kumar
select months*salary as max_earn, count(*) 
from employee group by max_earn 
order by max_earn desc limit 1;