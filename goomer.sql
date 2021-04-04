-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Abr-2021 às 00:38
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `goomer`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `horario_id` int(11) NOT NULL,
  `horario_restaurante` int(11) NOT NULL,
  `horario_inicio` time NOT NULL,
  `horario_fim` time NOT NULL,
  `horario_semana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `horario`
--

INSERT INTO `horario` (`horario_id`, `horario_restaurante`, `horario_inicio`, `horario_fim`, `horario_semana`) VALUES
(1, 1, '08:00:00', '19:00:00', 6),
(2, 1, '10:00:00', '14:00:00', 0),
(3, 1, '08:00:00', '12:00:00', 1),
(4, 1, '08:00:00', '12:00:00', 5),
(5, 1, '14:00:00', '17:30:00', 1),
(6, 1, '08:00:00', '12:00:00', 2),
(7, 1, '14:00:00', '17:30:00', 2),
(8, 1, '08:30:00', '12:00:00', 3),
(9, 1, '13:00:00', '17:30:00', 3),
(10, 1, '08:00:00', '12:00:00', 4),
(11, 1, '14:00:00', '17:30:00', 4),
(12, 1, '14:00:00', '16:30:00', 5),
(13, 2, '08:30:00', '12:00:00', 0),
(14, 2, '08:30:00', '12:00:00', 1),
(15, 2, '08:30:00', '12:00:00', 2),
(16, 2, '08:30:00', '12:00:00', 3),
(17, 2, '08:30:00', '12:00:00', 4),
(18, 2, '08:30:00', '12:00:00', 5),
(19, 2, '08:30:00', '12:00:00', 6),
(20, 3, '08:30:00', '12:00:00', 0),
(21, 3, '08:30:00', '12:00:00', 2),
(22, 3, '08:30:00', '12:00:00', 4),
(23, 3, '08:30:00', '12:00:00', 5),
(24, 3, '08:30:00', '12:00:00', 6),
(25, 4, '09:30:00', '12:00:00', 6),
(26, 4, '09:30:00', '12:00:00', 5),
(27, 4, '09:30:00', '12:00:00', 4),
(28, 4, '09:30:00', '12:00:00', 3),
(29, 4, '09:30:00', '12:00:00', 2),
(30, 4, '09:30:00', '12:00:00', 1),
(37, 6, '09:30:00', '12:00:00', 0),
(38, 6, '09:30:00', '12:00:00', 1),
(39, 6, '09:30:00', '12:00:00', 2),
(40, 6, '09:30:00', '12:00:00', 3),
(41, 6, '09:30:00', '12:00:00', 4),
(42, 6, '09:30:00', '12:00:00', 5),
(43, 7, '09:30:00', '12:00:00', 1),
(44, 7, '09:30:00', '12:00:00', 2),
(45, 7, '09:30:00', '12:00:00', 3),
(46, 7, '09:30:00', '12:00:00', 4),
(47, 7, '09:30:00', '12:00:00', 5),
(48, 7, '09:30:00', '12:00:00', 6),
(49, 2, '14:10:00', '18:30:00', 1),
(50, 2, '14:10:00', '18:30:00', 2),
(51, 2, '14:10:00', '18:30:00', 3),
(52, 2, '14:10:00', '18:30:00', 4),
(53, 2, '14:10:00', '18:30:00', 5),
(60, 6, '14:10:00', '18:30:00', 1),
(61, 6, '14:10:00', '18:30:00', 2),
(62, 6, '14:10:00', '18:30:00', 3),
(63, 6, '14:10:00', '18:30:00', 6),
(64, 6, '14:10:00', '18:30:00', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `produto_id` int(255) NOT NULL,
  `produto_restaurante` int(255) DEFAULT NULL,
  `produto_nome` varchar(255) DEFAULT NULL,
  `produto_descricao` varchar(255) DEFAULT NULL,
  `produto_preco` float DEFAULT NULL,
  `produto_preco_promocao` float DEFAULT NULL,
  `produto_url` varchar(255) DEFAULT NULL,
  `produto_promocao_ativa` tinyint(1) NOT NULL,
  `produto_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`produto_id`, `produto_restaurante`, `produto_nome`, `produto_descricao`, `produto_preco`, `produto_preco_promocao`, `produto_url`, `produto_promocao_ativa`, `produto_tipo`) VALUES
