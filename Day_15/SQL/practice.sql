CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade CHAR(1)
);

INSERT INTO Students (student_id, name, age, grade)
VALUES 
(1, 'Alice', 20, 'A'),
(2, 'Bob', 21, 'B'),
(3, 'Charlie', 19, 'A'),
(4, 'David', 22, 'C');

--  Display all students
SELECT * FROM Students;

SELECT * FROM Students
WHERE grade = 'A';

SELECT name, age FROM Students
WHERE age > 20;

UPDATE Students
SET grade = 'A'
WHERE name = 'Bob';

DELETE FROM Students
WHERE grade = 'C';

SELECT * FROM Students
ORDER BY age ASC;

SELECT COUNT(*) AS total_students FROM Students;

SELECT grade, COUNT(*) AS count_per_grade
FROM Students
GROUP BY grade;

ALTER TABLE Students
ADD email VARCHAR(255);

DROP TABLE Students;