
--絤策7
select 翴,腹,睟瞒,緽,緇粹
from
(
    select place as 翴,
    serial_number as 腹,
    hydrogen as 睟瞒,
    turbidity as 緽,
    chlorine as 緇粹
    from WATER1
    where serial_number between 521 and 529
    
    union all
    
    select place as 翴,
    serial_number as 腹,
    hydrogen as 睟瞒,
    turbidity as 緽,
    chlorine as 緇粹
    from WATER1
    where chlorine in (0.77,0.76,0.66)
    and hydrogen=7.8
    and turbidity=0.6
    )
    order by 緽, 腹 DESC;
    
    --JOIN
    --inner join
    SELECT cut.id, cut.name,emp.emp_nm
    from sql_customer cut
    inner join sql_emp emp on cut. emp= emp.emp_id;
    
    --left join
    select cut.id, cut.name,emp.emp_nm
    from sql_customer cut
    left join sql_emp emp on cut.emp=emp.emp_id;
    
    --p.62 硈尿ㄢleft join (ゼЧΘ)
    select cut.name 
  
  
  --干  
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
    
    --ㄖ絤策 (?)
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
    
    --絤策9-1
    select place,
    count(serial_number),
    max(chlorine),
    min(chlorine),
    sum(hydrogen),
    avg(turbidity)
    from sql_taoyuan_water
    where place in ('T40','T44','T16');
    group by  place;
    
    
    --絤策9-2
    select 
    RE.township as ︽現跋,
    count (chlorine) as 跋,
    avg (turbidity) as 緽キА
    from sql_taoyuan_regions RE
    left join sql_taoyuan_water TW on RE.serial=TW.place
    group by RE.township
    having avg (turbidity)>0.7;
    
    --
    

        
    
    --ミ穝
create table sql_emp_his as select* from sql_emp;
    truncate table sql_emp_his;
    
    --insert
insert into sql_emp_his(emp_nm, dep, emp_id)
   values ('O','╰参秨祇场','0012345');
   
   insert into sql_emp_his
   select emp_id, emp_nm,id,null,'戈癟狾遏'
   from sql_emp
   where emp_id='00054321';
   --delete
   delete from sql_emp_his
   where emp_id='00054321';
   
   --update
   update sql_emp_his
   set dep='戈癟狾遏'
   where emp_id='0054321'
   
   --絤策10
   insert into sql_emp_his
   values ('r1026','尝O砍','55',null,'戈癟场');
   
   update sql_emp_his
   set tel= 0003
   where emp_id='r1026';
   
   delete from sql_emp_his
   where emp_id='r1026';
   
   --絤策琩高(ppt5 p.10)
   
   select last_name, job_id,salary
   from employees
   where job_id= 
   (                       -->穓㎝141妓id (琌ST_clerk)
   select job_id  
   from employees
   where employee_id='141')
   and salary >
   (                       -->穓ゑ143临蔼羱
   select salary 
   from employees
   where employee_id='143')
   
   --絤策琩高(ppt5 p.11) 程羱戈戈癟
   select last_name,job_id,salary
   from employees
   where salary=
   (
   select min(salary) 
   from employees);
   
    --絤策琩高(ppt5 p.12) 程羱戈蔼场50程羱戈┮Τ场
    select department_id,min(salary)
    from employees
    group by department_id          -->程羱戈┮Τ场
    having min(salary)>
    (   
        select min(salary)          -->场50程羱戈
        from employees
        where department_id='50')
--絤策琩高(ppt5 p.15)絛ㄒт场い程羱戈
select employee_id, last_name, salary
from employees
where salary 
in (
    select min(salary)
    from employees
    group by department_id);

--絤策琩高(ppt5 p.16) 碝т獶IT 祘Α砞璸畍羱戈ヴIT 祘Α砞璸畍
                        -- 程蔼羱祘Α砞璸畍羱戈$9,000
select last_name, job_id,salary
from employees
where salary < any
(
    select salary
    from employees
    where job_id='IT_PROG'
    )
and job_id!='IT_PROG';

--絤策琩高(ppt5 p.17)陪ボ羱戈IT_PROG ┮Τㄤぃ琌IT_PROG 

select employee_id,last_name,salary
from employees
where salary< all
(
    select salary
    from employees
    where job_id='IT_PORG'
    )
and job_id!='IT_PROG';



--戈畐タ砏て

--锣传糶
SELECT 'The job id for '||UPPER(last_name)||' is '
||LOWER(job_id) AS "EMPLOYEE DETAILS"
FROM employees;

SELECT employee_id, last_name, department_id 
FROM   employees
WHERE  LOWER(last_name) = 'higgins';

SELECT employee_id, UPPER(last_name), department_id
FROM employees
WHERE INITCAP(last_name) = 'Higgins';

--糤┪э
SELECT employee_id, CONCAT(first_name, last_name) NAME,
LENGTH (last_name), INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(last_name, -1, 1) = 'n';
--计翴秈
SELECT ROUND(45.923,2), ROUND(45.923,0),
       ROUND(45.923,-1)
FROM   DUAL;

--sql 粂猭揭絤策

select 
customer_id, 
name, 
count(cust_id)
from sql_customer_store CS
inner join sql_order SO on CS.customer_id=SO.cust_id
group by CS.customer_id, CS.name;
   
   