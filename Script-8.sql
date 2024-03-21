--Показать список продуктов (поле Name), в котором указано, есть ли у продукта название модели или нет, из таблиц 
--Production.ProductionModel, Production.Product, используя LEFT OUTER JOIN.
select
	p."Name"
  , pm."Name" 
from 
	"Production"."Product" p 
	left outer join "Production"."ProductModel" pm 
	on p."ProductID" = pm."ProductModelID" 