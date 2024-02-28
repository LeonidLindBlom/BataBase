--Показать уникальные названия городов (City) из таблицы Person.Address, у которых известен ("AddressLine2").
select distinct "City" 
from "Person"."Address"
where "AddressLine2" is not null;
