select count(*) as FISH_COUNT
from FISH_INFO
where FISH_TYPE in
    (select FISH_TYPE
      from FISH_NAME_INFO
      where FISH_NAME='BASS' or FISH_NAME='SNAPPER');






#살짝 어려웠다(하지만 혼자 품품)