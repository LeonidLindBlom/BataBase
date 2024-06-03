select *
into table "CarsCopy5" 
from "Cars" c;

insert into "CarsCopy5" 
 ("ID"
 , "Brand") values
(2, 'WV');

delete 
from "CarsCopy5" 
where ctid not in 
(select max(ctid) from "CarsCopy5"
group by "CarsCopy5"."ID")
