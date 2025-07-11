-- Populate branch table
INSERT INTO branch (branch_name, address) VALUES
('Colombo Main Branch', '123 Galle Road, Colombo 03, Sri Lanka'),
('Kandy Branch', '45 Peradeniya Road, Kandy, Sri Lanka'),
('Galle Branch', '78 Matara Road, Galle, Sri Lanka'),
('Dhaka Branch', '56 Gulshan Avenue, Dhaka 1212, Bangladesh'),
('Chittagong Branch', '34 Agrabad Commercial Area, Chittagong 4100, Bangladesh'),
('Karachi Branch', '90 Shahrah-e-Faisal, Karachi 75350, Pakistan'),
('Lahore Branch', '12 Mall Road, Lahore 54000, Pakistan');

-- Populate department table
INSERT INTO department (department_name, budget) VALUES
('Human Resources', 5000000.00),
('Finance', 7500000.00),
('Information Technology', 10000000.00),
('Marketing', 8000000.00),
('Operations', 12000000.00),
('Sales', 9000000.00),
('Customer Service', 6000000.00),
('Research and Development', 11000000.00),
('Legal', 5500000.00);

-- Populate job_title table
INSERT INTO job_title (job_title, department_name) VALUES
('HR Manager', 'Human Resources'),
('HR Assistant', 'Human Resources'),
('Financial Analyst', 'Finance'),
('Accountant', 'Finance'),
('Software Engineer', 'Information Technology'),
('System Administrator', 'Information Technology'),
('Marketing Specialist', 'Marketing'),
('Sales Representative', 'Sales'),
('Operations Manager', 'Operations'),
('Logistics Coordinator', 'Operations'),
('Customer Service Representative', 'Customer Service'),
('Research Scientist', 'Research and Development'),
('Legal Counsel', 'Legal'),
('Data Analyst', 'Information Technology');

-- Updated pay_grade table
INSERT INTO pay_grade (pay_grade, basic_salary) VALUES
('Level-1', 35000.00),
('Level-2', 50000.00),
('Managerial', 75000.00),
('Senior Managerial', 100000.00),
('Executive', 150000.00);

-- Update leave_count table
INSERT INTO leave_count (pay_grade, Annual, Casual, Maternity, No_pay) VALUES
('Level-1', 14, 7, 84, 50),
('Level-2', 21, 7, 84, 50),
('Managerial', 21, 10, 84, 50),
('Senior Managerial', 28, 10, 84, 50),
('Executive', 28, 14, 84, 50);

