--Показать список продуктов (ProductID), которые содержатся на нескольких складах (LocationID), из таблицыProduction.ProductInventory,
--используя SELF JOIN
select distinct pi1."ProductID"
from
	"Production"."ProductInventory" pi1
	inner join "Production"."ProductInventory" pi2 
	on pi1."ProductID" = pi2."ProductID" 
	 where pi1."LocationID" <> pi2."LocationID"
