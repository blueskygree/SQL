select a.ITEM_ID, a.ITEM_NAME, a.RARITY
from ITEM_INFO as a
join ITEM_TREE as b on a.ITEM_ID=b.ITEM_ID
where a.ITEM_ID not in (select PARENT_ITEM_ID
                     from ITEM_TREE
                     where PARENT_ITEM_ID is not null)
order by ITEM_ID desc