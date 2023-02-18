USE chain_store;

/*1*/
SELECT employee.name FROM employee WHERE employee.salary < 1000;
/*2*/
SELECT employee.name, administrative_unit.name FROM employee,administrative_unit WHERE administrative_unit.unit_code=employee.unit_code;
/*3*/
SELECT administrative_unit.name , AVG(employee.salary) as average_salary FROM employee,administrative_unit WHERE administrative_unit.unit_code = employee.unit_code GROUP BY employee.unit_code;
/*4*/
SELECT administrative_unit.name FROM administrative_unit,branch WHERE administrative_unit.branch_code = branch.branch_code AND branch.name = 'esfahan';
/*5*/
SELECT branch.name ,COUNT(administrative_unit.id) FROM administrative_unit,branch WHERE administrative_unit.branch_code = branch.branch_code GROUP BY administrative_unit.branch_code;
/*6*/
SELECT employee.name,branch.name FROM employee,branch,administrative_unit WHERE employee.unit_code=administrative_unit.unit_code AND administrative_unit.branch_code = branch.branch_code;
/*7*/
SELECT AVG(employee.salary) FROM employee,branch,administrative_unit WHERE employee.unit_code=administrative_unit.unit_code AND administrative_unit.branch_code = branch.branch_code AND branch.name = 'esfahan' GROUP BY branch.branch_code;
/*8*/
SELECT branch.name , COUNT(employee.id) FROM employee,branch,administrative_unit WHERE employee.unit_code=administrative_unit.unit_code AND administrative_unit.branch_code = branch.branch_code GROUP BY branch.name;
/*9*/
SELECT administrative_unit.name , COUNT(employee.id) FROM administrative_unit LEFT JOIN employee ON employee.unit_code=administrative_unit.unit_code WHERE administrative_unit.branch_code=1 GROUP BY administrative_unit.name;
/*10*/
SELECT branch.name ,COUNT(employee.id) as cnt FROM employee,branch,administrative_unit WHERE employee.unit_code=administrative_unit.unit_code AND administrative_unit.branch_code = branch.branch_code GROUP BY branch.name HAVING cnt <10;