# Author: Deepak Kumar
select w.id, wp.age, t.coins, t.`power` as pow
from (select code, power, min(coins_needed) as coins
      from wands
      group by code, power) as t
join wands as w on t.code = w.code and t.`power` = w.`power` and t.coins = w.coins_needed
join wands_property as wp on t.code = wp.code
where wp.is_evil = 0
order by pow desc, wp.age desc;