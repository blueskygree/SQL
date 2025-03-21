set @hour := -1;
SELECT (@hour := @hour+1) as HOUR , (select count(*)
                                    from ANIMAL_OUTS
                                    where HOUR(DATETIME)=@hour) as COUNT
from ANIMAL_OUTS
where @hour<23;




#set함수 이용하기.. 처음보는 유형..