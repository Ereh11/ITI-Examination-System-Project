------ SPs
-----------------------------Tables 4 Main SPs------------------------------------------------------------------------------------------------------------------------------
--#1- Student Table--------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Student
CREATE OR ALTER PROCEDURE AddStudent(@std_fname nvarchar(20), @std_lname nvarchar(20), @city nvarchar(20), @street nvarchar(50), @phone varchar(11), @std_DoB date, @email nvarchar(50), @passowrd nvarchar(20), @dept_id int , @gender nvarchar(10))
AS
	BEGIN TRY
		INSERT INTO Student
		VALUES(@std_fname, @std_lname, @city, @street, @phone, @std_DoB, @email, @passowrd, @dept_id, @gender);
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddStudent 'Sara', 'Mustafa', 'Sohag', '18 Al-Mahafza', '01122335566', '2002-01-01', 'sara1.mustafa@gamil.com', '123456Sara', 10,'F';
GO;
-- 2- Delete Student
CREATE OR ALTER PROCEDURE DeleteStudent(@std_id int)
AS
	BEGIN TRY
		DELETE FROM Student
		WHERE std_id = @std_id;
	END TRY
	BEGIN CATCH
		SELECT 'Deleted Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC DeleteStudent 40;
GO;
-- 3- Select student
CREATE OR ALTER PROCEDURE SelectStudentData(@std_id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM Student
			WHERE std_id = @std_id
		)
		BEGIN
			SELECT *
			FROM Student
			WHERE std_id = @std_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
--Test--
EXEC SelectStudentData 10;
GO;
-- 4- Update student
CREATE OR ALTER PROCEDURE UpdateStudent(@oldstd_id int,  @std_fname nvarchar(20), @std_lname nvarchar(20), @city nvarchar(20), @street nvarchar(50), @phone varchar(11), @std_DoB date, @email nvarchar(50), @passowrd nvarchar(20), @dept_id int, @gender nvarchar(10))
AS
	BEGIN TRY
		UPDATE Student
		SET 
		    std_fname = @std_fname, std_lname = @std_lname, 
			city = @city, street = @street, 
			phone = @phone, std_DoB = @std_DoB, 
			email = @email, passowrd = @passowrd,
			dept_id = @dept_id,
			gender=@gender
		WHERE std_id = @oldstd_id;
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateStudent 10, 'SaraHH', 'Mustafa', 'Sohag', '18 Al-Mahafza', '01122335566', '2002-01-01', 'sarah.mustafa@gamil.com', '123456Sara', 10,'F';
GO;


--#2- Instructor Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Instructor
CREATE OR ALTER PROCEDURE AddInstructor( @ins_fname nvarchar(20), @ins_lname nvarchar(20), @city nvarchar(20), @street nvarchar(50), @phone varchar(11), @ins_DoB date, @email nvarchar(50), @passowrd nvarchar(20), @salary decimal(10, 2), @hire_date date, @dept_id int,@gender nvarchar(10) )
AS
	BEGIN TRY
		INSERT INTO Instructor
		VALUES(@ins_fname, @ins_lname, @city, @street, @phone, @ins_DoB, @email, @passowrd, @salary, @hire_date, @dept_id,@gender);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddInstructor 'Aml', 'Saeed', 'Ales', '20 Mustafa Kamal', '0101239684', '1995-01-02', 'amal.saeed@gamil.com', '123456Aml', 12000, '2020-06-09', 10,'F';
GO;
-- 2- Delete Instructor
CREATE OR ALTER PROCEDURE DeleteInstructor(@ins_id int)
AS
	BEGIN TRY
		DELETE FROM Instructor
		WHERE ins_id = @ins_id;
	END TRY
	BEGIN CATCH
		SELECT 'Deleted Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC DeleteInstructor 10;
GO;
-- 3- Select Instructor
CREATE OR ALTER PROCEDURE SelectInstructorData(@ins_id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM Instructor
			WHERE ins_id = @ins_id
		)
		BEGIN
			SELECT *
			FROM Instructor
			WHERE ins_id = @ins_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
--Test--
EXEC SelectInstructorData 20;
GO;
-- 4- Update Instructor
CREATE OR ALTER PROCEDURE UpdateInstructor(@oldins_id int, @ins_fname nvarchar(20), @ins_lname nvarchar(20), @city nvarchar(20), @street nvarchar(50), @phone varchar(11), @ins_DoB date, @email nvarchar(50), @passowrd nvarchar(20), @salary decimal(10, 2), @hire_date date, @dept_id int,@gender nvarchar(10))
AS
	BEGIN TRY
		UPDATE Instructor
		SET 
		    ins_fname = @ins_fname, ins_lname = @ins_lname, 
			city = @city, street = @street, 
			phone = @phone, ins_DoB = @ins_DoB, 
			email = @email, passowrd = @passowrd,
			salary = @salary, hire_date = @hire_date,
			dept_id = @dept_id, gender=@gender
		WHERE ins_id = @oldins_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateInstructor 9, 'Aml', 'Saeed', 'Ales', '20 Mustafa Kamal', '0101239684', '1995-01-02', 'amal1.saeed@gamil.com', '123456Aml', 12000, '2020-06-09', 10,'F';
EXEC SelectInstructorData 9;
select * from Instructor
GO;

--#3- Course Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Course
CREATE OR ALTER PROCEDURE AddCourse(@crs_name nvarchar(50), @hours int)
AS
	BEGIN TRY
		INSERT INTO Course
		VALUES(@crs_name, @hours);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddCourse 'Advanced JS', 18;
