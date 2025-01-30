select ID, EMAIL, FIRST_NAME, LAST_NAME
from DEVELOPERS
where SKILL_CODE & (select sum(CODE) from SKILLCODES where CATEGORY='Front End')
order by ID;





# 비트 연산... 다시 풀 것. 
# https://enayoiii.tistory.com/5 참고 사이트트