-- Populate employee table with at least 50 records
INSERT INTO employee (name, email, address, gender, birthday, phone, marital_status, supervisor, job_title_id, pay_grade, employment_status, branch_id) VALUES
('Dimuth Hasaranga', 'dimuth.hasaranga@jupyter.com', '45 Temple Road, Colombo 05, Sri Lanka', 'MALE', '1985-03-15', '0768231749', 'Married', NULL, 'JT0001', 'Executive', 'Permanent', 'BR001'),
('Tenil Rukshan', 'tenil.rukshan-- @jupyter.com', '23 Lake Drive, Kandy, Sri Lanka', 'MALE', '1988-07-22', '0768231749', 'Single', 'EMP000001', 'JT0005', 'Level-2', 'Permanent', 'BR002'),
('Nethmi Oshadi', 'nethmi.oshadi@jupyter.com', '78 Beach Road, Galle, Sri Lanka', 'MALE', '1990-11-30', '0768231749', 'Married', 'EMP000001', 'JT0003', 'Managerial', 'Permanent', 'BR003'),
('Rahul Karim', 'rahu-- l.karim@jupyter.com', '12 Green Road, Dhaka 1205, Bangladesh', 'MALE', '1987-05-18', '0768231749', 'Married', 'EMP000001', 'JT0009', 'Senior Managerial', 'Permanent', 'BR004'),
('Fatima Zahra', 'fatima.zahra@jupyter.com', '56 Jinnah Avenue, Karachi 75530, Pakistan',  'MALE', '1992-09-03', '0768231749', 'Single', 'EMP000001', 'JT0007', 'Managerial', 'Permanent', 'BR006'),
('Chamathka Lakmali', 'chamathka.lakmali@jupyter.com', '34 Hill Street, Kandy, Sri Lanka', 'MALE', '1991-02-14', '0768231749', 'Married', 'EMP000002', 'JT0006', 'Level-2', 'Contract_Fulltime', 'BR002'),
('Nuwan Pradeep', 'nuwan.-- pradeep@jupyter.com', '89 Marine Drive, Colombo 03, Sri Lanka', 'MALE', '1986-10-31', '0768231749', 'Divorced', 'EMP000001', 'JT0004', 'Managerial', 'Permanent', 'BR001'),
('Ayesha Begum', 'ayesha.begum@jupyter.com', '23 Station Road, Chittagong 4000, Bangladesh', 'MALE', '1993-07-07', '0768231749', 'Single', 'EMP000004', 'JT0011', 'Level-1', 'Permanent', 'BR005'),
('Muhammad Imran', 'muhammad.imran@jupyter.com', '78 The Mall, Lahore 54000, Pakistan', 'MALE', '1989-12-25', '0768231749', 'Married', 'EMP000005', 'JT0008', 'Level-2', 'Permanent', 'BR007'),
('Sachini Nisansala', 'sachini.nisansala@jupyter.com', '56 Galle Face Terrace, Colombo 03, Sri Lanka', 'MALE', '1994-04-19', '0768231749', 'Single', 'EMP000001', 'JT0002', 'Level-1', 'Intern_Fulltime', 'BR001'),
('Asanka Gurusinha', 'asanka.gurusinha@jupyter.com', '78 Park Street, Colombo 02, Sri Lanka', 'MALE', '1990-08-12', '0768231749', 'Single', 'EMP000007', 'JT0010', 'Level-1', 'Permanent', 'BR001'),
('Nusrat Jahan', 'nusrat.jahan@jupyter.com', '34 Banani Road, Dhaka 1213, Bangladesh', 'MALE', '1992-05-20', '0768231749', 'Married', 'EMP000004', 'JT0012', 'Level-2', 'Permanent', 'BR004'),
('Ahmed Raza', 'ahmed.raza@jupyter.com', '56 Clifton Road, Karachi 75600, Pakistan', 'MALE', '1988-11-15', '0768231749', 'Married', 'EMP000005', 'JT0013', 'Level-2', 'Permanent', 'BR006'),
('Ramani Perera', 'ramani.perera@jupyter.com', '90 Galle Road, Colombo 04, Sri Lanka', 'MALE', '1991-03-25','0768231749',  'Single', 'EMP000003', 'JT0014', 'Level-1', 'Contract_Fulltime', 'BR001'),
('Farhan Ahmed', 'farhan.ahmed@jupyter.com', '23 Dhanmondi Road, Dhaka 1209, Bangladesh', 'MALE', '1989-07-30', '0768231749', 'Married', 'EMP000004', 'JT0010', 'Level-2', 'Permanent','BR005'),
('Sana Malik', 'sana.malik@jupyter.com', '45 Gulberg Road, Lahore 54660, Pakistan', 'MALE', '1993-01-05', '0768231749', 'Single', 'EMP000009', 'JT0012', 'Level-1', 'Permanent', 'BR007'),
('Dilshan Fernando', 'dilshan.fernando@jupyter.com', '67 Negombo Road, Negombo, Sri Lanka', 'MALE', '1987-09-18', '0768231749', 'Married', 'EMP000007', 'JT0011', 'Level-2', 'Permanent', 'BR001'),
('Tahmina Akter', 'tahmina.akter@jupyter.com', '89 Uttara Sector 4, Dhaka 1230, Bangladesh', 'MALE', '1994-04-22','0768231749', 'Single', 'EMP000012', 'JT0011', 'Level-1', 'Intern_Fulltime', 'BR004'),
('Usman Tariq', 'usman.tariq@jupyter.com', '12 DHA Phase 5, Karachi 75500, Pakistan', 'MALE', '1990-12-10', '0768231749', 'Married', 'EMP000013', 'JT0010', 'Level-2', 'Permanent', 'BR006'),
('Ishara Madushani', 'ishara.madushani@jupyter.com', '34 Kandy Road, Peradeniya, Sri Lanka', 'MALE', '1992-06-15', '0768231749', 'Single', 'EMP000002', 'JT0010', 'Level-1', 'Permanent', 'BR002'),
('Zubair Hasan', 'zubair.hasan@jupyter.com', '56 Mirpur Road, Dhaka 1216, Bangladesh', 'MALE', '1988-02-28', '0768231749', 'Married', 'EMP000004', 'JT0001', 'Level-2', 'Permanent', 'BR004'),
('Amna Riaz', 'amna.riaz@jupyter.com', '78 Model Town, Lahore 54700, Pakistan', 'MALE', '1991-10-05', '0768231749', 'Single', 'EMP000009', 'JT0002', 'Level-1', 'Contract_Fulltime', 'BR007'),
('Chaminda Vaas', 'chaminda.vaas@jupyter.com', '90 Marine Drive, Galle, Sri Lanka', 'MALE', '1987-04-12', '0768231749', 'Married', 'EMP000003', 'JT0003', 'Level-2', 'Permanent', 'BR003'),
('Nasreen Akhtar', 'nasreen.akhtar@jupyter.com', '23 Gulshan Circle 2, Dhaka 1212, Bangladesh', 'MALE', '1993-08-20', '0768231749', 'Single', 'EMP000012', 'JT0002', 'Level-1', 'Permanent', 'BR004'),
('Imran Butt', 'imran.butt@jupyter.com', '45 Faisal Town, Lahore 54000, Pakistan', 'MALE', '1989-11-30','0768231749',  'Married', 'EMP000013', 'JT0005', 'Level-2', 'Permanent', 'BR007'),
('Nilushi Cooray', 'nilushi.cooray@jupyter.com', '67 Batticaloa Road, Trincomalee, Sri Lanka', 'MALE', '1992-03-15', '0768231749','Single', 'EMP000007', 'JT0006', 'Level-1', 'Permanent', 'BR001'),
('Rahim Uddin', 'rahim.uddin@jupyter.com', '89 Baridhara DOHS, Dhaka 1206, Bangladesh', 'MALE', '1990-07-25', '0768231749','Married', 'EMP000004', 'JT0007', 'Level-2', 'Permanent', 'BR005'),
('Sadia Nawaz', 'sadia.nawaz@jupyter.com', '12 Johar Town, Lahore 54782, Pakistan', 'MALE', '1994-01-10','0768231749', 'Single', 'EMP000009', 'JT0008', 'Level-1', 'Intern_Fulltime', 'BR007'),
('Tharanga Paranavitana', 'tharanga.paranavitana@jupyter.com', '34 Matale Road, Kandy, Sri Lanka', 'MALE', '1988-05-18', '0768231749','Married', 'EMP000002', 'JT0009', 'Level-2', 'Permanent', 'BR002'),
('Farhana Islam', 'farhana.islam@jupyter.com', '56 Mohammadpur, Dhaka 1207, Bangladesh', 'MALE',  '1991-09-22', '0768231749','Single', 'EMP000012', 'JT0003', 'Level-1', 'Permanent', 'BR004'),
('Yasir Shah', 'yasir.shah@jupyter.com', '78 Bahria Town, Karachi 75340, Pakistan', 'MALE', '1987-12-05','0768231749', 'Married', 'EMP000005', 'JT0001', 'Level-2', 'Permanent', 'BR006'),
('Sanduni Abeywickrama', 'sanduni.abeywickrama@jupyter.com', '90 Matara Road, Hambantota, Sri Lanka', 'MALE',  '1993-04-30', '0768231749','Single', 'EMP000003', 'JT0002', 'Level-1', 'Contract_Fulltime', 'BR003'),
('Kamal Hossain', 'kamal.hossain@jupyter.com', '23 Uttara Sector 7, Dhaka 1230, Bangladesh', 'MALE', '1989-08-15', '0768231749','Married', 'EMP000004', 'JT0003', 'Level-2', 'Permanent', 'BR004'),
('Asma Khalid', 'asma.khalid@jupyter.com', '45 Cantt Area, Lahore 54810, Pakistan', 'MALE', '1992-02-20', '0768231749','Single', 'EMP000013', 'JT0004', 'Level-1', 'Permanent', 'BR007'),
('Rangana Herath', 'rangana.herath@jupyter.com', '67 Nuwara Eliya Road, Badulla, Sri Lanka', 'MALE', '1988-06-25','0768231749', 'Married', 'EMP000007', 'JT0005', 'Level-2', 'Permanent', 'BR001'),
('Shabnam Akter', 'shabnam.akter@jupyter.com', '89 Bashundhara R/A, Dhaka 1229, Bangladesh', 'MALE', '1994-10-12','0768231749', 'Single', 'EMP000012', 'JT0006', 'Level-1', 'Intern_Fulltime', 'BR005'),
('Saad Ahmed', 'saad.ahmed@jupyter.com', '12 Askari Housing, Karachi 75100, Pakistan', 'MALE', '1990-01-30', '0768231749','Married', 'EMP000005', 'JT0007', 'Level-2', 'Permanent', 'BR006'),
('Hansini Edirisinghe', 'hansini.edirisinghe@jupyter.com', '34 Kurunegala Road, Chilaw, Sri Lanka', 'MALE', '1991-05-05','0768231749', 'Single', 'EMP000003', 'JT0008', 'Level-1', 'Permanent', 'BR001'),
('Mahbub Alam', 'mahbub.alam@jupyter.com', '56 Khilgaon, Dhaka 1219, Bangladesh', 'MALE', '1987-09-10','0768231749', 'Married', 'EMP000004', 'JT0009', 'Level-2', 'Permanent', 'BR004'),
('Saba Qamar', 'saba.qamar@jupyter.com', '78 Wapda Town, Lahore 54000, Pakistan', 'MALE', '1993-03-15','0768231749', 'Single', 'EMP000009', 'JT0002', 'Level-1', 'Contract_Fulltime', 'BR007'),
('Lasith Malinga', 'lasith.malinga@jupyter.com', '90 Galle Face Road, Colombo 01, Sri Lanka', 'MALE', '1989-07-20', '0768231749','Married', 'EMP000001', 'JT0001', 'Level-2', 'Permanent', 'BR001'),
('Sabina Yasmin', 'sabina.yasmin@jupyter.com', '23 Motijheel, Dhaka 1000, Bangladesh', 'MALE', '1992-11-25', '0768231749','Single', 'EMP000004', 'JT0002', 'Level-1', 'Permanent', 'BR004'),
('Fawad Khan', 'fawad.khan@jupyter.com', '45 DHA Phase 1, Lahore 54792, Pakistan', 'MALE', '1988-04-30', '0768231749','Married', 'EMP000005', 'JT0003', 'Level-2', 'Permanent', 'BR006'),
('Sheshadri Priyasad', 'sheshadri.priyasad@jupyter.com', '67 Anuradhapura Road, Polonnaruwa, Sri Lanka', 'FEMALE', '1994-08-05', '0768231749','Single', 'EMP000003', 'JT0004', 'Level-1', 'Intern_Fulltime', 'BR003'),
('Najmul Hossain', 'najmul.hossain@jupyter.com', '89 Dhanmondi 32, Dhaka 1209, Bangladesh', 'MALE', '1990-12-10','0768231749', 'Married', 'EMP000012', 'JT0005', 'Level-2', 'Permanent', 'BR005'),
('Hira Mani', 'hira.mani@jupyter.com', '12 Gulshan-e-Iqbal, Karachi 75300, Pakistan', 'MALE', '1991-02-15', '0768231749','Single', 'EMP000013', 'JT0006', 'Level-1', 'Permanent', 'BR006'),
('Kusal Mendis', 'kusal.mendis@jupyter.com', '34 Ratnapura Road, Embilipitiya, Sri Lanka', 'MALE', '1987-06-20','0768231749', 'Married', 'EMP000007', 'JT0007', 'Level-2', 'Permanent', 'BR001'),
('Nusrat Imroz', 'nusrat.imroz@jupyter.com', '56 Mirpur DOHS, Dhaka 1216, Bangladesh', 'MALE', '1993-10-25', '0768231749','Single', 'EMP000004', 'JT0008', 'Level-1', 'Contract_Fulltime', 'BR004'),
('Mahira Khan', 'mahira.khan@jupyter.com', '78 Valencia Town, Lahore 54000, Pakistan', 'MALE', '1989-01-30', '0768231749','Married', 'EMP000009', 'JT0009', 'Level-2', 'Permanent', 'BR007'),
('Dinesh Chandimal', 'dinesh.chandimal@jupyter.com', '90 Katugastota Road, Kandy, Sri Lanka', 'MALE', '1992-05-05', '0768231749','Single', 'EMP000002', 'JT0007', 'Level-1', 'Permanent', 'BR002');

