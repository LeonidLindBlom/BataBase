--Показать список складов (LocationID), на которых содержатся несколько продуктов (ProductID), из таблицы Production.ProductInventory, 
--используя SELF JOIN.
select distinct pi1."LocationID"
from
	"Production"."ProductInventory" pi1
	inner join "Production"."ProductInventory" pi2 
	on pi1."LocationID" = pi2."LocationID"
	where pi1."ProductID" <>pi2."ProductID"
	 

