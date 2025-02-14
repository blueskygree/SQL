SELECT DATE_FORMAT(START_DATE,'%m') as MONTH, CAR_ID, count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where DATE_FORMAT(START_DATE,'%Y-%m') between '2022-08' and '2022-10'
and CAR_ID in (select CAR_ID
              from CAR_RENTAL_COMPANY_RENTAL_HISTORY
              where DATE_FORMAT(START_DATE,'%Y-%m') between '2022-08' and '2022-10'
              group by CAR_ID
              having count(CAR_ID)>=5)
group by MONTH,CAR_ID
having RECORDS>=1
order by MONTH,CAR_ID desc





#어려워 보이지만 사실 거의 다 풀었었다 조금만 더 생각하면 풀 수 있다.