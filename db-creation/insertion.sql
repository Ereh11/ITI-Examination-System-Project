-- #INSERT INTO Course Table --
INSERT INTO Course 
VALUES ('HTML', 18),
	   ('CSS', 25),
	   ('JS', 30),
	   ('RWD', 15),
	   ('C#', 30),
	   ('XML', 20),
	   ('Advanced JS', 20),
	   ('UML', 20),
	   ('SQL', 20),
	   ( 'NodeJS', 20),
	   ( 'MongoDB', 16),
	   ( 'XHTML', 15),
	   ( 'Advanced SQL', 18), 
	   ( 'MySQL', 10),
	   ( 'JAVA', 16),
	   ( 'typescript', 15),
	   ( 'Angular', 15),
	   ( 'OOP', 20),
	   ( 'LINQ', 16),
	   ( 'EF', 15),
	   ( 'C++', 16);



-- #INSERT INTO Department Table --
INSERT INTO Department
VALUES ('PD', 'Cairo', '01001234567', NULL, NULL),
	   ('OS', 'Giza', '01119876543', NULL, NULL),
	   ('AI', 'Alexandria','01098765432', NULL, NULL),
	   ('BI', 'Luxor', '01504321098', NULL, NULL),
	   ('UI', 'Tanta','01285678901', NULL, NULL),
	   ('UX', 'Aswan', '01127891234' , NULL, NULL),
	   ('PD', 'Port Said', '01066543210', NULL, NULL),
	   ('OS', 'Ismailia', '01553210987', NULL, NULL),
	   ('AI', 'Mansoura', '01224567890', NULL, NULL),
	   ( 'BI', 'Sohag', '01119876543', NULL, NULL);



-- #INSERT INTO Topic Table --
INSERT INTO Topic
VALUES  ('tags', 1),
		('links', 1),
		('imgs', 1),
		('table', 1),
		('forms', 1),
		('lists', 1),
		('colors', 1),
		('styles', 1),
		('selectors', 2),
		( 'colors', 2),
		( 'bsckgrounds', 2),
		( 'comments', 2),
		( 'borders', 2),
		( 'box model', 2),
		( 'icons', 2),
		( 'overflow', 2),
		( 'displsying', 2),
		( 'variables', 3),
		( 'let', 3),
		( 'const', 3),
		( 'var', 3),
		( 'functions', 3),
		( 'arrayas', 3),
		( 'strings', 3),
		( 'dates', 3),
		( 'math', 3),
		( 'random', 3),
		( 'looping', 3),
		( 'mapping', 3),
		( 'Erros', 3),
		( 'arrow functions', 3),
		( 'flexbox', 4),
		( 'grid', 4),
		( 'templstes', 4),
		( 'medisquery', 4),
		( 'viewport', 4),
		( 'imsges', 4),
		( 'frameworks', 4),
		( 'variables', 5),
		( 'datatypes', 5),
		( 'operstors', 5),
		( 'math', 5),
		( 'strings', 5),
		( 'array', 5),
		( 'looping', 5),
		( 'casting', 5),
		( 'switch', 5),
		( 'tree', 6),
		( 'syntax', 6),
		( 'elements', 6),
		( 'attrs', 6),
		( 'parser', 6),
		( 'DOM', 6),
		( 'schema', 6),
		( 'validators', 6),
		( 'display', 6),
		( 'functiond', 7),
		( 'arrow functions', 7),
		( 'arrays', 7),
		( 'seq diagram', 8),
		( 'class diagram', 8),
		( 'usecase diagram', 8),
		( 'stored proc', 9),
		( 'functs', 9),
		( 'ERD', 9),
		( 'Routes', 10),
		( 'models', 10),
		( 'schemas', 10),
		( 'schemas', 11),
		( 'crud', 11),
		( 'initialization', 11),
		( 'authurization', 11),
		( 'xyz', 12),
		( 'abc', 12),
		( 'DML', 12),
		( 'PROC', 13),
		( 'FUNC', 13),
		( 'CURSOR', 13),
		( 'VARS', 14),
		( 'Views', 14),
		( 'Storeds', 14); 


