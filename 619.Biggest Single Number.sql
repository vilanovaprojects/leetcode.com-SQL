/* Write your T-SQL query statement below */

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num NOT IN (SELECT num FROM MyNumbers
GROUP BY num
HAVING COUNT(num) > 1)
