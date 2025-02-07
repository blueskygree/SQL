SELECT i.ANIMAL_ID, i.ANIMAL_TYPE, i.NAME
from ANIMAL_INS as i
JOIN ANIMAL_OUTS as o
on i.ANIMAL_ID = o.ANIMAL_ID
where i.SEX_UPON_INTAKE like 'Intact%'
      and (o.SEX_UPON_OUTCOME like 'Neutered%' or o.SEX_UPON_OUTCOME like 'Spayed%')
order by i.ANIMAL_ID;




# 괄호로 묶어서 제대로 분리해줘야 한다.