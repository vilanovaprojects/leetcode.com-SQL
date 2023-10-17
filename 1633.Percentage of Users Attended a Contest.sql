/* Write your T-SQL query statement below */


SELECT contest_id, ROUND(COUNT(r.user_id)*100.00/(SELECT COUNT(user_id) FROM Users)*1.00,2) AS percentage
FROM Register r
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;