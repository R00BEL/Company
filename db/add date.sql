COPY employee(id, surnames, name, birthday) FROM '\MOCK_DATA.csv' CSV HEADER;
COPY department(id, namedepartment, addressdepartment) FROM '\department.csv' CSV HEADER;
COPY job(id, position, minsalary) FROM '\job.csv' CSV HEADER;
COPY career(id, jobid, employeeid, departmentid, recruitment, dismissal)   FROM '\career.csv' CSV HEADER;