-- Joins 
-- Create a new database named 'demojoins'
create database demojoins;

drop database demojoins;
-- use the newly created database for subsequent operations
use demojoins;

-- Create a table 'student' with an ID and name
create table student(
id int primary key,         -- id is the primary key and must be unique
student_name varchar (50)   -- 'student_name' can hold ip to 50 characters
);   

-- insert records iinto student table
insert into student values
(101,'kirti'),     -- id 101 for student kirti
(102,'ravi'),      -- id 102 for student ravi
(103,'lavish'),     -- id 103 for student lavish
(104,'trisha');     -- id 104 for student trisha

-- retrieve all records from the 'student' table
select * from student;


-- create table named 'course' with an id and course name
create table course(
id int primary key,           -- id is the primary key and must be unique
course_name varchar (80));    -- course name can hold up to 80 character


-- insert records into the course table
insert into course values
(107,'english'), -- id 107 for course english
(102,'python'),  -- id 102 for course python
(104,'hindi'),   -- id 104 for course hindi
(108,'maths');   -- id 108 for course maths

-- retrieve all records from the 'course' table
select * from course;


-- inner join(also known as simple join / equi join):
-- retrieves records that have matching values in both tables involved in the in the join.
-- retrieves records with matching ids from both tables 
select t1.id, student_name,course_name
from student t1
inner join
course t2 on t1.id = t2.id;

select* from student;

-- left join (also knowns as left outer join):
-- retrieves all records from the left table and the matched records from the right table
-- retrieves all records from 'students' and matching records from 'course'

select student.id,student_name,course_name
from student
left join course on student.id = course.id;

-- right join (also known as right outer join):
-- retrieves all records from the right  table and the matched records from the left  table
-- retrieves all records from 'course' and matching records from 'student'

select student.id,student_name,course_name
from student
right join course on student.id = course.id;

-- full join(also known as outer join):
-- retrieves all records from the right, matching rows where possible ,
-- and filling in null values where there are no matches
-- retrieves all records from both tables , with nulls where there are no matches
select student.id ,student_name,course_name
from student
left join course on student.id=course.id
union
select student.id,student_name,course_name
from student
right join course on student.id= course.id;

-- left exclusive join(also known eft anti join)
-- retrieve rows from the left table that do not having matching rows in the right table
-- retrieve records from 'student' that do not having matches in 'course'

select student.id,student_name,course_name
from student
left join course on student.id = course.id
where course.id is null;

-- right exclusive join(also known right anti join)
-- retrieve rows from the right table that do not having matching rows in the left table
-- retrieve records from 'course' that do not having matches in 'student'

select student.id,student_name,course_name
from student
right join course on student.id = course.id
where student.id is null;

-- self join: (inner join / outer join felf join/ self_reference join/self-relating join/table self join)
-- self join is a special case of a join that allows a table to be joined with itself .
-- join the 'student' table with itself based on matching ids
select student.id,student_name,course_name
from student,course
where student.id = course.id;

-- cross join:(also known as cartesian join or cartesian product join)
-- a cross join retrieves the cartesian product of two tables ,missing every row from the first table is
-- combined with every row from the secind table.
-- retrieve the cartessian product of 'student' and 'course' tables

select student.id,student_name,course_name
from student
cross join course;




-- Table-1
-- Create the faculty table to store information about faculty members
CREATE TABLE faculty (
  faculty_id INT PRIMARY KEY, -- Unique identifier for each faculty
  faculty_name VARCHAR(255), -- Name of the faculty
  faculty_description TEXT, -- Description of the faculty
  dean VARCHAR(255), -- Dean of the faculty
  faculty_location VARCHAR(255), -- Location of the faculty
  faculty_contact_info VARCHAR(255) -- Contact information for the faculty
);

-- Insert sample data into the faculty table
INSERT INTO faculty (faculty_id, faculty_name, faculty_description, dean, faculty_location, faculty_contact_info) VALUES
(1, 'Faculty of Science', 'Covers various scientific disciplines', 'Dr. Alice Smith', 'Building A', 'alice.smith@example.com'),
(2, 'Faculty of Engineering', 'Focuses on engineering and technology', 'Dr. Bob Johnson', 'Building B', 'bob.johnson@example.com'),
(3, 'Faculty of Arts', 'Includes humanities and social sciences', 'Dr. Carol Williams', 'Building C', 'carol.williams@example.com'),
(4, 'Faculty of Business', 'Offers business and management courses', 'Dr. David Brown', 'Building D', 'david.brown@example.com'),
(5, 'Faculty of Education', 'Dedicated to teacher training and education studies', 'Dr. Eva Davis', 'Building E', 'eva.davis@example.com');


-- join 2 tables
select faculty.faculty_id, faculty_name, student_name
from students 
inner join faculty on students.faculty_id = faculty.faculty_id;

