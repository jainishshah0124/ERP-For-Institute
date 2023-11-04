/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.1.10-MariaDB : Database - erp_institute
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`erp_institute` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `erp_institute`;

/*Table structure for table `attendance_master` */

DROP TABLE IF EXISTS `attendance_master`;

CREATE TABLE `attendance_master` (
  `attendance_id` int(5) NOT NULL AUTO_INCREMENT,
  `lec_date` date NOT NULL,
  `sub_code` int(6) NOT NULL,
  `enrollment_no` int(20) NOT NULL,
  `attendance` tinyint(1) NOT NULL,
  `semester` int(5) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attendance_master` */

/*Table structure for table `batch_table` */

DROP TABLE IF EXISTS `batch_table`;

CREATE TABLE `batch_table` (
  `batch_id` int(4) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(25) NOT NULL,
  `total_student` int(5) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `lec_date` date NOT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `batch_table` */

/*Table structure for table `branch_master` */

DROP TABLE IF EXISTS `branch_master`;

CREATE TABLE `branch_master` (
  `brach_id` int(3) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(4) NOT NULL,
  `brach_name` varchar(30) NOT NULL,
  PRIMARY KEY (`brach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `branch_master` */

/*Table structure for table `contactus_master` */

DROP TABLE IF EXISTS `contactus_master`;

CREATE TABLE `contactus_master` (
  `contact_us_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone_no` int(10) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`contact_us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contactus_master` */

/*Table structure for table `exam_master` */

DROP TABLE IF EXISTS `exam_master`;

CREATE TABLE `exam_master` (
  `exam_id` int(5) NOT NULL AUTO_INCREMENT,
  `exam_category` varchar(15) NOT NULL,
  `exam_sub` int(5) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_time` time NOT NULL,
  `total_marks` int(5) NOT NULL,
  `semester` int(3) NOT NULL,
  `batch` varchar(25) NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `exam_master` */

/*Table structure for table `faculty_master` */

DROP TABLE IF EXISTS `faculty_master`;

CREATE TABLE `faculty_master` (
  `faculty_id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `experience` varchar(10) DEFAULT NULL,
  `join_date` varchar(15) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `branch` varchar(10) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `bloodgrp` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `faculty_master` */

insert  into `faculty_master`(`faculty_id`,`Name`,`Address`,`mobile`,`email`,`qualification`,`experience`,`join_date`,`designation`,`branch`,`photo`,`gender`,`bloodgrp`) values (1,'jainish','ijaisjji',1212,'ajia','iji','12','21/02/2018','Director','IT','C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images\\samim.png','male','O+'),(2,'jainish','ijaisjji',1212,'ajia','iji','12','21/02/2018','Teacher','IT','C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images\\Elvera.jpg','male','O+'),(3,'aaaaa','ijaisjji',1212,'ajia','iji','12','21/02/2018','Director','IT','C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images\\samim.png','male','O+'),(6,'Hatim','1iajijaija',12123123,'admin@admin.com','bsc','1','28/03/2018','Chairman','IT','C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images\\huyan.png','male','O+');

/*Table structure for table `faculty_salary_detail` */

DROP TABLE IF EXISTS `faculty_salary_detail`;

CREATE TABLE `faculty_salary_detail` (
  `faculty_sal_id` int(5) NOT NULL AUTO_INCREMENT,
  `faculty_id` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `salary` int(10) NOT NULL,
  `salary_status` tinyint(1) NOT NULL,
  `paid_date` date DEFAULT NULL,
  PRIMARY KEY (`faculty_sal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculty_salary_detail` */

/*Table structure for table `fee_details` */

DROP TABLE IF EXISTS `fee_details`;

CREATE TABLE `fee_details` (
  `fee_id` int(6) NOT NULL AUTO_INCREMENT,
  `bill_id` int(10) NOT NULL,
  `enrollment_no` int(10) NOT NULL,
  `check_no` varchar(20) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL,
  PRIMARY KEY (`fee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fee_details` */

/*Table structure for table `feedback_table` */

DROP TABLE IF EXISTS `feedback_table`;

CREATE TABLE `feedback_table` (
  `feedback_id` int(5) NOT NULL AUTO_INCREMENT,
  `feedback_msg` varchar(500) NOT NULL,
  `user_id` int(6) NOT NULL,
  `faculty_id` int(6) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback_table` */

/*Table structure for table `login_master` */

DROP TABLE IF EXISTS `login_master`;

CREATE TABLE `login_master` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `password` blob NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `user_status` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_master` */

/*Table structure for table `material_master` */

DROP TABLE IF EXISTS `material_master`;

CREATE TABLE `material_master` (
  `material_id` int(5) NOT NULL AUTO_INCREMENT,
  `subject` int(5) NOT NULL,
  `M_name` varchar(30) NOT NULL,
  `M_detail` varchar(500) DEFAULT NULL,
  `semester` int(2) NOT NULL,
  `branch` int(5) NOT NULL,
  `src` varchar(200) NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `material_master` */

/*Table structure for table `parent_master` */

DROP TABLE IF EXISTS `parent_master`;

CREATE TABLE `parent_master` (
  `guardian_id` int(5) NOT NULL AUTO_INCREMENT,
  `enrollment_no` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `f_mobile` int(10) NOT NULL,
  `f_email` varchar(40) DEFAULT NULL,
  `f_occupation` varchar(50) DEFAULT NULL,
  `f_education` varchar(50) DEFAULT NULL,
  `mother_name` varchar(20) NOT NULL,
  `m_mobile` int(10) NOT NULL,
  `m_email` varchar(40) DEFAULT NULL,
  `m_occupation` varchar(50) DEFAULT NULL,
  `m_education` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guardian_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `parent_master` */

/*Table structure for table `qualification_master` */

DROP TABLE IF EXISTS `qualification_master`;

CREATE TABLE `qualification_master` (
  `qual_id` int(5) NOT NULL AUTO_INCREMENT,
  `qual_name` varchar(50) NOT NULL,
  `qual_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`qual_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `qualification_master` */

/*Table structure for table `student_detail_diploma` */

DROP TABLE IF EXISTS `student_detail_diploma`;

CREATE TABLE `student_detail_diploma` (
  `stud_d2d_id` int(5) NOT NULL AUTO_INCREMENT,
  `enrollment_no` int(12) NOT NULL,
  `last_university` varchar(20) DEFAULT NULL,
  `last_college_name` varchar(50) DEFAULT NULL,
  `last_cgpi` varchar(20) NOT NULL,
  `passing_year` date DEFAULT NULL,
  PRIMARY KEY (`stud_d2d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_detail_diploma` */

/*Table structure for table `student_detail_hse` */

DROP TABLE IF EXISTS `student_detail_hse`;

CREATE TABLE `student_detail_hse` (
  `stud_12_id` int(5) NOT NULL AUTO_INCREMENT,
  `enrollment_no` int(12) NOT NULL,
  `last_exam_board` varchar(20) DEFAULT NULL,
  `last_school_name` varchar(50) DEFAULT NULL,
  `last_percentage` int(4) NOT NULL,
  `passing_year` date DEFAULT NULL,
  PRIMARY KEY (`stud_12_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_detail_hse` */

/*Table structure for table `student_master` */

DROP TABLE IF EXISTS `student_master`;

CREATE TABLE `student_master` (
  `Student_id` int(15) NOT NULL AUTO_INCREMENT,
  `Branch` varchar(20) NOT NULL,
  `First_name` varchar(15) NOT NULL,
  `Middle_name` varchar(15) NOT NULL,
  `Last_name` varchar(15) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `Bloodgrp` varchar(3) NOT NULL,
  `sem` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Student_id`),
  KEY `Course_id` (`Branch`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `student_master` */

insert  into `student_master`(`Student_id`,`Branch`,`First_name`,`Middle_name`,`Last_name`,`Gender`,`Address`,`contact_no`,`email_id`,`pic`,`dob`,`Bloodgrp`,`sem`) values (1,'IT','Jainish','H','Shah','male','isjiasjiajsasji',9188218,'adsadasd','C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\ERP for INstitute\\web\\images\\teacher_images\\dilmara.png','24/06/1997','O+',1);

/*Table structure for table `student_mid_result` */

DROP TABLE IF EXISTS `student_mid_result`;

CREATE TABLE `student_mid_result` (
  `stud_result_id` int(5) NOT NULL AUTO_INCREMENT,
  `enrollment_no` int(5) NOT NULL,
  `exam_id` int(4) NOT NULL,
  `obtained_marks` int(4) NOT NULL,
  `attendance` tinyint(1) NOT NULL,
  `semester` int(3) NOT NULL,
  `batch` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`stud_result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_mid_result` */

/*Table structure for table `subject_master` */

DROP TABLE IF EXISTS `subject_master`;

CREATE TABLE `subject_master` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_code` varchar(10) NOT NULL,
  `sub_name` varchar(40) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `credit` int(3) DEFAULT NULL,
  `semester` int(1) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `subject_master` */

insert  into `subject_master`(`sub_id`,`sub_code`,`sub_name`,`branch`,`credit`,`semester`) values (1,'12','DBMS','IT',6,5),(2,'25','AI','IT',5,8),(3,'14','OOP','Computer',6,4),(4,'102','IOS','IT',4,8);

/*Table structure for table `timeline_master` */

DROP TABLE IF EXISTS `timeline_master`;

CREATE TABLE `timeline_master` (
  `timeline_id` int(6) NOT NULL AUTO_INCREMENT,
  `subject` int(5) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `topic_detail` varchar(500) NOT NULL,
  `weblink` varchar(50) DEFAULT NULL,
  `branch` int(6) DEFAULT NULL,
  `batch` int(6) DEFAULT NULL,
  PRIMARY KEY (`timeline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `timeline_master` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
