----select * from employees where salary >= (select salary from employees where employee_id=158);
----select * from employees where salary >= any(select salary from employees where manager_id=147);
----select * from employees where salary >= all(select salary from employees where manager_id=147);
----select * from employees where salary >= Some(select salary from employees where manager_id=147);
--
--select * from 
--	(select * from employees order by hire_date desc)
--	where rownum <=5;

select ename,job,hiredate from emp where hiredate BETWEEN '81/02/20' and '81/05/01' order by ihredate asc;

select ename,deptno from emp where deptno in ('30','10') order by ename asc;

select ename as 사원,sal as 월급 from emp where deptno in ('30','10') and sal>1500;

select ename,job from emp where comm is null;

select ename,sal,comm from emp where comm>=0 order by sal desc;

select ename,job,sal from emp where job in ('CLERK','ANALYST') and sal not in('1000','3000','5000');