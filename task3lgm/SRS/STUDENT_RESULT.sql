-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2021 at 03:54 PM
-- Server version: 8.0.26-0ubuntu0.20.04.3
-- PHP Version: 7.4.3
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8 */
;
--
-- Database: `STUDENT_RESULT`
--
-- --------------------------------------------------------
--
-- Table structure for table `admin`
--
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
--
-- Dumping data for table `admin`
--
INSERT INTO `admin` (`id`, `name`, `pass`, `email`)
VALUES (1, 'subhashree', '12345', 'admin123@gmail.com');
-- --------------------------------------------------------
--
-- Table structure for table `branch`
--
CREATE TABLE `branch` (
  `id` int NOT NULL,
  `class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
--
-- Dumping data for table `branch`
--
INSERT INTO `branch` (`id`, `class`)
VALUES (1, 'mca'),
  (3, 'bca'),
  (4, 'mba'),
  (6, 'B.SC');
-- --------------------------------------------------------
--
-- Table structure for table `result`
--
CREATE TABLE `result` (
  `res_id` int NOT NULL,
  `res_reg` varchar(100) NOT NULL,
  `res_branch` varchar(100) NOT NULL,
  `os` int NOT NULL,
  `co` int NOT NULL,
  `java` int NOT NULL,
  `dbms` int NOT NULL,
  `ds` int NOT NULL,
  `ai` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
--
-- Dumping data for table `result`
--
INSERT INTO `result` (
    `res_id`,
    `res_reg`,
    `res_branch`,
    `os`,
    `co`,
    `java`,
    `dbms`,
    `ds`,
    `ai`
  )
VALUES (1, '2005106019', '1', 69, 61, 68, 62, 69, 65);
-- --------------------------------------------------------
--
-- Table structure for table `student`
--
CREATE TABLE `student` (
  `id` int NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `st_reg` varchar(100) NOT NULL,
  `st_email` varchar(100) NOT NULL,
  `st_branch` varchar(30) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
--
-- Dumping data for table `student`
--
INSERT INTO `student` (
    `id`,
    `st_name`,
    `st_reg`,
    `st_email`,
    `st_branch`
  )
VALUES (
    2,
    'Subhashree Panda',
    '2005106011',
    'subha123@gmail.com',
    '1'
  ),
  (
    3,
    'Elie panda',
    '2005106019',
    'elie123@gmail.com',
    '1'
  );
-- --------------------------------------------------------
--
-- Table structure for table `year`
--
CREATE TABLE `year` (
  `id` int NOT NULL,
  `bid` int NOT NULL,
  `year` varchar(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;
--
-- Indexes for dumped tables
--
--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `result`
--
ALTER TABLE `result`
ADD PRIMARY KEY (`res_id`);
--
-- Indexes for table `student`
--
ALTER TABLE `student`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `year`
--
ALTER TABLE `year`
ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 2;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
MODIFY `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 7;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
MODIFY `res_id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 4;
--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;