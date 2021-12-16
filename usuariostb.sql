-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Dez-2021 às 13:30
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `usuariosbd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariostb`
--

CREATE TABLE `usuariostb` (
  `nomecompleto` varchar(1000) NOT NULL,
  `idade` int(3) NOT NULL,
  `descricao` text NOT NULL,
  `foto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuariostb`
--

INSERT INTO `usuariostb` (`nomecompleto`, `idade`, `descricao`, `foto`) VALUES
('Valmir de Oliveira Filho', 15, 'estudante de T.I no senac gestão e negócios.', 'foto1.jpg'),
('Sandro Martins da Costa.', 38, 'professor de T.I no senac gestão e negócios.', 'foto3.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
