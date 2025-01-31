create database hospital;
use hospital;

-- Create Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert Data into Patients
INSERT INTO Patients (PatientID, Name, Age, Gender, Phone, City, Country) VALUES
(1, 'Aman Verma', 35, 'Male', '9876543210', 'Mumbai', 'India'),
(2, 'Sophia Wilson', 28, 'Female', '9812345678', 'New York', 'USA'),
(3, 'Ramesh Gupta', 50, 'Male', '9123456789', 'Delhi', 'India'),
(4, 'John Carter', 45, 'Male', '8987654321', 'Los Angeles', 'USA'),
(5, 'Maria Fernandes', 32, 'Female', '9234567890', 'London', 'UK'),
(6, 'Akash Mehta', 40, 'Male', '9345678901', 'Bangalore', 'India'),
(7, 'Lucy Brown', 30, 'Female', '9876123456', 'Toronto', 'Canada'),
(8, 'Kevin Smith', 60, 'Male', '9123765409', 'Sydney', 'Australia'),
(9, 'Emily Roberts', 38, 'Female', '9812340987', 'Chicago', 'USA'),
(10, 'Rajesh Singh', 42, 'Male', '9001234567', 'Kolkata', 'India');

-- Create Doctors Table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialty VARCHAR(50),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert Data into Doctors
INSERT INTO Doctors (DoctorID, Name, Specialty, Phone, City, Country) VALUES
(101, 'Dr. Anjali Rao', 'Cardiology', '9812340001', 'Mumbai', 'India'),
(102, 'Dr. Michael Lee', 'Neurology', '9823451112', 'New York', 'USA'),
(103, 'Dr. Ramesh Patil', 'Orthopedics', '9834562223', 'Delhi', 'India'),
(104, 'Dr. Susan White', 'Pediatrics', '9845673334', 'Toronto', 'Canada'),
(105, 'Dr. Peter Brown', 'General Surgery', '9856784445', 'Sydney', 'Australia'),
(106, 'Dr. Lisa Martin', 'Dermatology', '9867895556', 'London', 'UK');

-- Create Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Insert Data into Appointments
INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Status) VALUES
(1001, 1, 101, '2025-02-05', 'Confirmed'),
(1002, 2, 102, '2025-02-07', 'Completed'),
(1003, 3, 103, '2025-02-10', 'Pending'),
(1004, 4, 104, '2025-02-12', 'Confirmed'),
(1005, 5, 105, '2025-02-14', 'Completed'),
(1006, 6, 106, '2025-02-15', 'Cancelled'),
(1007, 7, 101, '2025-02-18', 'Pending'),
(1008, 8, 103, '2025-02-20', 'Confirmed'),
(1009, 9, 104, '2025-02-22', 'Completed'),
(1010, 10, 105, '2025-02-25', 'Pending');

-- Create Treatments Table
CREATE TABLE Treatments (
    TreatmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    TreatmentDate DATE,
    Diagnosis VARCHAR(100),
    Cost DECIMAL(10,2),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Insert Data into Treatments
INSERT INTO Treatments (TreatmentID, PatientID, DoctorID, TreatmentDate, Diagnosis, Cost) VALUES
(2001, 1, 101, '2025-02-05', 'Heart Checkup', 500),
(2002, 2, 102, '2025-02-07', 'Migraine', 800),
(2003, 3, 103, '2025-02-10', 'Knee Surgery', 5000),
(2004, 4, 104, '2025-02-12', 'Flu Treatment', 300),
(2005, 5, 105, '2025-02-14', 'Appendectomy', 7000),
(2006, 6, 106, '2025-02-15', 'Skin Allergy', 400),
(2007, 7, 101, '2025-02-18', 'Blood Pressure', 200),
(2008, 8, 103, '2025-02-20', 'Bone Fracture', 6000),
(2009, 9, 104, '2025-02-22', 'Stomach Ulcer', 1000),
(2010, 10, 105, '2025-02-25', 'Hernia Repair', 7500);

-- Create Billing Table
CREATE TABLE Billing (
    BillID INT PRIMARY KEY,
    PatientID INT,
    TreatmentID INT,
    BillDate DATE,
    Amount DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (TreatmentID) REFERENCES Treatments(TreatmentID)
);

-- Insert Data into Billing
INSERT INTO Billing (BillID, PatientID, TreatmentID, BillDate, Amount, Status) VALUES
(3001, 1, 2001, '2025-02-06', 500, 'Paid'),
(3002, 2, 2002, '2025-02-08', 800, 'Paid'),
(3003, 3, 2003, '2025-02-11', 5000, 'Pending'),
(3004, 4, 2004, '2025-02-13', 300, 'Paid'),
(3005, 5, 2005, '2025-02-15', 7000, 'Unpaid'),
(3006, 6, 2006, '2025-02-16', 400, 'Paid'),
(3007, 7, 2007, '2025-02-19', 200, 'Paid'),
(3008, 8, 2008, '2025-02-21', 6000, 'Pending'),
(3009, 9, 2009, '2025-02-23', 1000, 'Paid'),
(3010, 10, 2010, '2025-02-26', 7500, 'Unpaid');


-- Practice query

-- Retrieve all appointments with patient names and their assigned doctors
select a.AppointmentID, p.name as patient, p.PatientID, d.name as doctor, a.status
from appointments as a
join doctors as d on a.doctorid = d.doctorid
join patients as p on a.patientid = p.patientid;


 
































































































