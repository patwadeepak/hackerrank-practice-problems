# Author: Deepak Kumar
select ceil(avg(salary)-avg(cast(replace(cast(salary as char), "0","") as unsigned))) 
from employees;