GO;
-- 2- Delete Course
CREATE OR ALTER PROCEDURE DeleteCourser(@crs_id int)
AS
	BEGIN TRY
		DELETE FROM Course
		WHERE crs_id = @crs_id;
	END TRY
	BEGIN CATCH
		SELECT 'Deleted Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC DeleteCourser 1000;
GO;
-- 3- Select Course by id
CREATE OR ALTER PROCEDURE SelectCourserData(@crs_id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM Course
			WHERE crs_id = @crs_id
		)
		BEGIN
			SELECT *
			FROM Course
			WHERE crs_id = @crs_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
--Test--
EXEC SelectCourserData 10;
GO;
-- 4- Update Course
CREATE OR ALTER PROCEDURE UpdateCourse(@oldcrs_id int, @crs_name nvarchar(50), @hours int)
AS
	BEGIN TRY
		UPDATE Course
		SET  
		    crs_name = @crs_name,
			hours = @hours
		WHERE crs_id = @oldcrs_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateCourse 10, 'JS', 18;
EXEC SelectCourserData 10;
GO;
--#4- Exam Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Exam
CREATE OR ALTER PROCEDURE AddExam(@exm_model int, @duration int, @crs_id int)
AS
	BEGIN TRY
		INSERT INTO Exam
		VALUES(@exm_model, @duration, @crs_id);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddExam 3, 90, 4;
GO;
-- 2- Delete Exam
CREATE OR ALTER PROCEDURE DeleteExam(@exm_id int)
AS
	BEGIN TRY
		DELETE FROM Exam
		WHERE exm_id = @exm_id;
	END TRY
	BEGIN CATCH
		SELECT 'Deleted Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC DeleteExam 10;
GO;
-- 3- Select Exam by id
CREATE OR ALTER PROCEDURE SelectExamData(@exm_id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM Exam
			WHERE exm_id = @exm_id
		)
		BEGIN
			SELECT *
			FROM Exam
			WHERE exm_id = @exm_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
--Test--
EXEC SelectExamData 2;
GO;
-- 4- Update Exam
CREATE OR ALTER PROCEDURE UpdateExam(@oldexm_id int, @exm_model int, @duration int, @crs_id int)
AS
	BEGIN TRY
		UPDATE Exam
		SET exm_model = @exm_model,
			duration = @duration,
			crs_id = @crs_id
		WHERE exm_id = @oldexm_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateExam 2, 3, 190, 4;
EXEC SelectExamData 2;
GO;


--#5- QUESTION Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add QUESTION
CREATE OR ALTER PROCEDURE AddQUESTION( @Content nvarchar(max), @Answer nvarchar(max), @Type varchar(20))
AS
	BEGIN TRY
		INSERT INTO QUESTION
		VALUES(@Content, @Answer, @Type);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddQUESTION 'CSS is Cascade Style Sheet?', 'True', 'True&False';
GO;
-- 2- Delete QUESTION
CREATE OR ALTER PROCEDURE DeleteQUESTION(@Ques_Id int)
AS
	BEGIN TRY
		DELETE FROM QUESTION
		WHERE Ques_Id = @Ques_Id;
	END TRY
	BEGIN CATCH
		SELECT 'Deleted Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC DeleteQUESTION 101;
GO;
-- 3- Select QUESTION
CREATE OR ALTER PROCEDURE SelectQUESTIONData(@Ques_Id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM QUESTION
			WHERE Ques_Id = @Ques_Id
		)
		BEGIN
			SELECT *
			FROM QUESTION
			WHERE Ques_Id = @Ques_Id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
--Test--
EXEC SelectQUESTIONData 10;
GO;
-- 4- Update QUESTION
CREATE OR ALTER PROCEDURE UpdateQUESTION(@oldQues_Id int, @Content nvarchar(max), @Answer nvarchar(max), @Type varchar(20))
AS
	BEGIN TRY
		UPDATE QUESTION
		SET Content = @Content,
			Answer = @Answer,
			Type = @Type
		WHERE Ques_Id = @oldQues_Id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateQUESTION 10,'CSS is Cascade Style Sheet ?', 'True', 'True&False';
EXEC SelectQUESTIONData 10;
GO;

--#6- Department Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Department
CREATE OR ALTER PROCEDURE AddDepartment(@dept_name nvarchar(50), @dept_location nvarchar(50), @phone varchar(11), @mgr_id int, @mgr_hiredate date)
AS
	BEGIN TRY
		INSERT INTO Department
		VALUES(@dept_name, @dept_location, @phone, @mgr_id, @mgr_hiredate);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddDepartment 'HR', 'Alexandria', '01128936490', 5, '2024-10-09';
GO;
-- 2- Delete Department
CREATE OR ALTER PROCEDURE DeleteDepartment(@dept_id int)
AS
	BEGIN TRY
		DELETE FROM Department
		WHERE dept_id = @dept_id;
	END TRY
	BEGIN CATCH
		SELECT 'Deleted Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC DeleteDepartment 11;
GO;
-- 3- Select Department
CREATE OR ALTER PROCEDURE SelectDepartmentData(@dept_id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM Department
			WHERE dept_id = @dept_id
		)
		BEGIN
			SELECT *
			FROM Department
			WHERE dept_id = @dept_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
--Test--


