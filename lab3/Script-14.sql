--Показать список BusinessEntityID, которые содержатся в таблице Sales.SalesPerson, но не содержатся в таблице Sales.Store.
select 
	sp."BusinessEntityID" 
from 
	"Sales"."SalesPerson" sp 
except 
select
	s."BusinessEntityID"
from "Sales"."Store" s 
