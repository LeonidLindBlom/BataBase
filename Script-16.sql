--Пропустить 15 строк из результирующего набора, полученного в п.9.
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
offset 15