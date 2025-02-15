-- create hospital database
create database MGHospital;
 create database if not exists  MGHospital;
 
 -- use the database
 use  MGHospital;
 
  -- create table 1
 create table doctor(
id int primary key, -- primary key= not null + unique
name varchar(50) not null,
phone_no varchar(10),
address varchar(20) not null,
experience varchar(70),
specialization varchar(50)
);

--- show table
select*from doctor; 


insert into doctor
values
(1,'Dr Priya Sharma',8421348959,'Pune','5years','Cardiologiest'),
(2,'Dr Arvind Mehta',8421348959,'Pune','5years','Orthopedic Surgeon'),
(3,'Dr Riya Choube',4754243559,'navi mumbai','3years','Dentist'),
(4,'Dr Kavita Bansal',8726277277,'nashik','2years','Psychiatrist'),
(5,'Dr Rahul Deshmukh',8872774477,'solapur','4years','Oncologist'),
(6,'Dr Sneha Patel',8421348959,'hydradad','5years','Endocrinologist'),
(7,'Dr Sameer Khan',8452765266,'nanded','1years','Dermatologist'),
(8,'Dr Nisha Iyer',7498273777,'kolahpur','6years',' Neurologist'),
(9,'Dr Mohan Verma',4564748493,'humppy','4years','Cardiologiest'),
(10,'Dr Anjali Reddy',7389465677,'gujarat','5years',' Gynecologist');

 -- create table 2 Patient (id, name, age, gender, address, contact_number)
create table Patient(
id int primary key, -- primary key= not null + unique
name varchar(50) not null,
phone_no varchar(10),
address varchar(20) not null,
gender varchar(50)
);

--- show table
select*from Patient; 

insert into Patient
values
(2,'namrata biradar',2445834567,'khed','female'),
(3,'aditya deshmukh',6388477883,'kokan','male'),
(4,'ameerjeet singh',9464764578,'parel','male'),
(5,'sheetal shinde',9356478935,'vashi','female'),
(6,'rahul patil',3456789546,'ghansoli','male'),
(7,'pallavi patil',9647857634,'kopri','female');
insert into Patient
values
(8,'neha jetgi',9647857634,'pune','female'),
(9,'pallavi dupte',9647857634,'humpyy','female'),
(10,'akash patil',9647857634,'rajapur','male');


 -- create table 3 Staff (id, name, role,  contact_number, salary)
create table Staff(
id int primary key, -- primary key= not null + unique
name varchar(50) not null,
role varchar(30),
contact_number varchar(20) not null,
salary varchar(50)
);

select*from Staff;
insert into Staff
values
(1,'namrata biradar','nurse',2445834567,'20000'),
(2,'rajendra patil','wardboy',6388477883,'20000'),
(3,'girish duptee','wardboy',9464764578,'20000'),
(4,'sheetal shinde','nurse',9356478935,'20000'),
(5,'rahul patil','wardboy',3456789546,'20000'),
(6,'raju shikhavat','housekeeping',9647857634,'15000'),
(7,'ramakant shirshe','housekeeping',9647857634,'15000'),
(8,'manda girhe','housekeeping',9647857634,'15000'),
(9,'sujata lavte','housekeeping',9647857634,'15000'),
(10,'goda rahne','cooking',9647857634,'10000');

-- table 4
-- Donor (id, name, blood_group, contact_number, donation_date)
create table Donor(
id int primary key, -- primary key= not null + unique
name varchar(50) not null,
blood_group varchar(30),
contact_number varchar(20) not null,
donation_date varchar(50)
);
select*from Donor;
insert into Donor 
values
(1,'mitesh sharma','A',6534268978,'12 jun 2024'),
(2,'anjali patak','B',4356782453,'22 july 2024'),
(3,'palak mehta','O',6563783456,'4 may 2024'),
(4,'rani kedare','A',9634535355,'12 dec 2024'),
(5,'anshul raut','B',9753445123,'1 jan 2025'),
(6,'rohan sharma','B',6534268978,'12 feb 2024'),
(7,'ajit yalsangi','O',7845678945,'6 feb 2024'),
(8,'palak gulate','O',8756897567,'18 march 2024'),
(9,'neha patil','A',8467389745,'7 nov 2024'),
(10,'harshal manchre','B',3456689987,'11 jan 2025');

-- table 5
-- Visitor (id, name, relationship_to_patient, visit_date, patient_name)
create table Visitor(
id int primary key, -- primary key= not null + unique
name varchar(50) not null,
relationship_to_patient varchar(30),
visit_date varchar(20) not null,
patient_name varchar(50)
);
select * from Visitor;
insert into Visitor 
values
(1,'mitesh sharma','brother','12 jun 2024','namrata biradar'),
(2,'anjali patak','mother','22 july 2024','rajendra patil'),
(3,'palak mehta','sister','4 may 2024','akshata ghodke'),
(4,'rani kedare','sister','12 dec 2024','aditya deshmukh'),
(5,'anshul raut','father','1 jan 2025','ameerjeet singh'),
(6,'rohan sharma','brother','12 feb 2024','sheetal shinde'),
(7,'ajit yalsangi','husband','6 feb 2024','rahul patil'),
(8,'palak gulate','mother','18 march 2024','pallavi patil'),
(9,'neha patil','aunty','7 nov 2024','neha jetgi'),
(10,'harshal manchre','uncle','11 jan 2025','pallavi dupte');

--- use truncate
truncate visitor;

--- drop whole  table 
drop table visitor;
 