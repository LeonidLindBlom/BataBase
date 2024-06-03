alter table "Cars"
add constraint "FK_Tenants_Cars"
foreign key ("ID")
references "Tenants" ("ID");
