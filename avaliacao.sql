-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/01/2022 às 17:12
-- Versão do servidor: 8.0.18
-- Versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `avaliacao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`) VALUES
(1, 'matheus'),
(2, 'edimar');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL,
  `placa` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `funcionario_id` bigint(20) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vel_maxima` int(11) NOT NULL,
  `vel_registrada` int(11) NOT NULL,
  `dif_vel` float NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `placa`, `funcionario_id`, `data`, `vel_maxima`, `vel_registrada`, `dif_vel`, `latitude`, `longitude`) VALUES
(19, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(20, 'LSN4149', 2, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(21, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(22, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(23, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(24, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(25, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(26, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(27, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(28, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(29, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(30, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(31, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(32, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(33, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(34, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(35, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(36, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(37, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(38, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(39, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(40, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(41, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(42, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(43, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(44, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(45, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(46, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(47, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(48, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(49, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(50, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(51, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(52, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(53, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(54, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(55, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(56, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546),
(57, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, 50, -26.5695, 64.6566),
(58, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, 25, -72.5695, 23.6546);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