-- #INSERT INTO Student Table --
INSERT INTO Student( std_fname, std_lname, city, street, phone, std_DoB, email, passowrd, dept_id, gender)
VALUES          ('Ahmed', 'Ali', 'Cairo', 'Street 1', 01000100235, CAST('2000-01-15' AS Date), 'ahmed.ali123@example.com', 'password1', 1, 'M'),
		('Sara', 'Mohamed', 'Alexandria', 'Street 2', 01007890235, CAST('1998-05-23' AS Date), 'sara.mohamed456@example.com', 'password2', 2 ,'F'),
		('Mohamed', 'Hassan', 'Giza', 'Street 3', 01111310235, CAST('2002-10-30' AS Date), 'mohamed.hassan789@example.com', 'password3', 3, 'M'),
		('Mona', 'Fathi', 'Tanta', 'Street 4', 01000019621, CAST('2001-08-17' AS Date), 'mona.fathi101@example.com', 'password4', 4 ,'F'),
		('Khaled', 'Said', 'Fayoum', 'Street 5', 01000963235, CAST('1999-11-25' AS Date), 'khaled.said112@example.com', 'password5', 5 , 'M'),
		('Rana', 'Ibrahim', 'Minya', 'Street 6', 01269810235, CAST('2003-04-19' AS Date), 'rana.ibrahim223@example.com', 'password6', 6, 'F'),
		('Omar', 'Tariq', 'Sohag', 'Street 7', 01590010235, CAST('1998-07-03' AS Date), 'omar.tariq334@example.com', 'password7', 7, 'M'),
		('Yasmine', 'Ahmed', 'Aswan', 'Street 8', 01005610235, CAST('2004-12-05' AS Date), 'yasmine.ahmed445@example.com', 'password8', 8, 'F'),
		('Fayez', 'Khalil', 'Sharm El Sheikh', 'Street 9', 01260010235, CAST('2000-09-12' AS Date), 'fayez.khalil556@example.com', 'password9', 9, 'M'),
		( 'Mariam', 'Mahmoud', 'Luxor', 'Street 10', 01000010235, CAST('2001-02-28' AS Date), 'mariam.mahmoud667@example.com', 'password10', 10,'F'),
		( 'Ali', 'Abdelrahman', 'Cairo', 'Street 11', 01010011001, CAST('2001-06-10' AS Date), 'ali.abdelrahman111@example.com', 'password11', 1,'M'),
		( 'Nour', 'Mahmoud', 'Alexandria', 'Street 12', 01110011002, CAST('2000-03-15' AS Date), 'nour.mahmoud112@example.com', 'password12', 2,'F'),
		( 'Hassan', 'Rashid', 'Giza', 'Street 13', 01210011003, CAST('2002-09-09' AS Date), 'hassan.rashid113@example.com', 'password13', 3,'M'),
		( 'Reem', 'Ahmed', 'Tanta', 'Street 14', 01510011004, CAST('2001-11-22' AS Date), 'reem.ahmed114@example.com', 'password14', 4,'F'),
		( 'Ziad', 'Tarek', 'Fayoum', 'Street 15', 01020011005, CAST('2003-05-13' AS Date), 'ziad.tarek115@example.com', 'password15', 5,'M'),
		( 'Salma', 'Ibrahim', 'Minya', 'Street 16', 01130011006, CAST('1999-08-24' AS Date), 'salma.ibrahim116@example.com', 'password16', 6,'F'),
		( 'Youssef', 'Mohamed', 'Sohag', 'Street 17', 01240011007, CAST('2002-01-18' AS Date), 'youssef.mohamed117@example.com', 'password17', 7,'M'),
		( 'Laila', 'Ali', 'Aswan', 'Street 18', 01550011008, CAST('2000-07-07' AS Date), 'laila.ali118@example.com', 'password18', 8,'F'),
		( 'Moez', 'Abdelaziz', 'Sharm El Sheikh', 'Street 19', 01060011009, CAST('2003-11-30' AS Date), 'moez.abdelaziz119@example.com', 'password19', 9,'M'),
		( 'Tamer', 'Khaled', 'Luxor', 'Street 20', 01170011010, CAST('2004-02-16' AS Date), 'tamer.khaled120@example.com', 'password20', 10,'M'),
		( 'Sami', 'Ahmed', 'Cairo', 'Street 21', 01280011011, CAST('1999-12-01' AS Date), 'sami.ahmed121@example.com', 'password21', 1,'M'),
		( 'Nadia', 'Fathi', 'Alexandria', 'Street 22', 01590011012, CAST('2001-09-14' AS Date), 'nadia.fathi122@example.com', 'password22', 2,'F'),
		( 'Ahmed', 'Khalil', 'Giza', 'Street 23', 01091011013, CAST('2003-06-10' AS Date), 'ahmed.khalil123@example.com', 'password23', 3,'M'),
		( 'Mariam', 'Tariq', 'Tanta', 'Street 24', 0111011014, CAST('2002-03-25' AS Date), 'mariam.tariq124@example.com', 'password24', 4,'F'),
		( 'Omar', 'Abdelrahman', 'Fayoum', 'Street 25', 0122011015, CAST('2001-10-05' AS Date), 'omar.abdelrahman125@example.com', 'password25', 5,'M'),
		( 'Samah', 'Ibrahim', 'Minya', 'Street 26', 0153011016, CAST('2000-04-14' AS Date), 'samah.ibrahim126@example.com', 'password26', 6,'F'),
		( 'Khaled', 'Rashid', 'Sohag', 'Street 27', 01040211017, CAST('2003-12-21' AS Date), 'khaled.rashid127@example.com', 'password27', 7,'M'),
		( 'Amina', 'Ali', 'Aswan', 'Street 28', 01150311018, CAST('2002-08-17' AS Date), 'amina.ali128@example.com', 'password28', 8,'F'),
		( 'Mohammed', 'Tarek', 'Sharm El Sheikh', 'Street 29', 01260411019, CAST('2000-06-30' AS Date), 'mohammed.tarek129@example.com', 'password29', 9,'M'),
		( 'Sara', 'Abdelaziz', 'Luxor', 'Street 30', 01570511020, CAST('2001-04-23' AS Date), 'sara.abdelaziz130@example.com', 'password30', 10,'F'),
		( 'Kareem', 'Fathi', 'Cairo', 'Street 31', 01080611021, CAST('2003-09-10' AS Date), 'kareem.fathi131@example.com', 'password31', 1,'M'),
		( 'Nour', 'Said', 'Alexandria', 'Street 32', 01190711022, CAST('2002-01-29' AS Date), 'nour.said132@example.com', 'password32', 2,'F'),
		( 'Ali', 'Mohamed', 'Giza', 'Street 33', 01200811023, CAST('2001-11-04' AS Date), 'ali.mohamed133@example.com', 'password33', 3,'M'),
		( 'Lina', 'Rashid', 'Tanta', 'Street 34', 01510911024, CAST('2004-01-21' AS Date), 'lina.rashid134@example.com', 'password34', 4,'F'),
		( 'Maha', 'Abdelrahman', 'Fayoum', 'Street 35', 01020911025, CAST('2002-07-16' AS Date), 'maha.abdelrahman135@example.com', 'password35', 5,'F'),
		( 'Mahmoud', 'Khaled', 'Minya', 'Street 36', 01131111026, CAST('2003-03-11' AS Date), 'mahmoud.khaled136@example.com', 'password36', 6,'M'),
		( 'Rania', 'Tariq', 'Sohag', 'Street 37', 01241211027, CAST('2000-12-15' AS Date), 'rania.tariq137@example.com', 'password37', 7,'F'),
		( 'Hassan', 'Fathi', 'Aswan', 'Street 38', 01551311028, CAST('2002-10-10' AS Date), 'hassan.fathi138@example.com', 'password38', 8,'M'),
		( 'Youssef', 'Said', 'Sharm El Sheikh', 'Street 39', 01061411029, CAST('2004-03-05' AS Date), 'youssef.said139@example.com', 'password39', 9,'M'),
		( 'Nour', 'Ahmed', 'Cairo', 'Street 41', 01023456789, CAST('2000-05-14' AS Date), 'nour.ahmed41@example.com', 'password41', 4,'F'),
		( 'Youssef', 'Ali', 'Alexandria', 'Street 42', 01134567890, CAST('2001-03-08' AS Date), 'youssef.ali42@example.com', 'password42', 5,'M'),
		( 'Dina', 'Samy', 'Giza', 'Street 43', 01212345678, CAST('1999-09-21' AS Date), 'dina.samy43@example.com', 'password43', 6,'F'),
		( 'Amira', 'Hassan', 'Sharm El Sheikh', 'Street 44', 01034567890, CAST('2002-11-11' AS Date), 'amira.hassan44@example.com', 'password44', 7,'F'),
		( 'Mohamed', 'Abdallah', 'Cairo', 'Street 45', 01123456789, CAST('2003-01-05' AS Date), 'mohamed.abdallah45@example.com', 'password45', 8,'M'),
		( 'Mona', 'Youssef', 'Giza', 'Street 46', 01512345678, CAST('2001-07-25' AS Date), 'mona.youssef46@example.com', 'password46', 9,'F'),
		( 'Tamer', 'Hossam', 'Cairo', 'Street 47', 01234567890, CAST('2002-02-12' AS Date), 'tamer.hossam47@example.com', 'password47', 4,'M'),
		( 'Sara', 'Ibrahim', 'Alexandria', 'Street 48', 01098765432, CAST('2000-06-20' AS Date), 'sara.ibrahim48@example.com', 'password48', 5,'F'),
		( 'Fady', 'Gad', 'Mansoura', 'Street 49', 01156789012, CAST('2003-04-10' AS Date), 'fady.gad49@example.com', 'password49', 6,'M'),
		( 'Rania', 'Shahin', 'Cairo', 'Street 50', 01223456789, CAST('2001-01-17' AS Date), 'rania.shahin50@example.com', 'password50', 7,'F'),
		( 'Nashwa', 'Khalil', 'Sharm El Sheikh', 'Street 51', 01087654321, CAST('2003-08-08' AS Date), 'nashwa.khalil51@example.com', 'password51', 8,'F'),
		( 'Ahmed', 'Salah', 'Cairo', 'Street 52', 01187654321, CAST('2002-12-22' AS Date), 'ahmed.salah52@example.com', 'password52', 9,'M'),
		( 'Hana', 'Mahmoud', 'Alexandria', 'Street 53', 01245678901, CAST('2001-04-05' AS Date), 'hana.mahmoud53@example.com', 'password53', 10,'F'),
		( 'Moustafa', 'Gamal', 'Giza', 'Street 54', 01012345678, CAST('2000-09-30' AS Date), 'moustafa.gamal54@example.com', 'password54', 1,'M'),
		( 'Heba', 'Taha', 'Mansoura', 'Street 55', 01176543210, CAST('2003-06-18' AS Date), 'heba.taha55@example.com', 'password55', 2,'F'),
		( 'Khaled', 'Rashid', 'Cairo', 'Street 56', 01265432109, CAST('2001-05-11' AS Date), 'khaled.rashid56@example.com', 'password56', 3,'M'),
		( 'Mariam', 'Salem', 'Alexandria', 'Street 57', 01034567890, CAST('2002-01-25' AS Date), 'mariam.salem57@example.com', 'password57', 4,'F'),
		( 'Mahmoud', 'Elhamy', 'Giza', 'Street 58', 01543210987, CAST('2000-04-17' AS Date), 'mahmoud.elhamy58@example.com', 'password58', 5,'M'),
		( 'Yara', 'Sami', 'Cairo', 'Street 59', 01298765432, CAST('2003-03-01' AS Date), 'yara.sami59@example.com', 'password59', 6,'F'),
		( 'Osman', 'Fathi', 'Sharm El Sheikh', 'Street 60', 01065432109, CAST('2001-11-09' AS Date), 'osman.fathi60@example.com', 'password60', 7,'M'),
		( 'Mona', 'Soliman', 'Mansoura', 'Street 61', 01123456789, CAST('2002-08-12' AS Date), 'mona.soliman61@example.com', 'password61', 8,'F'),
		( 'Ali', 'Mahmoud', 'Alexandria', 'Street 62', 01098765432, CAST('2000-10-06' AS Date), 'ali.mahmoud62@example.com', 'password62', 9,'M'),
		( 'Laila', 'Sherif', 'Giza', 'Street 63', 01145678901, CAST('2003-12-15' AS Date), 'laila.sherif63@example.com', 'password63', 10,'F'),
		( 'Fayza', 'Hassan', 'Cairo', 'Street 64', 01578901234, CAST('2002-04-20' AS Date), 'fayza.hassan64@example.com', 'password64', 1,'F'),
		( 'Sami', 'Kamal', 'Sharm El Sheikh', 'Street 65', 01023234567, CAST('2000-07-01' AS Date), 'sami.kamal65@example.com', 'password65', 2,'M');


