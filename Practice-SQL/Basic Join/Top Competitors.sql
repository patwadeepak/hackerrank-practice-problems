# Author: Deepak Kumar
select h.hacker_id, h.name from
(
    select a.id as id, count(*) as probsolved  from
    (   
        select sub.hacker_id as id, sub.score as score, ch.difficulty_level as diff
        from submissions as sub
        left join challenges as ch
        ON sub.challenge_id = ch.challenge_id
    ) as a
    left join difficulty as d
    on a.diff = d.difficulty_level
    where a.score = d.score
    group by a.id 
    having count(*) > 1
    ) as b
left join hackers as h
on b.id = h.hacker_id
order by b.probsolved desc, b.id asc;