-- Populate dependant table
INSERT INTO dependant (name, employee_id, birthday, relation, gender) VALUES
('Kavya Hasaranga', 'EMP000001', '2012-06-18', 'Daughter', 'FEMALE'),
('Sahan Hasaranga', 'EMP000001', '2015-09-25', 'Son', 'MALE'),
('Hiruni Oshadi', 'EMP000003', '2018-04-10', 'Daughter', 'FEMALE'),
('Aryan Karim', 'EMP000004', '2016-11-30', 'Son', 'MALE'),
('Zainab Imran', 'EMP000009', '2019-02-14', 'Daughter', 'FEMALE'),
('Lakmal Pradeep', 'EMP000007', '2014-08-22', 'Son', 'MALE'),
('Amaya Pradeep', 'EMP000007', '2017-03-11', 'Daughter', 'FEMALE'),
('Anika Gurusinha', 'EMP000011', '2020-03-15', 'Daughter', 'FEMALE'),
('Rafid Jahan', 'EMP000012', '2018-09-20', 'Son', 'MALE'),
('Zara Raza', 'EMP000013', '2019-07-10', 'Daughter', 'FEMALE'),
('Amaya Fernando', 'EMP000017', '2019-05-12', 'Daughter', 'FEMALE'),
('Rayhaan Uddin', 'EMP000027', '2020-11-03', 'Son', 'MALE'),
('Ayesha Nawaz', 'EMP000028', '2018-07-22', 'Daughter', 'FEMALE'),
('Mithun Paranavitana', 'EMP000029', '2017-09-14', 'Son', 'MALE'),
('Farah Shah', 'EMP000031', '2021-01-30', 'Daughter', 'FEMALE'),
('Kasun Hossain', 'EMP000033', '2019-12-05', 'Son', 'MALE'),
('Zara Herath', 'EMP000035', '2020-08-17', 'Daughter', 'FEMALE'),
('Ibrahim Ahmed', 'EMP000037', '2018-03-25', 'Son', 'MALE'),
('Sameera Alam', 'EMP000039', '2021-06-11', 'Daughter', 'FEMALE'),
('Aisha Malinga', 'EMP000041', '2019-10-08', 'Daughter', 'FEMALE'),
('Rahul Khan', 'EMP000043', '2020-04-19', 'Son', 'MALE'),
('Nadia Hossain', 'EMP000045', '2018-12-01', 'Daughter', 'FEMALE'),
('Arjun Mendis', 'EMP000047', '2021-02-14', 'Son', 'MALE'),
('Zainab Khan', 'EMP000049', '2019-08-27', 'Daughter', 'FEMALE'),
('Anjali Cooray', 'EMP000026', '2020-07-15', 'Daughter', 'FEMALE'),
('Taufiq Uddin', 'EMP000027', '2019-03-22', 'Son', 'MALE'),
('Sana Abeywickrama', 'EMP000032', '2021-01-08', 'Daughter', 'FEMALE'),
('Hamza Hossain', 'EMP000033', '2018-11-30', 'Son', 'MALE'),
('Noor Herath', 'EMP000035', '2019-09-12', 'Daughter', 'FEMALE'),
('Aryan Ahmed', 'EMP000037', '2020-05-25', 'Son', 'MALE'),
('Riya Alam', 'EMP000039', '2018-08-17', 'Daughter', 'FEMALE'),
('Tharindu Malinga', 'EMP000041', '2021-04-03', 'Son', 'MALE'),
('Amira Khan', 'EMP000043', '2019-12-20', 'Daughter', 'FEMALE'),
('Farhan Hossain', 'EMP000045', '2020-02-14', 'Son', 'MALE'),
('Sanaya Mendis', 'EMP000047', '2018-10-09', 'Daughter', 'FEMALE'),
('Zain Khan', 'EMP000049', '2021-06-28', 'Son', 'MALE');