-- #INSERT INTO Instructor Table --
INSERT INTO Instructor
VALUES  ('Hussien', 'Ayman', 'Mit Ghamr', 'Elgalaa', 01023465789, CAST('1998-12-30' AS Date), 'bernadinehyde@valpreal.com', 'password123', 15000.0000, CAST('2022-12-30' AS Date), 3, 'M'),
		('Sara', 'Aly', 'Mansoura', 'Elmadrasa St', 01123487890, CAST('1995-11-16' AS Date), 'josephineweber@hivedom.com', 'password123', 12000.0000, CAST('2015-11-16' AS Date), 4, 'F'),
		('Omnia', 'Abdullah', 'Fayoum', 'ElSayad St', 01023567891, CAST('1997-11-02' AS Date), 'solisblackwell@eternis.com', 'password123', 11000.0000, CAST('2018-11-02' AS Date), 5, 'F'),
		('Essam', 'Ibrahim', 'Mansoura', 'Nozha', 01041234567, CAST('1996-01-02' AS Date), 'chrystalguy@norali.com', 'password123', 16000.0000, CAST('2021-01-02' AS Date), 6, 'M'),
		('Alaa', 'Abdulrahman', 'Sohag', 'ElSayad St', 01025678901, CAST('1999-08-26' AS Date), 'myrnagrimes@pulze.com', 'password123', 13000.0000, CAST('2017-08-26' AS Date), 7, 'F'),
		('Sara', 'Mostafa', 'Zagazig', 'Tes3een', 01029876543, CAST('1998-05-18' AS Date), 'mitchellcash@imkan.com', 'password123', 15000.0000, CAST('2020-05-18' AS Date), 8, 'F'),
		('Hussien', 'Mostafa', 'Minya', 'Elmadrasa St', 01054321098, CAST('1997-02-08' AS Date), 'samanthaedwards@collaire.com', 'password123', 14000.0000, CAST('2023-02-08' AS Date), 9, 'M'),
		('Ahmed', 'Ahmed', 'Cairo', 'ElSha3bia', 01005432109, CAST('1995-01-15' AS Date), 'christiehancock@phuel.com', 'password123', 15500.0000, CAST('2020-01-15' AS Date), 10, 'M'),
		('Sara', 'Ayman', 'Mit Ghamr', 'Elmadrasa St', 01056789101, CAST('1999-09-10' AS Date), 'schultzryan@signity.com', 'password123', 11000.0000, CAST('2015-09-10' AS Date), 2, 'F'),
		( 'Tamer', 'Salem', 'Alexandria', 'ElGalaa', 01023456890, CAST('1998-07-12' AS Date), 'tamer.salem@edu.com', 'password123', 12500.0000, CAST('2022-07-12' AS Date), 1, 'M'),
		( 'Mona', 'Ali', 'Cairo', 'ElMaadi', 01034567892, CAST('1997-03-24' AS Date), 'mona.ali@university.com', 'password123', 13000.0000, CAST('2021-03-24' AS Date), 2, 'F'),
		( 'Ahmed', 'Youssef', 'Giza', 'ElTahrir St', 01045678901, CAST('1999-11-10' AS Date), 'ahmed.youssef@science.com', 'password123', 14500.0000, CAST('2020-11-10' AS Date), 3, 'M'),
		( 'Rania', 'Mahmoud', 'Tanta', 'ElSadr', 01056789012, CAST('1996-08-16' AS Date), 'rania.mahmoud@univ.com', 'password123', 16000.0000, CAST('2021-08-16' AS Date), 4, 'F'),
		( 'Yassir', 'Fathy', 'Ismailia', 'ElMaidan', 01067890123, CAST('1998-04-02' AS Date), 'yassir.fathy@school.edu', 'password123', 12000.0000, CAST('2022-04-02' AS Date), 5, 'M'),
		( 'Fatma', 'Gamal', 'Assiut', 'ElNozha', 01078901234, CAST('1995-02-28' AS Date), 'fatma.gamal@edu.com', 'password123', 13500.0000, CAST('2020-02-28' AS Date), 6, 'F'),
		( 'Hossam', 'Sayed', 'Port Said', 'ElRaml', 01089012345, CAST('1999-06-18' AS Date), 'hossam.sayed@institute.com', 'password123', 14000.0000, CAST('2021-06-18' AS Date), 7, 'M'),
		( 'Samah', 'Salah', 'Beni Suef', 'ElQudama', 01090123456, CAST('1997-05-22' AS Date), 'samah.salah@acad.com', 'password123', 12500.0000, CAST('2022-05-22' AS Date), 8, 'M'),
		( 'Amr', 'Moustafa', 'Fayoum', 'ElTahrir', 01101234567, CAST('1999-12-05' AS Date), 'amr.moustafa@univ.com', 'password123', 15000.0000, CAST('2020-12-05' AS Date), 9, 'M'),
		( 'Mariam', 'Hussein', 'Mansoura', 'ElShams', 01112345678, CAST('1996-10-30' AS Date), 'mariam.hussein@edu.com', 'password123', 16000.0000, CAST('2021-10-30' AS Date), 10, 'F'),
		( 'Karim', 'Hassan', 'Giza', 'ElNasr', 01123456789, CAST('1998-01-20' AS Date), 'karim.hassan@school.edu', 'password123', 17000.0000, CAST('2022-01-20' AS Date), 1, 'M'),
		( 'Maged', 'Sayed', 'Aswan', 'ElQalyub', 01134567890, CAST('1997-09-11' AS Date), 'maged.sayed@univ.com', 'password123', 12500.0000, CAST('2020-09-11' AS Date), 2, 'M'),
		( 'Nada', 'Gaber', 'Alexandria', 'ElMontaza', 01145678901, CAST('1996-07-07' AS Date), 'nada.gaber@edu.com', 'password123', 13000.0000, CAST('2021-07-07' AS Date), 3, 'F'),
		( 'Mohamed', 'Mansour', 'Cairo', 'ElZohour', 01156789012, CAST('1999-03-03' AS Date), 'mohamed.mansour@university.com', 'password123', 14000.0000, CAST('2020-03-03' AS Date), 4, 'M'),
		( 'Layla', 'Fouad', 'Suez', 'ElRiyad', 01167890123, CAST('1997-04-25' AS Date), 'layla.fouad@institute.com', 'password123', 15000.0000, CAST('2021-04-25' AS Date), 5, 'F'),
		( 'Shady', 'Abdullah', 'Cairo', 'ElAbbasia', 01178901234, CAST('1998-02-14' AS Date), 'shady.abdullah@edu.com', 'password123', 12000.0000, CAST('2022-02-14' AS Date), 6, 'M'),
		( 'Hala', 'Khaled', 'Luxor', 'ElGomhouriya', 01189012345, CAST('1996-05-17' AS Date), 'hala.khaled@school.edu', 'password123', 13500.0000, CAST('2020-05-17' AS Date), 7, 'F'),
		( 'Mona', 'Ezzat', 'Damietta', 'ElShorouk', 01190123456, CAST('1999-08-23' AS Date), 'mona.ezzat@edu.com', 'password123', 14500.0000, CAST('2021-08-23' AS Date), 8, 'F'),
		( 'Samer', 'Ashraf', 'Beni Suef', 'ElMasara', 01201234567, CAST('1997-12-12' AS Date), 'samer.ashraf@univ.com', 'password123', 12500.0000, CAST('2022-12-12' AS Date), 9, 'M'),
		( 'Ramy', 'Mohamed', 'Sharm El Sheikh', 'ElRiyad', 01212345678, CAST('1999-07-14' AS Date), 'ramy.mohamed@edu.com', 'password123', 16000.0000, CAST('2020-07-14' AS Date), 10, 'M'),
		( 'Karim', 'Magdy', 'Port Said', 'ElMidan', 01223456789, CAST('1996-09-01' AS Date), 'karim.magdy@university.com', 'password123', 17000.0000, CAST('2021-09-01' AS Date), 1, 'M');




