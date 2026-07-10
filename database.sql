CREATE DATABASE psn_chatbot;

USE psn_chatbot;

CREATE TABLE students(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
department VARCHAR(50),
year VARCHAR(10),
phone VARCHAR(15)
);

INSERT INTO students(name,department,year,phone)
VALUES
('Arun Kumar','BCA','II','9876543210'),
('Priya','B.Sc Computer Science','I','9876543211'),
('Rahul','MCA','III','9876543212'),
('Sneha','B.Com','II','9876543213'),
('Karthik','BBA','III','9876543214');

CREATE TABLE courses(
id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(50),
duration VARCHAR(20)
);

INSERT INTO courses(course_name,duration)
VALUES
('BCA','3 Years'),
('B.Sc Computer Science','3 Years'),
('B.Com','3 Years'),
('BBA','3 Years'),
('MCA','2 Years');

CREATE TABLE fees(
id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(50),
fees VARCHAR(20)
);

INSERT INTO fees(course_name,fees)
VALUES
('BCA','45000'),
('B.Sc Computer Science','40000'),
('B.Com','35000'),
('BBA','42000'),
('MCA','60000');
