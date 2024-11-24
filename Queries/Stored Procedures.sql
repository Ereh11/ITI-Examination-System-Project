--#1- Student Table--------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Student
CREATE OR ALTER PROCEDURE AddStudent(@std_id int, @std_fname nvarchar(20), @std_lname nvarchar(20), @city nvarchar(20), @street nvarchar(50), @phone varchar(11), @std_DoB nvarchar(50), @email nvarchar(50), @passowrd nvarchar(20), @dept_id int)
AS
	BEGIN TRY
		INSERT INTO Student
		VALUES(@std_id, @std_fname, @std_lname, @city, @street, @phone, @std_DoB, @email, @passowrd, @dept_id);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddStudent 40, 'Sara', 'Mustafa', 'Sohag', '18 Al-Mahafza', '01122335566', '2002-01-01', 'sara.mustafa@gamil.com', '123456Sara', 10;
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
EXEC SelectStudentData 40;
GO;
-- 4- Update student
CREATE OR ALTER PROCEDURE UpdateStudent(@oldstd_id int, @newstd_id int, @std_fname nvarchar(20), @std_lname nvarchar(20), @city nvarchar(20), @street nvarchar(50), @phone varchar(11), @std_DoB nvarchar(50), @email nvarchar(50), @passowrd nvarchar(20), @dept_id int)
AS
	BEGIN TRY
		UPDATE Student
		SET std_id = @newstd_id, 
		    std_fname = @std_fname, std_lname = @std_lname, 
			city = @city, street = @street, 
			phone = @phone, std_DoB = @std_DoB, 
			email = @email, passowrd = @passowrd,
			dept_id = @dept_id
		WHERE std_id = @oldstd_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateStudent 101, 40, 'Sara', 'Mustafa', 'Sohag', '18 Al-Mahafza', '01122335566', '2002-01-01', 'sara.mustafa@gamil.com', '123456Sara', 10;
GO;

--#2- Instructor Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Instructor
CREATE OR ALTER PROCEDURE AddInstructor(@ins_id int, @ins_fname nvarchar(20), @ins_lname nvarchar(20), @city nvarchar(20), @street nvarchar(50), @phone varchar(11), @ins_DoB nvarchar(50), @email nvarchar(50), @passowrd nvarchar(20), @salary decimal(10, 2), @hire_date date, @dept_id int)
AS
	BEGIN TRY
		INSERT INTO Instructor
		VALUES(@ins_id, @ins_fname, @ins_lname, @city, @street, @phone, @ins_DoB, @email, @passowrd, @salary, @hire_date, @dept_id);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddInstructor 50, 'Aml', 'Saeed', 'Ales', '20 Mustafa Kamal', '0101239684', '1995-01-02', 'amal.saeed@gamil.com', '123456Aml', 12000, '2020-06-09', 10;
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
EXEC DeleteStudent 1000;
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
CREATE OR ALTER PROCEDURE UpdateInstructor(@oldins_id int, @newins_id int, @ins_fname nvarchar(20), @ins_lname nvarchar(20), @city nvarchar(20), @street nvarchar(50), @phone varchar(11), @ins_DoB nvarchar(50), @email nvarchar(50), @passowrd nvarchar(20), @salary decimal(10, 2), @hire_date date, @dept_id int)
AS
	BEGIN TRY
		UPDATE Instructor
		SET ins_id = @newins_id, 
		    ins_fname = @ins_fname, ins_lname = @ins_lname, 
			city = @city, street = @street, 
			phone = @phone, ins_DoB = @ins_DoB, 
			email = @email, passowrd = @passowrd,
			salary = @salary, hire_date = @hire_date,
			dept_id = @dept_id
		WHERE ins_id = @oldins_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateInstructor 1000, 50, 'Aml', 'Saeed', 'Ales', '20 Mustafa Kamal', '0101239684', '1995-01-02', 'amal.saeed@gamil.com', '123456Aml', 12000, '2020-06-09', 10;
EXEC SelectInstructorData 50;
GO;
--#3- Course Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Course
CREATE OR ALTER PROCEDURE AddCourse(@crs_id int, @crs_name nvarchar(50), @hours int)
AS
	BEGIN TRY
		INSERT INTO Course
		VALUES(@crs_id, @crs_name, @hours);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddCourse 90, 'Advanced JS', 18;
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
-- 3- Select Instructor
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
EXEC SelectCourserData 90;
GO;
-- 4- Update Instructor
CREATE OR ALTER PROCEDURE UpdateCourse(@oldcrs_id int, @newcrs_id int, @crs_name nvarchar(50), @hours int)
AS
	BEGIN TRY
		UPDATE Course
		SET crs_id = @newcrs_id, 
		    crs_name = @crs_name,
			hours = @hours
		WHERE crs_id = @oldcrs_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateCourse 90, 50, 'JS', 18;
