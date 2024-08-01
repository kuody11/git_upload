
--練習7
select 地點,序號,氫離子,濁度,餘氯
from
(
    select place as 地點,
    serial_number as 序號,
    hydrogen as 氫離子,
    turbidity as 濁度,
    chlorine as 餘氯
    from WATER1
    where serial_number between 521 and 529
    
    union all
    
    select place as 地點,
    serial_number as 序號,
    hydrogen as 氫離子,
    turbidity as 濁度,
    chlorine as 餘氯
    from WATER1
    where chlorine in (0.77,0.76,0.66)
    and hydrogen=7.8
    and turbidity=0.6
    )
    order by 濁度, 序號 DESC;
    
    --JOIN
    --inner join
    SELECT cut.id, cut.name,emp.emp_nm
    from sql_customer cut
    inner join sql_emp emp on cut. emp= emp.emp_id;
    
    --left join
    select cut.id, cut.name,emp.emp_nm
    from sql_customer cut
    left join sql_emp emp on cut.emp=emp.emp_id;
    
    --p.62 連續兩個left join (未完成)
    select cut.name 
  
  
  --補充四個表格  
    create TABLE "STUDENT"."EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE) , 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"HIRE_DATE" DATE, 
	"JOB_ID" VARCHAR2(10 BYTE), 
	"SALARY" NUMBER(8,2), 
	"COMMISSION_PCT" NUMBER(2,2), 
	"MANAGER_ID" NUMBER(6,0), 
	"DEPARTMENT_ID" NUMBER(4,0))

 CREATE TABLE "STUDENT"."DEPARTMENTS" 
   (	"DEPARTMENT_ID" NUMBER(4,0), 
	"DEPARTMENT_NAME" VARCHAR2(30 BYTE) , 
	"MANAGER_ID" NUMBER(6,0), 
	"LOCATION_ID" NUMBER(4,0));

CREATE TABLE "STUDENT"."JOBS" 
   (	"JOB_ID" VARCHAR2(10 BYTE), 
	"JOB_TITLE" VARCHAR2(35 BYTE), 
	"MIN_SALARY" NUMBER(6,0), 
	"MAX_SALARY" NUMBER(6,0)
   ) ;

CREATE TABLE "STUDENT"."LOCATIONS" 
   (	"LOCATION_ID" NUMBER(4,0), 
	"STREET_ADDRESS" VARCHAR2(40 BYTE), 
	"POSTAL_CODE" VARCHAR2(12 BYTE), 
	"CITY" VARCHAR2(30 BYTE) , 
	"STATE_PROVINCE" VARCHAR2(25 BYTE), 
	"COUNTRY_ID" CHAR(2 BYTE));
    
    --group by
    
    select department_id, count(employee_id) as CNT
    from employees
    group by department_id
    
     --having 
    select department_id, count(employee_id) as CNT
    from employees
    where department_id is not null
    group by department_id
    having count(employee_id) >0
    order by CNT desc;
    
    --合併練習 (?)
    select distinct DD.department_name,EE.department_ID,count(EE.employee_id)
    from employees EE
    left join departments DD on EE.department_id=DD.department_ID
    group by department_id
    
    select DD.department_name, distinct EE.department_id
    from employees EE, departments DD
    where EE.department_id=DD.department_id
    
    select distinct EE.department_id, DD.department_name, count (EE.employee_id)
    from employees EE,departments DD
    where EE.department_id=DD.department_id
    group by EE.department_id ,DD.department_name;
    
    --max min
    select max(employee_id)
    from employees 
    where department_id='80';
    
    --count
    select count(*)as CNT
    from employees
    where department_id='80';
    
    --sum
    select avg(money) as avg
    from sql_order
    where order_date='01-JAN-95';
    
    --練習9-1
    select place,
    count(serial_number),
    max(chlorine),
    min(chlorine),
    sum(hydrogen),
    avg(turbidity)
    from sql_taoyuan_water
    where place in ('T40','T44','T16');
    group by  place;
    
    
    --練習9-2
    select 
    RE.township as 行政地區,
    count (chlorine) as 地區,
    avg (turbidity) as 濁度平均
    from sql_taoyuan_regions RE
    left join sql_taoyuan_water TW on RE.serial=TW.place
    group by RE.township
    having avg (turbidity)>0.7;
    
    --
    

        
    
    --建立新表格