(2, 1, 'Coca Cola', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 8.5, 7.5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1A2RnRquDjeWK9oFXdYngXYx_d4-rU06J8w&usqp=CAU', 1, 2),
(3, 1, 'Arroz e Feijão', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 10, 8.55, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(4, 1, 'Sorvete', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 5, 3.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 3),
(5, 1, 'Batata Frita', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 6, 4, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 4),
(6, 1, 'Lasanha', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 16, 14, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 1),
(7, 1, 'Churrasco', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 16, 14, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 1),
(8, 1, 'Hamburguer', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 16, 14, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 1),
(9, 1, 'Pudim', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 10, 9, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 3),
(10, 2, 'Pudim', 'Pudim com um sabor inesquecível', 10, 9, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 3),
(11, 2, 'Churrasco', 'Churrasco com um sabor inesquecível', 10, 9, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(12, 2, 'Pizza', 'Pizza com um sabor inesquecível', 11, 9, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(13, 2, 'Suco de Uva', 'Suco de Uva com um sabor inesquecível', 7, 5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 2),
(14, 3, 'Suco de Uva', 'Suco de Uva com um sabor inesquecível', 7, 5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 2),
(15, 3, 'Suco de Laranja', 'Suco de Laranja com um sabor inesquecível', 7, 5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 2),
(16, 3, 'Salada de Fruta', 'Salada de Fruta com um sabor inesquecível', 7, 6, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 4),
(17, 3, 'Frango com Batata Doce', 'Frango com Batata Doce com um sabor inesquecível', 9, 8, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 1),
(18, 4, 'Frango com Batata Doce', 'Frango com Batata Doce com um sabor inesquecível', 9, 8, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 1),
(19, 4, 'Arroz e Feijão', 'Arroz e Feijão com um sabor inesquecível', 9, 8, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(20, 4, 'Fanta Uva', 'Com um sabor inesquecível', 8, 7, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 2),
(21, 4, 'Batata Frita', 'Com um sabor inesquecível', 9, 7.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 4),
(22, 4, 'Sorvete', 'Com um sabor inesquecível', 9, 7.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 3),
(26, 6, 'Coca Cola', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 10, 7.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 2),
(27, 6, 'Pizza', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 12, 7.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(28, 6, 'Lasanha', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 12, 7.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 1),
(29, 6, 'Arroz e batata', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 10, 9.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(30, 6, 'Suco de abacaxi', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 10, 9.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 2),
(31, 6, 'Bolo de Chocolate', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 10, 9.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 3),
(32, 6, 'Bacon', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 8, 4.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 4),
(33, 6, 'Ovo de Codorna', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 5, 4.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 4),
(34, 6, 'Azeitonas', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 5, 4.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 4),
(35, 6, 'Peixe Frito', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 5, 4.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(36, 6, 'Camarão', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 15, 14.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 1),
(37, 6, 'Picanha', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 55, 44.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(38, 6, 'Limonada', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 5, 4.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 2),
(39, 6, 'Cocada', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 5, 4.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 3),
(40, 7, 'Cocada', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 5, 4.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 3),
(41, 7, 'Pizza', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 5, 4.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(42, 7, 'Cachorro Quente', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 15, 14.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(43, 7, 'Xis', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 15, 14.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(44, 7, 'Frango Frito', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 14, 12.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(45, 7, 'Gelatina', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 4, 2.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 3),
(46, 7, 'Agua de Coco', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 4, 2.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 2),
(47, 7, 'Batata Frita', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 14, 12.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 0, 4),
(48, 3, 'Picolé', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 4, 3.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 3),
(49, 3, 'Lasanha', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 14, 13.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1),
(50, 3, 'Picanha', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 34, 23.5, 'https://images.pexels.com/photos/6546549/pexels-photo-6546549.jpeg?cs=srgb&dl=pexels-alesia-kozik-6546549.jpg&fm=jpg', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `restaurante`
--

CREATE TABLE `restaurante` (
  `restaurante_id` int(11) NOT NULL,
  `restaurante_nome` varchar(255) NOT NULL,
  `restaurante_endereco` varchar(255) NOT NULL,
  `restaurante_url` varchar(255) NOT NULL,
  `restaurante_descricao` varchar(255) NOT NULL DEFAULT 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.',
  `restaurante_aberto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `restaurante`
--

INSERT INTO `restaurante` (`restaurante_id`, `restaurante_nome`, `restaurante_endereco`, `restaurante_url`, `restaurante_descricao`, `restaurante_aberto`) VALUES
(1, 'Nome do Restaurante', 'It is a long established fact that ', 'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?cs=srgb&dl=pexels-william-choquette-2641886.jpg&fm=jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 0),
(2, 'Restaurante', 'It is a long established fact that ', 'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?cs=srgb&dl=pexels-william-choquette-2641886.jpg&fm=jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 0),
(3, 'Goomer', 'It is a long established fact that ', 'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?cs=srgb&dl=pexels-william-choquette-2641886.jpg&fm=jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 0),
(4, 'Hosted', 'It is a long established fact that ', 'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?cs=srgb&dl=pexels-william-choquette-2641886.jpg&fm=jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 0),
(6, 'Help Food', 'It is a long established fact that ', 'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?cs=srgb&dl=pexels-william-choquette-2641886.jpg&fm=jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 1),
(7, 'Vianapolle', 'It is a long established fact that ', 'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?cs=srgb&dl=pexels-william-choquette-2641886.jpg&fm=jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `semana`
--

CREATE TABLE `semana` (
  `semana_id` int(11) NOT NULL,
  `semana_dia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `semana`
--

INSERT INTO `semana` (`semana_id`, `semana_dia`) VALUES
(0, 'domingo'),
(1, 'segunda'),
(2, 'terça'),
(3, 'quarta'),
(4, 'quinta'),
(5, 'sexta'),
(6, 'sabado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `tipo_id` int(11) NOT NULL,
  `tipo_descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`tipo_id`, `tipo_descricao`) VALUES
(1, 'Almoço'),
(2, 'Bebidas'),
(3, 'Sobremesa'),
(4, 'Acompanhamentos');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`horario_id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`produto_id`);

--
-- Índices para tabela `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`restaurante_id`);

--
-- Índices para tabela `semana`
--
ALTER TABLE `semana`
  ADD PRIMARY KEY (`semana_id`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`tipo_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `horario`
--
ALTER TABLE `horario`
  MODIFY `horario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `produto_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `restaurante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
