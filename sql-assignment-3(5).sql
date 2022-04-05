select employee_table.firstname,department.departmentname,rating from employee_table
left join department on employee_table.employee_id=department.employee_id;




