SELECT s.user_id, ROUND((CASE WHEN c1.count1 != 0 OR c2.count2 != 0 THEN (c1.count1/c2.count2) ELSE 0 END),2) as confirmation_rate
FROM Signups s
LEFT OUTER JOIN
(SELECT user_id, COUNT(*) as count1 FROM Confirmations
WHERE action = 'confirmed' GROUP BY user_id) c1 ON s.user_id = c1.user_id
LEFT OUTER JOIN
(SELECT user_id, COUNT(*) as count2 FROM Confirmations
GROUP BY user_id) c2 ON c1.user_id = c2.user_id