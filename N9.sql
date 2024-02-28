--Показать ID департамента (DepartmentID), (GroupName) и вид деятельности данного отдела (Name) из таблицы HumanResources.Department и отсортировать строки таблицы в алфавитном порядке вида деятельности (Name).
select "DepartmentID" 
		, "GroupName" 
		, "Name" 
from "HumanResources"."Department" 
order by "Name"