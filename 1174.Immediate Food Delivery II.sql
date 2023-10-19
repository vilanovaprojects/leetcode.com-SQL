/* Write your T-SQL query statement below */

SELECT Round((100.00*COUNT(CASE WHEN order_date = customer_pref_delivery_date THEN 1 END))/COUNT(customer_id),2) AS immediate_percentage
FROM (SELECT *, RANK() OVER (PARTITION BY customer_id ORDER BY order_date) AS rank FROM Delivery) AS tabla2
WHERE rank = 1
