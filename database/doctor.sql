-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 06:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `visiting_hour` time NOT NULL,
  `timing` varchar(100) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `doctor_info` text DEFAULT NULL,
  `doctor_fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `hospital_name`, `visiting_hour`, `timing`, `specialization`, `doctor_info`, `doctor_fee`) VALUES
(1, 'Dr. Abul Hasan', 'Apollo Hospital', '09:00:00', 'Monday to Friday, 9 AM to 5 PM', 'Cardiology', 'Dr. Abul Hasan is a renowned cardiologist with years of experience.', 2000.00),
(2, 'Dr. Farida Khan', 'Square Hospitals', '10:30:00', 'Monday to Saturday, 10:30 AM to 4 PM', 'Orthopedics', 'Dr. Farida Khan specializes in orthopedic surgeries and treatments.', 1800.00),
(3, 'Dr. Ayesha Ahmed', 'Labaid Specialized Hospital', '08:00:00', 'Sunday to Thursday, 8 AM to 2 PM', 'Dermatology', 'Dr. Ayesha Ahmed is a skilled dermatologist providing comprehensive skincare solutions.', 1500.00),
(4, 'Dr. Kamal Hossain', 'Bangabandhu Sheikh Mujib Medical University', '11:00:00', 'Monday to Friday, 11 AM to 6 PM', 'Neurology', 'Dr. Kamal Hossain is a neurologist specializing in the treatment of neurological disorders.', 2200.00),
(5, 'Dr. Nazneen Rahman', 'United Hospital', '09:30:00', 'Tuesday to Saturday, 9:30 AM to 3 PM', 'Gynecology', 'Dr. Nazneen Rahman provides compassionate care to women in need of gynecological services.', 1900.00),
(6, 'Dr. Shakil Ahmed', 'Popular Medical College Hospital', '08:30:00', 'Monday to Friday, 8:30 AM to 4 PM', 'General Medicine', 'Dr. Shakil Ahmed is a general physician with extensive knowledge in internal medicine.', 1600.00),
(7, 'Dr. Nusrat Islam', 'Ibn Sina Diagnostic Center', '14:00:00', 'Sunday to Thursday, 2 PM to 8 PM', 'Psychiatry', 'Dr. Nusrat Islam specializes in diagnosing and treating mental health disorders.', 1800.00),
(8, 'Dr. Mustafizur Rahman', 'Bangladesh Eye Hospital', '10:00:00', 'Monday to Saturday, 10 AM to 6 PM', 'Ophthalmology', 'Dr. Mustafizur Rahman is an ophthalmologist providing comprehensive eye care services.', 2500.00),
(9, 'Dr. Rehana Khan', 'Samorita Hospital', '09:30:00', 'Monday to Friday, 9:30 AM to 5 PM', 'Pediatrics', 'Dr. Rehana Khan is a pediatrician specializing in child healthcare and development.', 1700.00),
(10, 'Dr. Rashedul Islam', 'Shahabuddin Medical College Hospital', '15:30:00', 'Sunday to Thursday, 3:30 PM to 9 PM', 'ENT', 'Dr. Rashedul Islam is an ear, nose, and throat specialist providing expert care in otolaryngology.', 2000.00),
(11, 'Dr. Farzana Ahmed', 'Green Life Medical College Hospital', '12:00:00', 'Saturday to Wednesday, 12 PM to 6 PM', 'Dentistry', 'Dr. Farzana Ahmed is a dentist offering a wide range of dental treatments and services.', 1500.00),
(12, 'Dr. Saiful Hasan', 'Lab Aid Hospital', '10:00:00', 'Monday to Friday, 10 AM to 4 PM', 'Orthopedics', 'Dr. Saiful Hasan is an orthopedic surgeon specializing in joint replacement and sports injuries.', 2200.00),
(13, 'Dr. Rubina Begum', 'Square Hospitals', '09:00:00', 'Sunday to Thursday, 9 AM to 3 PM', 'Obstetrics', 'Dr. Rubina Begum provides comprehensive obstetric care and ensures the well-being of pregnant women.', 1900.00),
(14, 'Dr. Shahidul Islam', 'Ibn Sina Hospital', '11:30:00', 'Monday to Saturday, 11:30 AM to 5:30 PM', 'Dermatology', 'Dr. Shahidul Islam specializes in diagnosing and treating skin conditions and disorders.', 1800.00),
(15, 'Dr. Taslima Akter', 'Dhaka Medical College Hospital', '10:30:00', 'Sunday to Thursday, 10:30 AM to 4:30 PM', 'Neurology', 'Dr. Taslima Akter is a neurologist providing expert care for patients with neurological conditions.', 2000.00),
(16, 'Dr. Nazmul Islam', 'Labaid Cardiac Hospital', '08:30:00', 'Monday to Friday, 8:30 AM to 4:30 PM', 'Cardiology', 'Dr. Nazmul Islam is a cardiologist specializing in the diagnosis and treatment of heart diseases.', 2500.00),
(17, 'Dr. Farhana Akhter', 'United Hospital', '09:00:00', 'Tuesday to Saturday, 9 AM to 3 PM', 'Gynecology', 'Dr. Farhana Akhter offers comprehensive gynecological care and supports women in all stages of life.', 1900.00),
(18, 'Dr. Rahim Ahmed', 'City Hospital', '13:00:00', 'Monday to Friday, 1 PM to 7 PM', 'Dentistry', 'Dr. Rahim Ahmed provides specialized dental treatments and focuses on patient comfort.', 1800.00),
(19, 'Dr. Sultana Begum', 'ABC Hospital', '09:00:00', 'Tuesday to Saturday, 9 AM to 5 PM', 'Gastroenterology', 'Dr. Sultana Begum is a gastroenterologist with expertise in diagnosing and treating digestive system disorders.', 2200.00),
(20, 'Dr. Ahmed Khan', 'XYZ Medical Center', '10:30:00', 'Monday to Thursday, 10:30 AM to 3:30 PM', 'ENT', 'Dr. Ahmed Khan specializes in ear, nose, and throat surgeries and provides comprehensive ENT care.', 1900.00),
(21, 'Dr. Amina Chowdhury', 'Sunshine Hospital', '08:30:00', 'Monday to Friday, 8:30 AM to 1:30 PM', 'Psychiatry', 'Dr. Amina Chowdhury offers psychiatric evaluations and treatments for a wide range of mental health conditions.', 2000.00),
(22, 'Dr. Kabir Rahman', 'Rainbow Children Hospital', '09:00:00', 'Monday to Saturday, 9 AM to 6 PM', 'Pediatrics', 'Dr. Kabir Rahman is a pediatrician specializing in child healthcare and ensures the well-being of young patients.', 1800.00),
(23, 'Dr. Saima Khan', 'XYZ Hospital', '10:00:00', 'Sunday to Thursday, 10 AM to 4 PM', 'Cardiology', 'Dr. Saima Khan is a cardiologist providing advanced cardiac care and treatments for heart-related conditions.', 2500.00),
(24, 'Dr. Azad Hossain', 'Evergreen Hospital', '09:30:00', 'Monday to Friday, 9:30 AM to 3:30 PM', 'Orthopedics', 'Dr. Azad Hossain specializes in orthopedic surgeries and treatments for musculoskeletal disorders and injuries.', 1900.00),
(25, 'Dr. Fatima Ahmed', 'Green Life Hospital', '15:30:00', 'Sunday to Thursday, 3:30 PM to 9:30 PM', 'Dermatology', 'Dr. Fatima Ahmed provides comprehensive dermatological care and offers effective solutions for various skin conditions.', 2000.00),
(26, 'Dr. Kamrul Islam', 'MediPlus Hospital', '12:00:00', 'Monday to Saturday, 12 PM to 6 PM', 'Neurology', 'Dr. Kamrul Islam is a neurologist specializing in the diagnosis and treatment of disorders affecting the nervous system.', 2200.00),
(27, 'Dr. Nasreen Khan', 'ABC Hospital', '10:30:00', 'Sunday to Thursday, 10:30 AM to 4:30 PM', 'Gynecology', 'Dr. Nasreen Khan offers specialized gynecological care and supports women through every stage of their reproductive health.', 1900.00),
(28, 'Dr. Adil Hassan', 'Sunshine Hospital', '09:00:00', 'Tuesday to Saturday, 9 AM to 3 PM', 'General Medicine', 'Dr. Adil Hassan provides comprehensive medical care and diagnoses and treats various general health conditions.', 1800.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
