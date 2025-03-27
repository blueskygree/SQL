SELECT CAR_ID , CASE when CAR_ID in (select CAR_ID
                                    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                                    where '2022-10-16' between START_DATE and END_DATE) 
                                    then '대여중'
                                    else '대여 가능' end 'AVAILABILITY'
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
order by CAR_ID desc






#매우 어려움. 다시 풀 것. case문 활용용