CREATE TABLE university (
    university_name varchar(50) NOT NULL PRIMARY KEY,
    street varchar(20) NOT NULL,
    street_number integer,
    city varchar(20) NOT NULL,
    postal_code varchar(20) NOT NULL,
    description text
);

CREATE TABLE department (
    department_id integer NOT NULL PRIMARY KEY,
    dp_name varchar(20) NOT NULL,
    street varchar(20) NOT NULL,
    street_number integer,
    city varchar(20) NOT NULL,
    postal_code varchar(10) NOT NULL,
    email varchar(50) NOT NULL,
    telephone_number varchar(20),
    university_name varchar(20) NOT NULL
);

CREATE TABLE administrator (
    administrator_id integer NOT NULL PRIMARY KEY,
    ad_name varchar(20) NOT NULL,
    surname varchar(20) NOT NULL,
    date_of_birth varchar(100) NOT NULL,
    street varchar(20) NOT NULL,
    street_number integer,
    city varchar(20) NOT NULL,
    postal_code varchar(20) NOT NULL,
    afm integer NOT NULL,
    salary integer,
    specialty varchar(20) NOT NULL,
    years_of_work integer,
    university_name varchar(20) NOT NULL
);

CREATE TABLE teacher (
    teacher_id integer NOT NULL PRIMARY KEY,
    t_name varchar(20) NOT NULL,
    surname varchar(20) NOT NULL,
    date_of_birth varchar(100) NOT NULL,
    street varchar(20) NOT NULL,
    street_number integer,
    postal_code varchar(5) NOT NULL,
    city varchar(20) NOT NULL,
    teacher_rank varchar(20) NOT NULL,
    publication_number integer,
    time_to_get_phd integer NOT NULL,
    number_of_postgraduate_student integer,
    department_id integer NOT NULL
);

CREATE TABLE telephone_number (
    t_number char(10) NOT NULL PRIMARY KEY,
    university_name varchar(50) NOT NULL
);

CREATE TABLE course (
    course_id varchar(40) NOT NULL PRIMARY KEY,
    c_name varchar(50) NOT NULL,
    description text,
    teacher_id integer NOT NULL,
    student_population varchar (10000) NOT NULL
);


CREATE TABLE course_in_department(
    department_id integer NOT NULL,
    course_id varchar(40) NOT NULL
);

CREATE TABLE student(
    student_id integer NOT NULL PRIMARY KEY,
    st_name varchar(20) NOT NULL,
    surname varchar(20) NOT NULL,
    date_of_birth varchar(100) NOT NULL,
    city varchar(20) NOT NULL,
    department_id integer NOT NULL
);

CREATE TABLE pregraduate_student(
    student_id integer NOT NULL PRIMARY KEY,
    year_of_registration integer NOT NULL,
    average_grade float NOT NULL
);

CREATE TABLE postgraduate_student(
    student_id integer NOT NULL PRIMARY KEY,
    type_of_degree varchar(40) NOT NULL,
    type_of_degree_thesis varchar(40) NOT NULL 
);


CREATE TABLE student_attends_course(
    course_id varchar(40) NOT NULL,
    student_id integer NOT NULL,
    grade float
);

 insert into university(university_name,street,street_number,city,postal_code) 
 values('UoWM','Fourka Area',0,'KASTORIA',52100);
 insert into university(university_name,street,street_number,city,postal_code) 
 values('AUTH','Agiou Dimitriou',4,'THESALONIKI',54124);
 insert into university(university_name,street,street_number,city,postal_code) 
 values('UoC','Gallos',7,'CHANIA',74100);
 insert into university(university_name,street,street_number,city,postal_code) 
 values('DUΤΗ','Campos',2,'KOMOTINI',69100); 
 
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(1,'Informatics','Fourka Area',0,'KASTORIA',52100,'infoKast@gmail.com','6971855616','UoWM');
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(2,'Physics','Fourka Area',0,'KASTORIA',52100,'PhysicKast@gmail.com','6971855616','UoWM');
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(3,'Medicine','Fourka Area',0,'KASTORIA',52100,'MedineKast@gmail.com','6971855616','UoWM');

insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(11,'Informatics','Agiou Dimitriou',4,'THESALONIKI',54124,'inSalonika@gmail.com','2112341425','AUTH');
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(12,'Physics','Agiou Dimitriou',4,'THESALONIKI',54124,'phySalonika@gmail.com','2112341425','AUTH');
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
 values(13,'Medicine','Agiou Dimitriou',4,'THESALONIKI',54124,'medSalonika@gmail.com','2112341425','AUTH');

insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(21,'Informatics','Gallos',7,'CHANIA',74100,'informChaniwn@Yahoo.com','6988450391','UoC');
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(22,'Physics','Gallos',7,'CHANIA',74100,'PhysicChaniwn@Yahoo.com','6988450391','UoC');
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name) 
values(23,'Medicine','Gallos',7,'CHANIA',74100,'MediChaniwn@Yahoo.com','6988450391','UoC');

insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(31,'Informatics','Campos',2,'KOMOTINI',69100,'csduth@outlook.gr','6972345678','DUTH');
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(32,'Psysics','Campos',2,'KOMOTINI',69100,'psduth@outlook.gr','6972345678','DUTH');
insert into department(department_id,dp_name,street,street_number,city,postal_code,email,telephone_number,university_name)
values(33,'Medicine','Campos',2,'KOMOTINI',69100,'msduth@outlook.gr','6972345678','DUTH');

insert into administrator(administrator_id,ad_name,surname,date_of_birth,street,street_number,city,postal_code,afm,salary,specialty,years_of_work,university_name) 
values(1,'Sofia','Papadopoulou',1980-10-10,'Leukis',12,'KASTORIA',52100,125125,800,'Secretery',5,'UoWM');
insert into administrator(administrator_id,ad_name,surname,date_of_birth,street,street_number,city,postal_code,afm,salary,specialty,years_of_work,university_name)  
values(2,'Vasilis','Stylianidis',1976-07-02,'Maniakoi',2,'KASTORIA',52100,134432,800,'Electrecian',25,'UoWM');

insert into administrator(administrator_id,ad_name,surname,date_of_birth,street,street_number,city,postal_code,afm,salary,specialty,years_of_work,university_name) 
 values(3,'Georgios','Petrou',1981-05-04,'Pyrrou',8,'THESALONIKI','54124',145879,800,'Secretery',20,'AUTH');
insert into administrator(administrator_id,ad_name,surname,date_of_birth,street,street_number,city,postal_code,afm,salary,specialty,years_of_work,university_name)  
values(4,'Dimitrios','Kallos',1980-03-01,'Papasimiti',14,'THESALONIKI','54124',478316,1000,'Electrecian',20,'AUTH');

insert into administrator(administrator_id,ad_name,surname,date_of_birth,street,street_number,city,postal_code,afm,salary,specialty,years_of_work,university_name) 
 values(5,'Ourania','Antonopoulou',1983-09-03,'Kolokotroni',3,'CHANIA','74100',098678,950,'Secretery',15,'UoC');
insert into administrator(administrator_id,ad_name,surname,date_of_birth,street,street_number,city,postal_code,afm,salary,specialty,years_of_work,university_name) 
 values(6,'Vaggelis','Tses',1975-04-12,'Mantinadwn',19,'CHANIA','74100',876948,1000,'Electrecian',30,'UoC');

insert into administrator(administrator_id,ad_name,surname,date_of_birth,street,street_number,city,postal_code,afm,salary,specialty,years_of_work,university_name) 
 values(7,'Orfeas','Mitoglou',1981-03-05,'Ellinwn',5,'KOMOTINI',69100,765893,1000,'Secretery',10,'DUTH');
insert into administrator(administrator_id,ad_name,surname,date_of_birth,street,street_number,city,postal_code,afm,salary,specialty,years_of_work,university_name)  
values(8,'Takis','Lelos',1977-05-10,'Karatzaferi',25,'KOMOTINI',69100,763989,700,'Electrecian',25,'DUTH');

insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(1,'Nikolaos','Dimokas',"1987-05-12",'Megalou Alexandrou',7,52100,'KASTORIA','Lektoras',104,2,304,1);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(2,'Paschalis','Terzis',"1982-25-10",'Egnatias',15,52100,'KASTORIA','Anaplirotis',86,5,212,3);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(3,'Sokratis','Papastathopoulos',"1977-13-11",'Leoforos Kiknon',30,52100,'KASTORIA','Lektoras',1328,4,336,2);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
values(4,'Ioanna','Sotiropoulou',"1990-31-07",'Elpidas',8,52100,'KASTORIA','Anaplirotis',32,2,124,2);

insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(11,'Savoula','Karachristou',"1985-21-06",'Amfilochagou Mpezou',2,54124,'THESALONIKI','Kathigitis',677,3,365,11);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(12,'Konstantinos','Katakouzinos',"1976-13-09",'Marousi',69,54124,'THESALONIKI','Epikouros',2139,2,784,13);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(13,'Ektoras','Botrini',"1983-16-01",'Kerkiras',22,54124,'THESALONIKI','Kathigitis',589,5,234,12);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(14,'Nafsika','Georgiadi',"1983-11-03",'Smirnis',11,54124,'THESALONIKI','Anaplirotis',211,3,128,11);

insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(21,'Nektarios','Kokonis',"1984-26-08",'Kostantinopoleos',21,54124,'CHANIA','Kathigitis',637,2,332,21);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(22,'Makis','Tsikos',"1988-29-05",'Makri',10,54124,'CHANIA','Anaplirotis',65,4,121,23);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(23,'Aris','Makris',"1978-22-07",'Alexiou',11,54124,'CHANIA','Lektoras',1246,2,736,23);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(24,'Menelaos','Parisisiou',"1978-19-02",'Fokias',15,54124,'CHANIA','Lektoras',1393,2,912,22);

insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(31,'Keti','Garbi',"1985-29-05",'Makrigianni',13,54124,'KOMOTINI','Lektoras',732,2,494,31);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(32,'Despina','Vandi',"1990-11-02",'Santorinis',19,54124,'KOMOTINI','Anaplirotis',32,2,138,33);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(33,'Leonardo','Hajrovic',"1986-21-07",'Agias Sofias',90,54124,'KOMOTINI','Epikouros',521,3,312,32);
insert into teacher(teacher_id,t_name,surname,date_of_birth,street,street_number,postal_code,city,teacher_rank,publication_number,time_to_get_phd,number_of_postgraduate_student,department_id)
 values(34,'Manolis','Mantalos',"1982-13-04",'Valaoritou',15,54124,'KOMOTINI','Kathigitis',432,5,111,33);

insert into course(course_id,c_name,teacher_id,student_population)
 values('1','java',1,'123');
insert into course(course_id,c_name,teacher_id,student_population)
 values('2','Vaseis',1,'423');
insert into course(course_id,c_name,teacher_id,student_population)
values('3','Votaniki',2,'142');
insert into course(course_id,c_name,teacher_id,student_population)
 values('4','Dosologia',2,'332');
insert into course(course_id,c_name,teacher_id,student_population)
values('5','Kvantiki',3,'645');
insert into course(course_id,c_name,teacher_id,student_population)
 values('6','Hlektromagnitismos',3,'33');
insert into course(course_id,c_name,teacher_id,student_population)
 values('7','Arduino',4,'71');
insert into course(course_id,c_name,teacher_id,student_population)
 values('8','Psifiaka Sistimata',1,'142');

insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(1,'Georgios','Papadopoulos',"2001-11-03",'KASTORIA',1);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(2,'Georgios','Sanidas',"2002-05-03",'KASTORIA',1);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(3,'Kostas','Katsouranis',"2002-07-09",'KASTORIA',2);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(4,'Panagioths','Tsoukalas',"2000-09-12",'KASTORIA',3);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(5,'Stratos','Dionisiou',"1994-05-03",'KASTORIA',2);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(6,'Luca','Modric',"1993-08-04",'KASTORIA',1);

insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(11,'Pantelis','Lolis',"2000-15-02",'THESALONIKI',11);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(12,'Filippos','Karvounis',"2001-05-01",'THESALONIKI',11);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(13,'Dimitris','Tasis',"2001-06-02",'THESALONIKI',12);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(14,'Fotios','Pasatoglou',"2001-01-10",'THESALONIKI',13);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(15,'Stelios','Drimtzas',"1995-01-01",'THESALONIKI',12);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(16,'Zeta','Delaporta',"1991-10-07",'THESALONIKI',13);

insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(21,'Stefania','Toliopoulou',"2000-10-06",'CHANIA',21);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id) 
values(22,'Ntina','Gkoulioumi',"2001-03-02",'CHANIA',22);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(23,'Stefanos','Vlachos',"2001-03-08",'CHANIA',22);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(24,'Eleni','Petrou',"2001-19-11",'CHANIA',23);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(25,'Marios','Tsefteris',"1996-15-12",'CHANIA',22);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(26,'Freideriki','Panagiotou',"1997-05-04",'CHANIA',21);

insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(31,'Stamatina','Tsodoulou',"2000-10-05",'KOMOTINI',31);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(32,'Diomidis','Krasas',"2001-02-04",'KOMOTINI',31);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(33,'Stefanos','Memis',"1999-05-10",'KOMOTINI',32);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(34,'Claudia','Jasmin',"2002-29-07",'KOMOTINI',33);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(35,'Roula','Koromila',"1995-03-02",'KOMOTINI',32);
insert into student(student_id,st_name,surname,date_of_birth,city,department_id)
 values(36,'Maria','Korinthiou',"1991-12-12",'KOMOTINI',32);

insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(1,2020,10);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(2,2020,10);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(3,2020,6);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(4,2019,5);

insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(11,2019,6);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(12,2019,7);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(13,2019,3);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(14,2019,6);

insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(21,2019,5);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(22,2019,6);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(23,2019,8);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(24,2020,7);

insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(31,2020,9);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(32,2020,5);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(33,2019,6);
insert into pregraduate_student(student_id,year_of_registration,average_grade)
 values(34,2019,4);

insert into postgraduate_student(student_id,type_of_degree,type_of_degree_thesis)
 values(5,'Eidikeusi','Physics');
insert into postgraduate_student(student_id,type_of_degree,type_of_degree_thesis)
 values(6,'Eidikeusi','Teaching');

insert into postgraduate_student(student_id,type_of_degree,type_of_degree_thesis)
 values(15,'Eidikeusi','Writing');
insert into postgraduate_student(student_id,type_of_degree,type_of_degree_thesis)
 values(16,'Eidikeusi','Pharmachy');

insert into postgraduate_student(student_id,type_of_degree,type_of_degree_thesis)
 values(25,'Eidikeusi','Title');
insert into postgraduate_student(student_id,type_of_degree,type_of_degree_thesis)
 values(26,'Eidikeusi','Programming');

insert into postgraduate_student(student_id,type_of_degree,type_of_degree_thesis)
 values(35,'Eidikeusi','AdvancedElectricity');
insert into postgraduate_student(student_id,type_of_degree,type_of_degree_thesis)
 values(36,'Eidikeusi','KvadikiFysiki');


DELETE FROM university
WHERE university_name='DUTH';

SELECT * 
FROM department;

SELECT  afm,specialty
FROM administrator;

SELECT university_name,city,street
FROM university
WHERE university_name='UoWM';

SELECT dp_name
FROM department
WHERE university_name='UoWM';

SELECT department_id
FROM department
WHERE university_name='UoWM';

SELECT st_name,surname
student_id
FROM student
WHERE department_id=1;

SELECT t_name
FROM teacher
WHERE department_id=1 OR department_id =2 OR department_id =3;

SELECT teacher_rank
FROM teacher
WHERE department_id=22;

SELECT t_name
FROM teacher
WHERE publication_number > 20;

SELECT ad_name,surname,specialty,salary
FROM administrator
WHERE university_name='AUTH'