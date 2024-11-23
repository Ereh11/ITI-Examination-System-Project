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

