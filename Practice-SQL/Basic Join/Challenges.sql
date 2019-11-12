# Author: Deepak Kumar
select c.hacker_id,
       h.name,
       count(*) as total
from Challenges c
join Hackers h
on h.Hacker_id = c.Hacker_id
group by c.hacker_id, h.name
having total in (select c.total from (select a.total as total, count(*) as cnt
                                       from (select count(*) as total 
                                             from Challenges 
                                             group by hacker_id)a 
                                       group by a.total
                                       having cnt = 1)c)
or total in (select max(a.total)
             from (select count(*) as total
                   from Challenges
                   group by hacker_id)a)
order by total desc, c.hacker_id;