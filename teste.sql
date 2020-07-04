-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Jul-2020 às 03:00
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `interesse`
--

CREATE TABLE `interesse` (
  `idInteresse` int(20) NOT NULL,
  `idPosts` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idPosts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `likes`
--

INSERT INTO `likes` (`like_id`, `user_id`, `idPosts`) VALUES
(2, 1, 1),
(3, 1, 2),
(4, 3, 1),
(5, 3, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `idPosts` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `data_post` datetime NOT NULL,
  `mensagem` text NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nomemd5` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`idPosts`, `id_usuario`, `data_post`, `mensagem`, `tipo`, `nomemd5`) VALUES
(36, 30, '2020-04-05 13:12:18', 'Teste de postagem\r\n', '0', NULL),
(37, 26, '2020-04-05 13:12:36', 'Ta funcionando\r\n', '0', NULL),
(38, 26, '2020-04-05 13:13:44', 'Teste de postagem', '0', NULL),
(39, 30, '2020-04-05 13:14:02', 'Deu certo', '0', NULL),
(40, 27, '2020-04-05 13:14:34', 'Oloko\r\n', '0', NULL),
(41, 26, '2020-04-06 09:13:37', '123', '0', NULL),
(42, 26, '2020-04-07 09:03:47', 'fsfsdfsdfs', '0', NULL),
(43, 26, '2020-04-07 09:04:07', 'qweqweqweqw', '0', NULL),
(44, 26, '2020-04-07 09:04:19', 'aa', '0', NULL),
(45, 26, '2020-04-13 19:20:16', '123', '0', NULL),
(46, 26, '2020-04-13 19:20:45', 'thay viado\r\n', '0', NULL),
(47, 26, '2020-04-13 20:13:31', 'teste de postagem', '0', NULL),
(48, 27, '2020-04-13 20:14:32', 'adriano', '0', NULL),
(49, 43, '2020-04-24 11:13:23', 'Postagem \r\n', '0', NULL),
(101, 49, '2020-05-25 18:40:10', 'abacaxi\r\n', '0', NULL),
(102, 49, '2020-05-25 18:40:15', 'tomate\r\n', '0', NULL),
(103, 49, '2020-05-25 18:40:23', 'cereja', '0', NULL),
(105, 50, '2020-05-25 18:41:13', 'espeto\r\n', '0', NULL),
(106, 38, '2020-07-02 19:50:23', 'teste ', 'foto', 'e90a31d95b352abb7a8b4411d305851d.jpg'),
(107, 38, '2020-07-02 19:50:41', '123', 'foto', '9d822a4a5a0c8a0bdc6dfc28aad11eab.jpg'),
(108, 38, '2020-07-02 19:50:41', '123', 'foto', '90b4ed8210860386c1779f307b3d04cc.jpg'),
(109, 38, '2020-07-02 19:50:41', '123', 'foto', '480ab8645c8b6589d56cd5fe2f0f4a30.jpg'),
(110, 38, '2020-07-02 19:50:45', '123', 'foto', 'ea7e24fb08fb1574c00c47cd66c949a8.jpg'),
(111, 38, '2020-07-02 19:51:29', '1234', 'foto', 'fbf280c969b4d184de1f6288fd93e868.jpg'),
(112, 38, '2020-07-02 19:51:30', '1234', 'foto', '3700ae6f967fa926407560196d5c501d.jpg'),
(113, 38, '2020-07-02 19:53:35', 'q2', 'texto', ''),
(119, 54, '2020-07-02 20:00:01', '123', '', ''),
(120, 54, '2020-07-02 20:00:08', '123', 'foto', '5145548a8c640f26ae1954831f9dd58d.jpg'),
(121, 54, '2020-07-02 20:06:00', '123', 'foto', '1449f4c60ede2a16a00ec033c850094a.jpg'),
(122, 54, '2020-07-02 20:06:28', '123', 'foto', '213d7740ddf8d36760227c6ce69d7222.jpg'),
(123, 56, '2020-07-02 20:42:20', 'postagem', 'texto', ''),
(124, 56, '2020-07-02 20:48:45', '1234', 'texto', ''),
(125, 56, '2020-07-02 20:49:01', '1234', 'texto', ''),
(126, 56, '2020-07-02 20:54:11', '1234', 'texto', ''),
(127, 56, '2020-07-02 20:54:28', 'teste', 'foto', 'c3c742fc923d876632590bcab8b626ae.jpg'),
(128, 56, '2020-07-02 20:55:53', 'teste', 'foto', 'bafa89e19662c99367461c98631ac281.jpg'),
(129, 56, '2020-07-02 20:56:52', 'teste', 'foto', '907050e0f648d02cd9802baba509808a.jpg'),
(130, 56, '2020-07-02 20:57:11', 'teste', 'foto', 'dec1ab5da047c0afe383b8b53c410b82.jpg'),
(131, 56, '2020-07-02 20:58:45', 'teste', 'foto', 'c5e49a143410b39b5fca837f6de66a69.jpg'),
(132, 56, '2020-07-02 20:59:05', 'teste', 'foto', 'aa0964a4b3caef8bae833e09e1a1914d.jpg'),
(133, 56, '2020-07-02 20:59:21', 'teste', 'foto', '122ba82848f52433980a5f2b806e03bc.jpg'),
(134, 56, '2020-07-02 21:02:10', '123', 'texto', ''),
(135, 56, '2020-07-02 21:10:02', '123', 'texto', ''),
(136, 59, '2020-07-02 21:11:27', 'teste', 'texto', ''),
(137, 60, '2020-07-03 07:38:16', 'teste', 'texto', ''),
(138, 57, '2020-07-03 08:55:01', '123', 'foto', '993f9a093f824de19620ac4ad057214e.png'),
(139, 57, '2020-07-03 08:55:12', '231', 'foto', 'efd30b39f35c0f743ae0f38278ae84c0.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relacionamentos`
--

CREATE TABLE `relacionamentos` (
  `Id` int(11) NOT NULL,
  `id_seguidor` int(11) NOT NULL,
  `id_seguido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `relacionamentos`
--

INSERT INTO `relacionamentos` (`Id`, `id_seguidor`, `id_seguido`) VALUES
(1, 2, 1),
(41, 10, 5),
(63, 5, 3),
(66, 5, 6),
(67, 8, 1),
(68, 8, 3),
(69, 8, 5),
(70, 5, 4),
(71, 5, 2),
(72, 5, 1),
(73, 15, 5),
(74, 15, 4),
(75, 15, 3),
(76, 15, 2),
(77, 15, 1),
(86, 18, 17),
(87, 18, 16),
(90, 17, 16),
(92, 16, 18),
(93, 16, 17),
(112, 24, 17),
(113, 24, 18),
(114, 24, 19),
(115, 24, 20),
(116, 24, 21),
(152, 17, 25),
(153, 17, 24),
(154, 17, 18),
(155, 17, 19),
(156, 17, 20),
(157, 17, 21),
(158, 17, 22),
(159, 17, 23),
(169, 30, 26),
(170, 30, 27),
(171, 30, 28),
(172, 30, 29),
(180, 27, 28),
(181, 27, 29),
(186, 31, 26),
(187, 31, 27),
(188, 31, 28),
(189, 31, 29),
(190, 31, 30),
(194, 27, 26),
(196, 26, 31),
(199, 26, 28),
(200, 26, 27),
(201, 26, 29),
(202, 26, 30),
(203, 35, 34),
(206, 37, 38),
(207, 37, 39),
(208, 40, 38),
(209, 40, 37),
(210, 40, 39),
(211, 43, 42),
(212, 45, 44),
(213, 44, 45),
(216, 47, 46),
(220, 50, 49),
(223, 51, 49),
(225, 52, 49),
(226, 52, 50),
(227, 52, 51),
(228, 53, 49),
(229, 53, 50),
(230, 53, 51),
(231, 53, 52),
(236, 51, 50),
(237, 51, 52),
(256, 49, 53),
(257, 49, 52),
(258, 49, 51),
(259, 49, 50),
(260, 50, 51),
(261, 50, 52),
(262, 50, 53),
(263, 51, 53),
(271, 59, 51),
(272, 59, 50),
(273, 56, 50),
(274, 56, 51),
(275, 56, 59),
(276, 56, 59),
(277, 56, 59),
(327, 57, 57),
(328, 57, 57),
(333, 57, 57),
(336, 57, 51),
(337, 57, 51),
(338, 57, 51),
(339, 57, 51),
(346, 60, 58),
(350, 57, 58),
(353, 57, 60),
(354, 57, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `celular` varchar(32) DEFAULT NULL,
  `instagram` varchar(100) NOT NULL,
  `cpf` int(15) DEFAULT NULL,
  `Imagem` varchar(50) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `celular`, `instagram`, `cpf`, `Imagem`, `cidade`, `estado`) VALUES
(50, 'Icaro Farias', 'icaro@gmail.com', '202cb962ac59075b964b07152d234b70', '12345678', 'icaro_diniz_', 2147483647, '', 'Orós', 'CE'),
(57, 'icaro213', 'darksk8erbmx@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '1234', 1234, 'Array', '1234', 'RS'),
(58, 'icaro1234', '1234@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '1234', 1234, '9a086cd8105d7b86dbbc4ff90b72d96e.jpg', '1234', 'PI'),
(60, 'ari', '1235@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '1234', 1234, '53fed9c4f1d64d48e89f297c98b37f73.jpg', '1234', 'RN');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `interesse`
--
ALTER TABLE `interesse`
  ADD PRIMARY KEY (`idInteresse`);

--
-- Índices para tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idPosts`);

--
-- Índices para tabela `relacionamentos`
--
ALTER TABLE `relacionamentos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `interesse`
--
ALTER TABLE `interesse`
  MODIFY `idInteresse` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `idPosts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de tabela `relacionamentos`
--
ALTER TABLE `relacionamentos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
