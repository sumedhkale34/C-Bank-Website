create database HOMELOANproject
use HOMELOANproject

create table AdminLogin(EmailID varchar(30) primary key, Password varchar(15) not null)
insert into AdminLogin values('manisha@gmail.com', 'mani123')
insert into AdminLogin values('nishanth@gmail.com', 'nishanth12')
insert into AdminLogin values('lohith@gmail.com', 'lohith23')
insert into AdminLogin values('sumedh@gmail.com', 'sumedh2')
insert into AdminLogin values('pooja@gmail.com', 'pooja1')

select * from AdminLogin

create table UserDetails(EmailId varchar(30) primary key, FirstName varchar(30) Not null, LastName varchar(30),
Password Varchar(15) not null, PhoneNumber varchar(10) not null, DOB date, Gender varchar(10), 
Nationality varchar(10), AadharNo varchar(15) not null, PanCardNo varchar(15) not null)

create  table LoanRequest(BankAccountNo varchar(30) primary key, EmailId varchar(30) foreign key references UserDetails(EmailId), ReqId int,
PropertyName varchar(30), Propertystreet  varchar(30), Propertycity  varchar(30) not null, Propertystate varchar(30) not null, 
EmploymentType varchar(15) not null, OrganizationType varchar(30), RetirementAge int check(RetirementAge >=18  and RetirementAge <=65), 
MonthlyIncome varchar(30) not null, EstimatedAmount varchar(30) not null, RequestEMI varchar(30) not null, Tenure int not null, RequestDate date, 
status varchar(20))

create table LoanDetails(LoanNumber int primary key, EmailId varchar(30) foreign key references UserDetails(EmailId), 
BankAccountNo varchar(30) foreign key references LoanRequest(BankAccountNo), MaxLoan varchar(30) not null, LoanAmount varchar(30) not null,
LoanTenure int not null, EMI varchar(30) not null,LoanDate date)


select * from UserDetails
select * from LoanRequest
select * from LoanDetails

Drop table LoanDetails

insert into UserDetails values('charlie@gmail.com','charlie', 'chaplin', 'pass@123', '7788789900', '2000-01-02', 'Male', 'Indian', '998877665544', 'GHJKL89890')
insert into UserDetails values('marie@gmail.com','Marie', 'curie', 'marie@123', '9809809800', '1999-03-04', 'Female', 'african', '456456456456', 'JKLOP90089')
insert into UserDetails values('mary@gmail.com','Mary', 'cury', 'mary@123', '9809806780', '1999-03-04', 'male', 'asain', '456456456456', 'JKLOP90089')

insert into LoanRequest values(
'454545454545', 'charlie@gmail.com', 10001,
'Park Avenue','Main street','Hyderabad','Telangana',
'Salaried','Sales Manager',60,
'45000','1500000','20000',18,
'2022-05-12','pending')

insert into LoanDetails values(12567, 'john@gmail.com','234678097535','150000','900000',18,'30000','2022-05-16')
insert into LoanDetails values(12568, 'hari@gmail.com','987634567634','200000','1800000',24,'40000','2022-05-16')






