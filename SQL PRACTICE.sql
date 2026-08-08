create table emp16;
use excelr;
create table emp16(emp_id int,emp_name varchar(25),dept varchar(25),salary int);
insert into emp16 values(101,"Ravi","HR",50000),(102,"Priya","IT",60000),(103,"Arjun","IT",65000),(104,"Sneha","Sales",55000),(105,"Rahul","HR",52000);
SELECT * FROM EMP16;
select emp_name from emp16;
select emp_name,salary from emp16;
select emp_name,dept,city from emp16;
select salary AS Employee_Salary from emp16;
select emp_name AS Employee_Name from emp16;
select dept AS department from emp16;
select city AS Employee_city from emp16;
select emp_id,emp_name,salary AS Monthly_Salary from emp16;
select emp_name AS Employee_Name,dept AS Department,salary AS SALARY, city AS location  from emp16;
select dept from emp16;
select distinct dept from emp16;
select * from emp16 where dept = "HR";
select * from emp16 where salary > 55000;
select * from emp16 where salary < 60000;
select * from emp16 where dept = "Sales";
select emp_name,salary from emp16 where salary >=52000;
select * from emp16 where salary <> 50000; 
select emp_name,city from emp16 where city ="Bangalore";
select * from emp16 where salary > 55000;
select emp_name,dept from emp16 where dept = "IT";
select * from emp16 where dept = "IT" and salary > 55000;
select * from emp16 where city = "Hyderabad" AND salary <= 55000;
select * from emp16 where dept != "HR";
select * from emp16 where city <> "Bangalore";
select * from emp16 where salary between 52000 and 60000;

CREATE TABLE emp17 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(30),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO emp17 (emp_id, emp_name, dept, salary, city)
VALUES
(101, 'Ravi', 'HR', 50000, 'Hyderabad'),
(102, 'Priya', 'IT', 60000, 'Bangalore'),
(103, 'Arjun', 'IT', 65000, 'Chennai'),
(104, 'Sneha', 'Sales', 55000, 'Hyderabad'),
(105, 'Rahul', 'HR', 52000, 'Pune'),
(106, 'Asha', 'IT', 58000, 'Hyderabad'),
(107, 'Kiran', 'Sales', 48000, 'Bangalore'),
(108, 'Meena', 'HR', 70000, 'Chennai');
SELECT * FROM emp17;
select * from emp17 where salary >60000;
select * from emp17 where salary <55000;
select * from emp17 where salary >= 58000;
select * from emp17 where salary <= 50000;
select * from emp17 where dept != "HR";
select * from emp17 where dept = "IT" and salary > 58000;
select * from emp17 where city = "Hyderabad" and dept = "sales" ;
select * from emp17 where dept ="HR" or dept="IT"; 
select * from emp17 where city = "Hyderabad" or city="Bangalore";
select * from emp17 where dept = "HR" AND salary > 50000;
select * from emp17 where dept = "HR" OR dept = "Sales";
select * from emp17 where salary = 50000 or salary = 70000;
select * from emp17 where city = "Pune" or city = "Chennai";
SELECT *
FROM emp17
WHERE dept IN ('HR', 'Sales');


CREATE TABLE Employee2 (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30)
);
INSERT INTO Employee2 VALUES
(101, 'Rahul', 'IT', 50000, 'Bangalore'),
(102, 'Priya', 'HR', 40000, 'Hyderabad'),
(103, 'Amit', 'IT', 60000, 'Chennai'),
(104, 'Sneha', 'Finance', 55000, 'Bangalore'),
(105, 'Kiran', 'HR', 45000, 'Hyderabad');

