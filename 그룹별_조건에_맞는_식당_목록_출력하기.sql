SELECT A.MEMBER_NAME, B.REVIEW_TEXT, DATE_FORMAT(B.REVIEW_DATE,'%Y-%m-%d') as REVIEW_DATE
from MEMBER_PROFILE as A
JOIN REST_REVIEW as B
on A.MEMBER_ID=B.MEMBER_ID
where A.MEMBER_ID=(select MEMBER_ID
               from REST_REVIEW
               group by MEMBER_ID
               order by count(*) desc
               limit 1)
order by B.REVIEW_DATE, B.REVIEW_TEXT








#다시 풀어볼 것.. where절 조인문...