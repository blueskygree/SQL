SELECT i.REST_ID,i.REST_NAME,i.FOOD_TYPE,i.FAVORITES,i.ADDRESS,ROUND(AVG(r.REVIEW_SCORE),2) as SCORE
FROM REST_INFO as i 
JOIN REST_REVIEW as r ON i.REST_ID= r.REST_ID
WHERE i.ADDRESS like '서울%'
GROUP BY i.REST_ID,i.REST_NAME,i.FOOD_TYPE,i.FAVORITES,i.ADDRESS
ORDER BY SCORE desc, i.FAVORITES desc;



#집계함수 사용할때는 groupby 꼭 작성하기. join 관계 확인하기!