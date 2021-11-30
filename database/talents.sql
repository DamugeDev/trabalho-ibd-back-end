-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 02:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talents`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `genere` varchar(100) NOT NULL,
  `type_document` varchar(200) NOT NULL,
  `numb_document` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `genere`, `type_document`, `numb_document`, `address`, `contact`, `email`, `password`) VALUES
(1, 'Roberto Mario', 'masculino', 'bi', '213123B', 'Av. Joaquim Chissano', '8888888', 'admin@email.com', '123a'),
(2, 'Teste Admin', 'masulino', 'bi', '12431241B', 'Moradas', '8854645', 'test@ad.com', '123a');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `id_event` varchar(200) NOT NULL,
  `cod_departament` varchar(200) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  `type_event` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `list_talents`
--

CREATE TABLE `list_talents` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `id_talent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_talents`
--

INSERT INTO `list_talents` (`id`, `name`, `id_talent`) VALUES
(1, 'arte e cultura', ''),
(2, 'ciencias', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `id_student` varchar(100) NOT NULL,
  `id_talent` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `genere` varchar(100) NOT NULL,
  `course` varchar(200) NOT NULL,
  `type_document` varchar(200) NOT NULL,
  `numb_document` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `id_student`, `id_talent`, `name`, `genere`, `course`, `type_document`, `numb_document`, `address`, `contact`, `email`, `password`) VALUES
(4, '123332', '1123', 'Teste cadastro 1', 'masculino', 'teste', 'bi', '121432B', 'teste', '8888885654', 'teste@st.com', '123'),
(5, '123332', '1122', 'Teste cadastro 2', 'femenino', 'Informatica Basica', 'passport', '12143asas3242B', 'teste', '8888885654', 'teste2@st.com', '123a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
