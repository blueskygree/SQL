SELECT b.USER_ID, b.NICKNAME, sum(a.PRICE) as TOTAL_SALES
from USED_GOODS_BOARD as a
join USED_GOODS_USER as b
on a.WRITER_ID = b.USER_ID
where STATUS='DONE'
group by b.USER_ID
having TOTAL_SALES >= 700000
order by TOTAL_SALES




#having절 잘 사용할것. total_sales는 group by로 묶인 집계된 값이므로 where절에서는 사용불가