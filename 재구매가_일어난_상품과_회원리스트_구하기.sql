SELECT USER_ID, PRODUCT_ID
from ONLINE_SALE
group by USER_ID, PRODUCT_ID
having count(*)>=2
order by USER_ID , PRODUCT_ID desc;


# ***** 어려웠던 문제