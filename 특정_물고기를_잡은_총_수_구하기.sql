select count(*) as FISH_COUNT
from FISH_INFO
where FISH_TYPE in
    (select FISH_TYPE
      from FISH_NAME_INFO
      where FISH_NAME='BASS' or FISH_NAME='SNAPPER');






#살짝 어려웠다(하지만 혼자 품품)

select count(*) as FISH_COUNT
from FISH_INFO as a
join FISH_NAME_INFO as b on a.FISH_TYPE=b.FISH_TYPE
where b.FISH_NAME='BASS' or b.FISH_NAME='SNAPPER'

# 쉬운 버전전