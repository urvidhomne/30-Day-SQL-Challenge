CREATE DATABASE day02;
USE day02;

CREATE TABLE students (
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
age INT,
grade_level INT,
city VARCHAR(50));

CREATE TABLE grades (
grade_id INT PRIMARY KEY,
student_id INT,
subject VARCHAR(50),
score DECIMAL(5,2),
exam_date DATE,
FOREIGN KEY (student_id) REFERENCES students(student_id));

INSERT INTO students (student_id, student_name, age, grade_level, city) VALUES
(1, 'Emma Johnson', 15, 9, 'New York'),
(2, 'Liam Smith', 16, 10, 'Los Angeles'),
(3, 'Olivia Brown', 17, 11, 'Chicago'),
(4, 'Noah Davis', 18, 12, 'Houston'),
(5, 'Ava Martinez', 15, 9, 'Phoenix'),
(6, 'Ethan Garcia', 16, 10, 'Philadelphia'),
(7, 'Sophia Rodriguez', 17, 11, 'San Antonio'),
(8, 'Mason Wilson', 18, 12, 'San Diego'),
(9, 'Isabella Anderson', 15, 9, 'Dallas'),
(10, 'William Thomas', 16, 10, 'San Jose'),
(11, 'Mia Taylor', 17, 11, 'Austin'),
(12, 'James Moore', 18, 12, 'Jacksonville'),
(13, 'Charlotte Jackson', 15, 9, 'Fort Worth'),
(14, 'Benjamin White', 16, 10, 'Columbus'),
(15, 'Amelia Harris', 17, 11, 'Charlotte'),
(16, 'Lucas Martin', 18, 12, 'San Francisco'),
(17, 'Harper Thompson', 15, 9, 'Indianapolis'),
(18, 'Henry Garcia', 16, 10, 'Seattle'),
(19, 'Evelyn Martinez', 17, 11, 'Denver'),
(20, 'Alexander Robinson', 18, 12, 'Boston'),
(21, 'Abigail Clark', 16, 10, 'Nashville'),
(22, 'Michael Rodriguez', 17, 11, 'Detroit'),
(23, 'Emily Lewis', 15, 9, 'Portland'),
(24, 'Daniel Lee', 18, 12, 'Las Vegas'),
(25, 'Elizabeth Walker', 16, 10, 'Memphis');

