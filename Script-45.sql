create table "SourceTable"
(
 "ID" INT
 , "Brand" VARCHAR(25)
);

create table "TargetTable"
(
 "ID" INT
 , "Brand" VARCHAR(25)
);

insert into "TargetTable" values
 (1, 'Lada')
, (2, 'WV')
, (3, 'Toyota')
, (6, 'Sitroen')
, (7, 'Mersedes');

insert into "SourceTable" values
 (1, 'Lada')
, (2, 'WV')
, (7, 'BMW');

merge into "TargetTable" as Target
using "SourceTable" as Source
 on (Target."ID" = Source."ID")
when matched 
 then update
 set "Brand" = Source."Brand"
when not matched 
 then insert
 values (Source."ID", Source."Brand");


select * from "TargetTable" tt 

select * from "SourceTable" st 

select * from "TargetTable" tt 


