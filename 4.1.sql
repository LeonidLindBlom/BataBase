--Показать товары, которые продались быстрее всех. (Таблица Production.Product). Вывести наименование и время продажи.
SELECT "Name", ("SellEndDate" - "SellStartDate") time
FROM "Production"."Product"
WHERE ("SellEndDate" - "SellStartDate") = (
    SELECT MIN("SellEndDate" - "SellStartDate")
    FROM "Production"."Product"
)

