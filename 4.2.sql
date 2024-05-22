--Ранжирование товаров по цене списка в порядке убывания цены
SELECT
  p."ProductID",
  p."Name",
  p."ListPrice",
  (
    SELECT COUNT(*)
    FROM "Production"."Product" p2
    WHERE p2."ListPrice" > p."ListPrice"
  ) AS ProductRank
FROM
  "Production"."Product" p
ORDER BY p."ListPrice" DESC