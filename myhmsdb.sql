SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE admintb (
  username varchar(50) NOT NULL,
  password varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO admintb (username, password) VALUES
('dbms', 'dbms123');
CREATE TABLE appointmenttb (
  pid int(11) NOT NULL,
  ID int(11) NOT NULL,
  fname varchar(20) NOT NULL,
  lname varchar(20) NOT NULL,
  gender varchar(10) NOT NULL,
  email varchar(30) NOT NULL,
  contact varchar(10) NOT NULL,
  doctor varchar(30) NOT NULL,
  docFees int(5) NOT NULL,
  appdate date NOT NULL,
  apptime time NOT NULL,
  userStatus int(5) NOT NULL,
  doctorStatus int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO appointmenttb (pid, ID, fname, lname, gender, email, contact, doctor, docFees, appdate, apptime, userStatus, doctorStatus) VALUES
(4, 1, 'Abhiram', 'P', 'Male', 'abhi@gmail.com', '8838489464', 'Mahesh', 500, '2024-02-14', '10:00:00', 1, 0),
(4, 2, 'Abhiram', 'P', 'Male', 'abhi@gmail.com', '8838489464', 'Dinesh', 700, '2024-02-28', '10:00:00', 0, 1),
(4, 3, 'Abhiram', 'P', 'Male', 'abhi@gmail.com', '8838489464', 'Amit', 1000, '2024-02-19', '03:00:00', 0, 1),
(11, 4, 'Shraddha', 'Sharma', 'Female', 'shraddha@gmail.com', '9768946252', 'ashok', 500, '2024-02-29', '20:00:00', 1, 1),
(4, 5, 'Abhiram', 'P', 'Male', 'abhi@gmail.com', '8838489464', 'Dinesh', 700, '2024-02-28', '12:00:00', 1, 1),
(4, 6, 'Abhiram', 'P', 'Male', 'abhi@gmail.com', '8838489464', 'Mahesh', 500, '2024-02-26', '15:00:00', 0, 1),
(2, 7, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'Mahesh', 500, '2024-02-21', '10:00:00', 1, 1),
(5, 8, 'Kishan', 'Prakash', 'Male', 'kishan@gmail.com', '9070897653', 'Mahesh', 500, '2024-02-19', '20:00:00', 1, 0),
(4, 9, 'Abhiram', 'P', 'Male', 'abhi@gmail.com', '8838489464', 'Mahesh', 500, '0000-00-00', '14:00:00', 1, 0),
(4, 10, 'Abhiram', 'P', 'Male', 'abhi@gmail.com', '8838489464', 'Dinesh', 700, '2024-02-27', '15:00:00', 1, 1),
(9, 11, 'Murali', 'Karthik', 'Male', 'murali@gmail.com', '8683619153', 'Kumar', 800, '2024-02-26', '12:00:00', 1, 1),
(9, 12, 'Murali', 'Karthik', 'Male', 'murali@gmail.com', '8683619153', 'Shrenidhi', 450, '2024-02-26', '14:00:00', 1, 1);
CREATE TABLE contact (
  name varchar(30) NOT NULL,
  email text NOT NULL,
  contact varchar(10) NOT NULL,
  message varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO contact (name, email, contact, message) VALUES
('Shimil', 'shimil@gmail.com', '7896677554', 'Love your service. Thank you!'),
(' Kishan', 'kishan@gmail.com', '9899778865', 'Good service'),
('Abhiram', 'abhi@gmail.com', '9997888879', 'How can I reach you?'),
('Murali', 'murali@gmail.com', '8788979967', 'Affordable');
CREATE TABLE doctb (
  username varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  spec varchar(50) NOT NULL,
  docFees int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO doctb (username, password, email, spec, docFees) VALUES
('Ashok', 'ashok123', 'ashok@gmail.com', 'General', 500),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Mahesh', 'mahesh123', 'mahesh@gmail.com', 'Pediatrician', 500),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Shrenidhi', 'shrenishi123', 'shrenidhi@gmail.com', 'Pediatrician', 450);
CREATE TABLE patreg (
  pid int(11) NOT NULL,
  fname varchar(20) NOT NULL,
  lname varchar(20) NOT NULL,
  gender varchar(10) NOT NULL,
  email varchar(30) NOT NULL,
  contact varchar(10) NOT NULL,
  password varchar(30) NOT NULL,
  cpassword varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO patreg (pid, fname, lname, gender, email, contact, password, cpassword) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'alia123', 'alia123'),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123'),
(4, 'Abhiram', 'P', 'Male', 'abhi@gmail.com', '8838489464', 'abhi123', 'abhi123'),
(5, 'Kishan', 'Prakash', 'Male', 'kishan@gmail.com', '9070897653', 'kishan123', 'kishan123'),
(6, 'Murali', 'Karthik', 'Male', 'murali@gmail.com', '8683619153', 'murali123', 'murali123'),
(7, 'Shraddha', 'Sharma', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123', 'shraddha123');
CREATE TABLE prestb (
  doctor varchar(50) NOT NULL,
  pid int(11) NOT NULL,
  ID int(11) NOT NULL,
  fname varchar(50) NOT NULL,
  lname varchar(50) NOT NULL,
  appdate date NOT NULL,
  apptime time NOT NULL,
  disease varchar(250) NOT NULL,
  allergy varchar(250) NOT NULL,
  prescription varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO prestb (doctor, pid, ID, fname, lname, appdate, apptime, disease, allergy, prescription) VALUES
('Dinesh', 4, 11, 'Abhiram', 'P', '2024-02-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Mahesh', 2, 8, 'Alia', 'Bhatt', '2024-02-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'Murali', 'Karthik', '2024-02-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Shrenidhi', 9, 13, 'Murali', 'Karthik', '2024-02-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');
ALTER TABLE appointmenttb
  ADD PRIMARY KEY (ID);
ALTER TABLE patreg
  ADD PRIMARY KEY (pid);
ALTER TABLE appointmenttb
  MODIFY ID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
ALTER TABLE patreg
  MODIFY pid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;