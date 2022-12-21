CREATE TABLE EMPLOYEE (
eid int,
ename varchar2(20),
gender varchar2(5) check (gender in('M','F','Male','Female')), 
email varchar2(25) check (email like '%@%'),
join_date varchar2(20) , 
PRIMARY KEY(eid));

CREATE TABLE SALARY(
sid int, 
basic int,
allowance int, 
PRIMARY KEY(sid)); 

CREATE TABLE EMPLOYEE_SALARY(
eid int, 
sid int,
FOREIGN KEY(eid) REFERENCES EMPLOYEE(eid), 
FOREIGN KEY(sid) REFERENCES SALARY(sid));

CREATE TABLE LEAVE(
lid int,
eid int,
l_month varchar2(15), 
l_day int,
PRIMARY KEY(lid));

CREATE TABLE TRANSECTION (
tid int,
eid int,
ammount int,
t_date date,
s_month varchar2(15), 
PRIMARY KEY(tid),
FOREIGN KEY(eid) REFERENCES EMPLOYEE(eid));

CREATE TABLE FUND (
fid int,
fund_amnt int, 
PRIMARY KEY(fid));

CREATE TABLE FUND_Audit (
amnt_new int, 
amnt_old int,
Update_date varchar2(30));

CREATE TABLE EMPLOYEE_SALARY_Audit(
new_sid int, 
old_sid int,
Changing_date varchar2(30));