-- #INSERT INTO Exam Table --
INSERT INTO Exam(exm_model, duration, crs_id)
VALUES	(1, 120, 1),
		(2, 180, 2),
		(3, 150, 3),
		(2, 200, 4),
		(4, 180, 5),
		(1, 120, 6),
		(3, 150, 7),
		(2, 180, 8),
		(1, 120, 9),
		(4, 180, 10),
		(2, 150, 11),
		(3, 180, 12),
		(1, 120, 13),
		(4, 200, 14),
		(3, 180, 15),
		(1, 150, 16),
		(2, 180, 17),
		(4, 150, 18),
		(3, 120, 19),
		(2, 180, 20);



-- #INSERT Question Exam Table --
INSERT INTO Question (content, answer, type)
VALUES	('Is 2+2 equal to 4?', 'True', 'True&False'),
		('What is the capital of France?', 'Paris', 'MCQ'),
		('Is Python a programming language?', 'True', 'True&False'),
		('Which of the following is a programming language?', 'C', 'MCQ'),
		('Is 5 > 3?', 'True', 'True&False'),
		('Is Java a statically typed language?', 'True', 'True&False'),
		('Which language is used for web development?', 'JavaScript', 'MCQ'),
		('Is 10% of 1000 equal to 100?', 'False', 'True&False'),
		('Which of the following is a markup language?', 'HTML', 'MCQ'),
		( 'Is SQL used for querying databases?', 'True', 'True&False'),
		( 'Which of these is an object-oriented programming language?', 'Java', 'MCQ'),
		( 'Is 20 < 10?', 'False', 'True&False'),
		( 'Which language is known as the "mother of all languages"?', 'C', 'MCQ'),
		( 'Is CSS used to style webpages?', 'True', 'True&False'),
		( 'Which of these is used for styling a webpage?', 'CSS', 'MCQ'),
		( 'Is 15 > 20?', 'False', 'True&False'),
		( 'Which of the following is a database query language?', 'SQL', 'MCQ'),
		( 'Is Ruby a programming language?', 'True', 'True&False'),
		( 'Which of these is a mobile app development language?', 'Kotlin', 'MCQ'),
		( 'Is HTML used for creating webpages?', 'True', 'True&False'),
		( 'What does CSS stand for?', 'Cascading Style Sheets', 'MCQ'),
		( 'Which programming language is known for its use in Artificial Intelligence?', 'Python', 'MCQ'),
		( 'Is HTML a programming language?', 'False', 'True&False'),
		( 'Which of these is not a programming language?', 'HTML', 'MCQ'),
		( 'Is Python dynamically typed?', 'True', 'True&False'),
		( 'What does OOP stand for?', 'Object-Oriented Programming', 'MCQ'),
		( 'Which of the following is an interpreted language?', 'Python', 'MCQ'),
		( 'Is C# primarily used for web development?', 'False', 'True&False'),
		( 'Which data structure uses FIFO (First In, First Out)?', 'Queue', 'MCQ'),
		( 'What is the main purpose of the Stack data structure?', 'To store data in Last In, First Out order', 'MCQ'),
		( 'Which of the following is a key characteristic of functional programming?', 'Immutability', 'MCQ'),
		( 'Is Java platform-independent?', 'True', 'True&False'),
		( 'Which of these is a low-level programming language?', 'Assembly', 'MCQ'),
		( 'Which programming language is most commonly used for machine learning?', 'Python', 'MCQ'),
		( 'Is recursion a programming technique used in functional programming?', 'True', 'True&False'),
		( 'Which of these is used for front-end web development?', 'JavaScript', 'MCQ'),
		( 'Is SQL a programming language?', 'False', 'True&False'),
		( 'Which of the following is a sorting algorithm?', 'QuickSort', 'MCQ'),
		( 'Which data structure is used in a HashMap?', 'Hash Table', 'MCQ'),
		( 'Is C++ a multi-paradigm programming language?', 'True', 'True&False'),
		( 'Which of the following is a markup language?', 'HTML', 'MCQ'),
		( 'Which programming language is known for its use in web development?', 'JavaScript', 'MCQ'),
		( 'Is C# used for developing mobile applications?', 'True', 'True&False'),
		( 'What is the primary purpose of an operating system?', 'Manage hardware and software resources', 'MCQ'),
		( 'Is Python interpreted or compiled?', 'Interpreted', 'True&False'),
		( 'What is the full form of IDE?', 'Integrated Development Environment', 'MCQ'),
		( 'Which programming language is best known for its use in system programming?', 'C', 'MCQ'),
		( 'What is the basic unit of data in C programming?', 'Variable', 'MCQ'),
		( 'Which data structure is used for implementing recursive algorithms?', 'Stack', 'MCQ'),
		( 'Which of these is not a programming paradigm?', 'Imperative', 'MCQ'),
		( 'Is C++ a procedural language?', 'True', 'True&False'),
		( 'Which of these is used for building Android apps?', 'Java', 'MCQ'),
		( 'Is JavaScript the same as Java?', 'False', 'True&False'),
		( 'Which of these is a function in Python to get the length of an object?', 'len()', 'MCQ'),
		( 'Which programming language is widely used for backend web development?', 'Node.js', 'MCQ'),
		( 'What does the term API stand for?', 'Application Programming Interface', 'MCQ'),
		( 'Which of these is an example of a high-level language?', 'Python', 'MCQ'),
		( 'Which is the first step in the software development lifecycle?', 'Requirement gathering', 'MCQ'),
		( 'Is Ruby an object-oriented programming language?', 'True', 'True&False'),
		( 'Which sorting algorithm has the best average time complexity?', 'Merge Sort', 'MCQ'),
		( 'What does "SQL" stand for?', 'Structured Query Language', 'MCQ'),
		( 'Which of the following is a functional programming language?', 'Haskell', 'MCQ'),
		( 'Is Java a purely object-oriented programming language?', 'False', 'True&False'),
		( 'Which of the following languages is primarily used for machine learning?', 'Python', 'MCQ'),
		( 'What is the purpose of the "this" keyword in JavaScript?', 'Refers to the current object', 'MCQ'),
		( 'Which of these is a keyword in C programming?', 'int', 'MCQ'),
		( 'Which data structure allows fast insertion and deletion from both ends?', 'Deque', 'MCQ'),
		( 'Is Python a compiled language?', 'False', 'True&False'),
		( 'What does CSS stand for?', 'Cascading Style Sheets', 'MCQ'),
		( 'Which programming language is used for iOS development?', 'Swift', 'MCQ'),
		( 'Is the Java Virtual Machine platform-independent?', 'True', 'True&False'),
		( 'Which of the following is used to design the structure of a database?', 'SQL', 'MCQ'),
		( 'What does HTTP stand for?', 'HyperText Transfer Protocol', 'MCQ'),
		( 'Which of these is an example of an interpreted language?', 'Python', 'MCQ'),
		( 'What is the main use of Git?', 'Version control', 'MCQ'),
		( 'Is Linux an operating system?', 'True', 'True&False'),
		( 'Which of the following is not a relational database management system?', 'MongoDB', 'MCQ'),
		( 'What does CRUD stand for in database terminology?', 'Create, Read, Update, Delete', 'MCQ'),
		( 'What is a deadlock in programming?', 'A situation where two processes are stuck waiting for each other', 'MCQ'),
		( 'Which of the following is the best sorting algorithm for large datasets?', 'Merge Sort', 'MCQ'),
		( 'Which of the following is the main use of a linked list?', 'Dynamic memory allocation', 'MCQ'),
		( 'Which of these is not a correct way to declare an array in C?', 'int array[10]', 'MCQ'),
		( 'What is the default value of an integer in Java?', '0', 'MCQ'),
		( 'Which of these is the correct syntax to create a function in Python?', 'def my_function():', 'MCQ'),
		( 'Is a class in object-oriented programming a template for creating objects?', 'True', 'True&False'),
		( 'Which is the main advantage of using recursion in programming?', 'Simplifies complex problems', 'MCQ'),
		( 'What is the main use of a queue data structure?', 'FIFO operations', 'MCQ'),
		( 'Which programming language uses the concept of "callbacks" most commonly?', 'JavaScript', 'MCQ'),
		( 'Is Swift a modern programming language?', 'True', 'True&False'),
		( 'Which of the following is used to handle exceptions in Java?', 'try-catch', 'MCQ'),
		( 'Which data structure uses FIFO (First In, First Out)?', 'Queue', 'MCQ'),
		( 'Is the Python "list" mutable?', 'True', 'True&False'),
		( 'Which of the following is a valid Python data type?', 'Tuple', 'MCQ'),
		( 'Is a binary tree a type of data structure?', 'True', 'True&False'),
		( 'Which of these is not a type of loop in Python?', 'Do-Until', 'MCQ'),
		( 'Which sorting algorithm has a worst-case time complexity of O(n log n)?', 'Merge Sort', 'MCQ'),
		( 'Which of these is used to handle memory management in C?', 'malloc()', 'MCQ'),
		( 'What is a static variable in C programming?', 'A variable that retains its value between function calls', 'MCQ'),
		( 'Which of the following is an example of a functional programming language?', 'Haskell', 'MCQ'),
		( 'Is the `print()` function in Python used to output data to the console?', 'True', 'True&False');

