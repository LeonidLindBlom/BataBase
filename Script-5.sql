--Изменить запрос п.5 использовать CUBE. Отделить строки, созданные с помощью агрегатных функций от строк из фактической таблицы.

select 
	"BusinessEntityID" 
   , "LastReceiptDate" 
   , max("LastReceiptCost") as "MaxLastReceiptCost"
   , sum("LastReceiptCost") as "TotalCost"
   , grouping("BusinessEntityID", "LastReceiptDate") 
from
	"Purchasing"."ProductVendor" pv 
group by cube("LastReceiptDate", "BusinessEntityID")
