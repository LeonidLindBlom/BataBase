--Вывести пол, где среднее количество часов выходных больше 50 из таблицы HumanResources.Employee.
select 
	"Gender"
   , avg("VacationHours") as "Average"
from 
	"HumanResources.Employee"
group by ("Gender")
having avg("VacationHours") > 50 