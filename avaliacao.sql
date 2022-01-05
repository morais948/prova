-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Jan-2022 às 02:34
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `funcao_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `funcao_id`) VALUES
(1, 'matheus', 1),
(2, 'edimar', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcoes`
--

CREATE TABLE `funcoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcoes`
--

INSERT INTO `funcoes` (`id`, `nome`) VALUES
(1, 'guarda'),
(2, 'perito');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL,
  `placa` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `funcionario_id` bigint(20) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `vel_maxima` int(11) NOT NULL,
  `vel_registrada` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `placa`, `funcionario_id`, `data`, `vel_maxima`, `vel_registrada`, `latitude`, `longitude`) VALUES
(19, 'ABC1020', 1, '2021-11-10 13:42:31', 94, 102, -26.5695, 64.6566),
(20, 'LSN4149', 2, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(21, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(22, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(23, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(24, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 122, -72.5695, 23.6546),
(25, 'ZNT8569', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(26, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(27, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(28, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(29, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(30, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(31, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(32, 'MSN2030', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(33, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(34, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(35, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(36, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(37, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(38, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(39, 'FFF6352', 1, '2022-01-04 13:42:31', 200, 85, -26.5695, 64.6566),
(40, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(41, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(42, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(43, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(44, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(45, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 62, -26.5695, 64.6566),
(46, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 80, -72.5695, 23.6546),
(47, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 60, -26.5695, 64.6566),
(48, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(49, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(50, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(51, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 25, -26.5695, 64.6566),
(52, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(53, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 120, -26.5695, 64.6566),
(54, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(55, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 65, -26.5695, 64.6566),
(56, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 71, -72.5695, 23.6546),
(57, 'LSN4149', 1, '2022-01-04 13:42:31', 200, 250, -26.5695, 64.6566),
(58, 'LSN4149', 2, '2022-01-04 13:42:31', 150, 185, -72.5695, 23.6546),
(59, 'AFG1718', 1, '2022-01-04 00:00:00', 90, 143, -96.5695, 86.6566);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcoes`
--
ALTER TABLE `funcoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `funcoes`
--
ALTER TABLE `funcoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
