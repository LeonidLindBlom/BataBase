-- Для каждого Product вывести отклонение от среднего ListPrice
select "Name", "ListPrice" - avgPrice as dif
from(
	select avg("ListPrice") as avgPrice
	from "Production"."Product" p2 
)
join (
	select "Name", "ListPrice"
	from "Production"."Product" p 
) on true
order by "Name", dif
