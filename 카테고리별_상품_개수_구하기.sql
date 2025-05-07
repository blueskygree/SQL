SELECT SUBSTR(PRODUCT_CODE,1,2) as CATEGORY, count(*) as PRODUCTS
from PRODUCT
group by CATEGORY
order by CATEGORY






#substr 사용법: substr(____,m,n) ____ 문자열에서 m위치부터 n개 추출출