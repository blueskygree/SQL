select CATEGORY, PRICE as MAX_PRICE, PRODUCT_NAME
from FOOD_PRODUCT
where PRICE in (select max(PRICE)
               from FOOD_PRODUCT
               group by CATEGORY)
and (CATEGORY='과자' or CATEGORY='국'or CATEGORY='김치' or CATEGORY='식용유')
order by PRICE desc





# where절 조건 잘 생각해보기 다시 풀어볼 것!