SELECT b.HISTORY_ID, 
round(DAILY_FEE * (DATEDIFF(b.END_DATE,b.START_DATE)+1)
     *(case when DATEDIFF(b.END_DATE,b.START_DATE)+1<7 then 1
            when DATEDIFF(b.END_DATE,b.START_DATE)+1<30 then 0.95
            when DATEDIFF(b.END_DATE,b.START_DATE)+1<90 then 0.92
            else 0.85 end)) as 'FEE'
from CAR_RENTAL_COMPANY_CAR as a
join CAR_RENTAL_COMPANY_RENTAL_HISTORY as b
on a.CAR_ID = b.CAR_ID
join CAR_RENTAL_COMPANY_DISCOUNT_PLAN as c
on a.CAR_TYPE = c.CAR_TYPE
where a.CAR_TYPE = '트럭'
group by HISTORY_ID
order by FEE desc, HISTORY_ID desc




#먼저 CAR_RENTAL_COMPANY_DISCOUNT_PLAN에서 대여 날짜 기준 확인하고 시작하기.