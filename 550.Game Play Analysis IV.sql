/* Write your T-SQL query statement below */

SELECT ROUND(COUNT(DISTINCT t.player_id)*1.00/ (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM(SELECT player_id, MIN(event_date) AS dia1,
    DATEADD(DAY, 1, MIN(event_date)) AS dia2
    FROM Activity
    GROUP BY player_id) t
INNER JOIN Activity a ON a.player_id = t.player_id AND a.event_date = t.dia2
