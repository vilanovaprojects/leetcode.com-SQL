/* Write your T-SQL query statement below */

SELECT a.machine_id, ROUND(AVG(a2.timestamp - a.timestamp),3) AS processing_time
FROM Activity a, Activity a2
WHERE a.machine_id = a2.machine_id
AND a.process_id = a2.process_id
AND a.activity_type = 'start'
AND a2.activity_type = 'end'
GROUP BY a.machine_id