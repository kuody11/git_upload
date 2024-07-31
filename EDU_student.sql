
--�m��7
select �a�I,�Ǹ�,�B���l,�B��,�l��
from
(
    select place as �a�I,
    serial_number as �Ǹ�,
    hydrogen as �B���l,
    turbidity as �B��,
    chlorine as �l��
    from WATER1
    where serial_number between 521 and 529
    
    union all
    
    select place as �a�I,
    serial_number as �Ǹ�,
    hydrogen as �B���l,
    turbidity as �B��,
    chlorine as �l��
    from WATER1
    where chlorine in (0.77,0.76,0.66)
    and hydrogen=7.8
    and turbidity=0.6
    )
    order by �B��, �Ǹ� DESC;
    
    --JOIN
    --inner join
    SELECT cut.id, cut.name,emp.emp_nm
    from sql_customer cut
    inner join sql_emp emp on cut. emp= emp.emp_id;
    
    --left join
    select cut.id, cut.name,emp.emp_nm
    from sql_customer cut
    left join sql_emp emp on cut.emp=emp.emp_id;
    
    --p.62 �s����left join (������)
    select cut.name 
  
  
  --�ɥR�|�Ӫ��  
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
    
    --�X�ֽm�� (?)
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
    
    --�m��9-1
    select place,
    count(serial_number),
    max(chlorine),
    min(chlorine),
    sum(hydrogen),
    avg(turbidity)
    from sql_taoyuan_water
    where place in ('T40','T44','T16');
    group by  place;
    
    
    --�m��9-2
    select 
    RE.township as ��F�a��,
    count (chlorine) as �a��,
    avg (turbidity) as �B�ץ���
    from sql_taoyuan_regions RE
    left join sql_taoyuan_water TW on RE.serial=TW.place
    group by RE.township
    having avg (turbidity)>0.7;
    
    --
    

        
    
    --�إ߷s���
create table sql_emp_his as select* from sql_emp;
    truncate table sql_emp_his;
    
    --insert
insert into sql_emp_his(emp_nm, dep, emp_id)
   values ('��O�W','�t�ζ}�o��','0012345');
   
   insert into sql_emp_his
   select emp_id, emp_nm,id,null,'��T�O��'
   from sql_emp
   where emp_id='00054321';
   --delete
   delete from sql_emp_his
   where emp_id='00054321';
   
   --update
   update sql_emp_his
   set dep='��T�O��'
   where emp_id='0054321'
   
   --�m��10
   insert into sql_emp_his
   values ('r1026','��O��','55',null,'��T��');
   
   update sql_emp_his
   set tel= 0003
   where emp_id='r1026';
   
   delete from sql_emp_his
   where emp_id='r1026';
   
   --�m�ߤl�d��(ppt5 p.10)
   
   select last_name, job_id,salary
   from employees
   where job_id= 
   (                       -->���j�X�M���u141�@�˪��u�@id (�OST_clerk)
   select job_id  
   from employees
   where employee_id='141')
   and salary >
   (                       -->�A�j�X����u143�ٰ����~��
   select salary 
   from employees
   where employee_id='143')
   
   --�m�ߤl�d��(ppt5 p.11) ���u�̧C�~�ꪺ��T
   select last_name,job_id,salary
   from employees
   where salary=
   (
   select min(salary) 
   from employees);
   
    --�m�ߤl�d��(ppt5 p.12) �̧C�~�갪�󳡪�50���̧C�~�ꪺ�Ҧ�����
    select department_id,min(salary)
    from employees
    group by department_id          -->�̧C�~�ꪺ�Ҧ�����
    having min(salary)>
    (   
        select min(salary)          -->����50���̧C�~��
        from employees
        where department_id='50')
--�m�ߤl�d��(ppt5 p.15)�d�ҧ�X�U�������̧C�~�ꪺ���u�C
select employee_id, last_name, salary
from employees
where salary 
in (
    select min(salary)
    from employees
    group by department_id);

--�m�ߤl�d��(ppt5 p.16) �M�䪺���u���DIT �{���]�p�v�A�B�~��C�����@��IT �{���]�p�v�C
                        -- �̰��~���{���]�p�v�~�ꬰ$9,000�C
select last_name, job_id,salary
from employees
where salary < any
(
    select salary
    from employees
    where job_id='IT_PROG'
    )
and job_id!='IT_PROG';

--�m�ߤl�d��(ppt5 p.17)����~��C��IT_PROG ���Ҧ����u�B�B��u�@���OIT_PROG �����u�C

select employee_id,last_name,salary
from employees
where salary< all
(
    select salary
    from employees
    where job_id='IT_PORG'
    )
and job_id!='IT_PROG';



--��Ʈw���W��

--�ഫ�j�p�g
SELECT 'The job id for '||UPPER(last_name)||' is '
||LOWER(job_id) AS "EMPLOYEE DETAILS"
FROM employees;

SELECT employee_id, last_name, department_id 
FROM   employees
WHERE  LOWER(last_name) = 'higgins';

SELECT employee_id, UPPER(last_name), department_id
FROM employees
WHERE INITCAP(last_name) = 'Higgins';

--�W�[�έק�r
SELECT employee_id, CONCAT(first_name, last_name) NAME,
LENGTH (last_name), INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(last_name, -1, 1) = 'n';
--�p���I�i��
SELECT ROUND(45.923,2), ROUND(45.923,0),
       ROUND(45.923,-1)
FROM   DUAL;

--sql �y�k�ҫ�m��

select 
customer_id, 
name, 
count(cust_id)
from sql_customer_store CS
inner join sql_order SO on CS.customer_id=SO.cust_id
group by CS.customer_id, CS.name;
   
   