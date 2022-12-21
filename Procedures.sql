ProcedureAddLeaves.spl

create or replace Procedure AddLeave(v_lid in number, v_eid in number,v_l_month in varchar2,v_l_day in number)
is begin
insert into leave values(v_lid,v_eid, v_l_month, v_l_day); commit;
end AddLeave;
/


ProcedureChangeEmpSalary.sql
create or replace Procedure ChangeEmployeeSalary(v_eid in number,v_sid in number)
is Begin
update EMPLOYEE_SALARY set sid=v_sid where eid=v_eid; commit;
EXCEPTION
When no_data_found then DBMS_OUTPUT.PUT_LINE('No Data Found');
When others then
DBMS_OUTPUT.PUT_LINE('Something wrong happened');
end ChangeEmployeeSalary;
/


ProcedureUpdateFund.sql

create or replace Procedure Update_Fund(n1 in number) is
v_fund_amnt fund.fund_amnt %TYPE;
Begin
select fund_amnt into v_fund_amnt from fund where fid=1; v_fund_amnt:= v_fund_amnt-n1;
update FUND set fund_amnt=v_fund_amnt where fid=1; commit;
EXCEPTION
When no_data_found then DBMS_OUTPUT.PUT_LINE('No Data Found');
When others then
DBMS_OUTPUT.PUT_LINE('Something wrong happened');
end Update_Fund;
/
