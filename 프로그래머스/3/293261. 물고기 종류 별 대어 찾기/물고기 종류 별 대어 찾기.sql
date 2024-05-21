-- 코드를 작성해주세요
SELECT fi.ID, fni.FISH_NAME, fi.LENGTH
FROM FISH_INFO fi,  FISH_NAME_INFO fni
WHERE fi.FISH_TYPE = fni.FISH_TYPE
    AND (fi.FISH_TYPE, fi.LENGTH) IN (SELECT b.FISH_TYPE, MAX(a.LENGTH)
FROM FISH_INFO a, FISH_NAME_INFO b
WHERE a.FISH_TYPE = b.FISH_TYPE
GROUP BY b.FISH_TYPE)