INSERT INTO grades (grade_id, student_id, subject, score, exam_date) VALUES
(1, 1, 'Math', 78.50, '2024-01-15'),
(2, 1, 'Science', 82.25, '2024-01-16'),
(3, 1, 'English', 91.00, '2024-01-17'),
(4, 1, 'History', 85.75, '2024-01-18'),
(5, 2, 'Math', 92.00, '2024-01-15'),
(6, 2, 'Science', 88.50, '2024-01-16'),
(7, 2, 'English', 76.25, '2024-01-17'),
(8, 2, 'History', 94.00, '2024-01-18'),
(9, 3, 'Math', 68.75, '2024-01-15'),
(10, 3, 'Science', 72.00, '2024-01-16'),
(11, 3, 'English', 85.50, '2024-01-17'),
(12, 3, 'History', 79.25, '2024-01-18'),
(13, 4, 'Math', 95.50, '2024-01-15'),
(14, 4, 'Science', 89.75, '2024-01-16'),
(15, 4, 'English', 93.00, '2024-01-17'),
(16, 4, 'History', 88.25, '2024-01-18'),
(17, 5, 'Math', 81.25, '2024-01-15'),
(18, 5, 'Science', 77.50, '2024-01-16'),
(19, 5, 'English', 69.00, '2024-01-17'),
(20, 5, 'History', 84.75, '2024-01-18'),
(21, 6, 'Math', 87.00, '2024-01-15'),
(22, 6, 'Science', 91.25, '2024-01-16'),
(23, 6, 'English', 79.50, '2024-01-17'),
(24, 6, 'History', 86.00, '2024-01-18'),
(25, 7, 'Math', 74.50, '2024-01-15'),
(26, 7, 'Science', 98.00, '2024-01-16'),
(27, 7, 'English', 88.25, '2024-01-17'),
(28, 7, 'History', 92.75, '2024-01-18'),
(29, 8, 'Math', 65.00, '2024-01-15'),
(30, 8, 'Science', 71.50, '2024-01-16'),
(31, 8, 'English', 94.75, '2024-01-17'),
(32, 8, 'History', 78.25, '2024-01-18'),
(33, 9, 'Math', 96.25, '2024-01-15'),
(34, 9, 'Science', 85.00, '2024-01-16'),
(35, 9, 'English', 82.50, '2024-01-17'),
(36, 9, 'History', 90.75, '2024-01-18'),
(37, 10, 'Math', 70.75, '2024-01-15'),
(38, 10, 'Science', 93.50, '2024-01-16'),
(39, 10, 'English', 87.25, '2024-01-17'),
(40, 10, 'History', 75.00, '2024-01-18'),
(41, 11, 'Math', 89.50, '2024-01-15'),
(42, 11, 'Science', 76.25, '2024-01-16'),
(43, 11, 'English', 97.00, '2024-01-17'),
(44, 11, 'History', 83.75, '2024-01-18'),
(45, 12, 'Math', 83.00, '2024-01-15'),
(46, 12, 'Science', 67.50, '2024-01-16'),
(47, 12, 'English', 90.25, '2024-01-17'),
(48, 12, 'History', 95.00, '2024-01-18'),
(49, 13, 'Math', 91.75, '2024-01-15'),
(50, 13, 'Science', 84.00, '2024-01-16'),
(51, 13, 'English', 73.50, '2024-01-17'),
(52, 13, 'History', 88.25, '2024-01-18'),
(53, 14, 'Math', 77.25, '2024-01-15'),
(54, 14, 'Science', 95.50, '2024-01-16'),
(55, 14, 'English', 81.00, '2024-01-17'),
(56, 14, 'History', 69.75, '2024-01-18'),
(57, 15, 'Math', 86.50, '2024-01-15'),
(58, 15, 'Science', 79.25, '2024-01-16'),
(59, 15, 'English', 96.75, '2024-01-17'),
(60, 15, 'History', 92.00, '2024-01-18'),
(61, 16, 'Math', 72.00, '2024-01-15'),
(62, 16, 'Science', 86.75, '2024-01-16'),
(63, 16, 'English', 78.50, '2024-01-17'),
(64, 16, 'History', 97.25, '2024-01-18'),
(65, 17, 'Math', 99.00, '2024-01-15'),
(66, 17, 'Science', 74.50, '2024-01-16'),
(67, 17, 'English', 87.75, '2024-01-17'),
(68, 17, 'History', 81.25, '2024-01-18'),
(69, 18, 'Math', 80.25, '2024-01-15'),
(70, 18, 'Science', 91.00, '2024-01-16'),
(71, 18, 'English', 68.50, '2024-01-17'),
(72, 18, 'History', 85.75, '2024-01-18'),
(73, 19, 'Math', 93.75, '2024-01-15'),
(74, 19, 'Science', 82.50, '2024-01-16'),
(75, 19, 'English', 89.00, '2024-01-17'),
(76, 19, 'History', 76.25, '2024-01-18'),
(77, 20, 'Math', 66.50, '2024-01-15'),
(78, 20, 'Science', 94.75, '2024-01-16'),
(79, 20, 'English', 92.25, '2024-01-17'),
(80, 20, 'History', 87.00, '2024-01-18'),
(81, 21, 'Math', 88.25, '2024-01-15'),
(82, 21, 'Science', 73.00, '2024-01-16'),
(83, 21, 'English', 95.50, '2024-01-17'),
(84, 21, 'History', 80.75, '2024-01-18'),
(85, 22, 'Math', 75.50, '2024-01-15'),
(86, 22, 'Science', 89.25, '2024-01-16'),
(87, 22, 'English', 84.00, '2024-01-17'),
(88, 22, 'History', 98.50, '2024-01-18'),
(89, 23, 'Math', 97.25, '2024-01-15'),
(90, 23, 'Science', 70.75, '2024-01-16'),
(91, 23, 'English', 86.50, '2024-01-17'),
(92, 23, 'History', 74.00, '2024-01-18'),
(93, 24, 'Math', 84.75, '2024-01-15'),
(94, 24, 'Science', 96.00, '2024-01-16'),
(95, 24, 'English', 71.25, '2024-01-17'),
(96, 24, 'History', 89.50, '2024-01-18'),
(97, 25, 'Math', 79.00, '2024-01-15'),
(98, 25, 'Science', 83.75, '2024-01-16'),
(99, 25, 'English', 99.50, '2024-01-17'),
(100, 25, 'History', 91.25, '2024-01-18');

SELECT * FROM students;
SELECT * FROM grades;

#1. Find the average score across all exams
SELECT AVG(score) AS Average_score FROM grades;

#2. Count the total number of students in the database
SELECT COUNT(DISTINCT(student_name)) FROM students;

#3. Find the highest score ever recorded
SELECT MAX(score) AS highest_score FROM grades;

#4. Find the lowest score in Mathematics
SELECT MIN(score) AS lowest_score FROM grades WHERE subject='Math';

#5. Calculate the average score for each subject
SELECT subject, AVG(score) AS average_score FROM grades GROUP BY subject;

#6. Count how many exams each student has taken
SELECT students.student_name, 
COUNT(grades.subject) AS count_subject 
FROM students 
LEFT JOIN grades ON students.student_id = grades.student_id
GROUP BY students.student_id;

#7. Find the total number of students in each city
SELECT city, COUNT(student_name) AS noofstudents
FROM students
GROUP BY city;

#8. Calculate the average age of students
SELECT AVG(age) AS avg_age FROM students;

#9. Find the maximum score for each grade level
SELECT students.grade_level, MAX(grades.score) as max_score
FROM students
LEFT JOIN grades on students.student_id = grades.student_id
GROUP BY grade_level;

#10. Count how many students are in grade level 11
SELECT grade_level, COUNT(student_id) AS total_students
FROM students
WHERE grade_level= '11';

#11. Find the average score for student ID 5
SELECT student_id, AVG(score) AS avg_score
FROM grades
WHERE student_id = '5';

#12. Calculate the sum of all scores in English
SELECT SUM(score) AS sum_score, subject 
FROM grades
WHERE subject= 'English';

#13. Find how mant different subjects are taught
SELECT DISTINCT(subject)
FROM grades;

#14. Get the average score for exams taken after 2024-01-01
SELECT AVG(score) AS avg_score, exam_date
FROM grades
WHERE exam_date > '2024-01-01'
GROUP BY exam_date;

#15. Find the minimum, max and avg score for SCIENCE
SELECT MAX(score) AS max_score, MIN(score) AS min_score, AVG(score) AS avg_score
FROM grades
WHERE subject='Science';

