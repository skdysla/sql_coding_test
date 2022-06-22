-- 입양 시각 구하기(1)
SELECT TO_CHAR(datetime, 'HH24') as HOUR, count(*) COUNT 
FROM animal_outs
WHERE TO_CHAR(datetime, 'HH24') > 8 and TO_CHAR(datetime, 'HH24') < 20
GROUP BY TO_CHAR(datetime, 'HH24')
ORDER BY TO_CHAR(datetime, 'HH24');