create table sql_emp_his as select* from sql_emp;
    truncate table sql_emp_his;
    
    --insert
insert into sql_emp_his(emp_nm, dep, emp_id)
   values ('王O名','系統開發部','0012345');
   
   insert into sql_emp_his
   select emp_id, emp_nm,id,null,'資訊板塊'
   from sql_emp
   where emp_id='00054321';
   --delete
   delete from sql_emp_his
   where emp_id='00054321';
   
   --update
   update sql_emp_his
   set dep='資訊板塊'
   where emp_id='0054321'
   
   --練習10
   insert into sql_emp_his
   values ('r1026','郭O興','55',null,'資訊部');
   
   update sql_emp_his
   set tel= 0003
   where emp_id='r1026';
   
   delete from sql_emp_his
   where emp_id='r1026';
   
   --練習子查詢(ppt5 p.10)
   
   select last_name, job_id,salary
   from employees
   where job_id= 
   (                       -->先搜出和員工141一樣的工作id (是ST_clerk)
   select job_id  
   from employees
   where employee_id='141')
   and salary >
   (                       -->再搜出比員工143還高的薪水
   select salary 
   from employees
   where employee_id='143')
   
   --練習子查詢(ppt5 p.11) 員工最低薪資的資訊
   select last_name,job_id,salary
   from employees
   where salary=
   (
   select min(salary) 
   from employees);
   
    --練習子查詢(ppt5 p.12) 最低薪資高於部門50的最低薪資的所有部門
    select department_id,min(salary)
    from employees
    group by department_id          -->最低薪資的所有部門
    having min(salary)>
    (   
        select min(salary)          -->部門50的最低薪資
        from employees
        where department_id='50')
--練習子查詢(ppt5 p.15)範例找出各部門中最低薪資的員工。
select employee_id, last_name, salary
from employees
where salary 
in (
    select min(salary)
    from employees
    group by department_id);

--練習子查詢(ppt5 p.16) 尋找的員工為非IT 程式設計師，且薪資低於任何一位IT 程式設計師。
                        -- 最高薪的程式設計師薪資為$9,000。
select last_name, job_id,salary
from employees
where salary < any
(
    select salary
    from employees
    where job_id='IT_PROG'
    )
and job_id!='IT_PROG';

--練習子查詢(ppt5 p.17)顯示薪資低於IT_PROG 的所有員工、且其工作不是IT_PROG 的員工。

select employee_id,last_name,salary
from employees
where salary< all
(
    select salary
    from employees
    where job_id='IT_PORG'
    )
and job_id!='IT_PROG';



--資料庫正規化

--轉換大小寫
SELECT 'The job id for '||UPPER(last_name)||' is '
||LOWER(job_id) AS "EMPLOYEE DETAILS"
FROM employees;

SELECT employee_id, last_name, department_id 
FROM   employees
WHERE  LOWER(last_name) = 'higgins';

SELECT employee_id, UPPER(last_name), department_id
FROM employees
WHERE INITCAP(last_name) = 'Higgins';

--增加或修改字
SELECT employee_id, CONCAT(first_name, last_name) NAME,
LENGTH (last_name), INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(last_name, -1, 1) = 'n';
--小數點進位
SELECT ROUND(45.923,2), ROUND(45.923,0),
       ROUND(45.923,-1)
FROM   DUAL;

--sql 語法課後練習

select 
CS.customer_id as "客戶編號", 
CS.name as "客戶姓名", 
sum(ODT.count) as "購買次數",
sum(ODT.money) as "購買金額"

from sql_customer_store CS
inner join sql_order OD on CS.customer_id=OD.cust_id
inner join sql_order_detail ODT on OD.order_no= ODT.order_no
inner join sql_item ST on ODT.item_no=ST.item_no
where ST.item_name like '%巧克力%'
group by CS.name, CS.customer_id   
order by CS.customer_id;
   