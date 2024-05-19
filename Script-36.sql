select *
into table "CarsCopy"
from "CarSharing".public."Cars" c 

select c."ID"
into table "CarsCopy2"
from "Cars" c 