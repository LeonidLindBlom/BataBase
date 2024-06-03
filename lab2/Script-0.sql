--Найти минимальную цену товара (ListPrice) из таблицы Production.Product. Не учитывать нулевую цену.
select 
	min("ListPrice")
from "Production"."Product" p 
where 
	"ListPrice" > 0
