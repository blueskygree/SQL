select i.ITEM_ID, i.ITEM_NAME, i.RARITY
from ITEM_INFO as i
INNER JOIN ITEM_TREE as t
on i.ITEM_ID = t.ITEM_ID
where t.PARENT_ITEM_ID in
(select ITEM_ID
from ITEM_INFO
where RARITY='RARE')
order by ITEM_ID desc;





#다시 풀어볼 것!