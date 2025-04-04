SELECT b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, sum(b.PRICE * s.SALES) as TOTAL_SALES
from BOOK as b
join AUTHOR as a
on b.AUTHOR_ID = a.AUTHOR_ID
join BOOK_SALES as s
on b.BOOK_ID = s.BOOK_ID
where DATE_FORMAT(s.SALES_DATE,'%Y-%m')='2022-01'
group by b.AUTHOR_ID, b.CATEGORY
order by b.AUTHOR_ID,b.CATEGORY desc







#충분히 풀 수 있다 다시 풀어볼 것.