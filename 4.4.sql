-- Для каждого сотрудника выведите его идентификатор, время его приема на работу, а также ту же самую информацию для сотрудника, который был принят на работу сразу после него (время приема в один день - приняты в одно и то же время)
SELECT 
    e1."BusinessEntityID" AS EmployeeID, 
    e1."HireDate", 
    (
        SELECT e2."BusinessEntityID" 
        from "HumanResources"."Employee" e2 
        WHERE e2."HireDate" > e1."HireDate"
        order by e2."HireDate"
        limit 1
    ) AS NextEmployeeID, 
    (
        SELECT e2."HireDate"
        FROM "HumanResources"."Employee" e2 
        WHERE e2."HireDate" > e1."HireDate"
        order by e2."HireDate"
        limit 1
    ) AS NextEmployeeHireDate
FROM "HumanResources"."Employee" e1
ORDER BY e1."HireDate" asc