/* Write your T-SQL query statement below */

/*select w.id as Id
from Weather w, Weather w2
where w2.recordDate = DATEADD(day, -1, w.recordDate) 
and w.temperature > w2.temperature*/

SELECT w.id FROM Weather w, Weather w2
WHERE DATEDIFF(DAY, w.recordDate, w2.recordDate) = -1
AND w.temperature > w2.temperature