-- Populate employee_attribute table
INSERT INTO employee_attribute (attribute_name) VALUES
('Blood Type'),
('Special Skills'),
('Experience');

-- Populate attribute_value table
INSERT INTO attribute_value (employee_id, attribute_id, value) VALUES
('EMP000001', 'ATB01', 'A+'),
('EMP000001', 'ATB02', 'Leadership, Strategic Planning'),
('EMP000001', 'ATB03', '15 years in HR Management'),
('EMP000002', 'ATB01', 'B-'),
('EMP000002', 'ATB02', 'Java, Python, Machine Learning'),
('EMP000002', 'ATB03', '7 years in Software Development'),
('EMP000003', 'ATB01', 'O+'),
('EMP000003', 'ATB02', 'Financial Analysis, Risk Management'),
('EMP000003', 'ATB03', '5 years in Finance'),
('EMP000004', 'ATB01', 'AB-'),
('EMP000004', 'ATB02', 'Operations Management, Lean Six Sigma'),
('EMP000004', 'ATB03', '10 years in Operations'),
('EMP000005', 'ATB01', 'B+'),
('EMP000005', 'ATB02', 'Digital Marketing, SEO, Content Strategy'),
('EMP000005', 'ATB03', '8 years in Marketing'),
('EMP000006', 'ATB01', 'A+'),
('EMP000006', 'ATB02', 'Project Management, Agile Methodologies'),
('EMP000006', 'ATB03', '6 years in Project Management'),
('EMP000007', 'ATB01', 'AB+'),
('EMP000007', 'ATB02', 'Customer Service Excellence, Call Center Management'),
('EMP000007', 'ATB03', '12 years in Customer Service'),
('EMP000008', 'ATB01', 'O-'),
('EMP000008', 'ATB02', 'Data Analysis, SQL, Tableau'),
('EMP000011', 'ATB01', 'O-'),
('EMP000011', 'ATB02', 'Project Management, Agile Methodologies'),
('EMP000011', 'ATB03', '6 years in IT Project Management'),
('EMP000012', 'ATB01', 'A+'),
('EMP000012', 'ATB02', 'Data Analysis, Statistical Modeling'),
('EMP000012', 'ATB03', '4 years in Data Science'),
('EMP000013', 'ATB01', 'B+'),
('EMP000013', 'ATB02', 'Supply Chain Management, Logistics'),
('EMP000013', 'ATB03', '7 years in Supply Chain'),
('EMP000014', 'ATB01', 'AB+'),
('EMP000014', 'ATB02', 'Customer Service, Conflict Resolution'),
('EMP000014', 'ATB03', '5 years in Customer Relations'),
('EMP000015', 'ATB01', 'B-'),
('EMP000015', 'ATB02', 'Sales Strategy, Negotiation'),
('EMP000015', 'ATB03', '8 years in Sales Management'),
('EMP000016', 'ATB01', 'A-'),
('EMP000016', 'ATB02', 'Graphic Design, UI/UX'),
('EMP000016', 'ATB03', '4 years in Design'),
('EMP000017', 'ATB01', 'O+'),
('EMP000017', 'ATB02', 'Software Development, Agile Methodologies'),
('EMP000017', 'ATB03', '7 years in Software Engineering'),
('EMP000018', 'ATB01', 'A+'),
('EMP000018', 'ATB02', 'Data Entry, MS Office Suite'),
('EMP000018', 'ATB03', '2 years in Administrative Support'),
('EMP000019', 'ATB01', 'B-'),
('EMP000019', 'ATB02', 'Inventory Management, Supply Chain Optimization'),
('EMP000019', 'ATB03', '6 years in Logistics'),
('EMP000020', 'ATB01', 'O-'),
('EMP000020', 'ATB02', 'Customer Service, Problem Solving'),
('EMP000020', 'ATB03', '3 years in Call Center Operations'),
('EMP000021', 'ATB01', 'AB+'),
('EMP000021', 'ATB02', 'Financial Modeling, Risk Analysis'),
('EMP000021', 'ATB03', '5 years in Investment Banking'),
('EMP000022', 'ATB01', 'A-'),
('EMP000022', 'ATB02', 'Content Writing, SEO'),
('EMP000022', 'ATB03', '4 years in Digital Marketing'),
('EMP000023', 'ATB01', 'B+'),
('EMP000023', 'ATB02', 'Quality Control, Six Sigma'),
('EMP000023', 'ATB03', '7 years in Manufacturing'),
('EMP000024', 'ATB01', 'O+'),
('EMP000024', 'ATB02', 'Recruitment, Employee Relations'),
('EMP000024', 'ATB03', '5 years in Human Resources'),
('EMP000025', 'ATB01', 'AB-'),
('EMP000025', 'ATB02', 'Sales Forecasting, CRM Systems'),
('EMP000025', 'ATB03', '8 years in Sales Management'),
('EMP000026', 'ATB01', 'A+'),
('EMP000026', 'ATB02', 'Graphic Design, Adobe Creative Suite'),
('EMP000026', 'ATB03', '4 years in Marketing Design'),
('EMP000027', 'ATB01', 'B-'),
('EMP000027', 'ATB02', 'Network Security, Firewall Management'),
('EMP000027', 'ATB03', '6 years in IT Security'),
('EMP000028', 'ATB01', 'O-'),
('EMP000028', 'ATB02', 'Social Media Marketing, Content Strategy'),
('EMP000028', 'ATB03', '3 years in Digital Marketing'),
('EMP000029', 'ATB01', 'AB+'),
('EMP000029', 'ATB02', 'Product Development, Agile Methodologies'),
('EMP000029', 'ATB03', '7 years in Product Management'),
('EMP000030', 'ATB01', 'A-'),
('EMP000030', 'ATB02', 'Financial Reporting, Auditing'),
('EMP000030', 'ATB03', '5 years in Accounting'),
('EMP000031', 'ATB01', 'B+'),
('EMP000031', 'ATB02', 'Supply Chain Optimization, Inventory Control'),
('EMP000031', 'ATB03', '6 years in Logistics Management'),
('EMP000032', 'ATB01', 'O+'),
('EMP000032', 'ATB02', 'Customer Experience, Service Design'),
('EMP000032', 'ATB03', '4 years in Customer Success'),
('EMP000033', 'ATB01', 'AB-'),
('EMP000033', 'ATB02', 'Business Analysis, Process Improvement'),
('EMP000033', 'ATB03', '5 years in Operations'),
('EMP000034', 'ATB01', 'A+'),
('EMP000034', 'ATB02', 'Content Creation, Video Editing'),
('EMP000034', 'ATB03', '3 years in Multimedia Production'),
('EMP000035', 'ATB01', 'B-'),
('EMP000035', 'ATB02', 'Machine Learning, Data Visualization'),
('EMP000035', 'ATB03', '6 years in Data Science'),
('EMP000036', 'ATB01', 'O-'),
('EMP000036', 'ATB02', 'UI/UX Design, Prototyping'),
('EMP000036', 'ATB03', '2 years in Product Design'),
('EMP000037', 'ATB01', 'AB+'),
('EMP000037', 'ATB02', 'Project Planning, Risk Management'),
('EMP000037', 'ATB03', '7 years in Project Management'),
('EMP000038', 'ATB01', 'A-'),
('EMP000038', 'ATB02', 'Legal Research, Contract Drafting'),
('EMP000038', 'ATB03', '4 years in Corporate Law'),
('EMP000039', 'ATB01', 'B+'),
('EMP000039', 'ATB02', 'Database Administration, SQL'),
('EMP000039', 'ATB03', '5 years in IT Infrastructure'),
('EMP000040', 'ATB01', 'O+'),
('EMP000040', 'ATB02', 'Public Relations, Crisis Management'),
('EMP000040', 'ATB03', '6 years in Corporate Communications'),
('EMP000041', 'ATB01', 'AB-'),
('EMP000041', 'ATB02', 'Agile Coaching, Scrum Master'),
('EMP000041', 'ATB03', '8 years in Software Development'),
('EMP000042', 'ATB01', 'A+'),
('EMP000042', 'ATB02', 'Market Research, Data Analysis'),
('EMP000042', 'ATB03', '4 years in Marketing Analytics'),
('EMP000043', 'ATB01', 'B-'),
('EMP000043', 'ATB02', 'Financial Planning, Investment Strategy'),
('EMP000043', 'ATB03', '7 years in Wealth Management'),
('EMP000044', 'ATB01', 'O-'),
('EMP000044', 'ATB02', 'Event Planning, Vendor Management'),
('EMP000044', 'ATB03', '3 years in Corporate Events'),
('EMP000045', 'ATB01', 'AB+'),
('EMP000045', 'ATB02', 'Quality Assurance, Test Automation'),
('EMP000045', 'ATB03', '5 years in Software Testing'),
('EMP000046', 'ATB01', 'A-'),
('EMP000046', 'ATB02', 'Technical Writing, Documentation'),
('EMP000046', 'ATB03', '4 years in Product Documentation'),
('EMP000047', 'ATB01', 'B+'),
('EMP000047', 'ATB02', 'Business Development, Partnership Management'),
('EMP000047', 'ATB03', '6 years in Sales and Partnerships'),
('EMP000048', 'ATB01', 'O+'),
('EMP000048', 'ATB02', 'Employee Training, Learning Management Systems'),
('EMP000048', 'ATB03', '5 years in Learning and Development'),
('EMP000049', 'ATB01', 'AB-'),
('EMP000049', 'ATB02', 'Brand Strategy, Market Positioning'),
('EMP000049', 'ATB03', '7 years in Brand Management'),
('EMP000050', 'ATB01', 'AB-'),
('EMP000050', 'ATB02', 'Financial Analysis, Risk Assessment'),
('EMP000050', 'ATB03', '6 years in Finance');


