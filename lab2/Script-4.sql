--Вывести BusinessEntityID, LastReceiptDate и максимальное значение LastReceiptCost для BusinessEntityID с разными LastReceiptDate, 
--предусмотреть вывод общей суммы для всех LastReceiptCost у различных BusinessEntityID из таблицы Purchasing.ProductVendor. 
--(Использовать ROOLUP).
select 
	"BusinessEntityID" 
   , "LastReceiptDate" 
   , max("LastReceiptCost") as "MaxLastReceiptCost"
   , sum("LastReceiptCost") as "TotalCost" 
from
	"Purchasing"."ProductVendor" pv 
group by rollup("LastReceiptDate", "BusinessEntityID")