EXEC SelectDepartmentData 10;
GO;
-- 4- Update Department
CREATE OR ALTER PROCEDURE UpdateDepartment(@olddept_id int, @dept_name nvarchar(50), @dept_location nvarchar(50), @phone varchar(11), @mgr_id int, @mgr_hiredate date)
AS
	BEGIN TRY
		UPDATE Department
		SET dept_name = @dept_name,
			dept_location = @dept_location,
			phone = @phone,
			mgr_id = @mgr_id,
			mgr_hiredate = @mgr_hiredate
		WHERE dept_id = @olddept_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateDepartment 12, 'HR', 'Alexandria', '01128936490', 5, '2024-10-09';
EXEC SelectDepartmentData 12;
GO;

--#7- Topic Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Topic
CREATE OR ALTER PROCEDURE AddTopic(@top_name nvarchar(50), @crs_id int)
AS
	BEGIN TRY
		INSERT INTO Topic
		VALUES(@top_name, @crs_id);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddTopic 'Recursion', 5;
GO;
-- 2- Delete Topic
CREATE OR ALTER PROCEDURE DeleteTopic(@top_id int)
AS
	BEGIN TRY
		DELETE FROM Topic
		WHERE top_id = @top_id;
	END TRY
	BEGIN CATCH
		SELECT 'Deleted Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC DeleteTopic 84;
GO;
-- 3- Select Topic
CREATE OR ALTER PROCEDURE SelectTopicData(@top_id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM Topic
			WHERE top_id = @top_id
		)
		BEGIN
			SELECT *
			FROM Topic
			WHERE top_id = @top_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
--Test--
EXEC SelectTopicData 82;
GO;
-- 4- Update Topic
CREATE OR ALTER PROCEDURE UpdateTopic(@oldtop_id int, @top_name nvarchar(50), @crs_id int)
AS
	BEGIN TRY
		UPDATE Topic
		SET top_name = @top_name,
			crs_id = @crs_id
		WHERE top_id = @oldtop_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateTopic 85, 'Recursioooon', 6;
EXEC SelectTopicData 85;
select * from Topic
GO;
--#8- Std_Course Table--------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- INSERT Std_Course

CREATE OR ALTER PROCEDURE AddStdCourse(@crs_id int, @std_id int, @enroll_date date)
AS
BEGIN TRY
    INSERT INTO Std_course (crs_id, std_id, enroll_date)
    VALUES (@crs_id, @std_id, @enroll_date);
END TRY
BEGIN CATCH
    SELECT 'Insertion Failed' AS [Error Message];
END CATCH;
GO;
-- Test 
EXEC AddStdCourse 1, 5, '2024-01-01';
GO;

-- 2- Delete Std_Course
CREATE OR ALTER PROCEDURE DeleteStdCourse(@crs_id int, @std_id int)
AS
BEGIN TRY
    DELETE FROM Std_Course
    WHERE crs_id = @crs_id AND std_id = @std_id;
END TRY
BEGIN CATCH
    SELECT 'Deletion Failed' AS [Error Message];
END CATCH;
GO;
-- test
EXEC DeleteStdCourse 1, 5;
GO;

--- 3- Select Std_Course 
--- 3.1- Select Std_Course by course id
CREATE OR ALTER PROCEDURE SelectStdCoursbyCrsId(@crs_id int)
AS
IF EXISTS 
		(
			SELECT *
			FROM Std_Course
			WHERE crs_id = @crs_id
		)
BEGIN
    SELECT std_id
    FROM Std_Course
    WHERE crs_id = @crs_id
END
ELSE
    SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectStdCoursbyCrsId 1;
GO;

--- 3.2- Select Std_Course by student id
CREATE OR ALTER PROCEDURE SelectStdCoursbyStdId(@std_id int)
AS
IF EXISTS 
		(
			SELECT *
			FROM Std_Course
			WHERE std_id = @std_id
		)
BEGIN
    SELECT crs_id
    FROM Std_Course
    WHERE std_id = @std_id
END
ELSE
    SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectStdCoursbyStdId 1;
GO;

--4- Update Std_Course
CREATE OR ALTER PROCEDURE UpdateStdCourse(@old_crs_id int, @old_std_id int, @new_crs_id int, @new_std_id int, @enroll_date date)
AS
BEGIN TRY
    UPDATE Std_Course
    SET crs_id = @new_crs_id,
        std_id = @new_std_id,
        enroll_date = @enroll_date
    WHERE crs_id = @old_crs_id AND std_id = @old_std_id;
END TRY
BEGIN CATCH
    SELECT 'Update Failed' AS [Error Message];
END CATCH;
GO;
--- test 
EXEC UpdateStdCourse 7, 1, 6, 2, '2024-07-01';
EXEC SelectStdCoursbyStdId 2;
GO;

--#9- Ins_Course Table--------------------------------------------------------------------------------------------------------------------------------------------------
--1- INSERT Ins_Course

CREATE OR ALTER PROCEDURE AddInsCourse(@crs_id int, @ins_id int)
AS
BEGIN TRY
    INSERT INTO Ins_Course (crs_id, ins_id)
    VALUES (@crs_id, @ins_id);
END TRY
BEGIN CATCH
    SELECT 'Insertion Failed' AS [Error Message];
END CATCH;
GO;
-----------
-- Test
EXEC AddInsCourse 2, 1;
GO;

-- 2 - Delete Ins_Course
CREATE OR ALTER PROCEDURE DeleteInsCourse(@crs_id int, @ins_id int)
AS
BEGIN TRY
    DELETE FROM Ins_Course
    WHERE crs_id = @crs_id AND ins_id = @ins_id;
END TRY
BEGIN CATCH
    SELECT 'Deletion Failed' AS [Error Message];
