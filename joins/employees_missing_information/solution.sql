/* Much Faster */
SELECT e.employee_id FROM Employees e
NATURAL LEFT JOIN Salaries s WHERE s.salary is NULL
UNION
SELECT s.employee_id FROM Salaries s
NATURAL LEFT JOIN Employees e WHERE e.name is NULL
ORDER BY employee_id
/*RElatively Faster Solution*/
SELECT e.employee_id FROM Employees e
LEFT JOIN Salaries s ON e.employee_id=s.employee_id WHERE s.salary is NULL
UNION
SELECT s.employee_id FROM Salaries s
LEFT JOIN Employees e ON e.employee_id=s.employee_id WHERE e.name is NULL
ORDER BY employee_id
/**/
SELECT e.employee_id FROM Employees e
WHERE e.employee_id NOT IN (SELECT s.employee_id FROM Salaries s)
UNION
SELECT s.employee_id FROm Salaries s
WHERE s.employee_id NOT  IN (SELECT e.employee_id FROM Employees e)
ORDER BY employee_id