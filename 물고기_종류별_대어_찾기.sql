select a.ID , b.FISH_NAME , a.LENGTH
from FISH_INFO as a
JOIN FISH_NAME_INFO as b
on a.FISH_TYPE=b.FISH_TYPE
where (a.FISH_TYPE, a.LENGTH) in (select FISH_TYPE, MAX(LENGTH)
                                 from FISH_INFO
                                 group by FISH_TYPE)
order by a.ID;




# 매우 어려웠다.. 방법은 많지만 where절 조건을 활용!