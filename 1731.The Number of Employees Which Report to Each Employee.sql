SELECT e.employee_id, e.name, count(em.reports_to) AS reports_count, ROUND(avg(em.age*1.00),0) AS average_age
FROM Employees e
JOIN Employees em ON e.employee_id = em.reports_to
WHERE em.reports_to IS NOT NULL
GROUP BY e.employee_id, e.name
ORDER BY employee_id