EXEC SelectCourserData 50;
GO;
--#4- Exam Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add Exam
CREATE OR ALTER PROCEDURE AddExam(@exm_id int, @exm_name nvarchar(50), @exm_model int, @duration int, @crs_id int)
AS
	BEGIN TRY
		INSERT INTO Exam
		VALUES(@exm_id,  @exm_name, @exm_model, @duration, @crs_id);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddExam 90, 'C programming', 4, 90, 4;
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
EXEC DeleteExam 90;
GO;
-- 3- Select Exam
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
EXEC SelectExamData 10;
GO;
-- 4- Update Exam
CREATE OR ALTER PROCEDURE UpdateExam(@oldexm_id int, @newexm_id int, @exm_name nvarchar(50), @exm_model int, @duration int, @crs_id int)
AS
	BEGIN TRY
		UPDATE Exam
		SET exm_id = @newexm_id, 
		    exm_name = @exm_name,
			exm_model = @exm_model,
			duration = @duration,
			crs_id = @crs_id
		WHERE exm_id = @oldexm_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateExam 90, 101, 'C++ programming', 4, 90, 4;
EXEC SelectExamData 90;
GO;
--#5- QUESTION Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add QUESTION
CREATE OR ALTER PROCEDURE AddQUESTION(@Ques_Id int, @Content nvarchar(max), @Answer nvarchar(max), @Type varchar(20))
AS
	BEGIN TRY
		INSERT INTO QUESTION
		VALUES(@Ques_Id,  @Content, @Answer, @Type);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddQUESTION 101, 'CSS is Cascade Style Sheet?', 'True', 'True&False';
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
EXEC SelectQUESTIONData 101;
GO;
-- 4- Update QUESTION
CREATE OR ALTER PROCEDURE UpdateQUESTION(@oldQues_Id int, @newQues_Id int, @Content nvarchar(max), @Answer nvarchar(max), @Type varchar(20))
AS
	BEGIN TRY
		UPDATE QUESTION
		SET Ques_Id = @newQues_Id, 
		    Content = @Content,
			Answer = @Answer,
			Type = @Type
		WHERE Ques_Id = @oldQues_Id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateQUESTION 105, 101, 'CSS is Cascade Style Sheet?', 'True', 'True&False';
EXEC SelectQUESTIONData 101;
GO;

--#6- Department Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add QUESTION
CREATE OR ALTER PROCEDURE AddDepartment(@dept_id int, @dept_name nvarchar(50), @dept_location nvarchar(50), @phone varchar(11), @mgr_id int, @mgr_hiredate date)
AS
	BEGIN TRY
		INSERT INTO Department
		VALUES(@dept_id,  @dept_name, @dept_location, @phone, @mgr_id, @mgr_hiredate);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddDepartment 11, 'HR', 'Alexandria', '01128936490', 5, '2024-10-09';
GO;
-- 2- Delete QUESTION
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
CREATE OR ALTER PROCEDURE UpdateDepartment(@olddept_id int, @newdept_id int, @dept_name nvarchar(50), @dept_location nvarchar(50), @phone varchar(11), @mgr_id int, @mgr_hiredate date)
AS
	BEGIN TRY
		UPDATE Department
		SET dept_id = @newdept_id, 
		    dept_name = @dept_name,
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
EXEC UpdateDepartment 12, 11, 'HR', 'Alexandria', '01128936490', 5, '2024-10-09';
EXEC SelectDepartmentData 11;
GO;

--#7- Topic Table-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1- Add QUESTION
CREATE OR ALTER PROCEDURE AddTopic(@top_id int, @top_name nvarchar(50), @crs_id int)
AS
	BEGIN TRY
		INSERT INTO Topic
		VALUES(@top_id,  @top_name, @crs_id);
	END TRY
	BEGIN CATCH
		SELECT 'Insertion Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC AddTopic 82, 'Recursion', 5;
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
EXEC DeleteTopic 82;
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
CREATE OR ALTER PROCEDURE UpdateTopic(@oldtop_id int, @newtop_id int, @top_name nvarchar(50), @crs_id int)
AS
	BEGIN TRY
		UPDATE Topic
		SET top_id = @newtop_id, 
		    @top_name = top_name,
			crs_id = @crs_id
		WHERE top_id = @oldtop_id;
	END TRY
	BEGIN CATCH
		SELECT 'Update Failed' AS [Error Message];
	END CATCH;
GO;
--Test--
EXEC UpdateTopic 83, 82, 'Recursion', 5;
EXEC SelectTopicData 82;
GO;