-- Populate emergency_contact table
INSERT INTO emergency_contact (employee_id, contact_no, relationship, contact_name) VALUES
('EMP000001', 771234567, 'Spouse', 'Mihiri Hasaranga'),
('EMP000002', 772345678, 'Parent', 'Anura Rukshan'),
('EMP000003', 773456789, 'Spouse', 'Kasun Perera'),
('EMP000004', 722318385, 'Sibling', 'Priya Karim'),
('EMP000005', 768394204, 'Parent', 'Ahmed Zahra'),
('EMP000006', 774567890, 'Spouse', 'Ranjan Lakmali'),
('EMP000007', 775678901, 'Sibling', 'Ishara Pradeep')
-- ('EMP000008', 77423913, 'Parent', 'Abdul Begum'),
-- ('EMP000009', 3112345678, 'Spouse', 'Fatima Imran'),
-- ('EMP000010', 776789012, 'Parent', 'Kumari Nisansala'),
-- ('EMP000011', 777890123, 'Sibling', 'Chamara Gurusinha'),
-- ('EMP000012', 1834567890, 'Spouse', 'Rashid Khan'),
-- ('EMP000013', 3123456789, 'Parent', 'Fatima Raza'),
-- ('EMP000014', 778901234, 'Sibling', 'Samantha Perera'),
-- ('EMP000015', 1845678901, 'Spouse', 'Nasreen Ahmed'),
-- ('EMP000016', 3134567890, 'Parent', 'Imran Malik'),
-- ('EMP000017', 779012345, 'Spouse', 'Chamathka Fernando'),
-- ('EMP000018', 1856789012, 'Parent', 'Mohammad Akter'),
-- ('EMP000019', 3145678901, 'Sibling', 'Ali Tariq'),
-- ('EMP000020', 770123456, 'Parent', 'Lalith Madushani'),
-- ('EMP000021', 1867890123, 'Spouse', 'Fariha Hasan'),
-- ('EMP000022', 3156789012, 'Parent', 'Tariq Riaz'),
-- ('EMP000023', 771234567, 'Sibling', 'Chamathka Vaas'),
-- ('EMP000024', 1878901234, 'Spouse', 'Imran Akhtar'),
-- ('EMP000025', 3167890123, 'Parent', 'Amina Butt'),
-- ('EMP000026', 773456789, 'Parent', 'Rohan Cooray'),
-- ('EMP000027', 1889012345, 'Spouse', 'Sabina Uddin'),
-- ('EMP000028', 3178901234, 'Sibling', 'Asad Nawaz'),
-- ('EMP000029', 774567890, 'Parent', 'Kumari Paranavitana'),
-- ('EMP000030', 1890123456, 'Spouse', 'Mahmud Islam'),
-- ('EMP000031', 3189012345, 'Sibling', 'Amir Shah'),
-- ('EMP000032', 775678901, 'Parent', 'Nishanth Abeywickrama'),
-- ('EMP000033', 1801234567, 'Spouse', 'Fatima Hossain'),
-- ('EMP000034', 3190123456, 'Sibling', 'Imran Khalid'),
-- ('EMP000035', 776789012, 'Parent', 'Chaminda Herath'),
-- ('EMP000036', 1812345678, 'Spouse', 'Farzana Akter'),
-- ('EMP000037', 3101234567, 'Sibling', 'Omar Ahmed'),
-- ('EMP000038', 777890123, 'Parent', 'Lakshmi Edirisinghe'),
-- ('EMP000039', 1823456789, 'Spouse', 'Nasreen Alam'),
-- ('EMP000040', 3112345678, 'Sibling', 'Ali Qamar'),
-- ('EMP000041', 778901234, 'Parent', 'Sanjaya Malinga'),
-- ('EMP000042', 1834567890, 'Spouse', 'Rashid Yasmin'),
-- ('EMP000043', 3123456789, 'Sibling', 'Saira Khan'),
-- ('EMP000044', 779012345, 'Parent', 'Upul Priyasad'),
-- ('EMP000045', 1845678901, 'Spouse', 'Tahmina Hossain'),
-- ('EMP000046', 3134567890, 'Sibling', 'Asif Mani'),
-- ('EMP000047', 770123456, 'Parent', 'Nimal Mendis'),
-- ('EMP000048', 1856789012, 'Spouse', 'Farid Imroz'),
-- ('EMP000049', 3145678901, 'Sibling', 'Sadia Khan'),
-- ('EMP000050', 772345678, 'Spouse', 'Mihiri Chandimal')
;


