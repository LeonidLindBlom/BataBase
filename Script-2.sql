--Для каждого пола (Gender) найти суммарное количество часов отпуска из таблицы (поставить фильтр: работник был принят до 2008
--года) HumanResources.Employee, не учитывать пустые значения.
select 
	"Gender"
  ,	sum("VacationHours") as "Total"
from "HumanResources"."Employee" e 
where 
	"Gender" is not null
	and "VacationHours" is not null
	and "HireDate" < '2008-01-01'
group by("Gender")
