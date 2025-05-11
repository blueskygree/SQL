select C.ID
from ECOLI_DATA as A
INNER JOIN ECOLI_DATA as B
on A.ID=B.PARENT_ID
INNER JOIN ECOLI_DATA as C
on B.ID=C.PARENT_ID
where A.PARENT_ID is null
order by C.ID;




#3중 이너 조인 다시 풀어볼 것!(그래프 그려볼 것..)


select a.ID
from ECOLI_DATA as a
join ECOLI_DATA as b on a.PARENT_ID = b.ID
join ECOLI_DATA as c on b.PARENT_ID = c.ID
where c.PARENT_ID is null
order by ID

#다른 풀이이