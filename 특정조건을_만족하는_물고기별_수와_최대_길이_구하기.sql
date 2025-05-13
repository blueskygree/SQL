select count(*) as FISH_COUNT,max(a.LENGTH) as MAX_LENGTH, a.FISH_TYPE
from (select FISH_TYPE, case when LENGTH<=10 or LENGTH is null then 10
     else LENGTH end as LENGTH from FISH_INFO)as a
group by a.FISH_TYPE
having avg(a.LENGTH)>=33
order by a.FISH_TYPE



#테이블을 따로 손보는 방법




select count(*) as FISH_COUNT,max(a.LENGTH) as MAX_LENGTH, a.FISH_TYPE
from (select FISH_TYPE, case when LENGTH<=10 or LENGTH is null then 10
     else LENGTH end as LENGTH from FISH_INFO)as a
group by a.FISH_TYPE
having avg(a.LENGTH)>=33
order by a.FISH_TYPE



#IFNULL 이용하는 방법. / IFNULL(칼럼,값) 하면 칼럼값이 null이면 값으로 대채한다.