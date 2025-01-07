SELECT MEMBER_ID,MEMBER_NAME,GENDER,DATE_FORMAT(DATE_OF_BIRTH,"%Y-%m-%d") as DATE_OF_BIRTH 
from MEMBER_PROFILE 
where TLNO is not null 
and month(date_of_birth)=3 
and GENDER='W' 
order by MEMBER_ID;



#DATE_FORMAT(_,"%Y-%m-%d") 대문자 와 소문자 구분!