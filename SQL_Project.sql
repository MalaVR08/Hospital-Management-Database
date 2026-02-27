Create database HospitalDB;
use HospitalDB;
Create table Patient(P_ID int primary key,Name varchar(50),Gender  varchar(10),Age int,DOB Date,Mobile_no varchar(20));

create table Doctor(Doctor_ID int primary key,dept varchar(20), Qualification varchar(100));

create table  Employee(E_ID int primary key,Name varchar(50),Salary int,Sex varchar(10),Mob_no int,State varchar(50),City varchar(50),Pin_no int);
insert into Employee values
(1,'Ravi',50000,'Male',987654321,'Karnataka','Bangalore',560001),
(2,'Anita',40000,'Female',987654322,'Karnataka','Mysore',570001),
(3,'Suresh',45000,'Male',987654323,'Tamil Nadu','Chennai',600001);
create table Nurse(E_ID int primary key,foreign key(E_ID) references Employee(E_ID));

create table Receptionist(E_ID int primary key,foreign key(E_ID) references Employee(E_ID));

create table Rooms(R_ID int primary key,Type varchar(20),capacity int,Availabilty varchar(50));

create table Bills(B_ID int primary key,Amount decimal(10,2),P_ID int,foreign key(P_ID) references Patient(P_ID));

create table TestReport(R_ID INT PRIMARY KEY,Test_type varchar(20),Result varchar(10),P_ID int,foreign key(P_ID) references Patient(P_ID));

create table Records(Record_no int primary key,App_no int);

create table Consults(P_ID int,d_id int,primary key(P_ID,D_ID),FOREIGN KEY(P_ID) REFERENCES Patient(P_ID),
FOREIGN KEY(d_id) REFERENCES Doctor(d_id));

create table Assigned(P_ID INT,R_ID INT,PRIMARY KEY(P_ID),
FOREIGN KEY(P_ID) REFERENCES PATIENT(P_ID),FOREIGN KEY(R_ID)
 REFERENCES ROOMS(R_ID));
 
 CREATE TABLE  GOVERNS(NURSE_ID INT,R_ID INT,PRIMARY KEY(NURSE_ID,R_ID)
 ,FOREIGN KEY(NURSE_ID) REFERENCES NURSE(E_ID),FOREIGN KEY(R_ID)
  REFERENCES ROOMS(R_ID));
  
  CREATE TABLE MAINTAINS(RECEPTIONIST_ID INT,R_ID INT,PRIMARY KEY
  (RECEPTIONIST_ID,R_ID),FOREIGN KEY(RECEPTIONIST_ID) REFERENCES
   RECEPTIONIST(E_ID),FOREIGN KEY(R_ID) REFERENCES ROOMS(R_ID));
   DROP TABLE MAINTAINS;
   
    CREATE TABLE MAINTAINS(RECEPTIONIST_ID INT,RECORD_NO INT,PRIMARY KEY
  (RECEPTIONIST_ID,RECORD_NO),FOREIGN KEY(RECEPTIONIST_ID) REFERENCES
   RECEPTIONIST(E_ID),FOREIGN KEY(RECORD_NO) REFERENCES RECORDS(RECORD_NO));
   
   drop table doctor;
   drop table consults;

create table doctor(
   d_id int primary key,
   dept varchar(40),
   qualification varchar(60),
   foreign key(d_id) references employee(E_ID)
);

insert into Doctor values
(1,'Cardiology','MBBS, MD');



insert into Nurse values
(2);

insert into Receptionist values
(3);

insert into Patient values
(101,'Rahul','Male',24,'2000-05-10','9876543210'),
(102,'Priya','Female',26,'1998-08-15','9876543211');

insert into Rooms values
(201,'General',2,'Available'),
(202,'ICU',1,'Occupied');

insert into Bills values
(301,5000.00,101),
(302,8000.00,102);

insert into TestReport values
(401,'Blood','Normal',101),
(402,'X-Ray','Positive',102);

insert into Records values
(501,9001),
(502,9002);

insert into Consults values
(101,1),
(102,1);

insert into Assigned values
(101,201),
(102,202);

insert into Governs values
(2,201),
(2,202);

insert into Maintains values
(3,501),
(3,502);