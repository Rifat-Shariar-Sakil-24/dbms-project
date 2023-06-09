
INSERT INTO Patient (patient_id, patient_type, patient_name, patient_gender, patient_age, patient_email, patient_contact_no, patient_dept)
VALUES
  (2019831068, 'student', 'Arpita', 'Female', 21, 'horipriya288@gmail.com', '01726899607', 'SWE'),
  (2019831038, 'student', 'Promi', 'Female', 22, 'promi38@gmail.com', '01786454568', 'SWE'),
  (2019831054, 'student', 'Sanjana', 'Female', 20, 'sanju54@gmail.com', '01724567895', 'SWE'),
  (2019831024, 'student', 'Shariar', 'Male', 23, 'sakil24@gmail.com', '01765432785', 'SWE'),
  (2019831033, 'student', 'Alvi', 'Male', 19, 'alvi33@gmail.com', '01786456568', 'SWE'),
  (2019831048, 'student', 'Mugdha', 'Female', 21, 'mugdha48@gmail.com', '01724567895', 'SWE');
 



INSERT INTO Doctor (doctor_id, doctor_name, designation, doctor_email, doctor_contact_no)
VALUES
  (1001, 'Dr. Md. Kabir Hossain', 'Administrator', 'khossain.sust@gmail.com', '01711184818'),
  (1002, 'Dr Krishnapada Acharjee', 'Deputy Chief Medical Officer', 'krishnaoada41@gmail.com', '01712354447'),
  (1003, 'Dr Masraba Sultana', 'Senior Medical Officer', 'masraba11@gmail.com', '01674374995'),
  (1004, 'Dr Refat Rasul Srejon', 'Senior Medical Officer', 'refat56@gmail.com', '01558347397'),
  (1005, 'Dr Md. Habibul Islam', 'Senior Medical Officer', 'habibul33@gmail.com', '01345678965'),
  (1006, 'Dr Suchanda Roy', 'Medical Officer', 'vrajavasini.jps@gmail.com', '01760881653');
  



INSERT INTO appointment_Details (appointment_id, patient_id, doctor_id, appointment_date, appointment_time)
VALUES
  (1, 2019831068, 1001, '2023-05-17', '10:00 AM'),
  (2, 2019831038, 1002, '2023-05-18', '11:30 AM'),
  (3, 2019831054, 1003, '2023-05-19', '02:45 PM'),
  (4, 2019831024, 1002, '2023-05-20', '09:30 AM'),
  (5, 2019831033, 1003, '2023-05-21', '04:00 PM'),
  (6, 2019831048, 1001, '2023-05-22', '01:15 PM');


INSERT INTO prescription (prescription_id, appointment_id, patient_id, doctor_id, prescription_date, blood_pressure, vital_sign, diagnosis, medication, dosage, instruction)
VALUES
  (1, 1, 2019831068, 1001, '2023-05-17', '120/80', 'Normal', 'Common cold', 'Medication X', 'Twice a day', 'Take with meals'),
  (2, 2, 2019831038, 1002, '2023-05-18', '130/90', 'Elevated', 'Sinusitis', 'Medication Y', 'Once daily at bedtime', 'Avoid alcohol consumption'),
  (3, 3, 2019831054, 1003, '2023-05-19', '140/95', 'High', 'Hypertension', 'Medication Z', 'Once daily in the morning', 'Follow a low-sodium diet'),
  (4, 4, 2019831024, 1004, '2023-05-20', '130/85', 'Normal', 'Allergies', 'Medication A', 'As needed', 'Avoid exposure to allergens'),
  (5, 5, 2019831033, 1005, '2023-05-21', '125/80', 'Normal', 'Headache', 'Medication B', 'Twice daily', 'Take with water'),
  (6, 6, 2019831048, 1006, '2023-05-22', '130/90', 'Elevated', 'Infection', 'Medication C', 'Three times a day', 'Complete the full course');

INSERT INTO medical_card (medical_card_id, patient_id, prescription_id)
VALUES 
 (1068, 2019831068, 1),
 (1038, 2019831038, 2),
 (1054, 2019831054, 3),
 (1024, 2019831024, 4),
 (1033, 2019831033, 5),
 (1048, 2019831048, 6);

INSERT INTO patient_details (patient_id, height, weight, blood_group, allergies, additional_notes)
VALUES
  (2019831068, 1.57, 62.32, 'A+', 'None', 'No additional notes'),
  (2019831038, 1.65, 70.10, 'B-', 'Pollen', 'Allergic to pollen'),
  (2019831054, 1.70, 75.50, 'O+', 'Penicillin', 'Allergic to penicillin'),
  (2019831024, 1.75, 80.00, 'AB+', 'Dust', 'Sensitive to dust'),
  (2019831033, 1.60, 65.75, 'A-', 'Shellfish', 'Allergic to shellfish'),
  (2019831048, 1.68, 72.20, 'O-', 'Peanuts', 'Allergic to peanuts');