select * from Employee2;
select emp_name,salary from Employee2;
select * from Employee2 where department = "IT";
select * from Employee2 where salary > 50000;
select * from Employee2 where city = "Bangalore";
select * from Employee2 order by salary desc;
select count(*) from Employee2;
select * from Employee2 where salary between 45000 and 60000;
select * from Employee2 where emp_name like 'p%';
select distinct department from employee2;
select * from Employee2 where salary < 50000;
select * from employee2 where department = 'HR' or department = 'Finance';
select * from Employee2 where city not in  ('bangalore');
select * from Employee2 where city <> 'Bangalore';
select * from Employee2 where salary not  between 40000 and 50000;
select * from Employee2 where emp_name like '%a';
select * from Employee2 where emp_name like '%i%';
select max(salary) from Employee2;
select min(salary) from Employee2;
select avg (salary) from Employee2;
select sum (salary) from Employee2;
select department ,count(*) from Employee2 group by department;
select department,avg(salary) from Employee2 group by department;
select department,count(*) from Employee2 group by department;
select department , avg(salary) from Employee2 group by department;
select department ,max(salary) from Employee2 group by department;
select department , min(salary) from Employee2 group by department;
select department , sum(salary) from Employee2 group by department;
select department , count(salary) from Employee2 group by department;
select city , avg(salary) from Employee2 group by city;
select department , count(*)from Employee2 group by department;
select department , avg(salary) from Employee2 group by department;
select department,max(salary) from Employee2 group by department;
select department , min(salary) from Employee2 group by department;
select department, sum(salary) from Employee2 group by department;
select city, count(*) from Employee2 group by city;
select department,avg(salary) from Employee2 group by department having avg(salary) > 45000;
select department ,count(*) from Employee2 group by department having count(*) > 1;
select city, count(*) from Employee2 group by city having count(*) > 1;
select department, avg(salary) from Employee2 group by department having avg(salary)>45000;
select department , sum(salary) from Employee2 group by department having sum(salary) > 90000;
select city , max(salary) from Employee2 group by city having max(salary) >50000;
CREATE TABLE Students1(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT,
    marks INT
);

CREATE TABLE Courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO Students1 VALUES
(1,'Rahul',101,85),
(2,'Priya',102,90),
(3,'Kiran',101,78),
(4,'Sneha',103,88),
(5,'Arjun',104,75);

INSERT INTO Courses VALUES
(101,'Python'),
(102,'SQL'),
(103,'Power BI'),
(105,'Tableau');

select * from Courses;

select students1.student_name, courses.course_name
from students1 
inner join courses
ON students1.course_id = courses.course_id;

select students1.student_name, course_name, marks
from students1
inner join courses
ON students1.course_id = courses.course_id;

select students1.student_name, course_name
from students1
inner join courses
ON students1.course_id = courses.course_id
where marks >80;

select students1.student_name,marks
from students1
inner join courses
ON students1.course_id = courses.course_id
where course_name = "Python";

select students1.student_name, course_name
from students1
inner join courses
ON students1.course_id = courses.course_id
where courses.course_id = 101;

select students1.student_name, course_name
from students1
left join courses
ON students1.course_id = courses.course_id;

select students1.student_name, course_name
from students1
left join courses
ON students1.course_id = courses.course_id 
where courses.course_name is null;

select students1.student_name, course_name
from students1
right join courses
ON students1.course_id = courses.course_id;

select courses.course_name
from students1
right join courses
ON students1.course_id = courses.course_id
WHERE Students1.student_name IS NULL;

SELECT e.emp_name AS Employee_Name,
       m.emp_name AS Manager_Name
FROM Employees e
INNER JOIN Employees m
ON e.manager_id = m.emp_id;



CREATE TABLE Employ (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);


INSERT INTO Employ VALUES
(101,'Rahul',1,50000),
(102,'Priya',2,60000),
(103,'Kiran',3,55000),
(104,'Sneha',2,70000),
(105,'Ravi',NULL,45000),
(106,'Anjali',4,65000),
(107,'Vijay',1,52000),
(108,'Meena',NULL,48000);