END CATCH;
GO;
--- Test
EXEC DeleteInsCourse 5, 1;
GO;

-- 3- Select Ins_Course
--3.1- select instructor course by course id  
CREATE OR ALTER PROCEDURE SelectInsCourseByCrsId(@crs_id int)
AS
IF EXISTS (
			SELECT *
			FROM Ins_Course
			WHERE crs_id = @crs_id
		  )
BEGIN
    SELECT Ins_Id
    FROM Ins_Course
    WHERE crs_id = @crs_id
END
ELSE
    SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectInsCourseByCrsId 5;
GO;

--3.1- select instructor course by instructor id  
CREATE OR ALTER PROCEDURE SelectInsCourseByInsId(@ins_id int)
AS
IF EXISTS (
			SELECT *
			FROM Ins_Course
			WHERE Ins_Id = @ins_id
		  )
BEGIN
    SELECT Crs_Id
    FROM Ins_Course
    WHERE Ins_Id = @ins_id
END
ELSE
    SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectInsCourseByInsId 1;
GO;
-- 4- Update Ins_Course
CREATE OR ALTER PROCEDURE UpdateInsCourse(@old_crs_id int, @old_ins_id int, @new_crs_id int, @new_ins_id int)
AS
BEGIN TRY
    UPDATE Ins_Course
    SET crs_id = @new_crs_id,
        ins_id = @new_ins_id
    WHERE crs_id = @old_crs_id AND ins_id = @old_ins_id;
END TRY
BEGIN CATCH
    SELECT 'Update Failed' AS [Error Message];
END CATCH;
GO;
--- test
EXEC UpdateInsCourse 2, 2, 6, 3;
GO;


--#10- Std_exam Table--------------------------------------------------------------------------------------------------------------------------------------------------
--1- INSERT Std_exam
CREATE OR ALTER PROCEDURE AddStud_Exam (@exam_id int, @std_id int , @grade int , @take_date date)
AS
	BEGIN TRY
		INSERT INTO Std_exam
		VALUES(@exam_id , @std_id  , @grade  , @take_date);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
	
GO;
-- Test
EXEC AddStud_Exam  5, 2, 52,'2023-06-07';
GO;

-- 2 - Delete Std_exam
CREATE OR ALTER PROCEDURE DeleteStud_Exam(@exam_id int , @std_id int )
AS
	BEGIN TRY
		DELETE FROM Std_exam
		WHERE  exam_id=  @exam_id  and std_id=@std_id;
	END TRY
	BEGIN CATCH
		SELECT 'Deleted Failed' AS [Error Message];
	END CATCH;
GO;
--- Test
EXEC DeleteStud_Exam  5 ,1 ;
GO;

-- 3- Select Std_exam
CREATE OR ALTER PROCEDURE SelectStu_ExamByExamId(@exam_id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM Std_exam
			WHERE exam_id = @exam_id
		)
		BEGIN
			SELECT std_id, grade,take_date
			FROM Std_exam
			WHERE exam_id = @exam_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectStu_ExamByExamId 5;
GO;

CREATE OR ALTER PROCEDURE SelectStu_ExamByStudentId(@std_id int)
AS
		IF EXISTS
		(
			SELECT *
			FROM Std_exam
			WHERE std_id = @std_id
		)
		BEGIN
			SELECT exam_id, grade,take_date
			FROM Std_exam
			WHERE std_id = @std_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectStu_ExamByStudentId 2;
GO;
GO;
-- 4- Update Ins_Course
CREATE OR ALTER PROCEDURE UpdateStu_exam(@olddexm_id int,@exam_id int, @std_id int , @grade int , @take_date date)
AS
	BEGIN TRY
		UPDATE Std_exam
		SET exam_id = @exam_id, 
		    std_id = @std_id,
			grade = @grade,
			take_date= @take_date		
		WHERE exam_id = @olddexm_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test
EXEC UpdateStu_exam 5,95, 2, 52,'2023-06-07';
EXEC SelectStu_ExamByExamId 90;
GO;

--#11- ExamAnswer Table--------------------------------------------------------------------------------------------------------------------------------------------------
go
CREATE PROCEDURE [dbo].[AddStdExamAnswer]
    @exam_id INT,
    @std_id INT,
    @ques_id INT,
    @std_answer INT
AS
BEGIN TRY
    INSERT INTO Std_ExamAnswer (exam_id, std_id, ques_id, std_answer)
    VALUES (@exam_id, @std_id, @ques_id, @std_answer);
END TRY
BEGIN CATCH
    SELECT 'Insert Failed' AS [Error Message];
END CATCH;

go

CREATE PROCEDURE [dbo].[ModifyStdExamAnswer]
    @exam_id INT,
    @std_id INT,
    @ques_id INT,
    @std_answer INT
AS
BEGIN TRY
    UPDATE Std_ExamAnswer
    SET std_answer = @std_answer
    WHERE exam_id = @exam_id AND std_id = @std_id AND ques_id = @ques_id;
END TRY
BEGIN CATCH
    SELECT 'Update Failed' AS [Error Message];
END CATCH;

go

CREATE PROCEDURE [dbo].[SelectStdExamAnswer]
    @exam_id INT = NULL,
    @std_id INT = NULL,
    @ques_id INT = NULL
AS
BEGIN TRY
    SELECT exam_id, std_id, ques_id, std_answer
    FROM Std_ExamAnswer
    WHERE (@exam_id IS NULL OR exam_id = @exam_id)
      AND (@std_id IS NULL OR std_id = @std_id)
      AND (@ques_id IS NULL OR ques_id = @ques_id);
