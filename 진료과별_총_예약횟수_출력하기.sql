SELECT MCDP_CD as 진료과코드 , count(*) as 5월예약건수
from APPOINTMENT
where DATE_FORMAT(APNT_YMD,'%Y-%m')='2022-05'
group by MCDP_CD
order by 5월예약건수,MCDP_CD