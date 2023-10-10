SELECT name FROM  Employee
WHERE id IN 
(SELECT managerID FROM Employee
WHERE id != managerID
GROUP BY managerID
HAVING COUNT(managerID) >= 5)