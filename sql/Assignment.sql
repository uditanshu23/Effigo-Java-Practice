-- Q1 - A
drop table if exists department;
drop table if exists Employee;

create table if not exists department (
		Deptno INT NOT NULL,
        Dname VARCHAR(250),
        Loc VARCHAR(1000)
	);

create table if not exists Employee (
		Empno INT ,
        Empname VARCHAR(100),
        Job VARCHAR(500),
        Mgr INT,
        HireDate DATE,
        Salary INT,
        Comm INT,
        Deptno INT
	);

insert into Department
	(Deptno, Dname, Loc)
    values
    (10, 'Accounting', 'Chicago'),
    (20, 'Research', 'Dallas'),
    (30, 'Sales', 'New York'),
    (40, 'Operations', 'Boston'),
    (50, 'Purchase', 'Los Angeles');

insert  into Employee
	(Empno, Empname, Job, Mgr, Hiredate, Salary, Comm, Deptno)
    values 
    (325, 'Smith', 'Clerk', 433, '1996-01-11', 3500, 1400, 20),
    (825, 'James', 'Clerk', 466, '1981-08-02', 2975, NULL, 20),
    (433, 'James', 'Analyst', 825, '1989-12-03', 3500, NULL, 40),
    (466, 'Mike', 'President', NULL, '1997-11-18', 7000, NULL, 30),
    (889, 'Adams', 'Manager', 433, '1987-05-23', 3250, 0, 10),
    (435, 'Blake', 'Analyst', 889, '1989-12-03', 4500, 0, 40);

-- Q1 - B
select  * from  Employee;

select  * from Department;

select  Empno, Empname, Job from Employee;

select  Deptno, Dname from Department;

select distinct Job from Employee;


-- Q2 

select Empname from Employee where Job like 'Analyst' and Salary>2000;

select Empname from Employee where Comm is null;

select Empname from Employee 
	where Job in ('Clerk', 'Analyst', 'Manager') 
	and Salary>3000;

select Empname from Employee
	where Deptno in (10, 20, 40)
	and Job in ('Clerk', 'Analyst');

select Employee.Empname, Department.Deptno, Department.Dname
	from Employee join Department on Employee.Deptno=Department.Deptno
	where Department.Dname='Research';
	
select Empname from Employee where Empname like 'B%e';

select distinct Job from Employee where Deptno in (10, 20);

select distinct Job from Employee where Job not in (
		select distinct Job from Employee where Deptno not in (10)
	);


select Empname from Employee where Salary*1.2>3000;

select * from Employee where Mgr is null;


-- Q3 - A


select count(*) from Employee;

select count(*) from Employee join Department on Employee.Deptno=Department.Deptno
	where Department.Dname='Accounting';

select sum(Salary)+sum(Comm) from Employee;

select Deptno, avg(Salary), max(Salary), min(Salary) from Employee group by Deptno;

select Deptno, avg(Salary), max(Salary), min(Salary) from Employee group by Deptno having count(Empno)>2; 

-- Q3 - B

SELECT current_date FROM Employee;
 
-- Q3 - C

select Empname, Salary*12 as Annual_Salary from Employee;

-- Q4 - A

select Job, count(Empno) from Employee group by Job;

select Job, count(Empno) from Employee group by Job having sum(Salary)>5000;

select Empno, Empname, Deptno, Salary from Employee order by Empname, Deptno, Salary;

select Empname, Salary*12 as Annual_Salary from Employee order by Salary desc;

-- Q4 - B

select Empname from Employee
	where Salary = all(select max(Salary) from Employee);

select Empname from Employee 
	where Salary > all (select avg(Salary) from Employee);

select Empname from Employee 
	where Salary > all (select min(Salary) from Employee where Deptno=30);

select Empname from Employee 
	where Salary > all (select max(Salary) from Employee where Deptno=30);

select e.* 
	from Employee as e join Employee as mngr on e.Mgr=mngr.Empno 
	where mngr.Empname = 'James';

select Empname from Employee 
	where Job = 'Manager' 
	and Salary >= all (select avg(Salary) from Employee);

-- Q5 - A

select Empno, Empname, Employee.Deptno, Dname 
	from Employee join Department on Employee.Deptno=Department.Deptno;

select EmployeeA.Empname, manager.Empname as Manager
from Employee as EmployeeA join Employee as manager on EmployeeA.mgr=manager.Empno;

select EmployeeA.Empname, manager.Empname as Manager
	from Employee as EmployeeA join Employee as manager on EmployeeA.mgr=manager.Empno
	where EmployeeA.Deptno=manager.Deptno;

-- full outer join

select * from Employee full outer join Department on Employee.Deptno=Department.Deptno;

-- left join 

select * from Employee left join Department on Employee.Deptno=Department.Deptno;

--right join

select * from Employee right join Department on Employee.Deptno=Department.Deptno;


-- Q5 - B

create table if not exists Cust_dtls (
		Cust_no int not null unique primary key,
		Cust_name varchar(250),
		add constraint check(binary Cust_name = upper(Cust_name)),
		Cust_city varchar(250) check(Cust_city like 'H%'),
	);

alter table Employee add constraint Empno_PK primary key (Empno);
alter table Employee add constraint Ename_notnull not null (Ename);
alter table Employee alter Comm set default 0;
alter table Employee add foreign key (Deptno) references Department(Deptno);
alter table Employee add foreign key (Mgr) references Employee(Empno);

show create table Employee;
show create table Department;

alter table Department add constraint Loc_unique unique (Loc);
alter table Department drop constraint Loc_unique;

alter table Cust_dtls drop constraint Cust_name_check;

-- Q6 - A

alter table Department add column Budget bigint default 10;

alter table Department alter column Budget bigint default 12 set default 5000;

drop table if exists Employee;

-- Q6 - B

drop table if exists dept_details;
alter table Department rename to dept_details;

delete from dept_details where Loc = 'New York';

delete from Employee where Salary < all(select avg(Salary) from Employee);

update dept_details set deptno = 70, dname = 'Distribution' where dname = 'Sales';
select * from dept_details;

