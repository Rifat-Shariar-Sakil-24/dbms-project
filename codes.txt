CREATE TABLE Patient (
  patient_id INT,
  patient_type VARCHAR(20),
  patient_name VARCHAR(20),
  patient_gender VARCHAR(20),
  patient_age INT(5),
  patient_email VARCHAR(50),
  patient_contact_no VARCHAR(11),
  patient_dept VARCHAR(3),
 
  PRIMARY KEY (patient_id)
);

CREATE TABLE Doctor (
  doctor_id INT,
  doctor_name VARCHAR(50),
  designation VARCHAR(50),
  doctor_email VARCHAR(50),
  doctor_contact_no VARCHAR(11),
  
  PRIMARY KEY (doctor_id)
);

CREATE TABLE Appointment_Details (
  appointment_id INT,
  patient_id INT,
  doctor_id INT,
  appointment_date DATE,
  appointment_time TIME,
  
  PRIMARY KEY (appointment_id),
  FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
  FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);


CREATE TABLE Prescription (
  prescription_id INT,
  appointment_id INT,
  patient_id INT,
  doctor_id INT,
  prescription_date DATE,
  blood_pressure VARCHAR(20),
  vital_sign VARCHAR(100),
  diagnosis VARCHAR(200),
  medication VARCHAR(200),
  dosage VARCHAR (50),
  instruction VARCHAR(100),
    
  PRIMARY KEY (prescription_id),
  FOREIGN KEY (appointment_id) REFERENCES Appointment_Details(appointment_id),
  FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
  FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);





CREATE TABLE Medical_Card (
  medical_card_id INT,
  patient_id INT,
  prescription_id INT,
  
  PRIMARY KEY (medical_card_id),
  FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
FOREIGN KEY (prescription_id) REFERENCES Prescription(prescription_id)
  
);


CREATE TABLE Patient_Details (
  patient_id INT PRIMARY KEY,
  height DECIMAL(5, 2),
  weight DECIMAL(5, 2),
  blood_group VARCHAR(10),
  allergies VARCHAR(255),
  additional_notes VARCHAR(255),
  
  FOREIGN KEY (patient_id) REFERENCES Medical_Card(patient_id)
);








