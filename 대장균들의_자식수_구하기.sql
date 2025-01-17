select A.ID, count(B.ID) as CHILD_COUNT
from ECOLI_DATA as A
LEFT JOIN ECOLI_DATA as B
on A.ID=B.PARENT_ID
group by A.ID
order by A.ID;



#다시 풀어볼 것! left join..