SELECT PT_NAME, PT_NO, GEND_CD, AGE,COALESCE(TLNO,'NONE') as TLNO
from PATIENT
where AGE<=12 and GEND_CD='W'
order by AGE desc, PT_NAME;




# COALESCE(TLNO,'NONE') TLNO가 null인 경우 'NONE'을 출력한다. 

조건에 따라서 두 칼럼을 합치는 기능을 하는데, 이런 기능을 활용해서 NULL 값을 특정 값으로 변환하는 데 사용하기도 한다.