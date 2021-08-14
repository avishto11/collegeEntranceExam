-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for career_analysis_db
CREATE DATABASE IF NOT EXISTS `career_analysis_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `career_analysis_db`;

-- Dumping structure for table career_analysis_db.assessment_response_tab
CREATE TABLE IF NOT EXISTS `assessment_response_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assessment_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `marks_obtained` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_assessment_response_tab_assessment_tab` (`assessment_id`),
  CONSTRAINT `FK_assessment_response_tab_assessment_tab` FOREIGN KEY (`assessment_id`) REFERENCES `assessment_tab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table career_analysis_db.assessment_response_tab: ~6 rows (approximately)
/*!40000 ALTER TABLE `assessment_response_tab` DISABLE KEYS */;
INSERT INTO `assessment_response_tab` (`id`, `assessment_id`, `user`, `marks_obtained`) VALUES
	(6, 7, 'avishto11@rediffmail.com', 10),
	(7, 7, 'avishto11@rediffmail.com', 10),
	(8, 7, 'avishto11@rediffmail.com', 10),
	(9, 7, 'avishto11@rediffmail.com', 10),
	(10, 8, 'avishto11@rediffmail.com', 10),
	(11, 8, 'avishto11@rediffmail.com', 5);
/*!40000 ALTER TABLE `assessment_response_tab` ENABLE KEYS */;

-- Dumping structure for table career_analysis_db.assessment_tab
CREATE TABLE IF NOT EXISTS `assessment_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword_1` varchar(50) NOT NULL,
  `keyword_2` varchar(50) NOT NULL,
  `keyword_3` varchar(50) NOT NULL,
  `num_of_questions` varchar(50) NOT NULL,
  `q_id_string` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table career_analysis_db.assessment_tab: ~4 rows (approximately)
/*!40000 ALTER TABLE `assessment_tab` DISABLE KEYS */;
INSERT INTO `assessment_tab` (`id`, `name`, `keyword_1`, `keyword_2`, `keyword_3`, `num_of_questions`, `q_id_string`) VALUES
	(1, 'Test Assessment', 'Engineering', 'University', 'Test', '2', '1,2'),
	(3, 'Test Assessment2', 'Engineering', 'University', 'College', '2', '1,2'),
	(7, 'General Aptitude', 'Engineering', 'Arts', 'Sports', '8', '1,2,3,4,5,6,7,8'),
	(8, 'General Aptitude 2', 'Engineering', 'University', 'Sports', '4', '3,4,5,9');
/*!40000 ALTER TABLE `assessment_tab` ENABLE KEYS */;

-- Dumping structure for table career_analysis_db.college_tab
CREATE TABLE IF NOT EXISTS `college_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(300) NOT NULL,
  `level` varchar(10) NOT NULL,
  `stream` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `course` varchar(100) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table career_analysis_db.college_tab: ~4 rows (approximately)
/*!40000 ALTER TABLE `college_tab` DISABLE KEYS */;
INSERT INTO `college_tab` (`id`, `institute_name`, `level`, `stream`, `type`, `course`, `locality`, `village`, `district`) VALUES
	(1, 'TMA', 'HS', 'Science', 'school', 'Physics', 'Dhakuria', 'Kolkata', '24 Parganas'),
	(2, 'B.P. Poddar', 'UG', 'Engineering', 'college', 'IT', 'Kaikhali', 'Kolkata', '24 Parganas'),
	(3, 'Ashutosh', 'UG', 'Arts', 'college', 'Engllsh', 'Hazra', 'Kolkata', 'Kolkata'),
	(4, 'Astronomy University', 'UG', 'Astronomy', 'college', 'Honours', 'Kaikhali', 'Kolkata', '24 Parganas');
/*!40000 ALTER TABLE `college_tab` ENABLE KEYS */;

-- Dumping structure for table career_analysis_db.question_tab
CREATE TABLE IF NOT EXISTS `question_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(500) NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `op_a_weight` int(11) NOT NULL,
  `op_b_weight` int(11) NOT NULL,
  `op_c_weight` int(11) NOT NULL,
  `op_d_weight` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table career_analysis_db.question_tab: ~9 rows (approximately)
