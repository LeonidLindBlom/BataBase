-- Для каждого сотрудника выведите его идентификатор, время его приема на работу, а также ту же самую информацию для сотрудника, который был принят на работу сразу после него (время приема в один день - приняты в одно и то же время)
select 
    e1."BusinessEntityID" as EmployeeID, 
    e1."HireDate", 
    (
        select e2."BusinessEntityID" 
        from "HumanResources"."Employee" e2 
        where e2."HireDate" > e1."HireDate"
        order by e2."HireDate"
        limit 1
    ) as NextEmployeeID, 
    (
        select e2."HireDate"
        from "HumanResources"."Employee" e2 
        where e2."HireDate" > e1."HireDate"
        order by e2."HireDate"
        limit 1
    ) as NextEmployeeHireDate
from "HumanResources"."Employee" e1
order by e1."HireDate" asc
