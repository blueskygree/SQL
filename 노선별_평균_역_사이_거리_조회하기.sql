select ROUTE,
concat(round(sum(D_BETWEEN_DIST),1),'km') as TOTAL_DISTANCE, 
concat(round(avg(D_BETWEEN_DIST),2),'km') as AVERAGE_DISTANCE
from SUBWAY_DISTANCE
group by ROUTE
order by round(sum(D_BETWEEN_DIST),1) desc





# order by절 주의 평소 같으면 order by TOTAL_DISTANCE 했갰지만 concat으로 'km'가 붙어있으므로 이때는 order by에 TOTAL_DISTANCE에 해당하는 함수를 써줘야함.