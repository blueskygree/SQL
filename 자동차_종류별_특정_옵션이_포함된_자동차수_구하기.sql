SELECT CAR_TYPE, count(*) as CARS
from CAR_RENTAL_COMPANY_CAR
where OPTIONS like '%가죽시트%' or OPTIONS like '%열선시트%' or OPTIONS like '%통풍시트%'
group by CAR_TYPE
order by CAR_TYPE






# 잘 생각하면 풀 수 있는 문제.. 알고 있는 문법 활용할 것.