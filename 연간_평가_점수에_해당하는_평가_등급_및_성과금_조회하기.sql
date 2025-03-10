select b.EMP_NO, b.EMP_NAME, case when AVG(c.SCORE)>=96 then 'S'
                                  when AVG(c.SCORE)>=90 then 'A'
                                  when AVG(c.SCORE)>=80 then 'B'
                                  else 'C' end as 'GRADE', 
                            case when AVG(c.SCORE)>=96 then b.SAL*0.2
                                 when AVG(c.SCORE)>=90 then b.SAL*0.15
                                 when AVG(c.SCORE)>=80 then b.SAL*0.1
                                 else 0 end as 'BONUS'
from HR_EMPLOYEES as b
join HR_GRADE as c
on b.EMP_NO = c.EMP_NO
group by b.EMP_NO
order by b.EMP_NO





#그냥 단순 case문 노가다 문제 세부조건 확인 잘 할 것.