END TRY
BEGIN CATCH
    SELECT 'Select Failed' AS [Error Message];
END CATCH;

go

CREATE PROCEDURE [dbo].[DeleteStdExamAnswer]
    @exam_id INT,
    @std_id INT,
    @ques_id INT
AS
BEGIN TRY
    DELETE FROM Std_ExamAnswer
    WHERE exam_id = @exam_id AND std_id = @std_id AND ques_id = @ques_id;
END TRY
BEGIN CATCH
    SELECT 'Delete Failed' AS [Error Message];
END CATCH;
-------

--- #12 - Ques_exam Table 
-- 1- Add Questions to Exam
create or alter procedure AddQues2Ex (@exm_id int, @q_id int)
as
	begin try
		if not exists (select 1 from Exam where exm_id=@exm_id)
			begin
				 select 'There is  no Exam With this ID' AS [Error Message]
				 return ;				
			end
		if exists (select 1 from Ques_exam where ques_id=@q_id and exam_id=@exm_id)
			begin
				 select 'Question ID already exist' AS [Error Message]
				 return;				
			end
		else
			begin
				insert into Ques_exam
				values (@exm_id , @q_id)
				select 'Insertion completed successfully' AS [Message];
			end


	end try
	begin catch 
		select 'Insertion Failed' as [Error Message]
	end catch;
-- test
AddQues2Ex 10 ,2

--- 2- delete  question from exam

create or alter proc DeleteQuesFromEx (@q_id int , @exm_id int)
as 
	begin try 
		if not exists (select 1 from Ques_exam where exam_id=@exm_id)
			begin
				select 'There is  no Exam With this ID' as [Error Message]
				return;				
			end
		if not exists (select 1 from Ques_exam where ques_id=@q_id and exam_id=@exm_id)
			begin
				select 'there is no question with this ID in this Exam' as [Message]
				return;
			end
		delete from Ques_exam
		where ques_id =@q_id and exam_id=@exm_id
		select 'Delete completed successfully' as [Message];
			
	end try

	begin catch
		select 'Delete Failed' as [Error Message]
	end catch
-- test 
DeleteQuesFromEx 70 , 95

--- 3- Select questions exam 
create or alter proc QuesInEx (@exm_id int)
as 
	begin try 
		if not exists (select 1 from Ques_exam where exam_id=@exm_id)
				begin
					select 'There is  no Exam With this ID' as [Error Message]
					return;				
				end


		select  qex.ques_id as Questions , q.Content
		from Ques_exam qex inner join QUESTION q		
			on qex.exam_id = @exm_id and qex.ques_id =q.Ques_Id
		select 'Selection Operation completed successfully' AS [Message];
	end try
	begin catch
		select 'Selection Failed' as [Error Message]
	end catch

-- test
QuesInEx 95

--- 4 - update questions in exam
create or alter proc UpdateQuesInEx (@exm_id int , @oldq_id int , @newq_id int)
as 
	begin try
		if not exists (select 1 from Ques_exam where exam_id=@exm_id)
			begin
				select 'There is  no Exam With this ID' as [Error Message]
				return;				
			end
		if not exists (select 1 from Ques_exam where ques_id=@oldq_id and exam_id=@exm_id)
			begin
				select 'there is no question with this ID in this Exam to Update' as [Message]
				return;
			end
		
		update Ques_exam
		set ques_id =@newq_id 
		where exam_id =@exm_id and ques_id=@oldq_id

		select 'Update Operation completed successfully' AS [Message];
	end try
	begin catch
		select 'Update Failed' as [Error Message]
	end catch
--test
UpdateQuesInEx 95 , 90 ,88
QuesInEx 95


------------------------------------------------------------
--- #13- Question_Type Table

--- 1- Add Options to Questions
create or alter proc Optoin2Ques (@q_id int,@opt1 nvarchar(10), @opt2 nvarchar(10),@opt3 nvarchar(30)=Null,@opt4 nvarchar(30)=Null)
as
	begin try
		if not exists (select 1 from QUESTION where ques_id=@q_id)
			 begin
				 select 'Question ID does not exist' AS [Error Message];
				 return;
			  end
		if exists (select 1 from Question_Type where ques_id = @q_id)
		   begin
				 select 'Options for this Question Already Exsit' AS [Error Message];
				 return;
			end
		
			
			insert into Question_Type 
			values(@q_id,@opt1,@opt2,@opt3,@opt4)
			select 'Operation completed successfully' AS [Message];
	end try
	begin catch 
		select 'Opertion Failed' as [Error Message]
	end catch


Optoin2Ques 110,'True','False'


------
---2 - Delete Question options --> question itself will be deleted from ques_Exam table 
create or alter proc DeleteOptQuest (@q_id int)
as
	begin try 

		if not exists (select 1 from Question_Type where ques_id = @q_id)
		   begin
				 select 'Question ID does not exist' AS [Error Message];
				 return;
			end
		
		delete from Question_Type
		where ques_Id=@q_id

		select 'Operation completed successfully' AS [Message];
	end try
	begin catch
		select 'Opertion Failed' as [Error Message]
	end catch


--test 
DeleteOptQuest 110



