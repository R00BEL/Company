-- 1.
-- a)
	select * from employee

-- b)
	select id, minsalary from job
	where minsalary < 500

-- c)
	select avg(accruedSalary) as average_salary from salary
	where month = 1 and year = 2015

-- 2.
-- a)
	select birthday, name from employee
	ORDER BY birthday
	limit 1;

-- b)
	select E.surnames
	from employee as E, salary as S
	where S.month = 1 and S.year = 2015 and S.employeeId = E.id;

-- c)
	select S.id from (
	    SELECT employeeId as e, min(accruedSalary) AS m
	    FROM salary
	    where year = 2015
	    GROUP BY employeeId
	)as C, salary as S
	    where C.e = S.employeeId and year = 2015 and S.month = 5 and C.m = S.accruedSalary

-- d)
	select D.id ,C.* from (
	    select departmentid, count(*) as staff from career
	    group by departmentid
	) as C, department as D;

-- 3.
-- a)
	select avg(accruedSalary) from Salary
	where year = 2015;

-- b)
	select avg(S.accruedSalary) from (
	    select employeeId as e, count(*) as ucount from salary
	    where year = 2015
	    group by employeeId
	    having count(*) >= 2
	) as C, salary as S
	    where e = S.employeeId and S.year = 2015;

-- 4.
-- a)
	select E.name from salary as S, employee as E
	where S.year = 2015 and S.accruedSalary >= 1000 and S.employeeId = E.id;

-- b)
	select E.name ,date_part('year', CURRENT_DATE) - date_part('year', C.recruitment) as "work experience" from career as C, employee as E
	where C.employeeid = E.id;	

-- 5
-- a)
	update salary
	set accruedSalary = accruedSalary * 1.5;

--b)
	delete from Salary
	where year > 2015;
	
