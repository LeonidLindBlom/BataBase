--Ранжирование товаров по цене списка в порядке убывания цены
select
  p."ProductID",
  p."Name",
  p."ListPrice",
  (
    select count(*)
    from "Production"."Product" p2
    where p2."ListPrice" > p."ListPrice"
  ) as ProductRank
from
  "Production"."Product" p
order by p."ListPrice" desc
