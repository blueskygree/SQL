SELECT USER_ID, NICKNAME, concat(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as 전체주소,
concat(SUBSTRING(TLNO,1,3),'-',SUBSTRING(TLNO,4,4),'-',SUBSTRING(TLNO,8)) as 전화번호
from USED_GOODS_USER
where USER_ID in (select WRITER_ID
                 from USED_GOODS_BOARD
                 group by WRITER_ID
                 having count(WRITER_ID)>=3
                )
order by USER_ID desc





#어려운 문제 아니지만 전화번호 만드는거 주의 concat과 substring을 활용해야..
#substr 사용법: substr(_____,m,n) ____문자열에서 m부터 시작해서 n개 추출출