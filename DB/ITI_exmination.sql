create database ITI_Examination_System 

use ITI_Examination_System 


create table Department
(
	dept_id int primary key,
	dept_name nvarchar(50) unique not null,
	dept_location nvarchar(50) not null,
	phone varchar(11) not null,
	mgr_id int ,
	mgr_hiredate date,
)


create table Student 
(
	std_id int primary key ,
	std_fname nvarchar(20) not null,
	std_lname nvarchar(20) not null,
	city nvarchar(20) not null,
	street nvarchar(50),
	phone varchar(11) not null,
	std_DoB date not null,
	email nvarchar(50) unique not null,
	passowrd nvarchar(20) not null ,
	dept_id int ,

	constraint ch_st_DoB check (year(std_DoB) >1997),
	constraint fk_dept foreign key (dept_id) references  Department(dept_id),

)



create table Instructor 
(
	ins_id int primary key,
	ins_fname nvarchar(20) not null,
	ins_lname nvarchar(20) not null,
	city nvarchar(20) not null,
	street nvarchar(20) ,
	phone varchar(11) not null,
	std_DoB date not null,
	email nvarchar(50) unique not null,
	passowrd nvarchar(20) not null ,
	salary decimal(10,2) default(10000),
	hire_date date not null,
	dept_id int ,


	constraint fk_ins_dept foreign key (dept_id) references  Department(dept_id)

)


use ITI_Examination_System
--------------------- sp for get all grades for student by id 
create veiw vw_StudentGrades as
select 
    s.std_id,
    s.std_fname + ' ' + s.std_lname as StudentName,
    c.crs_id,
    c.crs_name as CourseName,
    e.exm_id,
    e.exm_name as ExamName,
    se.grade,
    se.take_date
from Student s
inner join Std_Exam se on s.std_id = se.std_id
inner join Exam e on se.exam_id = e.exm_id
inner join Course c on e.crs_id = c.crs_id;



select * from vw_StudentGrades



create or  alter proc GetStudentGrades
    @StudentID varchar(50)
as
begin
    select 
        --StudentName,
        CourseName,
        ExamName,
        grade,
        take_date
    from vw_StudentGrades
    where std_id = @StudentID
    order by 
        CourseName,
        take_date;
end;


GetStudentGrades @studentId = '1'



-------------------------------------------------------


-- student -->    insert-delete-update-select--->  done
-- Instructor --> insert-delete-update-select ---> done 
-- Course -->   insert -delete-update-select ----> done 
-- Exam -->	     insert -delete-update- select --> done 
-- Question -->  insert-delete - update-select --> done
-- Department -->   insert-delete-update-select--> Done
-- Topic -->        insert-delete-update-select--> Done
-- Student Course -->insert-delete-update- select --> done
-- instructor Course -->insert-delete -update-select--> done

--- Not Done Yet;
-- Question Exam --> Ques_exam  -- ----> Done at 6:45
-- Question Type --> Question_Type --> done
-- Student Exam --> Std_exam
-- Student Exam Answer --> Std_ExamAnswer 



--- Ques_exam Table 
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
--- Question_Type Table

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

		select 'Operation completed successfully' AS [Message];
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

		select 'Operation completed successfully' AS [Message];
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
				select 'Cannot update a True/False question to an MCQ question , True/False questions can only have two options' as [Error Message];
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
			if @opt3 is not null or @opt4 is not null
			begin
				select 'Cannot update a True/False question to an MCQ question , True/False questions can only have two options' as [Error Message];
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

UpdateOpt 10 , 'Data type different',''

