# Author: Deepak Kumar
select subq2.hacker_id,
h.name,
subq2.max_score
from (select subq1.hacker_id as hacker_id, sum(subq1.max_score) as max_score from (select hacker_id, max(score) as max_score from Submissions group by hacker_id, challenge_id)subq1
        group by subq1.hacker_id)subq2
join Hackers h
on h.hacker_id = subq2.hacker_id
where subq2.max_score != 0
order by subq2.max_score desc, subq2.hacker_id asc;

# Better solution with only one subquery
select h.hacker_id, h.name, sum(s.max_score) as total
from hackers h
inner join (
    select hacker_id, max(score) max_score
    from submissions
    group by hacker_id, challenge_id
) s
on h.hacker_id = s.hacker_id
group by h.hacker_id, h.name
having total > 0
order by total desc, h.hacker_id;