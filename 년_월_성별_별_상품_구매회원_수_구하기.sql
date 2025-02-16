SELECT DATE_FORMAT(b.SALES_DATE,'%Y') as YEAR, DATE_FORMAT(b.SALES_DATE,'%m') as MONTH,a.GENDER, count(distinct a.USER_ID) as USERS
from USER_INFO as a
join ONLINE_SALE as b
on a.USER_ID = b.USER_ID
where a.GENDER is not null
group by YEAR, MONTH, GENDER
order by YEAR, MONTH, GENDER




#구매한 회원수를 카운트해야 하므로 distinct USER_ID 이어야 한다.