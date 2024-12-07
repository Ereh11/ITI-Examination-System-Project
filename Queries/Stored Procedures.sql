-----------------------------Tables 4 Main SPs------------------------------------------------------------------------------------------------------------------------------
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
CREATE OR ALTER PROCEDURE SelectStdCoursbyCrsId(@crs_id int)
AS
IF EXISTS 
		(
			SELECT *
			FROM Std_Course
			WHERE crs_id = @crs_id
		)
BEGIN
    SELECT *
    FROM Std_Course
    WHERE crs_id = @crs_id
END
ELSE
    SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectStdCoursbyCrsId 1;
GO;

CREATE OR ALTER PROCEDURE SelectStdCoursbyStdId(@std_id int)
AS
IF EXISTS 
		(
			SELECT *
			FROM Std_Course
			WHERE std_id = @std_id
		)
BEGIN
    SELECT *
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
EXEC UpdateStdCourse 101, 40, 102, 41, '2024-02-01';
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
EXEC AddInsCourse 5, 10;
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
CREATE OR ALTER PROCEDURE SelectInsCourseByCrsId(@crs_id int)
AS
IF EXISTS (
			SELECT *
			FROM Ins_Course
			WHERE crs_id = @crs_id
		  )
BEGIN
    SELECT *
    FROM Ins_Course
    WHERE crs_id = @crs_id
END
ELSE
    SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectInsCourseByCrsId 5;
GO;

CREATE OR ALTER PROCEDURE SelectInsCourseByInsId(@ins_id int)
AS
IF EXISTS (
			SELECT *
			FROM Ins_Course
			WHERE Ins_Id = @ins_id
		  )
BEGIN
    SELECT *
    FROM Ins_Course
    WHERE Ins_Id = @ins_id
END
ELSE
    SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectInsCourseByInsId 10;
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
EXEC UpdateInsCourse 1, 5, 1, 3;
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
EXEC AddStud_Exam  95, 1, 52,'2023-06-07';
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
EXEC DeleteStud_Exam  1 ,1 ;
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
			SELECT *
			FROM Std_exam
			WHERE exam_id = @exam_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectStu_ExamByExamId 95;
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
			SELECT *
			FROM Std_exam
			WHERE std_id = @std_id;
		END
	ELSE
		SELECT 'Selection Failed' AS [Error Message];
GO;
-- Test
EXEC SelectStu_ExamByStudentId 1;
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
EXEC UpdateStu_exam 90,95, 1, 52,'2023-06-07';
EXEC SelectStu_ExamByExamId 90;
GO;

--#11- ExamAnswer Table--------------------------------------------------------------------------------------------------------------------------------------------------


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