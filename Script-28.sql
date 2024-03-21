alter table "Cars"
add constraint "CH_Cars_ID"
check("ID">0)

alter table "Cars"
add constraint "CH_Cars_CarNumber"
check("CarNumber">0)

alter table "Tenants"
add constraint "CH_Tenants_ID"
check("ID">0)	

alter table "Cars"
add constraint "CH_Cars_Prise"
check("Prise">0)
