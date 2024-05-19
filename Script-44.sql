alter table "CarsCopy5" 
add "PricePerMinut" int

update "CarsCopy5" 
set "PricePerMinut" = 10
where "ID" in (1)

update "CarsCopy5" 
set "PricePerMinut" = 14
where "ID" in (2, 4)

update "CarsCopy5" 
set "PricePerMinut" = 18
where "ID" in (3, 5)

update "CarsCopy5" 
set "PricePerMinut" = "PricePerMinut" +"PricePerMinut" * 0.15
where "ID" in (2, 4)

select * from "CarsCopy5" cc 