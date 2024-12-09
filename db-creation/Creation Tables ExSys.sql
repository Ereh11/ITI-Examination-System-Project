CREATE DATABASE ITI_Examination
USE ITI_Examination

CREATE TABLE Department (
    dept_id INT IDENTITY(1,1) PRIMARY KEY,
    dept_name NVARCHAR(50)  NOT NULL,
    dept_location NVARCHAR(50) NOT NULL,
    phone VARCHAR(11) NOT NULL,
    mgr_id INT,
    mgr_hiredate DATE DEFAULT GETDATE()
)
--drop table Department

CREATE TABLE Student (
    std_id INT IDENTITY(1,1) PRIMARY KEY,
    std_fname NVARCHAR(20) NOT NULL,
    std_lname NVARCHAR(20) NOT NULL,
    city NVARCHAR(20) NOT NULL,
    street NVARCHAR(50),
    phone VARCHAR(11) NOT NULL,
    std_DoB DATE NOT NULL,
    email NVARCHAR(50) UNIQUE NOT NULL,
    passowrd NVARCHAR(20) NOT NULL,
    dept_id INT ,
    gender NVARCHAR(3) NOT NULL DEFAULT 'M',
   

    CONSTRAINT ch_st_DoB CHECK (YEAR(std_DoB) > 1997),
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
    CONSTRAINT chk_student_gender CHECK (gender IN ('M', 'F'))
)

CREATE TABLE Instructor (
    ins_id INT IDENTITY(1,1) PRIMARY KEY,
    ins_fname NVARCHAR(20) NOT NULL,
    ins_lname NVARCHAR(20) NOT NULL,
    city NVARCHAR(20) NOT NULL,
    street NVARCHAR(20),
    phone VARCHAR(11) NOT NULL,
    std_DoB DATE NOT NULL,
    email NVARCHAR(50) UNIQUE NOT NULL,
    passowrd NVARCHAR(20) NOT NULL,
    salary DECIMAL(10,2) DEFAULT 10000,
    hire_date DATE DEFAULT GETDATE(),
    dept_id INT,
    gender NVARCHAR(10) NOT NULL DEFAULT 'Not Specified',
    

    CONSTRAINT fk_ins_dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
    CONSTRAINT chk_instructor_gender CHECK (gender IN ('M', 'F'))
)

CREATE TABLE QUESTION (
    Ques_Id INT IDENTITY(1,1) PRIMARY KEY,
    Content NVARCHAR(MAX) NOT NULL,
    Answer NVARCHAR(MAX) NOT NULL,
    Type VARCHAR(20) NOT NULL,
    
    CONSTRAINT chk_Type CHECK (Type IN ('MCQ', 'True&False'))
)

CREATE TABLE Course (
    crs_id INT IDENTITY(1,1) PRIMARY KEY,
    crs_name NVARCHAR(50) NOT NULL,
    hours INT NOT NULL,
)



