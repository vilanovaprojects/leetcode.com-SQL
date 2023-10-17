/* Write your T-SQL query statement below */

SELECT x, y, z, CASE WHEN (x + y <= z) OR (x + z <= y) OR (z + y <= x) THEN 'No' ELSE 'Yes' END AS triangle
FROM Triangle