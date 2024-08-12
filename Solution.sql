
-- Ticket 2: Basic SELECT and WHERE Clause
USE HealthcareSystemDB;
show tables;
Select * from Patients;
Select * from  Appointments;

Select * from Patients where Gender = 'Female';

Select * from Appointments where status =  'scheduled';

Select * from Doctors;
Select * from Billing;

Select * from Doctors where Specialization ='Internal Medicine'  ;


Select * from Patients where DateOfBirth > '1985-01-01';
Select  *  from MedicalRecords;

Select * from MedicalRecords where Diagnosis like '%Cold%';

-- Ticket 3: ORDER BY Clause
Select * from Patients Order by LastName ASC;

Select * from Doctors Order by Specialization DESC;

Select * from Appointments  Order by AppointmentDate DESC;


Select * from Departments  Order by DepartmentName ASC;

Select * from Billing  Order by BalanceAmount DESC;

-- Ticket 4: GROUP BY and HAVING Clauses
Select Country ,count(*) AS patientCount from patients group by Country;

Select DoctorID, Count(*) As TotalAppointment from Appointments group by DoctorID;

select PatientID,sum(TotalAmount) as amountbilledperpatient  from billing group by PatientID;

Select DoctorID , Count(*) As NumberOf_Appointment from Appointments group by DoctorID Having NumberOf_Appointment > 1;

-- Ticket 5: LIKE Operator

Select * from Patients where FirstName like'J%';

Select *  from Doctors where LastName like'%son%';

Select *  from Departments  where DepartmentName like'%y';

Select * from MedicalRecords where Diagnosis like '%Hypertension%';

Select * from Patients where Email like '%example.com';

-- Ticket 6: BETWEEN Operator
Select * from Appointments where AppointmentDate between '2023-07-01' And '2023-07-03';

Select * from Patients where DateOfBirth between '1980-01-01' And '1990-12-31';

Select * from Billing where TotalAmount between 100 And 500;

Select * from  Appointments where AppointmentDate between '2023-07-01' And '2023-07-08';
Select  Sum(AppointmentID) from Appointments where AppointmentDate between '2023-07-01' And '2023-07-08';


-- Ticket 7: LIMIT Operator

Select * from Patients ORDER BY  LastName Limit 0,5;

Select * from Billing ORDER BY TotalAmount  desc Limit 0,3;

Select * from Appointments Order by AppointmentDate ASC limit 0,10;


Select * from Doctors Order by FirstName  limit 0,5;


Select * from Billing Order by BalanceAmount DESC limit 0,5;


-- Ticket 8: Chaining SQL Clauses 

Select * from Patients where Gender = 'female' And Country ='USA' ORDER BY LastName LIMIT 0,3 ;

Select DoctorID , count(*) AS NumberOfAppointments from Appointments Group by DoctorID HAVING NumberOfAppointments > 2 ;

Select * from Patients where LastName like 's%' And DateOfBirth >  '1985-12-31' ORDER BY DateOfBirth;

Select PatientID, Count(AppointmentID)  AS NumberOfApp from Billing where TotalAmount between 200 And 1500 Group BY PatientID Having NumberOfApp > 2 ;





