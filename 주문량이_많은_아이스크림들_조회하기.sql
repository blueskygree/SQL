select A.FLAVOR
from FIRST_HALF as A
JOIN (select FLAVOR, sum(TOTAL_ORDER) as TOTAL_ORDER
     from JULY
     group by FLAVOR) as B
on A.Flavor=B.Flavor
order by A.TOTAL_ORDER+B.TOTAL_ORDER desc
limit 3;