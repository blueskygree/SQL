SELECT i.FLAVOR
from FIRST_HALF as f 
JOIN ICECREAM_INFO as i on f.FLAVOR=i.FLAVOR 
where TOTAL_ORDER>3000 and INGREDIENT_TYPE='fruit_based' 
order by f.TOTAL_ORDER desc;


#조인 확인할 것.