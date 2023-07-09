SELECT t1.id 
FROM Weather t1
JOIN Weather t2 ON t1.recordDate = DATEADD(day, 1, t2.recordDate)
WHERE t1.temperature > t2.temperature;
