--Ограничить результирующий набор, полученный в п.8.
select 
	sp."BusinessEntityID" 
from 
	"Sales"."SalesPerson" sp 
except 
select
	s."BusinessEntityID"
from "Sales"."Store" s
order by "BusinessEntityID" 
limit 16
