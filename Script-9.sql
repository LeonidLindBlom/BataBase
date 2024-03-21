--Показать список ID людей (поле BusinessEntityId), в котором указано, работает ли человек в магазине или нет, из таблиц Sales.Store, 
--Person.BusinessEntity, используя RIGHT OUTER JOIN.
select 
	be."BusinessEntityID" 
  , s."Name"  
from 
	"Sales"."Store" s 
	right outer join "Person"."BusinessEntity" be 
	on s."BusinessEntityID" = be."BusinessEntityID" 

	