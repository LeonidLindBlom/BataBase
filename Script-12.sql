--Показать список продуктов из таблицы Production.Product с таким же цветом как у продукта «ML Road Frame–W – Yellow, 38», 
--используя SELF JOIN.
select distinct p."Name" 
	,p."Color"
from
	"Production"."Product" p 
	inner join "Production"."Product" p2 
	on p."Color" = p2."Color" 
	where p2."Name" like 'ML Road Frame-W - Yellow, 38%'