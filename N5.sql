--Показать ID (ProductID), название (Name) и цвет (Color) товаров из таблицы Production.Product, содержащих в названии слово 'Chainring' (звездочка).
select "ProductID" 
		, "Name" 
		, "Color" 
from "Production"."Product"
where "Name" ~ 'Chainring';