-- Populate leaves table
INSERT INTO leaves (start_date, end_date, leave_type, employee_id, leave_status, reason) VALUES
('2024-04-10', '2024-04-15', 'Annual', 'EMP000001', 'Approved', 'Family vacation'),
('2024-05-05', '2024-05-05', 'Casual', 'EMP000002', 'Approved', 'Personal errands'),
('2024-06-20', '2024-09-19', 'Maternity', 'EMP000003', 'Approved', 'Maternity leave'),
('2024-07-01', '2024-07-03', 'Annual', 'EMP000004', 'Pending', 'Wedding anniversary'),
('2024-08-15', '2024-08-15', 'Casual', 'EMP000005', 'Approved', 'Medical appointment'),
('2024-09-10', '2024-09-14', 'Annual', 'EMP000006', 'Approved', 'Family event'),
('2024-10-20', '2024-10-20', 'Casual', 'EMP000007', 'Pending', 'House moving'),
('2024-11-05', '2024-11-07', 'Annual', 'EMP000008', 'Approved', 'Personal development seminar'),
('2024-12-25', '2024-12-26', 'Annual', 'EMP000009', 'Approved', 'Christmas holidays'),
('2025-01-10', '2025-01-10', 'Casual', 'EMP000010', 'Pending', 'Visa appointment');

-- Populate organization table
INSERT INTO organization (id, name, reg_no, main_branch, ceo) VALUES
(1, 'Jupyter Apparel', 'REG12345', 'BR001', 'EMP000001');

-- Populate user table
INSERT INTO user (employee_id, username, password, role) VALUES
('EMP000001', 'user1','$2b$10$m9u0KC.G8pRlegdEm9QTuuahkYbP0E.asTKfo4SnkB.O0byxgmxTy',  'Admin');