/*!40000 ALTER TABLE `question_tab` DISABLE KEYS */;
INSERT INTO `question_tab` (`id`, `text`, `option_a`, `option_b`, `option_c`, `option_d`, `op_a_weight`, `op_b_weight`, `op_c_weight`, `op_d_weight`, `keyword`) VALUES
	(1, ' What is the capital of India?', 'Kolkata', 'Mumbai', 'Delhi', 'Chennai', 0, 0, 10, 0, 'Capital'),
	(2, ' WHat is the capital of West Bengal?', 'Kolkata', 'Mumbai', 'Delhi', 'Chennai', 10, 0, 0, 0, 'City'),
	(3, 'Full form of HAIL?', 'Hindustan Aeronautics Limited', 'Hindustan Air Limited', 'Hindustan Uniliver Limited', 'Hindustan Limited', 10, 0, 0, 0, 'HAL'),
	(4, ' Full form of WHO:-', 'World Health Organisation', 'World Organisation Health', 'World Healthy Organ', 'World Organ Healthy', 10, 0, 0, 0, 'WHO'),
	(5, ' Who created JAVA?', 'James Gosling', 'Dennis Richie', 'Herbert Schildt', 'Guido Van Rossum', 10, 0, 0, 0, 'JAVA'),
	(6, ' who is the first Prime Minister of India?', 'Rajendra Prasad', 'Sarvapalli Radhakrishnan', 'Jawaharlal Nehru', 'Narendra Modi', 0, 0, 10, -1, 'Prime Minister'),
	(7, ' Who won the UCL in 2020?', 'Bayern Munich', 'PSG', 'Man City', 'Real Madrid', 10, 0, 0, 0, 'UCL'),
	(8, ' Who is the current president of BCCI?', 'Kapil Dev', 'Jay Shah', 'Sourav Ganguly', 'Sunil Gavaskar', 0, 0, 10, 0, 'BCCI'),
	(9, ' What is the Continent in which India is present?', 'Asia', 'America', 'Australia', 'Antartica', 10, 0, 0, 0, 'Continent');
/*!40000 ALTER TABLE `question_tab` ENABLE KEYS */;

-- Dumping structure for table career_analysis_db.stream_choice_tab
CREATE TABLE IF NOT EXISTS `stream_choice_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_name` varchar(50) NOT NULL,
  `assessment_id` int(11) NOT NULL,
  `opening_average` double NOT NULL,
  `closing_average` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_stream_choice_tab_assessment_tab` (`assessment_id`),
  CONSTRAINT `FK_stream_choice_tab_assessment_tab` FOREIGN KEY (`assessment_id`) REFERENCES `assessment_tab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table career_analysis_db.stream_choice_tab: ~6 rows (approximately)
/*!40000 ALTER TABLE `stream_choice_tab` DISABLE KEYS */;
INSERT INTO `stream_choice_tab` (`id`, `stream_name`, `assessment_id`, `opening_average`, `closing_average`) VALUES
	(1, 'Science', 1, 9, 12),
	(2, 'Science', 3, 9, 12),
	(3, 'Engineering', 7, 8, 10),
	(4, 'Sports', 7, 6, 7),
	(5, 'Arts', 7, 4, 5),
	(6, 'Astronomy', 8, 6, 10);
/*!40000 ALTER TABLE `stream_choice_tab` ENABLE KEYS */;

-- Dumping structure for table career_analysis_db.stream_tab
CREATE TABLE IF NOT EXISTS `stream_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table career_analysis_db.stream_tab: ~4 rows (approximately)
/*!40000 ALTER TABLE `stream_tab` DISABLE KEYS */;
INSERT INTO `stream_tab` (`id`, `stream`, `level`) VALUES
	(2, 'Science', '10+2'),
	(3, 'Engineering', 'UG'),
	(4, 'Sports', 'UG'),
	(5, 'Arts', 'UG'),
	(6, 'Astronomy', 'UG');
/*!40000 ALTER TABLE `stream_tab` ENABLE KEYS */;

-- Dumping structure for table career_analysis_db.user_cred
CREATE TABLE IF NOT EXISTS `user_cred` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `address` varchar(300) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table career_analysis_db.user_cred: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_cred` DISABLE KEYS */;
INSERT INTO `user_cred` (`id`, `email`, `name`, `password`, `number`, `address`, `type`) VALUES
	(1, 'avishto11@rediffmail.com', 'Avishto', '1234', '9073011922', '12B', 1),
	(2, 'admin@admin', 'admin', 'admin', '9888', '12', 2);
/*!40000 ALTER TABLE `user_cred` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
