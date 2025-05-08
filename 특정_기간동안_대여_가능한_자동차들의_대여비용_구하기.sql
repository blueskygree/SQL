select a.CAR_ID, a.CAR_TYPE,
round(a.DAILY_FEE*30*(100-c.DISCOUNT_RATE)/100) as FEE
from CAR_RENTAL_COMPANY_CAR as a
join CAR_RENTAL_COMPANY_DISCOUNT_PLAN as c on a.CAR_TYPE=c.CAR_TYPE
and c.DURATION_TYPE='30일 이상'
where a.CAR_TYPE in ('세단','SUV')
and a.CAR_ID not in (
select CAR_ID
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where END_DATE>='2022-11-01' and START_DATE<'2022-12-01')
having FEE>=500000 and FEE<=2000000
order by FEE desc, a.CAR_TYPE asc, a.CAR_ID desc;




#매우 어려웠던 문제.. fee 구하는 것 이해하기기