--- 3- Select Question Options by id 
create or alter proc SelectQuesOpts (@q_id int)
as 
	begin try
		if not exists (select 1 from Question_Type where ques_id=@q_id)
				 begin
					 select 'Question ID does not exist' AS [Error Message];
					 return;
				  end
		else
			begin
				select o.Ques_Id as [Question Number],q.content ,o.Opt1,o.opt2,o.opt3,o.Opt4 
				from Question q inner join Question_Type o 
					on o.Ques_Id=@q_id and q.Ques_Id=@q_id
			end

		--select 'Operation completed successfully' AS [Message];
	end try
		
	begin catch
		select 'Opertion Failed' as [Error Message]
	end catch
-- test
SelectQuesOpts 2

--- 3.1- Select Question Options by id 
create or alter proc SelectAllQuesOpts 
as 
	begin try
		if not exists (select 1 from Question_Type)
				 begin
					 select 'Table is Empty !!' AS [Error Message];
					 return;
				  end
		else
			begin
				select o.Ques_Id as [Question Number],q.content ,o.Opt1,o.opt2,o.opt3,o.Opt4 
				from Question_Type o inner join Question q
					on o.Ques_Id=q.Ques_Id
			end

		-- select 'Operation completed successfully' AS [Message];
	end try
		
	begin catch
		select 'Opertion Failed' as [Error Message]
	end catch
-- test
SelectAllQuesOpts

-- 4- Update entire raw Question and Options 
--- For Spacific Question 
create or alter proc UpdateQuesAndOpt (@oldq_id int, @newq_id int ,@opt1 nvarchar(10), @opt2 nvarchar(10),@opt3 nvarchar(30)=Null,@opt4 nvarchar(30)=Null)
as 
	begin try
		if not exists (select 1 from Question_Type where ques_id = @oldq_id)
		begin
			select 'Question ID does not exist' AS [Error Message];
			return;
		end
		if exists ( select 1 from Question_Type where Ques_Id=@newq_id)
		begin 
			select 'The Question with new ID that you want to update already exists' AS [Error Message];
			return;
		end

		declare @currentType nvarchar(10);
		select @currentType =  type from QUESTION where Ques_Id = @oldq_id;

		
		if @currentType = 'True&False' 
		begin
			if @opt3 is not null or @opt4 is not null
			begin
				select 'Cannot update options for a True/False question' as [Error Message];
				return;
			end
		end

		if @currentType = 'MCQ'
		begin
			if @opt3 is null or @opt4 is null
			begin
				select ' Cannot update an MCQ question to a True/False question ,MCQ questions require all four options' as [Error Message];
				return;
			end
		end

		-- if empty options
		if @opt1 = '' or @opt2 = '' or 
		   (@currentType = 'MCQ' and (@opt3 = '' or @opt4 = ''))
		begin
			select 'Options cannot be empty' as [Error Message];
			return;
		end

		update Question_Type 
			set Ques_Id = @newq_id,
				Opt1 = @opt1,
				Opt2 = @opt2,
				Opt3 = @opt3,
				Opt4 = @opt4
		where Ques_id = @oldq_id;	

		select 'Operation completed successfully' AS [Message];

	end try

	begin catch
		select 'Operation Failed' as [Error Message];
	end catch


-- test
UpdateQuesAndOpt 101,102, 'Data type different','there are no differ','a and b' , 'none of above'

--- 4.1 Update options For Spacific Question 
create or alter proc UpdateOpt (@q_id int,@opt1 nvarchar(10), @opt2 nvarchar(10),@opt3 nvarchar(30)=Null,@opt4 nvarchar(30)=Null)
as 
	 begin try
		 if not exists (select 1 from Question_Type where ques_id = @q_id)
			begin
					 select 'Question ID does not exist' AS [Error Message];
					 return;
			end
				
		declare @currentType nvarchar(10);
		select @currentType =  type from QUESTION where Ques_Id = @q_id;

		
		if @currentType = 'True&False' 
		begin
			begin
				select 'Cannot update options for a True/False question' as [Error Message];
				return;
			end
		end

		if @currentType = 'MCQ'
		begin
			if @opt3 is null or @opt4 is null
			begin
				select ' Cannot update an MCQ question to a True/False question ,MCQ questions require all four options' as [Error Message];
				return;
			end
		end

		-- if empty options
		if @opt1 = '' or @opt2 = '' or 
		   (@currentType = 'MCQ' and (@opt3 = '' or @opt4 = ''))
		begin
			select 'Options cannot be empty' as [Error Message];
			return;
		end

		else
			   begin
					update Question_Type 
						set Opt1 = @opt1,
							Opt2 = @opt2,
							Opt3 = @opt3,
							Opt4 = @opt4
					where Ques_id = @q_id;	
				end

		select 'Operation completed successfully' AS [Message];

	end try

	begin catch
		select 'Opertion Failed' as [Error Message]
	end catch

UpdateOpt 10 , 'Data type different','df'


GO;
------------------------------------SPs-----------------------------------------------------------------------------------------
-- Create Exam SP------------------------------------------------------------------------------------------------
-- That take course id, exam model number, exam name, duration of exam, number of true & flase questions, and number of MCQs questions
CREATE OR ALTER PROCEDURE CreateExam(@crs_id int, @exam_model int, @exam_name varchar(50), @duration int, @quesTureFalse int, @quesMCQ int)
AS
	BEGIN TRY
		DECLARE @newExamId INT = (SELECT TOP 1 exm_id FROM Exam ORDER BY exm_id DESC) + 1;
		INSERT INTO Exam
		VALUES(@newExamId, @exam_name, @exam_model, @duration, @crs_id);
	END TRY

	BEGIN CATCH
		SELECT 'Can''t Insert New Exam!';
	END CATCH

	BEGIN TRY
		INSERT INTO Ques_exam 
		SELECT TOP (@quesTureFalse) @newExamId,
			   Ques_Id
		FROM QUESTION
		WHERE Type = 'True&False'
		ORDER BY NEWID();

		INSERT INTO Ques_exam 
		SELECT TOP(@quesMCQ) @newExamId,
			   Ques_Id
		FROM QUESTION
		WHERE Type = 'MCQ'
		ORDER BY NEWID();
	END TRY

	BEGIN CATCH
		SELECT 'Can''t Insert New Exam!';
	END CATCH
