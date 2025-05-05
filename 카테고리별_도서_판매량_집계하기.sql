SELECT a.CATEGORY, sum(SALES) as TOTAL_SALES
from BOOK as a
join BOOK_SALES as b
on a.BOOK_ID = b.BOOK_ID
where DATE_FORMAT(b.SALES_DATE,'%Y-%m')='2022-01' 
group by a.CATEGORY
order by a.CATEGORY