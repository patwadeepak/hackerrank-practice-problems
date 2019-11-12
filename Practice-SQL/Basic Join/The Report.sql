# Author: Deepak Kumar
select 
       case 
            when g.Grade < 8 then NULL else s.Name end,
       g.Grade,
       s.Marks
from Students s
join Grades g
on s.Marks >= g.Min_Mark and s.Marks <= g.Max_Mark
order by g.Grade desc, s.Name asc;