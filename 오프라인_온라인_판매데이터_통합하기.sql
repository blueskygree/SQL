SELECT DATE_FORMAT(SALES_DATE,'%Y-%m-%d') as SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
from (select SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
     from ONLINE_SALE
     where SALES_DATE between '2022-03-01' and '2022-03-31'
     
     union all
     
     select SALES_DATE, PRODUCT_ID, NULL as USER_ID, SALES_AMOUNT
     from OFFLINE_SALE
     where SALES_DATE between '2022-03-01' and '2022-03-31'
     ) as combined_sales
order by SALES_DATE, PRODUCT_ID, USER_ID;




#union all 사용법 union all 사용시 별칭 꼭 삽입
#null 넣는것
#***** 매우 어렵다