-- join 2 tables
select faculty.*,student_name
from students
inner join faculty on students.faculty_id = faculty.faculty_id;

-- innner join 
select * from 
faculty
inner join department on faculty.faculty_id = department.faculty_id;

-- left join
select f.faculty_id,dean,department_name
from faculty f
left join department as d on f.faculty_id = d.faculty_id;

-- right join
select f.faculty_id,dean,d.department_location
from faculty f
right join department as d
on f.faculty_id= d.faculty_id;

-- left exclusive join
select f.faculty_id,d.department_location
from faculty f
left join department as d
on f.faculty_id = d.faculty_id
where d.department_location is null;


-- right exclusive join
select f.faculty_id,dean,d.department_location,department_head
from faculty as f
right join department as d
on f.faculty_id=d.faculty_id
where department_location is null;

-- full join
select f.faculty_id,d.department_location
from faculty as f
right join department as d
on f.faculty_id=d.faculty_id
union
select f.faculty_id,d.department_location
from faculty f
left join department as d
on f.faculty_id = d.faculty_id;

-- cross join 
select f.faculty_id,department_location
from faculty f
cross join department as d;

-- Table-2
-- Create the department table to store information about departments within faculties
CREATE TABLE department (
  department_id INT PRIMARY KEY, -- Unique identifier for each department
  department_name VARCHAR(255), -- Name of the department
  department_description TEXT, -- Description of the department
  faculty_id INT, -- Foreign key referencing the faculty
  department_head VARCHAR(255), -- Head of the department
  department_location VARCHAR(255), -- Location of the department
  FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id) -- Establishing relationship with faculty
);

-- Insert sample data into the department table
INSERT INTO department (department_id, department_name, department_description, faculty_id, department_head, department_location) VALUES
(1, 'Department of Physics', 'Study of matter and energy', 1, 'Dr. Emily White', 'Room 101'),
(2, 'Department of Computer Science', 'Focus on computing and programming', 1, 'Dr. Frank Green', 'Room 102'),
(3, 'Department of Civil Engineering', 'Deals with infrastructure and construction', 2, 'Dr. Grace Black', 'Room 201'),
(4, 'Department of Mechanical Engineering', 'Focus on machinery and mechanics', 2, 'Dr. Henry Blue', 'Room 202'),
(5, 'Department of History', 'Study of past events and societies', 3, 'Dr. Irene Red', 'Room 301');

-- innner join 
select * from 
department
inner join students on department.department_id = students.department_id;

-- left join
select d.department_id,department_name,student_id
from department d
left join students s
on d.department_id = s.department_id;

-- right join
select d.department_id,department_name,student_id
from department d
right join students s
on d.department_id = s.department_id;


-- left exclusive join
select d.department_id,department_name,student_id,enrollment_year
from department d
left join students s
on d.department_id = s.department_id
where s.enrollment_year is null;


-- right exclusive join
select d.department_id,department_name,student_id
from department d
right join students s
on d.department_id = s.department_id
where d.faculty_id is null;

-- full join
select d.department_id,department_name,student_id,enrollment_year
from department d
left join students s
on d.department_id = s.department_id
union
select d.department_id,department_name,student_id,enrollment_year
from department d
right join students s
on d.department_id = s.department_id;


-- cross join 
select d.faculty_id,student_name
from department d
cross join students as s;


-- Table-3
-- Create the students table to store information about students
CREATE TABLE students (
  student_id INT PRIMARY KEY, -- Unique identifier for each student
  student_name VARCHAR(255), -- Name of the student
  student_email VARCHAR(255), -- Email of the student
  department_id INT, -- Foreign key referencing the department
  enrollment_year INT, -- Year of enrollment
  faculty_id INT, -- Foreign key referencing the faculty
  FOREIGN KEY (department_id) REFERENCES department(department_id), -- Establishing relationship with department
  FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id) -- Establishing relationship with faculty
);

-- Insert sample data into the students table
INSERT INTO students (student_id, student_name, student_email, department_id, enrollment_year, faculty_id) VALUES
(1, 'John Doe', 'john.doe@example.com', 1, 2021, 1),
(2, 'Jane Smith', 'jane.smith@example.com', 2, 2020, 1),
(3, 'Alice Johnson', 'alice.johnson@example.com', 1, 2022, 1),
(4, 'Bob Brown', 'bob.brown@example.com', 3, 2021, 2),
(5, 'Charlie Davis', 'charlie.davis@example.com', 4, 2023, 2);

-- innner join 
select * from 
students as s
inner join salary sa on s.faculty_id = sa.faculty_id;

-- left join
select s.faculty_id,student_name,amount
from students s
left join salary as sa on s.faculty_id = sa.faculty_id;

-- right join
select s.faculty_id,student_name,amount
from students s
right join salary as sa on s.faculty_id = sa.faculty_id;

