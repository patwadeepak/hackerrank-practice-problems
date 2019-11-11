# Author: Deepak Kumar
select c1.NAME
from CITY c1
join COUNTRY c2
where c1.COUNTRYCODE=c2.CODE and c2.CONTINENT='Africa';