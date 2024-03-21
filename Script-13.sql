--Показать комбинированный список таблиц Person.AddressType, Person.ContactType по полям ID, Name, ModifiedDate, используя UNION.
select 
	at2."AddressTypeID" 
  , at2."Name" 
  , at2."ModifiedDate" 
from 
	"Person"."AddressType" at2 
union
select 
	ct."ContactTypeID"
  , ct."Name"
  , ct."ModifiedDate"
from	
	"Person"."ContactType" ct 