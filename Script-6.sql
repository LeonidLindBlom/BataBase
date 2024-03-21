--Изменить запрос п.5 использовать GROUPING SETS. Отделить строки, созданные с помощью агрегатных функций от строк из фактической таблицы.
select 
	"BusinessEntityID" 
   , "LastReceiptDate" 
   , max("LastReceiptCost") as "MaxLastReceiptCost"
   , sum("LastReceiptCost") as "TotalCost" 
from
	"Purchasing"."ProductVendor" pv 
group by grouping sets("LastReceiptDate", "BusinessEntityID")