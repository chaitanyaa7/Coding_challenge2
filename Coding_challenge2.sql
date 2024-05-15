-- Create the database
CREATE DATABASE HospitalManagementSystem;


USE HospitalManagementSystem;


-- Create tables
CREATE TABLE Patients (
    patientId INT PRIMARY KEY IDENTITY(1,1),
    firstName VARCHAR(50)  NOT NULL,
    lastName VARCHAR(50)  NOT NULL,
    dateOfBirth DATE  NOT NULL,
    gender CHAR(1)  NOT NULL,
    contactNumber BIGINT  NOT NULL,
    address VARCHAR(255)  NOT NULL
);


CREATE TABLE Doctors (
    doctorId INT PRIMARY KEY IDENTITY(100,1),
    firstName VARCHAR(100)  NOT NULL,
    lastName VARCHAR(100)  NOT NULL,
    specialization VARCHAR(255)  NOT NULL,
    contactNumber BIGINT  NOT NULL
);

CREATE TABLE Appointments (
    appointmentId INT PRIMARY KEY IDENTITY(200,1),
    patientId INT,
    doctorId INT,
    appointmentDate DATETIME NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (patientId) REFERENCES Patients(patientId),
    FOREIGN KEY (doctorId) REFERENCES Doctors(doctorId)
);


INSERT INTO Patients (firstName, lastName, dateOfBirth, gender, contactNumber, address) VALUES 
('Amit', 'Sharma', '1985-06-15', 'M', '9876543210', '123 MG Road, Mumbai, Maharashtra'),
('Priya', 'Reddy', '1990-11-25', 'F', '9765432109', '456 Park Avenue, Bengaluru, Karnataka'),
('Vikram', 'Singh', '1978-09-10', 'M', '9123456780', '789 Nehru Nagar, New Delhi, Delhi'),
('Sanya', 'Patel', '1995-03-05', 'F', '9098765432', '101 High Street, Ahmedabad, Gujarat'),
('Rahul', 'Khanna', '1982-12-30', 'M', '9876501234', '202 Marine Drive, Chennai, Tamil Nadu');

INSERT INTO Doctors (firstName, lastName, specialization, contactNumber) VALUES 
('Dr. Raj', 'Kapoor', 'Cardiology', '9823456789'),
('Dr. Anjali', 'Nair', 'Neurology', '9876543211'),
('Dr. Suraj', 'Gupta', 'Orthopedics', '9765432198'),
('Dr. Meena', 'Rao', 'Dermatology', '9123456790'),
('Dr. Ashok', 'Verma', 'Pediatrics', '9098765421');

INSERT INTO Appointments (patientId, doctorId, appointmentDate, description) VALUES 
(1, 100, '2024-05-20 10:00:00', 'Follow-up checkup'),
(2, 101, '2024-05-21 11:30:00', 'Neurological examination'),
(3, 102, '2024-05-22 14:00:00', 'Knee pain consultation'),
(4, 103, '2024-05-23 16:00:00', 'Skin rash treatment'),
(5, 104, '2024-05-24 09:00:00', 'Child vaccination');



select * from Patients
select * from Appointments
select * from Doctors