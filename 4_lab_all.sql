
-- Done with small developing
create or replace procedure vovik_procedure (researcher_1 IN  NUMBER, rastenie IN Number)
IS 
vovino EXCEPTION;
PRAGMA exception_init( vovino, -20001 );

a NUMBER := 7;
b VARCHAR2(20);
Begin
select rasten_id into a FROM Rasteniya where rasten_id = rastenie; 
select Researcher_number into b FROM Researcher where Researcher_number  = researcher_1; 
--IF a is NULL
--THEN
--RAISE vovino;
--else
--RAISE exception_init;
--END IF;
Delete FROM Rasteniya where rasten_id = rastenie;
DBMS_OUTPUT.PUT_LINE('обрабатываю');
Delete FROM Researcher where Researcher_number  = researcher_1;
EXCEPTION
when vovino OR NO_DATA_FOUND  THEN
DBMS_OUTPUT.PUT_LINE('не буду ничего делать');
DBMS_OUTPUT.PUT_LINE('Дослідника чи рослину не знайдено в базі');
End;
/





--Done
create or replace Trigger vovik
Before Insert on Rasteniya 
for each row -- ?????
declare 
--rast VARCHAR2(20);
--rast := new.Rast_name;
begin
DBMS_OUTPUT.PUT_LINE('обрабатываю');
--select Rasteniya.rast_name into rast FROM  Rasteniya where rasten_id = :new.rasten_id;

INSERT into audit_1 (roslina_name,time_now,user_now) values(:new.rast_name, SYSDATE , USER);

end;
/