-- #INSERT Question_type Exam Table --
iNSERT INTO Question_Type
VALUES	(1, 'True', 'False', NULL, NULL),
		(2, 'Paris', 'London', 'Berlin', 'Rome'),
		(3, 'True', 'False', NULL, NULL),
		(4, 'C', 'Java', 'Python', 'Ruby'),
		(5, 'True', 'False', NULL, NULL),
		(6, 'True', 'False', NULL, NULL),
		(7, 'JavaScript', 'HTML', 'Python', 'CSS'),
		(8, 'True', 'False', NULL, NULL),
		(9, 'HTML', 'CSS', 'JavaScript', 'PHP'),
		(10, 'True', 'False', NULL, NULL),
		(11, 'Java', 'Python', 'JavaScript', 'C#'),
		(12, 'True', 'False', NULL, NULL),
		(13, 'C', 'Java', 'Python', 'Ruby'),
		(14, 'True', 'False', NULL, NULL),
		(15, 'CSS', 'JavaScript', 'HTML', 'PHP'),
		(16, 'True', 'False', NULL, NULL),
		(17, 'SQL', 'NoSQL', 'GraphQL', 'REST'),
		(18, 'True', 'False', NULL, NULL),
		(19, 'Kotlin', 'Swift', 'Dart', 'Java'),
		(20, 'True', 'False', NULL, NULL),
		(21, 'Cascading Style Sheets', 'Cascading Scripting Style', 'Cascading Simple Sheets', 'Cascading Syntax Styles'),
		(22, 'Python', 'Java', 'C++', 'R'),
		(23, 'True', 'False', NULL, NULL),
		(24, 'HTML', 'JavaScript', 'C#', 'PHP'),
		(25, 'True', 'False', NULL, NULL),
		(26, 'Object-Oriented Programming', 'Open Object Programming', 'Optimized Object Programming', 'Ordered Object Programming'),
		(27, 'Python', 'Java', 'C#', 'Ruby'),
		(28, 'True', 'False', NULL, NULL),
		(29, 'Queue', 'Stack', 'Array', 'Linked List'),
		(30, 'To store data in Last In, First Out order', 'To store data in First In, First Out order', 'To store data in order of size', 'To store data in priority order'),
		(31, 'Immutability', 'State Mutation', 'Side Effects', 'Recursion'),
		(32, 'True', 'False', NULL, NULL),
		(33, 'Assembly', 'Python', 'Java', 'C++'),
		(34, 'Python', 'JavaScript', 'Java', 'Ruby'),
		(35, 'True', 'False', NULL, NULL),
		(36, 'JavaScript', 'Python', 'Java', 'C#'),
		(37, 'True', 'False', NULL, NULL),
		(38, 'QuickSort', 'MergeSort', 'BubbleSort', 'SelectionSort'),
		(39, 'Hash Table', 'Array', 'Stack', 'Queue'),
		(40, 'True', 'False', NULL, NULL),
		(41, 'HTML', 'CSS', 'JavaScript', 'SQL'),
		(42, 'JavaScript', 'PHP', 'Java', 'C++'),
		(43, 'True', 'False', NULL, NULL),
		(44, 'Manage hardware and software resources', 'Build web applications', 'Run machine learning models', 'Control user inputs'),
		(45, 'Interpreted', 'Compiled', NULL, NULL),
		(46, 'Integrated Development Environment', 'Internal Development Environment', 'Intelligent Development Engine', 'Initial Design Environment'),
		(47, 'C', 'C++', 'Python', 'Ruby'),
		(48, 'Variable', 'Constant', 'Array', 'Function'),
		(49, 'Stack', 'Queue', 'Linked List', 'Array'),
		(50, 'Imperative', 'Declarative', 'Functional', 'Object-Oriented'),
		(51, 'True', 'False', NULL, NULL),
		(52, 'Java', 'Swift', 'Objective-C', 'Python'),
		(53, 'True', 'False', NULL, NULL),
		(54, 'len()', 'length()', 'getLength()', 'size()'),
		(55, 'Node.js', 'Python', 'Java', 'Ruby'),
		(56, 'Application Programming Interface', 'Active Programming Interface', 'Automated Programming Interface', 'Application Protocol Interface'),
		(57, 'Python', 'Java', 'C', 'Ruby'),
		(58, 'Requirement gathering', 'Designing', 'Implementation', 'Testing'),
		(59, 'True', 'False', NULL, NULL),
		(60, 'Merge Sort', 'Quick Sort', 'Bubble Sort', 'Insertion Sort'),
		(61, 'Structured Query Language', 'Simple Query Language', 'Standard Query Language', 'System Query Language'),
		(62, 'Haskell', 'Scala', 'Python', 'Java'),
		(63, 'True', 'False', NULL, NULL),
		(64, 'Python', 'C#', 'JavaScript', 'Ruby'),
		(65, 'Refers to the current object', 'Defines the class', 'Starts the function', 'Assigns a value to the object'),
		(66, 'int', 'float', 'char', 'double'),
		(67, 'Deque', 'Stack', 'Queue', 'Array'),
		(68, 'True', 'False', NULL, NULL),
		(69, 'Cascading Style Sheets', 'Cascading Syntax Sheets', 'Custom Style Sheets', 'Coded Style Sheets'),
		(70, 'Swift', 'Objective-C', 'Java', 'Kotlin'),
		(71, 'True', 'False', NULL, NULL),
		(72, 'SQL', 'NoSQL', 'HQL', 'MongoDB'),
		(73, 'HyperText Transfer Protocol', 'HyperText Translation Protocol', 'HyperText Transfer Program', 'Hyper Transfer Protocol'),
		(74, 'Python', 'C++', 'Java', 'Ruby'),
		(75, 'Version control', 'Package management', 'Configuration management', 'Task management'),
		(76, 'True', 'False', NULL, NULL),
		(77, 'MongoDB', 'MySQL', 'PostgreSQL', 'SQLite'),
		(78, 'Create, Read, Update, Delete', 'Connect, Read, Update, Delete', 'Create, Render, Upload, Delete', 'Connect, Read, Upload, Delete'),
		(79, 'A situation where two processes are stuck waiting for each other', 'A situation where a process crashes', 'A situation where a process is delayed', 'A situation where memory is overused'),
		(80, 'Merge Sort', 'Quick Sort', 'Bubble Sort', 'Insertion Sort'),
		(81, 'Dynamic memory allocation', 'Static memory allocation', 'Indexing', 'Recursive calls'),
		(82, 'int array[10];', 'int[10] array;', 'array[10] int;', 'array int[10];'),
		(83, '0', 'null', 'undefined', 'NaN'),
		(84, 'def my_function():', 'function my_function()', 'func my_function()', 'create my_function()'),
		(85, 'True', 'False', NULL, NULL),
		(86, 'Simplifies complex problems', 'Requires more memory', 'Takes longer execution time', 'Does not work with large datasets'),
		(87, 'FIFO operations', 'LIFO operations', 'Access random elements', 'Store elements in an array'),
		(88, 'JavaScript', 'Python', 'C++', 'Java'),
		(89, 'True', 'False', NULL, NULL),
		(90, 'try-catch', 'try-finally', 'throw-catch', 'catch-finally'),
		(91, 'Queue', 'Stack', 'Linked List', 'Array'),
		(92, 'True', 'False', NULL, NULL),
		(93, 'Tuple', 'List', 'Dictionary', 'String'),
		(94, 'True', 'False', NULL, NULL),
		(95, 'Do-Until', 'While', 'For', 'Foreach'),
		(96, 'Merge Sort', 'Bubble Sort', 'Selection Sort', 'Quick Sort'),
		(97, 'malloc()', 'free()', 'realloc()', 'new()'),
		(98, 'A variable that retains its value between function calls', 'A variable that is only local to the function', 'A variable that can only be used in the main function', 'A variable that automatically resets to zero'),
		(99, 'Haskell', 'Java', 'C++', 'Python'),
		(100, 'True', 'False', NULL, NULL);

