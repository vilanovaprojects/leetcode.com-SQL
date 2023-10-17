/* Write your T-SQL query statement below */

SELECT p.product_id, ROUND(SUM(p.price * ISNULL(u.units,0))*1.00/ ISNULL(SUM(u.units),1),2) AS average_price
FROM Prices p 
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN CONVERT(DATE, p.start_date) AND CONVERT(DATE, p.end_date)
GROUP BY p.product_id;