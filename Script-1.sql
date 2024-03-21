--Найти средний вес (Weight) из таблицы Production.Product, не учитывать пустые значения.
select 
	avg("Weight")
from "Production"."Product" p 
where 
	"Weight" is not null