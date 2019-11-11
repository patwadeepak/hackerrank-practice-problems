# Author: Deepak Kumar
select N, case
when N in (select distinct b1.N
           from BST b1
           join BST b2
           where b1.N=b2.P and b1.P is not NULL) 
           then 'Inner'
when P is NULL then 'Root'
when N in (select distinct b1.N
             from BST b1
             join BST b2
             where b1.N != b2.P and b1.P is not NULL) 
             then 'Leaf'
end
from BST
order by N asc;