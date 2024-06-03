select c."ID" 
into table "CarsCopy3"
from "Cars" c 
where c."ID" in (1, 3)
