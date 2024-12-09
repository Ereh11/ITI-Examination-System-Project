-- Insert departments
INSERT INTO Department (dept_name, dept_location, phone, mgr_id) 
VALUES 
('IT', 'Cairo', '12345678901', 1),
('HR', 'Alexandria', '98765432101', 2);

-- Insert students
INSERT INTO Student (std_fname, std_lname, city, street, phone, std_DoB, email, passowrd, dept_id, gender) 
VALUES 
('John', 'Doe', 'Cairo', 'Street 1', '11122233344', '1999-01-01', 'john.doe@example.com', 'password123', 1, 'M'),
('Jane', 'Smith', 'Alexandria', 'Street 2', '55566677788', '1998-05-15', 'jane.smith@example.com', 'password123', 2, 'F');

-- Insert instructors
INSERT INTO Instructor (ins_fname, ins_lname, city, street, phone, std_DoB, email, passowrd, dept_id, gender) 
VALUES 
('Alice', 'Brown', 'Cairo', 'Street 3', '88899900011', '1980-03-12', 'alice.brown@example.com', 'password123', 1, 'F'),
('Bob', 'White', 'Alexandria', 'Street 4', '77788899900', '1985-07-25', 'bob.white@example.com', 'password123', 2, 'M');

-- Insert courses
INSERT INTO Course (crs_name, hours) 
VALUES 
('Math', 40),
('Science', 35);

-- Link instructors to courses
INSERT INTO Ins_Course (Crs_Id, Ins_Id) 
VALUES 
(1, 1), 
(2, 2);

-- Insert topics for courses
INSERT INTO Topic (top_name, crs_id) 
VALUES 
('Algebra', 1), 
('Biology', 2);

-- Insert exams
INSERT INTO Exam (exm_model, duration, crs_id) 
VALUES 
(101, 90, 1), 
(102, 60, 2);

-- Insert questions
INSERT INTO QUESTION (Content, Answer, Type) 
VALUES 
('What is 2+2?', '4', 'MCQ'), 
('The earth is flat. True or False?', 'False', 'True&False');

-- Link questions to exams
INSERT INTO Ques_exam (exam_id, ques_id) 
VALUES 
(1, 1), 
(2, 2);

-- Insert student-course enrollments
INSERT INTO Std_course (crs_id, std_id, enroll_date) 
VALUES 
(1, 1), 
(2, 2);

-- Insert student exam attempts
INSERT INTO Std_exam (exam_id, std_id, grade, take_date) 
VALUES 
(1, 1, 85, '2024-11-01'), 
(2, 2, 90, '2024-11-02');


---------------------------------------- Test cases --------------------------------

INSERT INTO Student (std_fname, std_lname, city, phone, std_DoB, email, passowrd, dept_id, gender)
VALUES ('Tom', 'Hanks', 'Cairo', '12345678901', '1999-01-01', 'john.doe@example.com', 'password123', 1, 'M'); --- duplivcate email

INSERT INTO Student (std_fname, std_lname, city, phone, std_DoB, email, passowrd, dept_id, gender)
VALUES ('Mary', 'Jane', 'Cairo', '12345678901', '1995-01-01', 'mary.jane@example.com', 'password123', 1, 'F'); --- DoB invalid


UPDATE Student SET dept_id = 99 WHERE std_id = 1; -- dept id not exist

UPDATE Course SET crs_name = 'Advanced Math' WHERE crs_id = 1; --- pass

------ cascade tset
DELETE FROM Department WHERE dept_id = 1;

SELECT * FROM Student WHERE dept_id IS NULL;
SELECT * FROM Instructor WHERE dept_id IS NULL;


------- delete exam
select * from Exam
DELETE FROM Exam WHERE exm_id = 1;

--- gender chk

INSERT INTO Student (std_fname, std_lname, city, phone, std_DoB, email, passowrd, dept_id)
VALUES ('Anna', 'Taylor', 'Cairo', '12312312345', '2000-01-01', 'anna.taylor@example.com', 'password123', 2);

SELECT * FROM Student WHERE email = 'anna.taylor@example.com';


INSERT INTO QUESTION (Content, Answer, Type) 
VALUES ('Invalid question type?', 'Error', 'Essay');  --- chk type invalid

INSERT INTO Topic (top_name, crs_id) 
VALUES ('Invalid Topic', 99); --- crs id not exist
