Healthcare_database_1.0.1 : Practice project to increase your sql skills using clauses

---

### Ticket Breakdown

**Ticket 1: Setup the Healthcare System Database**

- **Tasks:**
  
  To set up the database, you can use the SQL script provided below:

[Download healthcare_system.sql](https://raw.githubusercontent.com/RaheemAbol/healthcare_database_1.0.1/main/healthcare_system.sql)

### Instructions:

1. Download the SQL file from the link above.
2. Execute the SQL script in your MySQL Workbench or another MySQL environment.
3. The database schema and sample data will be created for you.

---

**Ticket 2: Basic SELECT and WHERE Clause**

- **Description:** Practice using the `SELECT` statement with the `WHERE` clause to filter data.
  
- **Tasks:**
  1. **List all patients who are female.**
     - Filter the `Patients` table to retrieve entries where `Gender` is 'Female'.
  2. **Retrieve all appointments that are scheduled but not yet completed.**
     - Use the `Status` field in the `Appointments` table to identify scheduled appointments.
  3. **Find all doctors who specialize in "Internal Medicine".**
     - Query the `Doctors` table based on the `Specialization` field.
  4. **List all patients born after January 1, 1985.**
     - Compare the `DateOfBirth` field in the `Patients` table to filter results.
  5. **Retrieve all medical records where the diagnosis includes the word "Cold".**
     - Use pattern matching on the `Diagnosis` field in the `MedicalRecords` table.

---

**Ticket 3: ORDER BY Clause**

- **Description:** Practice sorting data using the `ORDER BY` clause.
  
- **Tasks:**
  1. **List all patients sorted by their last name in ascending order.**
     - Sort the `Patients` table by the `LastName` field.
  2. **Retrieve all doctors sorted by their specialization in descending order.**
     - Sort the `Doctors` table by the `Specialization` field in descending order.
  3. **Get all appointments sorted by `AppointmentDate` in descending order.**
     - Use the `ORDER BY` clause to sort the `Appointments` table by `AppointmentDate`.
  4. **List all departments sorted by `DepartmentName` in ascending order.**
     - Sort the `Departments` table alphabetically by the `DepartmentName`.
  5. **Retrieve all bills sorted by `BalanceAmount` in descending order.**
     - Order the `Billing` table based on `BalanceAmount`.

---

**Ticket 4: GROUP BY and HAVING Clauses**

- **Description:** Practice grouping data and filtering groups using `GROUP BY` and `HAVING` clauses.
  
- **Tasks:**
  1. **Count the number of patients per country.**
     - Group the `Patients` table by `Country` and count the total for each group.
  2. **Find the total number of appointments per doctor.**
     - Group the `Appointments` table by `DoctorID` and count the appointments.
  3. **Retrieve the total amount billed per patient.**
     - Group the `Billing` table by `PatientID` and sum the `TotalAmount` for each patient.
  4. **Get the number of appointments each doctor has scheduled, but only show doctors with more than 1 scheduled appointment.**
     - Use `GROUP BY` and filter the results with `HAVING` to show only those with more than 1 scheduled appointment.


---

**Ticket 5: LIKE Operator**

- **Description:** Practice pattern matching using the `LIKE` operator.
  
- **Tasks:**
  1. **Find all patients whose first name starts with "J".**
     - Use the `LIKE` operator with a wildcard to find matching `FirstName` entries in the `Patients` table.
  2. **Retrieve all doctors whose last name contains "son".**
     - Use the `LIKE` operator to search for patterns in the `LastName` field of the `Doctors` table.
  3. **List all departments whose name ends with "y".**
     - Match the ending characters of the `DepartmentName` using the `LIKE` operator.
  4. **Find all medical records where the diagnosis contains "Hypertension".**
     - Use the `LIKE` operator to search within the `Diagnosis` field of the `MedicalRecords` table.
  5. **Retrieve all patients whose email domain is "example.com".**
     - Use the `LIKE` operator to match the email domain in the `Email` field of the `Patients` table.

---

**Ticket 6: BETWEEN Operator**

- **Description:** Practice filtering data within a range using the `BETWEEN` operator.
  
- **Tasks:**
  1. **List all appointments scheduled between '2023-07-01' and '2023-07-03'.**
     - Use the `BETWEEN` operator to filter appointments by date.
  2. **Find all patients born between '1980-01-01' and '1990-12-31'.**
     - Filter the `Patients` table using `BETWEEN` on the `DateOfBirth` field.
  3. **Retrieve all bills with a `TotalAmount` between $100 and $500.**
     - Use `BETWEEN` to filter the `Billing` table by `TotalAmount`.
  4. **Get all appointments scheduled within the next 7 days (assume today is '2023-07-01').**
     - Use `BETWEEN` with the `AppointmentDate` to find appointments within this date range.
 

---

**Ticket 7: LIMIT Operator**

- **Description:** Practice limiting the number of rows returned using the `LIMIT` operator.
  
- **Tasks:**
  1. **Retrieve the first 5 patients sorted by `LastName`.**
     - Sort the `Patients` table by `LastName` and use `LIMIT` to return only the first 5 entries.
  2. **Get the top 3 most expensive bills.**
     - Sort the `Billing` table by `TotalAmount` in descending order and limit the results to the top 3.
  3. **List the first 10 appointments scheduled.**
     - Order the `Appointments` table by `AppointmentDate` and limit the results to the first 10 entries.
  4. **Retrieve the first 5 doctors sorted by `FirstName`.**
     - Sort the `Doctors` table by `FirstName` and use `LIMIT` to retrieve the top 5.
  5. **Find the top 5 patients with the highest balance amount.**
     - Sort the `Billing` table by `BalanceAmount` in descending order and use `LIMIT` to show the top 5 results.

---

**Ticket 8: Chaining SQL Clauses**

- **Description:** Practice combining multiple SQL clauses to form complex queries.
  
- **Tasks:**
  1. **Retrieve the first 3 patients sorted by `LastName` who are female and live in the USA.**
     - Combine `WHERE`, `ORDER BY`, and `LIMIT` clauses to filter, sort, and limit the results.
  2. **Find the total number of appointments per doctor, but only show doctors who have scheduled more than 2 appointments. Sort the results by the total number of appointments in descending order.**
     - Use `GROUP BY`, `HAVING`, and `ORDER BY` clauses to achieve the desired result.
  3. **List all patients whose last name starts with "S", who were born after 1985, and sort them by `DateOfBirth` in ascending order.**
     - Combine `WHERE`, `LIKE`, and `ORDER BY` clauses for filtering and sorting.
  4. **Retrieve the total amount billed per patient for those whose total billed amount is between $200 and $1500. Only show patients who have made more than 2 appointments.**
     - Use `GROUP BY`, `HAVING`, and `BETWEEN` to filter and aggregate the data.


---
rma
