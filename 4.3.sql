-- Вывести ProductId, UnitPrice 3-х товаров с уникальными, минимальным id. Отсортировать по убыванию id.
select distinct "ProductID", "UnitPrice"
from "Purchasing"."PurchaseOrderDetail" pod
where "ProductID" in (
	select distinct "ProductID"
	from "Purchasing"."PurchaseOrderDetail" pod
	order by "ProductID" asc
	limit 3
)
order by "ProductID" desc