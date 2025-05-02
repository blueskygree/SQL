SELECT b.APNT_NO, a.PT_NAME, a.PT_NO, c.MCDP_CD, c.DR_NAME, b.APNT_YMD
from PATIENT as a
join APPOINTMENT as b on a.PT_NO=b.PT_NO
join DOCTOR as c on b.MDDR_ID=c.DR_ID
where (b.APNT_CNCL_YN = 'N' and date_format(b.APNT_YMD,'%Y-%m-%d')='2022-04-13')
order by APNT_YMD