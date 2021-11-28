-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Nov-2021 às 16:59
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `talents`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `event`
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
-- Estrutura da tabela `list_talents`
--

CREATE TABLE `list_talents` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `id_talent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `list_talents`
--

INSERT INTO `list_talents` (`id`, `name`, `id_talent`) VALUES
(1, 'arte e cultura', ''),
(2, 'ciencias', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `students`
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
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `students`
--

INSERT INTO `students` (`id`, `id_student`, `id_talent`, `name`, `genere`, `course`, `type_document`, `numb_document`, `address`, `contact`) VALUES
(1, '1111', 'fds21313', 'Nairo Mudumane', 'm', 'ETSI', 'BI', '1982639821', 'dsafrdsaf', 'dsfdsfsdfewf'),
(2, '124213', 'dsfgew31232', 'Dinis Matavele', 'm', 'sdfdsf', 'dsfsd', 'dsfsdf', 'sdfas', 'dasfd'),
(3, '11111', '213213', 'Update name', 'm', 'aojfdalks', 'update documento', 'asfjkjasojf', 'alksdhfsaiuas', 'aoidsfoisafiua');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
