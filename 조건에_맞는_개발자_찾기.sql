select ID, EMAIL, FIRST_NAME, LAST_NAME
from DEVELOPERS 
where SKILL_CODE & (select CODE from SKILLCODES where NAME='Python')
      or SKILL_CODE & (select CODE from SKILLCODES where NAME='C#' )
order by ID;




#꼭 다시 풀기! 이진수 연산 개념 확인하기기