GO;
--Test--
EXEC CreateExam 4, 2, 'Fundamental Programming', 90, 10, 7;
EXEC CreateExam 1, 3, 'Web Exam', 120, 10, 5;
EXEC CreateExam 5, 3, 'C# Fundamental Exam', 120, 10, 5;
EXEC CreateExam 9, 1, 'Java Exam', 120, 10, 5;
GO;
-- Calculate grade SP------------------------------------------------------------------------------------------------
-- That take exam id, student id
CREATE OR ALTER FUNCTION GetExamOption(@exam_id INT, @std_id INT)
RETURNS TABLE AS
RETURN
(
	SELECT SQA.ques_id AS ques_id,
		   CASE WHEN SQA.std_answer = 1 THEN QT.Opt1
		        WHEN SQA.std_answer = 2 THEN QT.Opt2
				WHEN SQA.std_answer = 3 THEN QT.Opt3
				WHEN SQA.std_answer = 4 THEN QT.Opt4
			END AS Answer
	FROM Std_ExamAnswer AS SQA
	INNER JOIN Question_Type AS QT
	ON SQA.exam_id = @exam_id AND SQA.std_id = @std_id
	AND SQA.ques_id = QT.Ques_Id
);
GO;

CREATE OR ALTER PROCEDURE CalculateGrade(@exam_id int, @student_id int)
AS
	BEGIN TRY
		DECLARE @NumberQuestion INT = (SELECT COUNT(*) FROM Ques_exam WHERE exam_id = @exam_id);
		DECLARE @TotalDegree INT;

		SET @TotalDegree =
		(
			SELECT SUM
				    (
						CASE 
							 WHEN (Q.Answer =  QP.Answer) THEN 1
							 ELSE 0
						END
					) AS TotalDegree
			FROM GetExamOption(@exam_id, @student_id) AS QP
			INNER JOIN QUESTION Q
			ON QP.ques_id = Q.ques_id
		);
		DECLARE @DegreePercantge INT = (SELECT @TotalDegree / (1.0 * @NumberQuestion) * 100)

		INSERT INTO Std_exam
		VALUES(@exam_id, @student_id, @DegreePercantge, '2023-06-07')
	END TRY

	BEGIN CATCH
		SELECT 'Can''t Calculate Grade OF STUDENT!';
	END CATCH
GO;
-- TEST --
EXEC CalculateGrade 96, 1;

SELECT *
FROM Std_exam
GO;
-- Exam Answer inline Table Function-----------------------------------------------------------------------------------------------------------------------------------------------
-- it will take exam id and give u the correct answers for it.
CREATE OR ALTER FUNCTION ExamAnswer(@exam_id int)
RETURNS TABLE
AS
RETURN
(
	SELECT QE.ques_id,
		   Q.Type,
		   Q.Content,
		   Q.Answer
	FROM Ques_exam AS QE
	INNER JOIN QUESTION AS Q
	ON QE.ques_id = Q.Ques_Id
	WHERE QE.exam_id = @exam_id
);
GO;
-- Test --------	
SELECT *
FROM ExamAnswer(95);
GO;
------------------------------------Reports-----------------------------------------------------------------------------------------
--#1: Report that returns the students information according to Department ID.
CREATE OR ALTER PROCEDURE ReportStudentInformationByDeptID(@dept_id INT)
AS
	BEGIN TRY
		SELECT *
		FROM Student AS S
		WHERE S.dept_id = @dept_id;
		-- Data For Visual Report
		DELETE 
		FROM HelperReport
		WHERE ID = 1;

		INSERT INTO HelperReport
			SELECT 1,  dept_name AS [Department Name]
			FROM Department
			WHERE dept_id = @dept_id;
	END TRY
	BEGIN CATCH
		SELECT 'Error Occurs' AS MessageError;
	END CATCH
GO;
-- Test ----
EXEC ReportStudentInformationByDeptID 10;

GO;
--#2: Report that takes the student ID and returns the grades of the student in all courses.
CREATE OR ALTER PROCEDURE ReportStudentGradesByStdID(@std_id INT)
AS
	BEGIN TRY
		SELECT  E.crs_id,
				C.crs_name AS [Course Name],
				SE.grade AS [Student Grade]
		FROM Exam AS E
		INNER JOIN Std_exam AS SE
		ON E.exm_id = SE.exam_id
		INNER JOIN Course AS C
		ON E.crs_id = C.crs_id
		WHERE SE.std_id = @std_id;
		-- Data For Visual Report
		DELETE 
		FROM HelperReport
		WHERE ID = 2;

		INSERT INTO HelperReport
			SELECT 2,  std_fname + ' ' + std_lname AS [Full Name]
			FROM Student
			WHERE std_id = @std_id;
	END TRY
	BEGIN CATCH
		SELECT 'Error with Student ID' AS [Error Message];
	END CATCH
GO;
-- Test ----
EXEC StudentGradesByStdID 1;
GO;

