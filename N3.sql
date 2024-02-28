--Показать поля ProductID, BusinessEntityID, AverageLeadTime, StandardPrice из таблицы Purchasing.ProductVendor, для товаров, имеющих цену продажи (поле не пустое) при последней покупке (LastReceiptCost).
select 	"ProductID" 
		, "BusinessEntityID" 
		, "AverageLeadTime" 
		, "StandardPrice" 
from "Purchasing"."ProductVendor" 
where "LastReceiptCost" is not null 