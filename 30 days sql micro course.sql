CREATE TABLE Hospital_Data(
    Hospital_Name VARCHAR(20) NOT NULL,
    Location VARCHAR(100),
    Department VARCHAR(50),
    Doctors_Count INT,
    Patient_Count INT,
    Admission_Date DATE,
    Discharge_Date DATE,
    Medical_Expenses NUMERIC(10,2)
);
SELECT * FROM Hospital_Data;

--1.Write an SQL query to find the total number of patients across all hospitals.
SELECT SUM(Patient_count) AS Total_patient
FROM Hospital_Data;

--2.Retrieve the average count of doctors available in each hospital.
SELECT Hospital_Name, AVG(Doctors_Count) AS Average_Doctors
FROM Hospital_Data
GROUP BY Hospital_Name;


--3.Find the top 3 hospital departments that have the highest number of patients.
SELECT department , patient_count FROM Hospital_Data
ORDER BY patient_count DESC LIMIT 3;

SELECT Department, SUM(Patient_Count) AS Total_Patients
FROM Hospital_Data
GROUP BY Department
ORDER BY Total_Patients DESC
LIMIT 3;


--4.o Identify the hospital that recorded the highest medical expenses.
SELECT hospital_name, medical_expenses FROM hospital_data
ORDER BY medical_expenses DESC LIMIT 1;

--5.Calculate the average medical expenses per day for each hospital.
SELECT Hospital_name, medical_expenses/(Discharge_date-admission_date) 
AS avg_expenses FROM HOSPITAL_DATA
WHERE Discharge_date>admission_date;


/*6.Find the patient with the longest stay by calculating the difference between
Discharge Date and Admission Date.*/

SELECT hospital_name,department ,(discharge_date-admission_date) AS stay_duration
FROM Hospital_Data
ORDER BY stay_duration DESC
LIMIT 1;

--7.Count the total number of patients treated in each city.
SELECT location ,SUM(patient_count) AS toal_patient FROM Hospital_Data
GROUP BY location;

--8.Calculate the average number of days patients spend in each department.
SELECT department,AVG(discharge_date-admission_date) AS avg_stay
FROM HOSPITAL_DATA
GROUP BY DEPARTMENT;

--9.Find the department with the least number of patients.
SELECT department,SUM(patient_count) AS lowest_patient FROM Hospital_Data 
GROUP BY Department
ORDER BY lowest_patient ASC LIMIT 1;

--10 Group the data by month and calculate the total medical expenses for each month.
SELECT (Admission_date,'YYYY-MM') AS month,
SUM(Medical_expenses) AS total_expeense
FROM Hospital_data
GROUP BY Month
ORDER BY Month;