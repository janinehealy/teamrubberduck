PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Student (
Student_ID INT(11) NOT NULL,
Student_Name VARCHAR(50) NOT NULL, 
Date_of_Birth TEXT NOT NULL, Gender VARCHAR(10) NOT NULL);
INSERT INTO Student VALUES(11212,'John Johnson','2008-01-04','Male');
INSERT INTO Student VALUES(19590,'Prudence Paavo','2008-06-16','Female');
INSERT INTO Student VALUES(20232,'Gift Uwame','2008-01-02','Female');
INSERT INTO Student VALUES(24584,'Imran Al-Amin','2007-08-29','Male');
INSERT INTO Student VALUES(34590,'Rudolph Schindler','2007-11-12','Male');
INSERT INTO Student VALUES(35782,'Stephen Quirk','2007-02-12','Male');
INSERT INTO Student VALUES(47774,'Gino DaCampo','2007-03-15','Male');
INSERT INTO Student VALUES(74562,'Raven Davids','2007-03-23','Non-Binary');
CREATE TABLE Teacher (
  Teacher_ID varchar(10) NOT NULL,
  Teacher_Name varchar(50) NOT NULL,
  Subject varchar(50) NOT NULL,
  Years_Served int(10) NOT NULL,
  Salary int(10) NOT NULL,
  Street_Address varchar(50) NOT NULL,
  Postal_Code varchar(20) NOT NULL,
  Contact_Number varchar(40) NOT NULL
);
INSERT INTO Teacher VALUES('AKIR','Amy Kirman','Biology',5,33010,'14b Grey Street','BN16 1HB','07788 775623');
INSERT INTO Teacher VALUES('BDID','Benoit Didier','French',9,40590,'13b North Street','BN17 4HG','07789 645253');
INSERT INTO Teacher VALUES('DWIN','Della Windsor','Design Technology',5,33010,'4801 Ridge Road','BN13 1GD','07896 354765');
INSERT INTO Teacher VALUES('DYOR','Daphne York','Economics',3,28413,'233 Cliffside Drive','BN16 8GH','07788 746312');
INSERT INTO Teacher VALUES('EDIN','Elizabeth Dingie','Chemistry',10,40490,'10 South Street','BN13 8KH','07744 576908');
INSERT INTO Teacher VALUES('ENIB','Eric Niblock','Geography',1,24373,'123 Mansion Lane','BN17 7GH','07123 687078');
INSERT INTO Teacher VALUES('JCRO','Josie Crouch','Dance',6,35791,'15 Broad Street','BN14 4KH','07841 295912');
INSERT INTO Teacher VALUES('JFRA','Julius Frank','Drama',4,30599,'23 South Street','BN17 9GH','07965 546835');
INSERT INTO Teacher VALUES('JIAN','Jonah Ianuzzi','History',2,26298,'12 Canmore Street','BN12 6JH','07895 462728');
INSERT INTO Teacher VALUES('JLIP','Jade Lipson','Physics',2,26298,'121a North Street','BN19 7BN','07564 896745');
INSERT INTO Teacher VALUES('JROB','Julian Robinson','Art',7,39050,'52 Bridge Street','BN16 1KF','07796 576354');
INSERT INTO Teacher VALUES('LLEE','Lin Lee','Mandarin',1,27600,'18 The Street','BN17 5JH','07789 778942');
INSERT INTO Teacher VALUES('MBER','Mark Bercerra','Physical Education 1',3,28413,'113 Windsor Street','BN17 1BF','07985 146272');
INSERT INTO Teacher VALUES('MPAN','Madeline Pandit','Music',25,40490,'111 Parkside Road','BN13 2GH','07892 263546');
INSERT INTO Teacher VALUES('MRUI','Macarena Ruiz','Spanish',2,26298,'13b North Street','BN17 4HG','07799 776542');
INSERT INTO Teacher VALUES('PPET','Paul Peterson','Physical Education 2',7,39050,'116 Windsor Street','BN17 1BF','07523 562874');
INSERT INTO Teacher VALUES('SCAN','Shane Canmore','Computer Science',5,33010,'154 The Street','BN15 1JD','07789 645132');
INSERT INTO Teacher VALUES('SCLA','Sandy Clayden','English Literature',21,40490,'18 Privet Lane','BN17 9GH','07766 123465');
INSERT INTO Teacher VALUES('SGAT','Stephen Gately','Maths',12,37654,'956 Ireland Court','BN18 9IR','07789 645386');
INSERT INTO Teacher VALUES('SHAR','Steve Harvey','English Language',6,35971,'25b North Street','BN19 8GH','07856 968532');
CREATE TABLE Behaviour_Management (
  Student_ID int(11) NOT NULL,
  Attendance_Percentage decimal(5,1) NOT NULL,
  Plus_Points int(100) NOT NULL,
  Minus_Points int(100) NOT NULL
);
INSERT INTO Behaviour_Management VALUES(11212,49.499999999999999998,0,-34);
INSERT INTO Behaviour_Management VALUES(19590,99.900000000000005687,35,-1);
INSERT INTO Behaviour_Management VALUES(20232,100,31,0);
INSERT INTO Behaviour_Management VALUES(24584,100,14,-2);
INSERT INTO Behaviour_Management VALUES(34590,100,37,0);
INSERT INTO Behaviour_Management VALUES(35782,85.299999999999997161,17,-11);
INSERT INTO Behaviour_Management VALUES(47774,93.900000000000005684,12,-4);
INSERT INTO Behaviour_Management VALUES(74562,33.899999999999998578,14,-7);
CREATE TABLE Student_Timetable (
  Student_ID int(11) NOT NULL,
  Class_ID varchar(50) NOT NULL,
  ID int(11) NOT NULL,
  Time time NOT NULL
);
INSERT INTO Student_Timetable VALUES(11212,'ART08',1,'08:30:00');
INSERT INTO Student_Timetable VALUES(11212,'BIO08',2,'09:20:00');
INSERT INTO Student_Timetable VALUES(11212,'LAN08',4,'10:30:00');
INSERT INTO Student_Timetable VALUES(11212,'ECO08',5,'11:20:00');
INSERT INTO Student_Timetable VALUES(11212,'MAT08',6,'13:35:00');
INSERT INTO Student_Timetable VALUES(11212,'MAN08',7,'14:25:00');
INSERT INTO Student_Timetable VALUES(19590,'SPA08',8,'08:30:00');
INSERT INTO Student_Timetable VALUES(19590,'PHY08',9,'09:20:00');
INSERT INTO Student_Timetable VALUES(19590,'COM08',10,'10:30:00');
INSERT INTO Student_Timetable VALUES(19590,'MUS08',11,'11:20:00');
INSERT INTO Student_Timetable VALUES(19590,'DAN08',12,'13:35:00');
INSERT INTO Student_Timetable VALUES(19590,'DTA08',13,'14:25:00');
INSERT INTO Student_Timetable VALUES(20232,'PE081',14,'08:30:00');
INSERT INTO Student_Timetable VALUES(20232,'DRA08',15,'09:20:00');
INSERT INTO Student_Timetable VALUES(20232,'PE082',16,'10:30:00');
INSERT INTO Student_Timetable VALUES(20232,'CHEM08',17,'11:20:00');
INSERT INTO Student_Timetable VALUES(20232,'LIT08',18,'13:35:00');
INSERT INTO Student_Timetable VALUES(20232,'FRE08',19,'14:25:00');
INSERT INTO Student_Timetable VALUES(24584,'ART08',20,'08:30:00');
INSERT INTO Student_Timetable VALUES(24584,'BIO08',21,'09:20:00');
INSERT INTO Student_Timetable VALUES(24584,'LAN08',22,'10:30:00');
INSERT INTO Student_Timetable VALUES(24584,'ECO08',23,'11:20:00');
INSERT INTO Student_Timetable VALUES(24584,'MAT08',24,'13:35:00');
INSERT INTO Student_Timetable VALUES(24584,'MAN08',25,'14:25:00');
INSERT INTO Student_Timetable VALUES(34590,'PE081',32,'08:30:00');
INSERT INTO Student_Timetable VALUES(34590,'DRA08',33,'09:20:00');
INSERT INTO Student_Timetable VALUES(34590,'PE082',34,'10:30:00');
INSERT INTO Student_Timetable VALUES(34590,'CHEM08',35,'11:20:00');
INSERT INTO Student_Timetable VALUES(34590,'LIT08',36,'13:35:00');
INSERT INTO Student_Timetable VALUES(34590,'FRE08',37,'14:25:00');
INSERT INTO Student_Timetable VALUES(35782,'ART08',38,'08:30:00');
INSERT INTO Student_Timetable VALUES(35782,'BIO08',39,'09:20:00');
INSERT INTO Student_Timetable VALUES(35782,'LAN08',40,'10:30:00');
INSERT INTO Student_Timetable VALUES(35782,'ECO08',41,'11:20:00');
INSERT INTO Student_Timetable VALUES(35782,'MAT08',42,'13:35:00');
INSERT INTO Student_Timetable VALUES(35782,'MAN08',43,'14:25:00');
INSERT INTO Student_Timetable VALUES(47774,'ART08',56,'08:30:00');
INSERT INTO Student_Timetable VALUES(47774,'BIO08',57,'09:20:00');
INSERT INTO Student_Timetable VALUES(47774,'LAN08',58,'10:30:00');
INSERT INTO Student_Timetable VALUES(47774,'ECO08',59,'11:20:00');
INSERT INTO Student_Timetable VALUES(47774,'MAT08',60,'13:35:00');
INSERT INTO Student_Timetable VALUES(47774,'MAN08',61,'14:25:00');
INSERT INTO Student_Timetable VALUES(74562,'SPA08',80,'08:30:00');
INSERT INTO Student_Timetable VALUES(74562,'PHY08',81,'09:20:00');
INSERT INTO Student_Timetable VALUES(74562,'COM08',82,'10:30:00');
INSERT INTO Student_Timetable VALUES(74562,'MUS08',83,'11:20:00');
INSERT INTO Student_Timetable VALUES(74562,'DAN08',84,'13:35:00');
INSERT INTO Student_Timetable VALUES(74562,'DTA08',85,'14:25:00');
CREATE TABLE Timetable (
  Class_ID varchar(50) NOT NULL,
  Teacher_ID varchar(10) NOT NULL,
  Subject varchar(50) NOT NULL,
  Room_Number varchar(100) NOT NULL,
  Day varchar(20) NOT NULL,
  Time time NOT NULL
);
INSERT INTO Timetable VALUES('BIO08','AKIR','Biology','221','Monday','09:20:00');
INSERT INTO Timetable VALUES('FRE08','BDID','French','107','Monday','14:25:00');
INSERT INTO Timetable VALUES('DTA08','DWIN','Design Technology','323','Monday','14:25:00');
INSERT INTO Timetable VALUES('ECO08','DYOR','Economics','315','Monday','11:20:00');
INSERT INTO Timetable VALUES('CHEM08','EDIN','Chemistry','220','Monday','11:20:00');
INSERT INTO Timetable VALUES('DAN08','JCRO','Dance','100','Monday','13:35:00');
INSERT INTO Timetable VALUES('DRA08','JFRA','Drama','100','Monday','09:20:00');
INSERT INTO Timetable VALUES('PHY08','JLIP','Physics','222','Monday','09:20:00');
INSERT INTO Timetable VALUES('ART08','JROB','Art','323','Monday','08:30:00');
INSERT INTO Timetable VALUES('MAN08','LLEE','Mandarin','112','Monday','14:25:00');
INSERT INTO Timetable VALUES('PE081','MBER','Physical Education 1','001','Monday','08:30:00');
INSERT INTO Timetable VALUES('MUS08','MPAN','Music','113','Monday','11:20:00');
INSERT INTO Timetable VALUES('SPA08','MRUI','Spanish','101','Monday','08:30:00');
INSERT INTO Timetable VALUES('PE082','PPET','Physical Education 2','002','Monday','10:30:00');
INSERT INTO Timetable VALUES('COM08','SCAN','Computer Science','205','Monday','10:30:00');
INSERT INTO Timetable VALUES('LIT08','SCLA','English Literature','211','Monday','13:35:00');
INSERT INTO Timetable VALUES('MAT08','SGAT','Maths','174','Monday','13:35:00');
INSERT INTO Timetable VALUES('LAN08','SHAR','English Language','210','Monday','10:30:00');
COMMIT;
