create table Department
(
    id serial primary key,
    nameDepartment varchar(30),
    addressDepartment varchar(30)
);

create table Employee
(
    id serial primary key,
    surnames varchar(30),
    name varchar(30),
    birthday date
);

create table Job
(
    id serial primary key,
    position varchar(30),
    minSalary integer
);

create table Career
(
    id serial primary key,
    jobId integer,
    employeeId integer,
    departmentId integer,
    recruitment date,
    dismissal date,
    FOREIGN KEY (jobId) REFERENCES Job (Id),
    FOREIGN KEY (employeeId) REFERENCES Employee (Id),
    FOREIGN KEY (departmentId) REFERENCES Department (Id)
);

create table Salary
(
    id serial primary key,
    employeeId integer,
    month smallint check (month > 0 and month < 12),
    year smallint check (year > 2002 and year < 2016),
    accruedSalary integer,
    FOREIGN KEY (employeeId) REFERENCES Employee (Id)
);