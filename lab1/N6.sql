--Показать ID (StateProvinceID) и название (Name) регионов или штатов, а также ID страны, на территории которой они располагаются (TerritoryID) из таблицы Person.StateProvince. Показать только регионы из списка ('Alaska', 'Alabama', 'Colorado', 'Georgia', 'Iowa'), используя оператор IN.
select "StateProvinceID" 
		, "Name" 
		, "TerritoryID" 
from "Person"."StateProvince"
where "Name" in ('Alaska', 'Alabama', 'Colorado', 'Georgia', 'Iowa')