/*--#3: Report that takes the instructor ID and returns the name of the courses that he teaches
and the number of student per course.*/
GO;
CREATE OR ALTER VIEW CountStudentPerCourse 
		AS
		(
			SELECT SC.crs_id,
				   COUNT(S.std_id) AS [Number Enrolled Students]
			FROM Student AS S
			INNER JOIN Std_course AS SC
			ON S.std_id = SC.std_id
			GROUP BY SC.crs_id
		)
GO;
CREATE OR ALTER PROCEDURE ReportInstructorCoursesAndStudent(@ins_id INT)
AS
	
	BEGIN TRY
		SELECT C.crs_name,
			   CTC.[Number Enrolled Students]
		FROM Ins_Course AS IC
		INNER JOIN Course AS C
		ON IC.Crs_Id = C.crs_id
		INNER JOIN CountStudentPerCourse AS CTC 
		ON CTC.crs_id = IC.Crs_Id
		WHERE IC.ins_id = @ins_id
		-- Data For Visual Report
		DELETE 
		FROM HelperReport
		WHERE ID = 3;

		INSERT INTO HelperReport
			SELECT 3,  ins_fname + ' ' + ins_lname AS [Full Name]
			FROM Instructor
			WHERE ins_id = @ins_id;
	END TRY
	BEGIN CATCH
		SELECT 'Error with Instructor ID' AS [Error Message];
	END CATCH
GO;
-- Test ----
EXEC ReportInstructorCoursesAndStudent 5;
GO;

--#4: Report that takes course ID and returns its topics 
CREATE OR ALTER PROCEDURE ReportTopicByCourseID(@crs_id INT)
AS
	BEGIN TRY
		SELECT T.top_id,
			   T.top_name
		FROM Course AS C
		INNER JOIN Topic AS T
		ON C.crs_id = T.crs_id
		WHERE C.crs_id = @crs_id;

		-- Data For Visual Report
		DELETE 
		FROM HelperReport
		WHERE ID = 4;

		INSERT INTO HelperReport
			SELECT 4, crs_name AS [Course Name]
			FROM Course AS C
			WHERE crs_id = @crs_id;
	END TRY
	BEGIN CATCH
		SELECT 'Error with @crs_id' AS MessageError;
	END CATCH
GO;
-- Test ----
EXEC ReportTopicByCourseID 5;
GO;

--#5: Report that takes exam number and returns the Questions in it and chocies 
CREATE OR ALTER PROCEDURE ReportExamQuestionsChoicesByExamID(@exm_id INT)
AS
	BEGIN TRY
		SELECT Q.*,
			   QT.Opt1,
			   QT.Opt2,
			   QT.Opt3,
			   QT.Opt4
		FROM Exam AS E
		INNER JOIN Ques_exam AS QE
		ON E.exm_id = QE.exam_id
		INNER JOIN QUESTION AS Q
		ON Q.Ques_Id = QE.ques_id
		INNER JOIN Question_Type AS QT
		ON Q.Ques_Id =QT.Ques_Id
		WHERE E.exm_id = @exm_id;

		-- Date For Visual Report
		DELETE 
		FROM HelperReport
		WHERE ID = 5;
	
		INSERT INTO HelperReport
			SELECT 5, crs_name AS [Course Name]
			FROM Exam AS E
			INNER JOIN Course AS C
			ON E.crs_id = C.crs_id
			WHERE E.exm_id = @exm_id;

		INSERT INTO HelperReport
			SELECT 5, exm_name AS [Exam Name]
			FROM Exam AS E
			INNER JOIN Course AS C
			ON E.crs_id = C.crs_id
			WHERE E.exm_id = @exm_id;
	END TRY
	BEGIN CATCH
		SELECT 'Error with exm_id' AS MessageError;
	END CATCH
GO;
-- Test ----
EXEC ReportExamQuestionsChoicesByExamID 95;
GO;

--#6: Report that takes exam number and the student ID then returns the Questions in this exam with the student answers.  
CREATE OR ALTER PROCEDURE ReportExamAndStudentAnswer(@exm_id INT, @std_id INT)
AS
	BEGIN TRY
		SELECT Q.Content,
			   Options.Answer AS [Student Answer]
		FROM Exam AS E
		INNER JOIN Std_ExamAnswer AS SEA
		ON E.exm_id = SEA.exam_id 
		AND SEA.exam_id = @exm_id AND SEA.std_id = @std_id
		INNER JOIN QUESTION AS Q
		ON Q.Ques_Id = SEA.ques_id
		INNER JOIN GetExamOption(@exm_id, @std_id) AS Options
		ON Options.ques_id = SEA.Ques_Id;
		-- Date For Visual Report
		DELETE 
		FROM HelperReport
		WHERE ID = 6;
		--
		INSERT INTO HelperReport
			SELECT 6, std_fname + ' ' + std_lname AS [Full Name]
			FROM Student
			WHERE std_id = @std_id;

		INSERT INTO HelperReport
			SELECT 6, crs_name AS [Course Name]
			FROM Exam AS E
			INNER JOIN Course AS C
			ON E.crs_id = C.crs_id
			WHERE E.exm_id = @exm_id;		   
	END TRY

	BEGIN CATCH
		SELECT 'Error Occured!' AS MessageError;
	END CATCH
GO;
-- Test ----
EXEC ReportExamAndStudentAnswer 95, 1;
GO;

CREATE TABLE HelperReport
(
	ID INT,
	Value VARCHAR(30)
)