CREATE TABLE Depart (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Depart VALUES
(1,'HR','Hyderabad'),
(2,'IT','Bangalore'),
(3,'Finance','Chennai'),
(4,'Marketing','Mumbai'),
(5,'Sales','Delhi');

select employ.emp_name,depart.dept_name
from employ
 inner join depart
 on employ.dept_id = depart.dept_id;

select employ.emp_name,depart.dept_name
from employ
left join depart
 on employ.dept_id = depart.dept_id;

select employ.emp_name,depart.dept_name
from employ
right join depart
on employ.dept_id = depart.dept_id;

select employ.emp_name,depart.dept_name
from employ
left join depart
on employ.dept_id = depart.dept_id
where depart.dept_id is null;

select employ.emp_name,depart.dept_name
from employ
right join depart
on employ.dept_id = depart.dept_id
where employ.emp_id  is null;

SELECT employ.emp_name,
       depart.dept_name,
       depart.location
FROM employ
INNER JOIN depart
ON employ.dept_id = depart.dept_id;
desc depart;


select employ.emp_name,depart.dept_name
from employ
inner join depart
on employ.dept_id = depart.dept_id;

select employ.emp_name,depart.dept_name
from employ
left join depart
on employ.dept_id = depart.dept_id;

select employ.emp_name,depart.dept_name
from employ
inner join depart
on employ.dept_id = depart.dept_id;

select employ.emp_name,depart.dept_name
from employ
left join depart
on employ.dept_id = depart.dept_id
where depart.dept_id is null;

select employ.emp_name,depart.dept_name
from employ
inner join depart
on employ.dept_id = depart.dept_id;

SELECT e.emp_name, d.dept_name, d.location
FROM employ e
INNER JOIN depart d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

SELECT d.dept_name,
       COUNT(e.emp_id) AS total_employees
FROM employ e
INNER JOIN depart d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


CREATE TABLE customers1 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO customers1 VALUES
(1,'Rahul','Hyderabad'),
(2,'Priya','Bangalore'),
(3,'Kiran','Chennai'),
(4,'Sneha','Pune'),
(5,'Ajay','Delhi');


CREATE TABLE orders1 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    amount INT
);

INSERT INTO orders1 VALUES
(101,1,'Laptop',55000),
(102,2,'Mobile',25000),
(103,1,'Mouse',800),
(104,4,'Keyboard',1500),
(105,6,'Monitor',12000);

select customers1.customer_name,orders1.product_name
from  customers1
inner join orders1
on customers1.customer_id = orders1.customer_id;

select customers1.customer_name,city,orders1.product_name
from customers1
inner join orders1
on customers1.customer_id = orders1.customer_id;

select customers1.customer_name,orders1.product_name
from customers1 
left join orders1
on customers1.customer_id = orders1.customer_id;

select customers1.customer_name,orders1.product_name
from customers1
right join orders1
on customers1.customer_id = orders1.customer_id;

select customers1.customer_name,orders1.amount
from customers1
inner join orders1
on customers1.customer_id = orders1.customer_id;

select customers1.customer_name
from customers1
left join orders1
on customers1.customer_id = orders1.customer_id
where orders1.customer_id is null;

select orders1.order_id,product_name
from customers1
right join orders1
on customers1.customer_id = orders1.customer_id
where customers1.customer_id is null;

select count(order_id) from orders1;
select sum(amount) from orders1;
select avg(amount) from orders1;
select max(amount) from orders1;
select min(amount) from orders1;

select customer_id , count(order_id)
from orders1
group by customer_id;

select customer_id,sum(amount)
from orders1
group by customer_id;

select customer_id,count(amount)
from orders1
group by customer_id;


select sum(amount) from orders1 group by amount having sum(amount);


CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO restaurants VALUES
(1,'Paradise','Hyderabad'),
(2,'Meghana Foods','Bangalore'),
(3,'Empire','Bangalore'),
(4,'Bawarchi','Hyderabad'),
(5,'Barbeque Nation','Chennai');


CREATE TABLE food_orders (
    order_id INT PRIMARY KEY,
    restaurant_id INT,
    food_item VARCHAR(50),
    bill_amount INT
);

INSERT INTO food_orders VALUES
(101,1,'Chicken Biryani',450),
(102,2,'Paneer Biryani',320),
(103,1,'Mutton Biryani',650),
(104,4,'Fried Rice',220),
(105,6,'Pizza',500);

select restaurants.restaurant_name,food_orders.food_item
from restaurants
inner join food_orders
on restaurants.restaurant_id = food_orders.restaurant_id;

select restaurants.restaurant_name,food_orders.food_item
from restaurants
left join food_orders
on restaurants.restaurant_id = food_orders.restaurant_id;

select restaurants.restaurant_name
from restaurants
left join food_orders
on restaurants.restaurant_id = food_orders.restaurant_id 
where food_orders.restaurant_id is null;

select restaurants.restaurant_name,food_orders.food_item
from restaurants
left join food_orders
on restaurants.restaurant_id = food_orders.restaurant_id ;