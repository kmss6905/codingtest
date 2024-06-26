-- 코드를 작성해주세요
SELECT 
    ITEM_ID,
    ITEM_NAME,
    RARITY
FROM ITEM_INFO
WHERE ITEM_ID NOT IN (
    SELECT DISTINCT(ii.ITEM_ID)
    FROM ITEM_INFO ii
    JOIN ITEM_TREE it
    WHERE ii.ITEM_ID = it.PARENT_ITEM_ID
)
ORDER BY ITEM_ID DESC;
