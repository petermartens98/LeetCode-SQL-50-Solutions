SELECT e1.name
FROM Employee e1
JOIN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(id) >= 5
) e2
ON e1.id = e2.managerId;
