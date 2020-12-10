-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Dez-2020 às 13:45
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codfuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(255) NOT NULL,
  `professor` int(11) DEFAULT NULL,
  `coordinfo` int(11) DEFAULT NULL,
  `coordensinomedio` int(11) DEFAULT NULL,
  `coordpedagogico` int(11) DEFAULT NULL,
  `cordbiblioteca` int(11) DEFAULT NULL,
  `diretor` int(11) DEFAULT NULL,
  `cordadm` int(11) DEFAULT NULL,
  `nulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codfuncionario`, `nomeFuncionario`, `professor`, `coordinfo`, `coordensinomedio`, `coordpedagogico`, `cordbiblioteca`, `diretor`, `cordadm`, `nulo`) VALUES
(1, 'carlos', 1, 1, 4, NULL, NULL, NULL, NULL, NULL),
(2, 'Amanda', 2, 1, 4, NULL, NULL, NULL, NULL, NULL),
(3, 'Cintia', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'agda', 4, 1, 4, NULL, NULL, NULL, NULL, NULL),
(5, 'sirlei', 5, 1, NULL, NULL, NULL, 5, NULL, NULL),
(6, 'celia', 6, 1, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codfuncionario`),
  ADD KEY `professor` (`professor`),
  ADD KEY `coordinfo` (`coordinfo`),
  ADD KEY `cordadm` (`cordadm`),
  ADD KEY `diretor` (`diretor`),
  ADD KEY `cordbiblioteca` (`cordbiblioteca`),
  ADD KEY `coordpedagogico` (`coordpedagogico`),
  ADD KEY `coordensinomedio` (`coordensinomedio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codfuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`coordensinomedio`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`coordensinomedio`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_3` FOREIGN KEY (`coordinfo`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_4` FOREIGN KEY (`coordpedagogico`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_5` FOREIGN KEY (`cordadm`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_6` FOREIGN KEY (`cordbiblioteca`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_7` FOREIGN KEY (`diretor`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_8` FOREIGN KEY (`professor`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