-- left exclusive join
select s.faculty_id,student_name,amount
from students s
left join salary as sa on s.faculty_id = sa.faculty_id
where sa.faculty_id is null;


-- right exclusive join
select s.faculty_id,student_name,amount
from students s
right join salary as sa on s.faculty_id = sa.faculty_id
where s.faculty_id is null;

-- full join
select s.faculty_id,student_name,amount
from students s
left join salary as sa on s.faculty_id = sa.faculty_id
union
select s.faculty_id,student_name,amount
from students s
right join salary as sa on s.faculty_id = sa.faculty_id;

-- cross join 
select s.student_id,sa.salary_id
from students s
cross join salary as sa;


-- Table-4
-- Create the salary table to store salary information for faculty members
CREATE TABLE salary (
  salary_id INT PRIMARY KEY, -- Unique identifier for each salary record
  faculty_id INT, -- Foreign key referencing the faculty
  amount DECIMAL(10, 2), -- Salary amount
  payment_date DATE, -- Date of salary payment
  FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id) -- Establishing relationship with faculty
);

-- Insert sample data into the salary table
INSERT INTO salary (salary_id, faculty_id, amount, payment_date) VALUES
(1, 1, 75000.00, '2023-01-15'),
(2, 2, 80000.00, '2023-01-15'),
(3, 3, 70000.00, '2023-01-15'),
(4, 4, 72000.00, '2023-01-15'),
(5, 5, 68000.00, '2023-01-15');


-- Table-5
-- Create the marks table to store marks obtained by students
CREATE TABLE marks (
  marks_id INT PRIMARY KEY, -- Unique identifier for each marks record
  student_id INT, -- Foreign key referencing the student
  subject_name VARCHAR(255), -- Name of the subject
  marks_obtained INT, -- Marks obtained by the student
  semester INT, -- Semester in which the marks were obtained
  FOREIGN KEY (student_id) REFERENCES students(student_id) -- Establishing relationship with students
);

-- Insert sample data into the marks table
INSERT INTO marks (marks_id, student_id, subject_name, marks_obtained, semester) VALUES
(1, 1, 'Physics', 85, 1),
(2, 1, 'Mathematics', 90, 1),
(3, 2, 'Computer Science', 88, 2),
(4, 3, 'Physics', 92, 1),
(5, 4, 'Civil Engineering', 75, 2),
(6, 5, 'Business Management', 80, 1),
(7,4,null,null,2);

select * from marks;
truncate table marks;
drop table marks;

-- innner join 
select * from 
marks as m
inner join students as s on m.student_id = s.student_id;

-- left join
select* 
from marks m
left join students as s on s.student_id = m.student_id;

-- right join
select *
from marks m
right join students as s 
on m.student_id = s.student_id;



-- left exclusive join
select* 
from marks m
left join students as s on s.student_id = m.student_id
where faculty_id is null;

select *
from marks m
right join students as s 
on m.student_id = s.student_id
where marks_obtained is null;


-- full join
select* 
from marks m
left join students as s on s.student_id = m.student_id;
select *
from marks m
right join students as s 
on m.student_id = s.student_id;

-- cross join 
select m.student_id,student_name
from marks m
cross join students as s;


-- inner join (also known as simplw join/equi join)

-- join 2 tables
select t2.faculty_id, faculty_name,  student_name
from students t1
inner join faculty t2 on t1.faculty_id= t2.faculty_id;

-- join 2 tables
select t2.*, student_name
from students t1
inner join faculty t2 on t1.faculty_id = t2.faculty_id;

-- joins 3 tables
select t1. faculty_id,faculty_name,department_name,student_name
from students as t1
inner join faculty as t2 on t1.faculty_id = t2.faculty_id
inner join department as t3 on t2.faculty_id= t3.faculty_id;

-- joins 4 tables
select s.student_name, m.subject_name, m.marks_obtained, d.department_name,f.faculty_name
from marks m
inner join students s on m.student_id =  s.student_id
inner join department d on s.department_id = d.department_id
inner join faculty f on d.faculty_id = f.faculty_id;

select t2.faculty_name,t1.amount,t3.department_name,t4.student_name
from salary t1
inner join faculty t2 on t1.faculty_id = t2.faculty_id
inner join department t3 on t2.faculty_id=t3.faculty_id
inner join students t4 on t3.department_id = t4.department_id;


-- join 5 tables
select t2.student_name,t1.subject_name,t1.marks_obtained, t3.department_name,t4.faculty_name,t5.amount
from marks t1
inner join students t2 on t1.student_id = t2.student_id
inner join department t3 on t2.department_id = t3.department_id
inner join faculty t4 on t3.faculty_id = t4.faculty_id
inner join salary t5 on t4.faculty_id = t5.faculty_id;




