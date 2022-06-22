-- 코드를 입력하세요
SELECT A.name name, A.datetime datetime FROM
(SELECT i.name, i.datetime 
FROM animal_ins i LEFT OUTER JOIN animal_outs o 
ON i.animal_id = o.animal_id
WHERE o.datetime IS NULL
ORDER BY i.datetime)A
WHERE rownum <= 3;