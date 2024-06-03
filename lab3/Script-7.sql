--Показать номера телефонов (PhoneNumber) и поля PersonType, FirstName, LastName из таблиц Person.Person, Person.PersonPhone.
SELECT 
	p."PersonType" 
  , p."FirstName" 
  , p."LastName" 
  , pp."PhoneNumber" 
from 
	"Person"."Person" p 
	inner join "Person"."PersonPhone" pp 
	on p."BusinessEntityID" = pp."BusinessEntityID" 
