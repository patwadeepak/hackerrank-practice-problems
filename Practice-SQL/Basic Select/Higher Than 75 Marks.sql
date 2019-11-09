# Author: Deepak Kumar
select Name
from STUDENTS
where Marks > 75
order by lcase(right(Name, 3)) asc, ID asc;