-- #INSERT Ins_Course Exam Table --
INSERT INTO Ins_Course
VALUES	(1, 5),
		(2, 12),
		(3, 18),
		(4, 7),
		(5, 1),
		(16, 14),
		(17, 19),
		(8, 3),
		(9, 8),
		(10, 20),
		(11, 15),
		(12, 6),
		(13, 2),
		(18, 19),
		(15, 21),
		(16, 4),
		(17, 11),
		(18, 13),
		(19, 22),
		(20, 10),
		(21, 30),
		(1, 17),
		(2, 23),
		(3, 25),
		(4, 28),
		(5, 18),
		(6, 14),
		(7, 19),
		(8, 1),
		(9, 20),
		(10, 16),
		(11, 13),
		(12, 22),
		(13, 30),
		(11, 25),
		(15, 8),
		(16, 21),
		(17, 12),
		(18, 9),
		(19, 5),
		(20, 24),
		(21, 11),
		(1, 27),
		(2, 30),
		(3, 19),
		(4, 6),
		(5, 23),
		(6, 28),
		(7, 18),
		(8, 16),
		(9, 9),
		(10, 13);

---- studen c
INSERT INTO Std_course(crs_id, std_id, enroll_date)
VALUES	(1, 1, '2024-10-01'), 
		(2, 5, '2024-10-02'),  
		(3, 10, '2024-10-03'), 
		(4, 12, '2024-10-05'), 
		(5, 15, '2024-10-06'), 
		(6, 20, '2024-10-07'), 
		(7, 25, '2024-10-08'), 
		(8, 30, '2024-10-09'),
		(9, 35, '2024-10-10'), 
		(10, 55, '2024-10-11'),
		(1, 54, '2024-11-13'),
        (2, 56, '2024-11-14'),
        (3, 58, '2024-11-15'),
        (4, 60, '2024-11-16'),
        (5, 62, '2024-11-17'),
        (6, 64, '2024-11-18'),
        (7, 1, '2024-11-19'),
        (8, 3, '2024-11-20'),
        (9, 5, '2024-11-21'),
        (10, 7, '2024-11-22'),
		(1, 13, '2024-10-23'),
        (2, 14, '2024-10-24'),
        (3, 16, '2024-10-25'),
        (4, 18, '2024-10-26'),
        (5, 20, '2024-10-27'),
        (6, 22, '2024-10-28'),
        (7, 24, '2024-10-29'),
        (8, 26, '2024-10-30'),
        (9, 28, '2024-10-31'),
        (10, 30, '2024-11-01'),
        (11, 32, '2024-11-02'),
        (12, 34, '2024-11-03'),
        (13, 36, '2024-11-04'),
        (14, 38, '2024-11-05'),
        (15, 43, '2024-11-06'),
        (16, 42, '2024-11-07'),
        (17, 44, '2024-11-08'),
        (18, 46, '2024-11-09'),
        (19, 48, '2024-11-10'),
        (20, 50, '2024-11-11'),
        (21, 52, '2024-11-12'),
		(11, 9, '2024-11-23'),
        (12, 11, '2024-11-24'),
        (13, 13, '2024-11-25'),
        (14, 15, '2024-11-26'),
        (15, 17, '2024-11-27'),
        (16, 19, '2024-11-28'),
        (17, 21, '2024-11-29'),
        (18, 23, '2024-11-30'),
        (19, 25, '2024-12-01'),
        (20, 27, '2024-12-02'),
        (21, 29, '2024-12-03'),
		( 1, 31, '2024-12-04'),
        (2, 33, '2024-12-05'),
        (3, 35, '2024-12-06'),
        (4, 37, '2024-12-07'),
        (5, 39, '2024-12-08'),
        (6, 41, '2024-12-09'),
        (7, 43, '2024-12-10'),
        (8, 45, '2024-12-11'),
        (9, 47, '2024-12-12'),
        (10, 49, '2024-12-13'),
		(11, 51, '2024-12-14'),
        (12, 53, '2024-12-15'),
		(14, 57, '2024-12-17'),
		(15, 59, '2024-12-18'),
		(16, 61, '2024-12-19'),
        (17, 63, '2024-12-20');
     


		
