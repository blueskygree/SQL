select round(avg(ifnull(LENGTH,10)),2) as AVERAGE_LENGTH
from FISH_INFO







# ifnull 사용법: ifnull(a,b) a에 null이 있으면 null값을 b로 대체체