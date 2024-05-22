--Показать товары, которые продались быстрее всех. (Таблица Production.Product). Вывести наименование и время продажи.
select "Name", ("SellEndDate" - "SellStartDate") time
from "Production"."Product"
where ("SellEndDate" - "SellStartDate") = (
    select min("SellEndDate" - "SellStartDate")
    from "Production"."Product"
)