CREATE TABLE Exam (
    exm_id INT IDENTITY(1,1) PRIMARY KEY,
    exm_model INT NOT NULL,
    duration INT NOT NULL,
    crs_id INT,
    CONSTRAINT FK_Exam_Course FOREIGN KEY(crs_id) REFERENCES Course(crs_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

CREATE TABLE Ins_Course (
    Crs_Id INT NOT NULL,
    Ins_Id INT NOT NULL,
   
    CONSTRAINT CI PRIMARY KEY (Ins_Id, Crs_Id),
    CONSTRAINT C2 FOREIGN KEY(Crs_Id) REFERENCES Course(crs_id),
    CONSTRAINT C3 FOREIGN KEY(Ins_Id) REFERENCES Instructor(ins_id)
)

CREATE TABLE Ques_exam (
    exam_id INT NOT NULL,
    ques_id INT NOT NULL,
    
    CONSTRAINT PK_Ques_exam PRIMARY KEY (exam_id, ques_id),
    CONSTRAINT FK_Ques_exam_Exam FOREIGN KEY(exam_id) REFERENCES Exam(exm_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT FK_Ques_exam_QUESTION FOREIGN KEY(ques_id) REFERENCES QUESTION(Ques_Id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

CREATE TABLE Question_Type (
    Ques_Id INT PRIMARY KEY,
    Opt1 NVARCHAR(100) NOT NULL,
    Opt2 NVARCHAR(100) NOT NULL,
    Opt3 NVARCHAR(100) NULL,
    Opt4 NVARCHAR(100) NULL,
   
    CONSTRAINT C1 FOREIGN KEY(Ques_Id) REFERENCES QUESTION(Ques_Id)
)

CREATE TABLE Std_course (
    crs_id INT NOT NULL,
    std_id INT NOT NULL,
    enroll_date DATE NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_Std_course PRIMARY KEY (crs_id, std_id),
    CONSTRAINT FK_Std_course_Course FOREIGN KEY(crs_id) REFERENCES Course(crs_id),
    CONSTRAINT FK_Std_course_Student FOREIGN KEY(std_id) REFERENCES Student(std_id)
)

CREATE TABLE Std_exam (
    exam_id INT NOT NULL,
    std_id INT NOT NULL,
    grade INT NOT NULL DEFAULT 70,
    take_date DATE NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_Std_exam PRIMARY KEY (exam_id, std_id),
    CONSTRAINT FK_Std_exam_Exam FOREIGN KEY(exam_id) REFERENCES Exam(exm_id),
    CONSTRAINT FK_Std_exam_Student FOREIGN KEY(std_id) REFERENCES Student(std_id)
)

CREATE TABLE Std_ExamAnswer (
    exam_id INT NOT NULL,
    std_id INT NOT NULL,
    ques_id INT NOT NULL,
    std_answer INT NOT NULL,
    
    CONSTRAINT PK_Std_ExamAnswer PRIMARY KEY (exam_id, std_id, ques_id),
    CONSTRAINT FK_Std_ExamAnswer_Exam FOREIGN KEY(exam_id) REFERENCES Exam(exm_id),
    CONSTRAINT FK_Std_ExamAnswer_QUESTION FOREIGN KEY(ques_id) REFERENCES QUESTION(Ques_Id),
    CONSTRAINT FK_Std_ExamAnswer_Student FOREIGN KEY(std_id) REFERENCES Student(std_id)
)

CREATE TABLE Topic (
    top_id INT IDENTITY(1,1) PRIMARY KEY,
    top_name NVARCHAR(50) NOT NULL,
    crs_id INT,
    CONSTRAINT FK_Topic_Course FOREIGN KEY(crs_id) REFERENCES Course(crs_id)
)


--=================================== constraints ========================================------
-- constraints with ON DELETE SET NULL and ON UPDATE CASCADE for dept  on student and instructor 
------------ student table
ALTER TABLE Student
DROP CONSTRAINT fk_dept;

ALTER TABLE Student
ADD CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE Student
ADD CONSTRAINT CHK_Student_Email CHECK (email LIKE '%_@__%.__%');

ALTER TABLE Student
ADD CONSTRAINT CHK_Student_Phone CHECK (phone LIKE '[0-9][0-9][0-9]%');


------ instructor table 

ALTER TABLE Instructor
DROP CONSTRAINT fk_ins_dept;

ALTER TABLE Instructor
ADD CONSTRAINT fk_ins_dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
ON DELETE SET NULL
ON UPDATE CASCADE;


ALTER TABLE Instructor
ADD CONSTRAINT CHK_Student_Email CHECK (email LIKE '%_@__%.__%');

ALTER TABLE Instructor
ADD CONSTRAINT CHK_Student_Phone CHECK (phone LIKE '[0-9][0-9][0-9]%');






--------------- instructor course table 
ALTER TABLE Ins_Course DROP CONSTRAINT C2;
ALTER TABLE Ins_Course DROP CONSTRAINT C3;

ALTER TABLE Ins_Course
ADD CONSTRAINT C2 FOREIGN KEY (Crs_Id)
REFERENCES Course(crs_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Ins_Course
ADD CONSTRAINT C3 FOREIGN KEY (Ins_Id)
REFERENCES Instructor(ins_id)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE Ins_Course
ADD CONSTRAINT UQ_Ins_Course UNIQUE (Ins_Id, Crs_Id);

-----------------------
--------Course constarint
ALTER TABLE Course
ADD CONSTRAINT CHK_Course_Hours CHECK (hours > 0);


-----------------------
--------------------
---- Student course 
ALTER TABLE Std_course DROP CONSTRAINT FK_Std_course_Course;
ALTER TABLE Std_course ADD CONSTRAINT FK_Std_course_Course FOREIGN KEY (crs_id)
REFERENCES Course(crs_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Std_course DROP CONSTRAINT FK_Std_course_Student;
ALTER TABLE Std_course ADD CONSTRAINT FK_Std_course_Student FOREIGN KEY (std_id)
REFERENCES Student(std_id)
ON DELETE CASCADE
ON UPDATE CASCADE;


------- student exam 
ALTER TABLE Std_exam
DROP CONSTRAINT FK_Std_exam_Exam;

ALTER TABLE Std_exam
ADD CONSTRAINT FK_Std_exam_Exam FOREIGN KEY (exam_id) REFERENCES Exam(exm_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Std_exam
DROP CONSTRAINT FK_Std_exam_Student;

ALTER TABLE Std_exam
ADD CONSTRAINT FK_Std_exam_Student FOREIGN KEY (std_id) REFERENCES Student(std_id)
ON DELETE CASCADE
ON UPDATE CASCADE;


-------- studendt exam-answer
ALTER TABLE Std_ExamAnswer
DROP CONSTRAINT FK_Std_ExamAnswer_Exam;

ALTER TABLE Std_ExamAnswer
ADD CONSTRAINT FK_Std_ExamAnswer_Exam FOREIGN KEY (exam_id) REFERENCES Exam(exm_id)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE Std_ExamAnswer
DROP CONSTRAINT FK_Std_ExamAnswer_QUESTION;

ALTER TABLE Std_ExamAnswer
ADD CONSTRAINT FK_Std_ExamAnswer_QUESTION FOREIGN KEY (ques_id) REFERENCES QUESTION(Ques_Id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Std_ExamAnswer
DROP CONSTRAINT FK_Std_ExamAnswer_Student;

ALTER TABLE Std_ExamAnswer
ADD CONSTRAINT FK_Std_ExamAnswer_Student FOREIGN KEY (std_id) REFERENCES Student(std_id)
ON DELETE CASCADE
ON UPDATE CASCADE;




