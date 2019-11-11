# Author: Deepak Kumar
select case
when (A+B)<=C OR (A+C)<=B OR (B+C)<=A then 'Not A Triangle'
when A != C and (A=B OR C=B) then 'Isosceles'
when A != B and (A=C OR B=C) then 'Isosceles'
when B != C and (A=C OR A=B) then 'Isosceles'
when A = B and B = C then 'Equilateral'
when A != B and B != C and A != C then 'Scalene'
end
from triangles;