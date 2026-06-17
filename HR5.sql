//Покажи должность и максимальную зарплату, только те должности где максимальная 
//зарплата выше 10000, отсортируй от самой высокой"


SELECT JOB_ID ,MAX(SALARY) AS max_sal
FROM EMPLOYEES
GROUP BY job_id
HAVING MAX(SALARY) > 10000
ORDER BY max_sal DESC;

//Покажи имя, фамилию и зарплату сотрудников у которых нет менеджера

select first_name,last_name,salary,manager_id
from employees
where manager_id is null

//"Покажи имя, фамилию и зарплату сотрудников чья зарплата между 5000 
//и 10000, отсортируй по зарплате"

select last_name, first_name,salary
from employees
where salary between 5000 and 10000

//Покажи имя, фамилию сотрудника и название его отдела
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

//Покажи имя, фамилию, название отдела и зарплату — только сотрудников из отдела Sales, отсортируй по зарплате
SELECT first_name,last_name, d.department_name,salary
FROM employees e
JOIN departments d ON d.department_id =e.department_id
WHERE d.department_name = 'Sales'
ORDER BY e.salary DESC;

//Покажи название отдела и среднюю зарплату в нём, отсортируй от самой высокой

SELECT d.department_name, ROUND(avg(salary),0) AS avg_sal
FROM employees e
JOIN departments d ON d.department_id = e.department_id
GROUP BY  d.department_name
ORDER BY avg_sal DESC;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      



//Покажи название отдела и количество сотрудников — только 
//отделы где больше 5 человек, отсортируй по количеству"

SELECT D.DEPARTMENT_NAME , COUNT(*) AS TOTAL
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID 
HAVING COUNT(*) > 5
GROUP BY D.DEPARTMENT_NAME
ORDER BY TOTAL DESC;

//Покажи имя, фамилию, название отдела и зарплату сотрудников чья зарплата больше 10000, отсортируй по зарплате
//JOIN + WHERE + ORDER BY
SELECT e.first_name, e.last_name, d.department_name, e.salary 
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > 10000
ORDER BY E.SALARY DESC;

//JOIN + GROUP BY + ORDER BY
"Покажи название отдела, количество сотрудников и максимальную зарплату — отсортируй по максимальной зарплате"
SELECT D.DEPARTMENT_NAME, COUNT(*) AS EMPLOYEES_COUNT , MAX(SALARY) AS MAX_SAL
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME
ORDER BY MAX_SAL DESC;

//JOIN + HAVING + GROUP BY
//"Покажи название отдела и среднюю зарплату — только отделы где средняя зарплата больше 8000, отсортируй по средней

SELECT D.DEPARTMENT_NAME,ROUND(AVG(SALARY),0) AS AVG_SAL
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME
HAVING AVG(SALARY) > 8000
ORDER BY AVG_SAL DESC;

//JOIN + HAVING + WHERE вместе
"Покажи название отдела, количество сотрудников и среднюю зарплату — только сотрудники
//нанятые после 2003 года, только отделы где больше 3 человек, отсортируй по количеству"

SELECT D.DEPARTMENT_NAME, COUNT(*) AS EMPLOYEES_TOTAL, ROUND(AVG(SALARY),0)AS AVG_SAL
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE HIRE_DATE > '1-JAN-03'
HAVING COUNT(*) > 3
GROUP BY D.DEPARTMENT_NAME
ORDER BY EMPLOYEES_TOTAL DESC;














































































