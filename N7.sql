--Показать поля PersonType, NameStyle, Title, FirstName, MiddleName, LastName из таблицы Person.Person. Неизвестные значения поля Title заменить на 'Dear' (уважаемый). Названия полей оставить без изменений.
select "PersonType"
		, "NameStyle" 
		, COALESCE ("Title", 'Dear') AS "Title*"
		, "FirstName" 
		, "MiddleName" 
		, "LastName" 
from "Person"."Person" 