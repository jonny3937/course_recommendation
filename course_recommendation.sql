-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 03:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_recommendation`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `min_grade` varchar(2) NOT NULL,
  `required_subjects` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `university`, `min_grade`, `required_subjects`) VALUES
(2, 'Bachelor of Medicine and Surgery', 'University of Nairobi', 'A-', '[\"Biology, Chemistry, Physics, English, Mathematics\"]'),
(3, 'Bachelor of Pharmacy', 'Kenyatta University', 'B+', '[\"Biology, Chemistry, Physics, English\"]'),
(4, 'Bachelor of Nursing', 'Moi University', 'B', '[\"Biology\", \"Chemistry\", \"Mathematics\", \"English\"]'),
(5, 'Bachelor of Law (LLB)', 'Strathmore University', 'B+', '[\"English\", \"Kiswahili\", \"Mathematics\"]'),
(6, 'Bachelor of Architecture', 'Jomo Kenyatta University of Agriculture and Technology', 'B+', '[\"Mathematics\", \"Physics\", \"Geography\", \"English\"]'),
(7, 'Bachelor of Computer Science', 'Kenyatta University', 'B', '[\"Mathematics\", \"Physics\", \"English\"]'),
(8, 'Bachelor of Information Technology', 'Murang\'a University of Technology', 'C+', '[\"Mathematics\", \"English\", \"Physics\"]'),
(9, 'Bachelor of Business Administration', 'University of Nairobi', 'C+', '[\"Mathematics\", \"English\", \"Business Studies\"]'),
(10, 'Bachelor of Economics', 'Egerton University', 'B-', '[\"Mathematics\", \"English\", \"Business Studies\"]'),
(11, 'Bachelor of Civil Engineering', 'JKUAT', 'B+', '[\"Mathematics\", \"Physics\", \"Chemistry\"]'),
(12, 'Bachelor of Electrical Engineering', 'Technical University of Kenya', 'B+', '[\"Mathematics\", \"Physics\", \"Chemistry\"]'),
(13, 'Bachelor of Software Engineering', 'Zetech University', 'B-', '[\"Mathematics\", \"English\", \"Physics\"]'),
(14, 'Bachelor of Data Science', 'Strathmore University', 'B', '[\"Mathematics\", \"Physics\", \"Computer Studies\"]'),
(15, 'Bachelor of Hospitality Management', 'Kenyatta University', 'C+', '[\"English\", \"Mathematics\", \"Business Studies\"]'),
(16, 'Bachelor of Journalism and Media Studies', 'University of Nairobi', 'C+', '[\"English\", \"Kiswahili\", \"History\"]'),
(17, 'Bachelor of Film Production', 'Multimedia University', 'C+', '[\"English\", \"Kiswahili\", \"Computer Studies\"]'),
(18, 'Bachelor of Psychology', 'Daystar University', 'C+', '[\"English\", \"Biology\", \"Mathematics\"]'),
(19, 'Bachelor of Tourism Management', 'Kenyatta University', 'C+', '[\"Geography\", \"Business Studies\", \"English\"]'),
(20, 'Bachelor of Education (Science)', 'Maseno University', 'C+', '[\"Mathematics\", \"Physics\", \"Biology\", \"Chemistry\"]'),
(21, 'Bachelor of Education (Arts)', 'Mount Kenya University', 'C+', '[\"English\", \"Kiswahili\", \"History\"]'),
(22, 'Bachelor of Criminology', 'Dedan Kimathi University', 'C+', '[\"History\", \"English\", \"Business Studies\"]'),
(23, 'Bachelor of Cyber Security', 'Murang\'a University of Technology', 'B-', '[\"Mathematics\", \"Physics\", \"Computer Studies\"]'),
(24, 'Bachelor of Agricultural Engineering', 'Egerton University', 'B', '[\"Mathematics\", \"Physics\", \"Agriculture\"]'),
(25, 'Bachelor of Veterinary Medicine', 'University of Nairobi', 'B+', '[\"Biology\", \"Chemistry\", \"Physics\"]'),
(26, 'Bachelor of Commerce', 'JKUAT', 'C+', '[\"Mathematics\", \"Business Studies\", \"English\"]'),
(27, 'Bachelor of Banking and Finance', 'University of Nairobi', 'C+', '[\"Mathematics\", \"Business Studies\", \"Economics\"]'),
(28, 'Bachelor of Human Resource Management', 'Mount Kenya University', 'C+', '[\"Business Studies\", \"English\", \"Mathematics\"]'),
(29, 'Bachelor of Food Science and Technology', 'Egerton University', 'B-', '[\"Biology\", \"Chemistry\", \"Mathematics\"]'),
(30, 'Bachelor of Environmental Science', 'Maseno University', 'C+', '[\"Geography\", \"Biology\", \"Chemistry\"]'),
(31, 'Bachelor of Biochemistry', 'University of Nairobi', 'B', '[\"Biology\", \"Chemistry\", \"Physics\"]'),
(32, 'Bachelor of International Relations', 'United States International University (USIU)', 'C+', '[\"History\", \"English\", \"Geography\"]'),
(33, 'Bachelor of Actuarial Science', 'Strathmore University', 'B+', '[\"Mathematics\", \"Business Studies\", \"Physics\"]'),
(34, 'Bachelor of Statistics', 'Technical University of Kenya', 'B-', '[\"Mathematics\", \"Physics\", \"Computer Studies\"]'),
(35, 'Bachelor of Real Estate Management', 'University of Nairobi', 'C+', '[\"Mathematics\", \"Geography\", \"Business Studies\"]'),
(36, 'Bachelor of Construction Management', 'JKUAT', 'C+', '[\"Mathematics\", \"Physics\", \"Geography\"]'),
(37, 'Bachelor of Renewable Energy', 'Technical University of Kenya', 'B-', '[\"Physics\", \"Mathematics\", \"Chemistry\"]'),
(38, 'Bachelor of Aviation Management', 'East African School of Aviation', 'C+', '[\"Mathematics\", \"Physics\", \"English\"]'),
(39, 'Bachelor of Aeronautical Engineering', 'Technical University of Kenya', 'B+', '[\"Mathematics\", \"Physics\", \"Chemistry\"]'),
(40, 'Bachelor of Forensic Science', 'Kenyatta University', 'B-', '[\"Biology\", \"Chemistry\", \"Physics\"]'),
(41, 'Bachelor of Public Health', 'Moi University', 'B-', '[\"Biology\", \"Chemistry\", \"Mathematics\"]'),
(42, 'Bachelor of Political Science', 'University of Nairobi', 'C+', '[\"History\", \"Geography\", \"English\"]'),
(43, 'Bachelor of Procurement and Supply Chain Management', 'JKUAT', 'C+', '[\"Business Studies\", \"Mathematics\", \"English\"]'),
(44, 'Bachelor of Social Work', 'Daystar University', 'C+', '[\"History\", \"English\", \"Kiswahili\"]'),
(45, 'Bachelor of Library and Information Science', 'Kenyatta University', 'C+', '[\"English\", \"Computer Studies\", \"History\"]'),
(46, 'Bachelor of Community Development', 'Mount Kenya University', 'C+', '[\"History\", \"Geography\", \"English\"]'),
(47, 'Bachelor of Entrepreneurship', 'University of Nairobi', 'C+', '[\"Business Studies\", \"Mathematics\", \"English\"]'),
(48, 'Bachelor of Marine Engineering', 'Technical University of Mombasa', 'B', '[\"Mathematics\", \"Physics\", \"Geography\"]'),
(49, 'Medicine', 'UoN', 'A-', '[\"Mathematics, English, Biology, Chemistry\"]'),
(50, 'Medicine', 'UoN', 'A-', '[\"Mathematics, English, Biology, Chemistry\"]'),
(51, 'Bachelor of Pharmacy', 'Rongo University College', 'B+', '[\"Biology, Chemistry, Physics, English, Mathematics\"]');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `user_id`, `subject`, `grade`) VALUES
(1, 3, 'Mathematics', 'B'),
(2, 3, 'English', 'C+'),
(3, 3, 'Kiswahili', 'B'),
(4, 3, 'Chemistry', 'A'),
(5, 3, 'Physics', 'C'),
(6, 3, 'History', 'A'),
(7, 3, 'Computer Studies', 'A'),
(8, 4, 'Mathematics', 'B'),
(9, 4, 'English', 'C+'),
(10, 4, 'Kiswahili', 'A'),
(11, 4, 'Biology', 'C+'),
(12, 4, 'Chemistry', 'C+'),
(13, 4, 'Physics', 'C+'),
(14, 4, 'Geography', 'C+'),
(15, 4, 'Computer Studies', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','admin') DEFAULT 'student',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `created_at`) VALUES
(2, 'Kevin', 'kenife@gmail.com', '$2y$10$D.svUANoPs8wR63ERgnJOOIWoWO9RlF7050iCUBfg9ryI.KLjcT.S', 'admin', '2025-03-19 12:20:19'),
(3, 'Ithaka Mwangi', 'dennisnduto418@gmail.com', '$2y$10$ywEdWeFu7IExDobt6hayZOrZNpUPNWoLdsl03U3EQsiu/aj.c0O26', 'student', '2025-03-19 12:34:29'),
(4, 'bwanake jane', 'havertz@gmail.com', '$2y$10$.wKlTbz1.D9P/0QOPzcDwe2Vh.7qHNGf9GDxBvpsxMsdHiUfD22H2', 'student', '2025-03-19 13:34:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recommendations_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
