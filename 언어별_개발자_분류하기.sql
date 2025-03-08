with FRONT as (
select sum(CODE)
from SKILLCODES
where CATEGORY='Front End')

select case when SKILL_CODE & (select * from FRONT) and SKILL_CODE & (select CODE from SKILLCODES where name='python') then 'A'
            when SKILL_CODE & (select CODE from SKILLCODES where name='C#') then 'B'
            when SKILL_CODE & (select * from FRONT) then 'C'
       end as 'GRADE', ID, EMAIL
from DEVELOPERS
having GRADE is not null
order by GRADE, ID





#with 절: 서브쿼리를 만들고 재사용 가능한 공동 테이블 표현식 (쿼리 단순화, 가독성 증가)

WITH ______ AS(
    select ______
    from ______
    where ______
)