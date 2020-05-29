Create table Vid1
( Vid_name VARCHAR2(20),
Year_last_named INTEGER ,
year_found  INTEGER 
);


Create table Rasteniya1 (
Rast_id INTEGER,
Vid_name VARCHAR2(20),
Rast_state VARCHAR2(20)
);


Create table Researcher1 (
Researcher1_number INTEGER,
Researcher_name VARCHAR2(20),
Researcher_lastname VARCHAR2(20),
Researcher_status VARCHAR2(20) );

--Drop table Researcher1
CREATE table Helper1 (
Rasteniya_id INTEGER,
Researcher_number INTEGER
);

Alter table Vid1
Add constraint vid1_key primary key (vid_name);
Alter table Rasteniya1
Add constraint Rasteniya1_key primary key (Rast_id);
Alter table Researcher1
Add constraint Researcher1_key primary key (Researcher1_number);
Alter table Helper1
Add constraint Helper1_key primary key (Rasteniya_id, Researcher_number);

Alter table Helper1
Add constraint Helper1_for_key foreign key (Researcher_number) References Researcher1 (Researcher1_number);
Alter table Helper1
Add constraint Helper1_for2_key foreign key (Rasteniya_id) References Rasteniya1 (Rast_id);


Alter table  Rasteniya1
Add constraint Rasteniya1_for2_key foreign key (Vid_name) References Vid1 (Vid_name);






