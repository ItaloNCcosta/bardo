-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Dez-2022 às 22:06
-- Versão do servidor: 10.5.15-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u130974782_deposito`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `id_status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id`, `id_usuario`, `id_admin`, `status`, `id_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Devolvido', NULL, '2022-10-26 20:01:05', '2022-10-26 22:40:01', NULL),
(2, 1, 1, 'Efetuado', NULL, '2022-10-26 20:53:14', '2022-10-26 22:40:34', NULL),
(3, 1, 1, 'Devolvido', NULL, '2022-10-27 18:52:57', '2022-10-27 19:26:07', NULL),
(4, 1, 1, 'Não devolvido', NULL, '2022-10-27 19:10:28', '2022-10-27 19:26:26', NULL),
(5, 4, NULL, 'Pendente', NULL, '2022-11-03 17:31:41', NULL, NULL),
(6, 4, NULL, 'Pendente', NULL, '2022-11-03 17:38:52', NULL, NULL),
(7, 4, NULL, 'Pendente', NULL, '2022-11-03 17:38:54', NULL, NULL),
(8, 4, NULL, 'Pendente', NULL, '2022-11-03 17:40:29', NULL, NULL),
(9, 4, NULL, 'Pendente', NULL, '2022-11-03 17:40:55', NULL, NULL),
(10, 4, NULL, 'Pendente', NULL, '2022-11-03 17:41:04', NULL, NULL),
(11, 4, NULL, 'Pendente', NULL, '2022-11-03 17:41:09', NULL, NULL),
(12, 1, NULL, 'Pendente', NULL, '2022-11-03 17:42:39', '2022-11-03 18:08:49', NULL),
(13, 1, NULL, 'PENDENTE', NULL, '2022-11-15 03:35:14', NULL, NULL),
(14, 1, 1, 'DEVOLVIDO', NULL, '2022-11-15 23:04:33', '2022-11-15 23:04:55', NULL),
(15, 1, NULL, 'PENDENTE', NULL, '2022-11-16 16:49:28', NULL, NULL),
(16, 5, NULL, 'PENDENTE', NULL, '2022-11-21 10:33:03', NULL, NULL),
(17, 1, 1, 'APROVADO', NULL, '2022-11-21 11:48:07', '2022-11-21 12:06:20', NULL),
(18, 1, 1, 'DEVOLVIDO', NULL, '2022-11-21 11:53:23', '2022-11-21 12:02:02', NULL),
(19, 1, NULL, 'PENDENTE', NULL, '2022-11-24 13:39:51', NULL, NULL),
(20, 1, 1, 'DEVOLVIDO', NULL, '2022-11-27 01:08:09', '2022-11-27 01:12:29', NULL),
(21, 1, 1, 'DEVOLVIDO', NULL, '2022-11-27 14:50:36', '2022-11-27 14:51:28', NULL),
(22, 1, NULL, 'PENDENTE', NULL, '2022-11-28 11:53:33', NULL, NULL),
(23, 1, 1, 'DEVOLVIDO', NULL, '2022-12-01 15:18:02', '2022-12-01 15:33:43', NULL),
(24, 6, 1, 'DEVOLVIDO', NULL, '2022-12-01 15:22:25', '2022-12-01 15:23:31', NULL),
(25, 2, 1, 'DEVOLVIDO', NULL, '2022-12-08 00:39:08', '2022-12-08 00:43:40', NULL),
(26, 1, 1, 'DEVOLVIDO', NULL, '2022-12-08 16:23:37', '2022-12-08 16:24:50', NULL),
(27, 1, 1, 'APROVADO', NULL, '2022-12-08 18:44:09', '2022-12-08 19:18:04', NULL),
(28, 7, NULL, 'PENDENTE', NULL, '2022-12-08 20:06:47', NULL, NULL),
(29, 1, 1, 'APROVADO', NULL, '2022-12-08 21:52:53', '2022-12-08 21:53:23', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque_gms`
--

CREATE TABLE `estoque_gms` (
  `id_item` int(5) UNSIGNED ZEROFILL NOT NULL,
  `descricao` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `quantidade_estoque` int(11) DEFAULT NULL,
  `id_usuario` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_admin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `estoque_gms`
--

INSERT INTO `estoque_gms` (`id_item`, `descricao`, `quantidade_estoque`, `id_usuario`, `created_at`, `updated_at`, `deleted_at`, `id_admin`) VALUES
(00194, 'CAP DE PVC SOLD 032, NBR 5648', 90, NULL, NULL, NULL, NULL, NULL),
(00211, 'CAP DE PVC SOLD 025, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00212, 'CAP DE PVC SOLD 020, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00214, 'CAP DE PVC SOLD 050, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00246, 'ANEL DE BORRACHA TOROIDAL PARA TUBO PVC PBA 0075, NBR 6588', 94, NULL, NULL, NULL, NULL, NULL),
(00250, 'ANEL DE BORRACHA TOROIDAL PARA TUBO PVC DEFOFO 0150, NBR 7672', 100, NULL, NULL, NULL, NULL, NULL),
(00251, 'ANEL DE BORRACHA TOROIDAL PARA TUBO PVC DEFOFO 0200, NBR 7672', 100, NULL, NULL, NULL, NULL, NULL),
(00252, 'ANEL DE BORRACHA TOROIDAL PARA TUBO PVC DEFOFO 0300, NBR 7672', 100, NULL, NULL, NULL, NULL, NULL),
(00256, 'ANEL DE BORRACHA PARA TUBO FIBROCIMENTO 0200', 100, NULL, NULL, NULL, NULL, NULL),
(00257, 'ANEL DE BORRACHA PARA TUBO FIBROCIMENTO 0250', 100, NULL, NULL, NULL, NULL, NULL),
(00258, 'ANEL DE BORRACHA PARA TUBO FIBROCIMENTO 0350', 100, NULL, NULL, NULL, NULL, NULL),
(00259, 'ANEL DE BORRACHA PARA TUBO FIBROCIMENTO 0400', 100, NULL, NULL, NULL, NULL, NULL),
(00326, 'LUVA PVC SOLD 0060, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00348, 'LUVA PVC SOLD 0050, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00489, 'JOELHO PVC 90° BB SOLD 0050, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00707, 'TUBO PVC SOLDAVEL CL15 032 X 6,00, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00708, 'TUBO PVC SOLDAVEL CL15 025 X 6,00, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00709, 'TUBO PVC SOLDAVEL CL15 020 X 6,00, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(00868, 'CAP DE PVC SOLD 060, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(01038, 'LUVA DE CORRER PVC P/ TUBOS PBA DN 75MM/DE 85MM, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(01105, 'JOELHO PVC 45° BB SOLD 0020, NBR 5648', 100, 'Administrator', NULL, NULL, NULL, NULL),
(01106, 'JOELHO PVC 45° BB SOLD 0032, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(01107, 'JOELHO PVC 45° BB SOLD 0025, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(01288, 'CAP FERRO FUND JE2GS/JE 0050, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(01383, 'LUVA PVC SOLD 0085, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(01722, 'ANEL DE BORRACHA TOROIDAL PARA TUBO PVC PBA 0050, NBR 6588', 100, NULL, NULL, NULL, NULL, NULL),
(01728, 'ANEL DE BORRACHA TOROIDAL PARA TUBO PVC PBA 0100, NBR 6588', 100, NULL, NULL, NULL, NULL, NULL),
(02011, 'CAP FERRO FUND JE2GS/JE 0100, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(02030, 'CAP FERRO FUND JE2GS/JE 0150, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(02040, 'TE PVC SOLD 0110, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02041, 'TE PVC SOLD 0075, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02064, 'CAP FERRO FUND JE2GS/JE 0400, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(02065, 'CAP FERRO FUND JE2GS/JE 0600, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(02135, 'LUVA CORRER PVC DEFOFO JE OU JEI 150 PARA TUBOS NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(02262, 'ANEL DE BORRACHA PARA TUBO FIBROCIMENTO 0150', 100, NULL, NULL, NULL, NULL, NULL),
(02490, 'JOELHO PVC 90° BB SOLD 0032, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02494, 'LUVA PVC SOLD 0032, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02495, 'LUVA PVC SOLD 0025, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02496, 'LUVA PVC SOLD 0020, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02507, 'JOELHO PVC 90° BB SOLD 0075, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02508, 'JOELHO PVC 45° BB SOLD 0075, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02511, 'ANEL DE BORRACHA TOROIDAL PARA TUBO PVC DEFOFO 0250, NBR 7672', 100, NULL, NULL, NULL, NULL, NULL),
(02532, 'CAP PVC PBA JE, COM ANEL, DN50/DE60, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(02533, 'CAP PVC PBA JE, COM ANEL, DN100/DE110, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(02549, 'LUVA DE CORRER PVC P/ TUBOS PBA DN 100MM/DE 110MM, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(02881, 'TUBO PVC SOLDAVEL CL15 050 X 6,00, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02882, 'TE PVC SOLD 0032, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02886, 'JOELHO PVC 90° BB SOLD 0060, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(02895, 'ANEL DE BORRACHA PARA TUBO FIBROCIMENTO 0075', 100, NULL, NULL, NULL, NULL, NULL),
(02970, 'LUVA CORRER PVC DEFOFO JE 200 E', 100, NULL, NULL, NULL, NULL, NULL),
(02972, 'LUVA CORRER PVC DEFOFO JE OU JEI 300 PARA TUBOS NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(02987, 'JOELHO PVC 90° BB SOLD 0040, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(03348, 'LUVA PVC SOLD 0110, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(03406, 'CAP PVC PBA JE, COM ANEL, DN75/DE85, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(03922, 'ANEL DE BORRACHA PARA TUBO FIBROCIMENTO 0300', 100, NULL, NULL, NULL, NULL, NULL),
(03972, 'CAP FERRO FUND JE2GS/JE 0200, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(03973, 'CAP FERRO FUND JE2GS/JE 0250, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(04008, 'LUVA CORRER PVC DEFOFO JE OU JEI 250 PARA TUBOS NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(04389, 'LUVA CORRER PVC DEFOFO JE 100 E', 100, NULL, NULL, NULL, NULL, NULL),
(04799, 'JOELHO PVC 90° BB SOLD 0110, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(04862, 'TE PVC SOLD 0060, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(04863, 'TE PVC SOLD 0085, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(04864, 'JOELHO PVC 90° BB SOLD 0085, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(04948, 'TUBO PVC PBA JE/JEI CL20 DN100/DE110 X 6,00, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(05242, 'CAP FERRO FUND JE2GS/JE 0300, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(06546, 'JOELHO PVC 45° BB SOLD 0060, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(06973, 'LUVA CORRER PVC DEFOFO JE OU JEI 400 PARA TUBOS NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(06974, 'ANEL DE BORRACHA TOROIDAL PARA TUBO PVC DEFOFO 0400, NBR 7672', 100, NULL, NULL, NULL, NULL, NULL),
(06976, 'LUVA CORRER PVC DEFOFO JE OU JEI 350 PARA TUBOS NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(07067, 'JOELHO PVC 45° BB SOLD 0040, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(07594, 'CAP FERRO FUND JE2GS/JE 0500, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(07790, 'LUVA PVC SOLD 0040, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(08029, 'TUBO PVC PBA JE/JEI CL20 DN075/DE085 X 6,00, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(08121, 'CAP DE PVC SOLD 085, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(08187, 'CAP DE PVC SOLD 040, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(09906, 'TUBO PVC PBA JE/JEI CL12 DN075/DE085 X 6,00, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(09907, 'TUBO PVC DEFOFO PBJE/JEI 1MPA 150 X 6,00, NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(09921, 'TUBO PVC DEFOFO PBJE/JEI 1MPA 200 X 6,00, NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(09996, 'TUBO PVC PBA JE/JEI CL12 DN100/DE110 X 6,00, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(10075, 'TUBO PVC PBA JE/JEI CL20 DN050/DE060 X 6,00, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(10124, 'TUBO PVC DEFOFO PBJE/JEI 1MPA 400 X 6,00, NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(10231, 'TUBO PVC PBA JE/JEI CL12 DN050/DE060 X 6,00, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(10262, 'CAP DE PVC SOLD 075, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(11924, 'TUBO PVC DEFOFO PBJE/JEI 1MPA 250 X 6,00, NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(11925, 'TUBO PVC DEFOFO PBJE/JEI 1MPA 300 X 6,00, NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(12345, 'LUVA DE 30MM CSASA1234', 100, NULL, '2022-11-10 21:24:15', NULL, NULL, NULL),
(13074, 'CAP DE PVC SOLD 0110, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(13098, 'LUVA DE CORRER PVC P/ TUBOS PBA DN 65MM/DE 75MM, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(13099, 'TUBO PVC DEFOFO PBJE/JEI 1MPA 500 X 6,00, NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(15129, 'TUBO PVC SOLDAVEL CL15 075 X 6,00, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(15332, 'LUVA CORRER PVC DEFOFO JE OU JEI 500 PARA TUBOS NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(15477, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 050', 100, NULL, NULL, NULL, NULL, NULL),
(15478, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 075', 100, NULL, NULL, NULL, NULL, NULL),
(15479, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 100', 100, NULL, NULL, NULL, NULL, NULL),
(15480, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 150', 100, NULL, NULL, NULL, NULL, NULL),
(15481, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 200', 100, NULL, NULL, NULL, NULL, NULL),
(15482, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 250', 100, NULL, NULL, NULL, NULL, NULL),
(15483, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 300', 100, NULL, NULL, NULL, NULL, NULL),
(15484, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 350', 100, NULL, NULL, NULL, NULL, NULL),
(15485, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 400', 100, NULL, NULL, NULL, NULL, NULL),
(15487, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 500', 100, NULL, NULL, NULL, NULL, NULL),
(15489, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 600', 100, NULL, NULL, NULL, NULL, NULL),
(15490, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 650', 100, NULL, NULL, NULL, NULL, NULL),
(15491, 'LUVA FERRO FUND BIPARTIDA PARA BOLSA 700', 100, NULL, NULL, NULL, NULL, NULL),
(15712, 'LUVA CORRER PVC DEFOFO JE OU JEI 200 PARA TUBOS NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(16071, 'LUVA CORRER PVC DEFOFO JE OU JEI 100 PARA TUBOS NBR 7665', 100, NULL, NULL, NULL, NULL, NULL),
(16370, 'LUVA CORRER PVC PBA JE 110 E', 100, NULL, NULL, NULL, NULL, NULL),
(18999, 'TUBO PVC SOLDAVEL CL15 060 X 6,00, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(20501, 'TUBO PVC SOLDAVEL CL15 040 X 6,00, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(21420, 'ANEL DE BORRACHA PARA TUBO FIBROCIMENTO 0050', 100, '1', NULL, '2022-11-16 17:19:50', NULL, NULL),
(21688, 'LUVA CORRER PVC PBA JE 060', 100, NULL, NULL, NULL, NULL, NULL),
(24359, 'TE PVC SOLD 0050, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(24409, 'JOELHO PVC 45° BB SOLD 0110, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(24410, 'JOELHO PVC 45° BB SOLD 0085, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(24475, 'JOELHO PVC 45° BB SOLD 0050, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(25277, 'LUVA PVC SOLD 0075, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(26197, 'LUVA DE CORRER PVC P/ TUBOS PBA DN 50MM/DE 60MM, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(26769, 'LUVA CORRER PVC PBA JE 075', 100, NULL, NULL, NULL, NULL, NULL),
(29065, 'TUBO PVC PBA JE/JEI CL15 DN100/DE110 X 6,00, NBR 5647', 100, NULL, NULL, NULL, NULL, NULL),
(29396, 'JOELHO PVC 90° BB SOLD 0020, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(30126, 'JOELHO PVC 90° BB SOLD 0025, NBR 5648', 100, NULL, NULL, NULL, NULL, NULL),
(30373, 'CAP FERRO FUND JE2GS/JE 0350, COM ANEL, NBR 7675', 100, NULL, NULL, NULL, NULL, NULL),
(30374, 'LUVA DE 30MM CSASA', 100, '1', '2022-10-25 09:59:36', NULL, NULL, NULL),
(54321, 'LUVA DE 30MM CSASA123', 100, '1', '2022-11-10 21:27:11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ferramentas`
--

CREATE TABLE `ferramentas` (
  `id` int(11) NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `ferramentas`
--

INSERT INTO `ferramentas` (`id`, `nome`, `quantidade`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(1, 'chave filips', 21, '2022-10-18 08:50:50', '2022-11-21 10:20:33', NULL, 1),
(2, 'chave de fenda ', 16, '2022-10-18 08:50:59', '2022-11-21 10:20:13', NULL, 1),
(3, 'chave de boca ', 96, '2022-10-18 12:34:52', '2022-11-21 10:20:00', NULL, 1),
(4, 'Martelo', 110, '2022-10-27 19:01:44', NULL, NULL, 0),
(5, 'Parafusadeira', 32, '2022-10-27 19:01:54', NULL, NULL, 0),
(6, 'Maquita', 14, '2022-11-21 10:21:04', NULL, NULL, 1),
(7, 'Gerador 20kva', 30, '2022-11-21 10:21:23', NULL, NULL, 1),
(8, 'Alicate Bomba D\'água', 48, '2022-11-21 10:23:39', NULL, NULL, 1),
(9, 'Alicate', 70, '2022-11-21 11:31:59', '2022-11-21 11:32:12', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_hidrometro`
--

CREATE TABLE `pedido_hidrometro` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pedido_hidrometro`
--

INSERT INTO `pedido_hidrometro` (`id`, `id_usuario`, `created_at`, `updated_at`, `deleted_at`, `id_admin`) VALUES
(1, 1, '2022-11-19 10:22:48', NULL, NULL, NULL),
(2, 1, '2022-11-19 10:23:05', NULL, NULL, 1),
(3, 1, '2022-11-19 10:24:21', NULL, NULL, NULL),
(4, 1, '2022-11-19 10:25:37', NULL, NULL, NULL),
(5, 1, '2022-11-19 10:25:57', NULL, NULL, NULL),
(6, 1, '2022-11-19 10:30:35', NULL, NULL, NULL),
(7, 1, '2022-11-19 10:31:32', NULL, NULL, NULL),
(8, 1, '2022-11-19 10:32:05', NULL, NULL, NULL),
(9, 1, '2022-11-19 10:32:27', NULL, NULL, NULL),
(10, 3, '2022-11-19 11:27:53', NULL, NULL, NULL),
(11, 1, '2022-11-23 21:45:30', '2022-11-24 18:29:10', NULL, NULL),
(12, 1, '2022-11-24 19:27:38', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_material`
--

CREATE TABLE `pedido_material` (
  `id` int(11) NOT NULL,
  `status` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pedido_material`
--

INSERT INTO `pedido_material` (`id`, `status`, `id_usuario`, `created_at`, `updated_at`, `deleted_at`, `id_admin`) VALUES
(1, 'APROVADO', 1, '2022-10-27 19:33:31', '2022-10-27 20:03:50', '2022-11-06 15:05:05', 1),
(2, NULL, 1, '2022-10-27 19:42:58', NULL, '2022-11-06 15:07:11', NULL),
(3, NULL, 1, '2022-10-27 19:43:51', '2022-10-27 19:48:03', NULL, 1),
(4, 'PENDENTE', 1, '2022-10-27 19:52:17', NULL, NULL, NULL),
(5, 'APROVADO', 1, '2022-10-27 20:22:31', '2022-10-27 20:50:10', NULL, 1),
(6, 'APROVADO', 1, '2022-10-27 20:50:51', '2022-10-27 20:59:36', NULL, 1),
(7, 'PENDENTE', 1, '2022-11-03 17:33:26', NULL, NULL, NULL),
(8, 'PENDENTE', 2, '2022-11-06 15:24:13', NULL, NULL, NULL),
(9, 'PENDENTE', 1, '2022-11-07 18:44:51', NULL, NULL, NULL),
(10, 'PENDENTE', 1, '2022-11-07 18:45:00', NULL, NULL, NULL),
(11, 'PENDENTE', 1, '2022-11-07 18:46:18', NULL, NULL, NULL),
(12, 'PENDENTE', 1, '2022-11-07 18:48:24', NULL, NULL, NULL),
(13, 'PENDENTE', 1, '2022-11-07 18:48:39', NULL, NULL, NULL),
(14, 'PENDENTE', 1, '2022-11-10 19:18:19', NULL, NULL, NULL),
(15, 'PENDENTE', 2, '2022-11-13 04:54:19', NULL, NULL, NULL),
(16, 'PENDENTE', 1, '2022-11-15 04:35:38', NULL, NULL, NULL),
(17, 'PENDENTE', 1, '2022-11-15 04:56:01', NULL, NULL, NULL),
(18, 'PENDENTE', 1, '2022-11-15 04:57:26', NULL, NULL, NULL),
(19, 'PENDENTE', 1, '2022-11-15 04:58:49', NULL, NULL, NULL),
(20, 'PENDENTE', 1, '2022-11-15 04:59:20', NULL, NULL, NULL),
(21, 'PENDENTE', 1, '2022-11-15 05:01:28', NULL, NULL, NULL),
(22, 'PENDENTE', 1, '2022-11-15 05:04:40', NULL, NULL, NULL),
(23, 'PENDENTE', 1, '2022-11-15 10:20:03', NULL, NULL, NULL),
(24, 'PENDENTE', 1, '2022-11-15 10:23:42', NULL, NULL, NULL),
(25, 'PENDENTE', 1, '2022-11-15 10:25:33', NULL, NULL, NULL),
(26, 'PENDENTE', 1, '2022-11-15 10:27:03', NULL, NULL, NULL),
(27, 'PENDENTE', 1, '2022-11-15 10:29:40', NULL, NULL, NULL),
(28, 'PENDENTE', 1, '2022-11-15 10:43:26', NULL, NULL, NULL),
(29, 'PENDENTE', 1, '2022-11-15 10:48:35', NULL, NULL, NULL),
(30, 'PENDENTE', 1, '2022-11-15 10:52:50', NULL, NULL, NULL),
(31, 'PENDENTE', 1, '2022-11-15 10:54:03', NULL, NULL, NULL),
(32, 'PENDENTE', 1, '2022-11-15 10:56:13', NULL, NULL, NULL),
(33, 'PENDENTE', 1, '2022-11-15 10:57:15', NULL, NULL, NULL),
(34, 'PENDENTE', 1, '2022-11-15 20:32:16', NULL, NULL, NULL),
(35, 'PENDENTE', 1, '2022-11-15 20:35:49', NULL, NULL, NULL),
(36, 'APROVADO', 1, '2022-11-15 20:54:13', '2022-11-17 20:59:32', NULL, 1),
(37, 'APROVADO', 1, '2022-11-15 21:08:13', '2022-11-17 20:58:08', NULL, 1),
(38, 'APROVADO', 1, '2022-11-15 21:13:22', '2022-11-17 17:15:34', NULL, 1),
(39, 'APROVADO', 1, '2022-11-16 17:21:22', '2022-11-17 16:57:34', NULL, 1),
(40, 'REPROVADO', 1, '2022-11-17 07:03:26', '2022-11-17 15:45:00', NULL, 1),
(41, 'APROVADO', 1, '2022-11-17 07:06:19', '2022-11-17 08:09:59', NULL, 1),
(42, 'APROVADO', 1, '2022-11-17 21:03:13', '2022-11-17 21:04:23', NULL, 1),
(43, 'APROVADO', 1, '2022-11-17 21:05:48', '2022-11-17 21:06:30', NULL, 1),
(44, 'APROVADO', 1, '2022-11-18 10:32:12', '2022-11-18 10:33:38', NULL, 1),
(45, 'PENDENTE', 1, '2022-11-19 08:25:44', NULL, NULL, NULL),
(46, 'PENDENTE', 1, '2022-11-19 10:07:56', NULL, NULL, NULL),
(47, 'PENDENTE', 1, '2022-11-19 10:10:31', NULL, NULL, NULL),
(48, 'PENDENTE', 1, '2022-11-19 12:00:38', NULL, NULL, NULL),
(49, 'PENDENTE', 1, '2022-11-24 15:23:41', NULL, NULL, NULL),
(50, 'PENDENTE', 1, '2022-11-24 15:25:24', NULL, NULL, NULL),
(51, 'PENDENTE', 1, '2022-11-24 15:26:35', NULL, NULL, NULL),
(52, 'PENDENTE', 1, '2022-11-24 15:28:17', NULL, NULL, NULL),
(53, 'APROVADO', 1, '2022-11-27 13:26:20', '2022-11-27 13:26:48', NULL, 1),
(54, 'PENDENTE', 1, '2022-11-27 13:30:04', NULL, NULL, NULL),
(55, 'PENDENTE', 1, '2022-11-27 14:15:41', NULL, NULL, NULL),
(56, 'PENDENTE', 1, '2022-11-27 14:19:19', NULL, NULL, NULL),
(57, 'PENDENTE', 1, '2022-11-27 14:27:12', NULL, NULL, NULL),
(58, 'PENDENTE', 1, '2022-11-27 14:27:56', NULL, NULL, NULL),
(59, 'PENDENTE', 1, '2022-11-27 14:28:41', NULL, NULL, NULL),
(60, 'PENDENTE', 1, '2022-11-27 14:28:49', NULL, NULL, NULL),
(61, 'PENDENTE', 1, '2022-11-27 14:28:56', NULL, NULL, NULL),
(62, 'PENDENTE', 1, '2022-11-27 14:30:06', NULL, NULL, NULL),
(63, 'PENDENTE', 1, '2022-11-27 14:41:49', NULL, NULL, NULL),
(64, 'APROVADO', 1, '2022-11-27 15:16:36', '2022-11-27 15:16:48', NULL, 1),
(65, 'REPROVADO', 1, '2022-11-27 15:17:15', '2022-11-27 15:17:22', NULL, 1),
(66, 'REPROVADO', 1, '2022-11-27 15:18:29', '2022-11-27 15:18:41', NULL, 1),
(67, 'REPROVADO', 1, '2022-11-27 15:36:48', '2022-11-27 15:39:51', NULL, 1),
(68, 'REPROVADO', 1, '2022-11-27 15:41:21', '2022-11-27 15:42:06', NULL, 1),
(69, 'REPROVADO', 1, '2022-11-27 15:49:01', '2022-11-27 15:49:21', NULL, 1),
(70, 'APROVADO', 1, '2022-11-27 15:49:44', '2022-11-27 15:50:20', NULL, 1),
(71, 'PENDENTE', 1, '2022-11-27 16:05:54', NULL, NULL, NULL),
(72, 'PENDENTE', 1, '2022-11-27 16:07:40', NULL, NULL, NULL),
(73, 'PENDENTE', 1, '2022-11-27 16:30:55', NULL, NULL, NULL),
(74, 'PENDENTE', 1, '2022-11-27 16:32:15', NULL, NULL, NULL),
(75, 'PENDENTE', 1, '2022-11-27 16:40:20', NULL, NULL, NULL),
(76, 'APROVADO', 1, '2022-11-27 19:19:16', '2022-11-27 19:23:34', NULL, 1),
(77, 'APROVADO', 1, '2022-11-28 10:19:14', '2022-11-28 10:22:11', NULL, 1),
(78, 'APROVADO', 1, '2022-11-28 18:30:32', '2022-12-01 15:37:28', NULL, 1),
(79, 'PENDENTE', 2, '2022-12-01 20:13:50', NULL, NULL, NULL),
(80, 'PENDENTE', 1, '2022-12-04 16:41:08', NULL, NULL, NULL),
(81, 'APROVADO', 1, '2022-12-08 16:32:43', '2022-12-08 16:34:14', NULL, 1),
(82, 'APROVADO', 1, '2022-12-08 16:35:07', '2022-12-08 16:35:21', NULL, 1),
(83, 'PENDENTE', 7, '2022-12-08 20:07:39', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pivot_emprestimo_ferramentas`
--

CREATE TABLE `pivot_emprestimo_ferramentas` (
  `id` int(11) NOT NULL,
  `id_emprestimo` int(11) NOT NULL,
  `id_ferramenta` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `qtd_emprestada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pivot_emprestimo_ferramentas`
--

INSERT INTO `pivot_emprestimo_ferramentas` (`id`, `id_emprestimo`, `id_ferramenta`, `quantidade`, `qtd_emprestada`) VALUES
(11, 1, 1, 10, 10),
(12, 1, 7, 20, 20),
(13, 1, 2, 2, 2),
(14, 2, 1, 10, 9),
(15, 2, 2, 20, 6),
(16, 3, 2, 10, 10),
(17, 3, 3, 20, 20),
(18, 5, 5, 2, 0),
(19, 6, 2, 1, 0),
(20, 8, 4, 33, 0),
(21, 9, 4, 109, 0),
(22, 10, 4, 1, 0),
(23, 11, 4, 1, 0),
(24, 12, 4, 1, 0),
(25, 13, 3, 2, 0),
(26, 14, 4, 1, 1),
(27, 14, 2, 1, 1),
(28, 15, 2, 1, 0),
(29, 16, 1, 2, 0),
(30, 16, 7, 1, 0),
(31, 16, 8, 2, 0),
(34, 18, 1, 2, 1),
(35, 18, 5, 1, 1),
(36, 17, 1, 1, 1),
(37, 17, 2, 2, 1),
(38, 19, 3, 3, 0),
(39, 19, 2, 3, 0),
(40, 20, 2, 1, 1),
(41, 20, 1, 1, 1),
(42, 20, 4, 2, 2),
(43, 21, 2, 2, 1),
(44, 21, 4, 10, 5),
(45, 22, 2, 1, 0),
(49, 24, 4, 1, 1),
(50, 24, 1, 1, 1),
(51, 24, 6, 1, 1),
(52, 24, 7, 3, 1),
(53, 24, 5, 1, 1),
(54, 23, 2, 10, 9),
(55, 23, 1, 1, 1),
(56, 23, 4, 1, 1),
(57, 25, 1, 1, 1),
(58, 26, 7, 1, 1),
(59, 27, 2, 2, 2),
(60, 27, 1, 2, 2),
(61, 28, 1, 2, 0),
(62, 28, 2, 2, 0),
(63, 29, 1, 4, 2),
(64, 29, 6, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pivot_pedido_hidrometro`
--

CREATE TABLE `pivot_pedido_hidrometro` (
  `id` int(11) DEFAULT NULL,
  `id_pedido_hidrometro` int(11) DEFAULT NULL,
  `hidrometro` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pivot_pedido_hidrometro`
--

INSERT INTO `pivot_pedido_hidrometro` (`id`, `id_pedido_hidrometro`, `hidrometro`) VALUES
(1, 4, '0'),
(2, 5, '0'),
(3, 6, '0'),
(4, 7, NULL),
(5, 8, 'aaaaaaaaaa'),
(6, 9, 'aaaaaaaaaa'),
(7, 9, 'bbbbbbbbbb'),
(8, 10, 'aaaaaaaaaa'),
(9, 11, '1111111111'),
(10, 11, '2222222222'),
(11, 11, '3333333333'),
(12, 12, 'aaaaaaaaaa'),
(13, 12, 'bbbbbbbbbb'),
(14, 12, 'cccccccccc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pivot_pedido_material`
--

CREATE TABLE `pivot_pedido_material` (
  `id` int(11) DEFAULT NULL,
  `id_pedido_material` int(11) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `quantidade_fornecida` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pivot_pedido_material`
--

INSERT INTO `pivot_pedido_material` (`id`, `id_pedido_material`, `id_item`, `quantidade`, `quantidade_fornecida`) VALUES
(2, 1, 194, 2, NULL),
(4, 3, 194, 2, NULL),
(7, NULL, NULL, 1, 1),
(9, NULL, NULL, 10, 10),
(10, NULL, NULL, 10, 10),
(11, 6, 194, 10, 10),
(12, 7, 194, 6, NULL),
(13, 7, 250, 11, NULL),
(14, 7, 1344, 20, NULL),
(15, 8, 194, 2, NULL),
(16, 9, 194, 2, NULL),
(17, 10, 194, 3, NULL),
(18, 11, 194, 9, NULL),
(19, 12, 194, 2, NULL),
(20, 13, 194, 55, NULL),
(21, 14, NULL, 0, NULL),
(22, 14, NULL, 0, NULL),
(23, 14, NULL, 0, NULL),
(24, 15, 194, 2, NULL),
(25, 17, 12345, 220, NULL),
(26, 18, 12345, 2222, NULL),
(27, 18, 194, 2, NULL),
(28, 19, 12345, 100, NULL),
(29, 20, 12345, 10, NULL),
(30, 21, 54321, NULL, NULL),
(31, 22, 194, NULL, NULL),
(32, 23, 1, NULL, NULL),
(33, 24, 1, NULL, NULL),
(34, 25, 1, NULL, NULL),
(35, 26, 1, NULL, NULL),
(36, 27, 1, NULL, NULL),
(37, 28, 1, NULL, NULL),
(38, 29, 1, NULL, NULL),
(39, 30, 1, NULL, NULL),
(40, 31, 1, NULL, NULL),
(41, 32, 1, NULL, NULL),
(42, 33, 1, NULL, NULL),
(43, 34, 1, NULL, NULL),
(44, 35, 1, NULL, NULL),
(53, 41, 1, 2, 2),
(54, 41, 12345, 10, 10),
(55, 40, 1, 2, 0),
(56, 40, 12345, 56, 0),
(57, 39, 21420, 1, 1),
(58, 38, 1, 2, 2),
(59, 38, 12345, 2, 2),
(60, 37, 1, 2, 1),
(61, 37, 12345, 2, 2),
(62, 36, 1, 2, 1),
(63, 42, 1, 2, 1),
(64, 43, 1, 2, 1),
(65, 44, 1, 2, 1),
(66, 45, 1, 1, NULL),
(67, 48, 1, 1, NULL),
(68, 53, 1, 1, 1),
(69, 53, 2, 1, 1),
(70, 54, 1, NULL, NULL),
(71, 54, 2, 1, NULL),
(72, 55, 1, 1, NULL),
(73, 55, 3, 1, NULL),
(74, 56, 1, 1, NULL),
(75, 64, 1, 1, 1),
(76, 65, 1, 1, 1),
(77, 66, 1, 1, 1),
(78, 67, 121, 7, 7),
(79, 67, 1, 1, 1),
(80, 68, 121, 5, 5),
(81, 69, 1, 1, 1),
(82, 69, 121, 5, 5),
(83, 70, 1, 5, 3),
(84, 70, 121, 5, 3),
(85, 73, 1, 1, NULL),
(86, 74, 1, 1, NULL),
(87, 75, 1, 1, NULL),
(88, 76, 1, 2, 1),
(89, 77, 1, 1, 1),
(90, 78, 1, 1, 1),
(91, 79, 1, 2, NULL),
(92, 79, 121, 3, NULL),
(93, 80, 1, 1, NULL),
(94, 81, 1, 2, 2),
(95, 81, 121, 5, 3),
(96, 82, 121, 6, 3),
(97, 83, 194, 10, NULL),
(98, 83, 246, 6, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_access_log`
--

CREATE TABLE `system_access_log` (
  `id` int(11) NOT NULL,
  `sessionid` text DEFAULT NULL,
  `login` text DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `login_year` varchar(4) DEFAULT NULL,
  `login_month` varchar(2) DEFAULT NULL,
  `login_day` varchar(2) DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `impersonated` char(1) DEFAULT NULL,
  `access_ip` varchar(45) DEFAULT NULL,
  `impersonated_by` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_access_log`
--

INSERT INTO `system_access_log` (`id`, `sessionid`, `login`, `login_time`, `login_year`, `login_month`, `login_day`, `logout_time`, `impersonated`, `access_ip`, `impersonated_by`) VALUES
(1, 'eh5n2sl7rch5ti0tcipbfcasvc', 'admin', '2022-09-08 18:24:59', '2022', '09', '08', NULL, 'N', '::1', NULL),
(2, 'pgslv4mmumr8pl0g1ejsko2tc3', 'admin', '2022-09-08 18:26:15', '2022', '09', '08', NULL, 'N', '::1', NULL),
(3, 'q924ek5tkl0d8rd3i031gsvd8j', 'admin', '2022-09-26 20:40:28', '2022', '09', '26', NULL, 'N', '::1', NULL),
(4, 'iofs45dcgdp6guhomvlq27brqq', 'admin', '2022-09-27 20:09:43', '2022', '09', '27', '2022-09-27 20:59:06', 'N', '::1', NULL),
(5, '1ql3qve65108ldhtvuft0q9qen', 'admin', '2022-09-27 20:59:25', '2022', '09', '27', NULL, 'N', '::1', NULL),
(6, '25d0f1193a901fc9f458a2522b8d59ae', 'admin', '2022-09-27 21:56:05', '2022', '09', '27', '2022-09-27 21:56:30', 'N', '187.19.242.156', NULL),
(7, '5b3e0de7b0c374adf753fb17c01f4810', 'admin', '2022-09-27 21:56:34', '2022', '09', '27', NULL, 'N', '187.19.242.156', NULL),
(8, '49ce5a9c656087c608355e3ecdb6feb8', 'admin', '2022-09-27 22:00:57', '2022', '09', '27', NULL, 'N', '187.19.242.156', NULL),
(9, 'ajp5ocjjj1hfr8no4798tvdnco', 'admin', '2022-09-28 19:18:18', '2022', '09', '28', '2022-09-28 19:20:48', 'N', '::1', NULL),
(10, 'fnc1e25vt1opuc0lugvl9afp0n', 'admin', '2022-09-28 19:21:14', '2022', '09', '28', '2022-09-28 19:22:11', 'N', '::1', NULL),
(11, 'rur9dedbtms0beps6nc303g2is', 'admin', '2022-09-28 19:47:13', '2022', '09', '28', NULL, 'N', '::1', NULL),
(12, '7pisd1vc6dfit5f580jhine6ar', 'admin', '2022-10-01 12:20:21', '2022', '10', '01', '2022-10-01 12:57:04', 'N', '::1', NULL),
(13, 'l8c6se0m3d9sf512pn85d1kngm', 'admin', '2022-10-01 12:57:36', '2022', '10', '01', NULL, 'N', '::1', NULL),
(14, 's0cg85c25qppu5pbms1p2d163p', 'admin', '2022-10-01 13:58:55', '2022', '10', '01', '2022-10-01 13:59:24', 'N', '::1', NULL),
(15, 'm7i3p9cq0dfl416d2hovkl9f64', 'admin', '2022-10-03 13:59:41', '2022', '10', '03', NULL, 'N', '::1', NULL),
(16, 'rcq869tfmd0bq5fr1p843smt2g', 'admin', '2022-10-03 14:06:25', '2022', '10', '03', NULL, 'N', '::1', NULL),
(17, 'm8idc36fvd57tbpl4ue78oqqs8', 'admin', '2022-10-03 14:08:43', '2022', '10', '03', NULL, 'N', '::1', NULL),
(18, 'terccvj0nmj8iiqd01if9tfqjj', 'admin', '2022-10-03 14:09:13', '2022', '10', '03', NULL, 'N', '::1', NULL),
(19, '4hob0oi95p8g2kmb2m8e41psk2', 'admin', '2022-10-03 14:19:53', '2022', '10', '03', NULL, 'N', '::1', NULL),
(20, 'uqfv6snjrnuqf241aq7ri4fcj7', 'admin', '2022-10-03 14:54:55', '2022', '10', '03', NULL, 'N', '::1', NULL),
(21, '2s6gm7k6ks6m54bi4k2kcdfvh9', 'admin', '2022-10-03 16:17:16', '2022', '10', '03', NULL, 'N', '::1', NULL),
(22, 'l2krnbdos9i6e9mgsjrq7ihj26', 'admin', '2022-10-03 16:18:49', '2022', '10', '03', '2022-10-03 16:31:07', 'N', '::1', NULL),
(23, 'ch9m0ckbcgflini04nut303ola', 'pedro', '2022-10-03 16:35:26', '2022', '10', '03', '2022-10-03 16:36:55', 'N', '::1', NULL),
(24, 'skt75otdld4btqlmqqo45ude48', 'admin', '2022-10-03 16:37:05', '2022', '10', '03', '2022-10-03 17:57:16', 'N', '::1', NULL),
(25, '0c1f085360bc3442c46cc080b7118b79', 'admin', '2022-10-03 16:47:43', '2022', '10', '03', NULL, 'N', '187.19.242.156', NULL),
(26, 'g64tqlclgm7u6shvs8ofi1bect', 'admin', '2022-10-03 17:57:26', '2022', '10', '03', '2022-10-03 17:59:02', 'N', '::1', NULL),
(27, 'ctcp5q0ih2j85ff8bqfsfdns5p', 'admin', '2022-10-03 17:59:13', '2022', '10', '03', NULL, 'N', '::1', NULL),
(28, '29a756bc5c70c800b4dadb53a89278cd', 'admin', '2022-10-03 18:31:36', '2022', '10', '03', '2022-10-03 18:42:57', 'N', '187.19.242.156', NULL),
(29, 'ab2a693cc5dce1f7c3a5704722bf68e9', 'user', '2022-10-03 18:43:01', '2022', '10', '03', NULL, 'N', '187.19.242.156', NULL),
(30, 'dadbeca1b52dc43b9ca071dcffc9eef7', 'admin', '2022-10-03 22:50:09', '2022', '10', '03', '2022-10-04 21:02:52', 'N', '187.19.163.234', NULL),
(31, '73nd6j3fvgubjbiiriqap8k789', 'admin', '2022-10-04 08:18:09', '2022', '10', '04', NULL, 'N', '::1', NULL),
(32, 'jn0eud1727e1oqrhdrhphlil6r', 'admin', '2022-10-04 21:14:32', '2022', '10', '04', NULL, 'N', '::1', NULL),
(33, '0fe152b21927af59a1e81c2a5c5992ca', 'admin', '2022-10-04 22:44:33', '2022', '10', '04', NULL, 'N', '187.19.163.210', NULL),
(34, 'd0ee47d51bf0c0a906f7ca212de9541a', 'admin', '2022-10-04 22:53:15', '2022', '10', '04', NULL, 'N', '187.19.163.210', NULL),
(35, 'fe03723f0567affa8df67048a3266a88', 'admin', '2022-10-05 09:09:23', '2022', '10', '05', NULL, 'N', '189.89.71.62', NULL),
(36, 'bqqm08bkq5lnpig3mome6omknd', 'admin', '2022-10-05 09:40:19', '2022', '10', '05', '2022-10-05 10:04:56', 'N', '::1', NULL),
(37, 'bm05fgvv5jjl195u04mih1vmu0', 'admin', '2022-10-05 11:45:33', '2022', '10', '05', '2022-10-05 11:52:15', 'N', '::1', NULL),
(38, 'fbpgu1vv7vhpe92cmhgtp83p0c', 'admin', '2022-10-05 11:52:29', '2022', '10', '05', '2022-10-05 13:00:21', 'N', '::1', NULL),
(39, 'm42bln2l7ruolntkkj63f5l9j1', 'admin', '2022-10-05 13:01:05', '2022', '10', '05', '2022-10-05 13:01:34', 'N', '::1', NULL),
(40, 'kltrljgkoalrid08fhqcse601d', 'admin', '2022-10-05 13:01:47', '2022', '10', '05', NULL, 'N', '::1', NULL),
(41, '36b23bf0db3247be318abfa8cfe6472d', 'admin', '2022-10-05 14:16:22', '2022', '10', '05', NULL, 'N', '2804:214:85dc:9c54:a075:d527:bd8e:61ff', NULL),
(42, 'nftnam48pvl02p872sq97vp5dc', 'admin', '2022-10-05 21:19:38', '2022', '10', '05', '2022-10-05 21:19:51', 'N', '::1', NULL),
(43, 'c1hmqv4g40asgt0eiqlcv3g6ku', 'admin', '2022-10-05 21:21:02', '2022', '10', '05', '2022-10-05 23:06:46', 'N', '::1', NULL),
(44, '8b0aadfb9209e6f4ab07f89fcfd0bd21', 'admin', '2022-10-05 21:46:01', '2022', '10', '05', NULL, 'N', '187.19.242.156', NULL),
(45, 'n5lbj3vjddrdab359s70hs17g5', 'admin', '2022-10-05 22:09:41', '2022', '10', '05', NULL, 'N', '::1', NULL),
(46, '9lvne3anemlg0vt153tsq4inju', 'admin', '2022-10-05 23:07:08', '2022', '10', '05', '2022-10-05 23:19:15', 'N', '::1', NULL),
(47, 'nr4qc474d4tcfn3p9udraitlb7', 'admin', '2022-10-05 23:19:33', '2022', '10', '05', '2022-10-05 23:24:07', 'N', '::1', NULL),
(48, '94e5459f79bccd8a9f04527e0612b6d5', 'admin', '2022-10-05 23:53:15', '2022', '10', '05', NULL, 'N', '187.19.163.42', NULL),
(49, 'ctf5ri9ocihq2v3ktcdoa8sv1g', 'admin', '2022-10-06 08:59:28', '2022', '10', '06', '2022-10-06 13:32:56', 'N', '::1', NULL),
(50, 'bcf5gccq40koekoqlnqoat3m90', 'admin', '2022-10-06 13:38:51', '2022', '10', '06', NULL, 'N', '::1', NULL),
(51, 'eslvlh2bqrqj2kbmcvfjkg08po', 'admin', '2022-10-06 19:13:04', '2022', '10', '06', NULL, 'Y', '::1', 'admin'),
(52, 'ver7grjquril8iq9ri498un6go', 'admin', '2022-10-06 21:50:32', '2022', '10', '06', NULL, 'N', '::1', NULL),
(53, 'c80f569a60d391d08867e977d2fe49b3', 'admin', '2022-10-07 20:39:05', '2022', '10', '07', NULL, 'N', '181.223.136.175', NULL),
(54, 'sq1jrm3stg0vdr873k23oleqmu', 'admin', '2022-10-07 21:05:45', '2022', '10', '07', NULL, 'N', '::1', NULL),
(55, 'mgv6dfco5sgliab9vejq04rd9t', 'admin', '2022-10-08 15:48:27', '2022', '10', '08', NULL, 'N', '::1', NULL),
(56, '3np8dgm20k47oki6ns9e1qkcgv', 'admin', '2022-10-10 22:25:42', '2022', '10', '10', NULL, 'N', '::1', NULL),
(57, 'v37pvap82v8m4rg0tapeq6k4h9', 'admin', '2022-10-11 19:31:12', '2022', '10', '11', NULL, 'N', '::1', NULL),
(58, 'sfm5j5aul1adn6k8v6plim775r', 'admin', '2022-10-13 17:47:52', '2022', '10', '13', NULL, 'N', '::1', NULL),
(59, '3tfc4kobtoi1887u24uuk28fuc', 'admin', '2022-10-13 21:42:39', '2022', '10', '13', NULL, 'N', '::1', NULL),
(60, '0ifh582kna9k4k9ecvusb31tp8', 'admin', '2022-10-15 11:34:46', '2022', '10', '15', NULL, 'N', '::1', NULL),
(61, 'kqkaoltq0eupj1ai82f5i5bocl', 'admin', '2022-10-16 21:21:06', '2022', '10', '16', NULL, 'N', '::1', NULL),
(62, '9ov3vgnnlml0ecil2k5qagl214', 'admin', '2022-10-17 01:14:04', '2022', '10', '17', NULL, 'N', '::1', NULL),
(63, '1slhsvviue7gdssvj1no8b8ppn', 'admin', '2022-10-17 23:10:30', '2022', '10', '17', NULL, 'N', '::1', NULL),
(64, 'gjv1hbg09bcsr5oj6rpk64jlrp', 'admin', '2022-10-18 08:50:06', '2022', '10', '18', '2022-10-18 09:14:31', 'N', '::1', NULL),
(65, 'kijbncvcj287fsung0frjss8eh', 'admin', '2022-10-18 09:14:40', '2022', '10', '18', NULL, 'N', '::1', NULL),
(66, 'n62a1n2jdcoiue02arpaug3mu2', 'admin', '2022-10-18 10:27:29', '2022', '10', '18', NULL, 'N', '::1', NULL),
(67, '4hdjq4cgpjpapvi0719er4kcbl', 'admin', '2022-10-18 10:56:04', '2022', '10', '18', NULL, 'N', '172.20.10.3', NULL),
(68, '21710386cd06806ef34af66021f8df6a', 'admin', '2022-10-18 11:05:11', '2022', '10', '18', NULL, 'N', '2804:214:85d9:78ff:e199:8f03:d9a2:a7c9', NULL),
(69, 'mdcljqmi8hqdaodcppej360ru4', 'admin', '2022-10-18 20:49:51', '2022', '10', '18', NULL, 'N', '::1', NULL),
(70, 'ckbbqo896rrm2ju1lnlnoo6i0a', 'admin', '2022-10-18 21:00:43', '2022', '10', '18', NULL, 'N', '::1', NULL),
(71, 'r6j4aj1gkhkkuesqh0s1k7sg4s', 'admin', '2022-10-19 17:03:57', '2022', '10', '19', NULL, 'N', '::1', NULL),
(72, 'eua5dn7oi4q2vqa4k7g1hj098v', 'admin', '2022-10-20 08:24:40', '2022', '10', '20', NULL, 'N', '::1', NULL),
(73, '48c2uvrqk12nqh34elvb1jnahj', 'admin', '2022-10-20 19:38:57', '2022', '10', '20', NULL, 'N', '::1', NULL),
(74, 'vv0o0pd5lgtujh3tr96rdfjr2v', 'admin', '2022-10-20 21:19:09', '2022', '10', '20', NULL, 'N', '::1', NULL),
(75, 'kepqdik07usvfv71t89lfd848b', 'admin', '2022-10-20 22:38:33', '2022', '10', '20', NULL, 'N', '192.168.0.15', NULL),
(76, 'vouc6jc42ltm4llrdjjov9bne7', 'admin', '2022-10-21 08:17:46', '2022', '10', '21', NULL, 'N', '::1', NULL),
(77, 'fhuv686rlum1vu1vku9u4nksfd', 'admin', '2022-10-22 15:14:11', '2022', '10', '22', '2022-10-23 20:22:08', 'N', '::1', NULL),
(78, 'c4609ff90fbb4a8d082516ddc2f4b066', 'admin', '2022-10-23 02:18:13', '2022', '10', '23', NULL, 'N', '187.19.240.108', NULL),
(79, '33nsgfsppoa0biirsbmaqqjprm', 'admin', '2022-10-23 20:22:20', '2022', '10', '23', NULL, 'N', '::1', NULL),
(80, 'ok2k935g8ci93fghq3gvejfnmd', 'admin', '2022-10-24 10:11:11', '2022', '10', '24', '2022-10-24 10:19:25', 'N', '::1', NULL),
(81, '63ksrtakrts4vilhehs6g8quln', 'admin', '2022-10-24 10:19:42', '2022', '10', '24', NULL, 'N', '::1', NULL),
(82, '4lpk824ajssunmbvn4plkidtko', 'admin', '2022-10-24 17:47:58', '2022', '10', '24', '2022-10-24 17:52:01', 'N', '::1', NULL),
(83, 'bbtc9oaictie4le771mlvd9kf5', 'admin', '2022-10-24 17:52:18', '2022', '10', '24', NULL, 'N', '::1', NULL),
(84, 'sm4uhs0aff6hb2tv72nfu7qphs', 'admin', '2022-10-24 19:27:22', '2022', '10', '24', NULL, 'N', '::1', NULL),
(85, 'j7uap5n7rdh9p2aff42c1uhhf9', 'admin', '2022-10-25 09:13:39', '2022', '10', '25', NULL, 'N', '::1', NULL),
(86, 'dr2s6qqut6c9jm6epoi0r0a0ht', 'admin', '2022-10-25 18:34:51', '2022', '10', '25', NULL, 'N', '::1', NULL),
(87, '5k2meplgbo5lmh94un4r4dlp0n', 'admin', '2022-10-25 23:14:12', '2022', '10', '25', NULL, 'N', '::1', NULL),
(88, '431ff0d3htu0udgbplona7m4ue', 'admin', '2022-10-25 23:40:14', '2022', '10', '25', NULL, 'N', '::1', NULL),
(89, 'ojvgb1ikt7rfkddvhvq61soa5h', 'admin', '2022-10-26 09:09:36', '2022', '10', '26', '2022-10-26 10:20:42', 'N', '::1', NULL),
(90, '7pq2bl6dhdmm7s68u4ah2spm5q', 'admin', '2022-10-26 10:20:56', '2022', '10', '26', NULL, 'N', '::1', NULL),
(91, 'vse3kaog811c0nlpm15gf1j7fe', 'admin', '2022-10-26 12:12:30', '2022', '10', '26', NULL, 'N', '::1', NULL),
(92, 'r8ip31v4qs09odfe6h0ros57u1', 'admin', '2022-10-26 18:13:27', '2022', '10', '26', NULL, 'N', '::1', NULL),
(93, 'hbdr7acjkdqh7cqhm923ep3i7v', 'admin', '2022-10-26 19:08:04', '2022', '10', '26', NULL, 'N', '::1', NULL),
(94, '05c29acfc3c91901cca2380a53880da9', 'admin', '2022-10-26 22:13:59', '2022', '10', '26', NULL, 'N', '2804:29b8:50ea:2d7:acc6:989e:3923:93bb', NULL),
(95, 'js0r1fjhlhpr3opd5msdthqv2b', 'admin', '2022-10-26 23:10:06', '2022', '10', '26', NULL, 'N', '::1', NULL),
(96, 'a218170a7b94c9b5704970b8bd9d5088', 'admin', '2022-10-27 19:00:59', '2022', '10', '27', '2022-10-27 19:01:10', 'N', '187.19.240.108', NULL),
(97, '01006c0f38e0d6f8f2fa4f014a48f0cb', 'admin', '2022-10-27 19:02:36', '2022', '10', '27', '2022-10-27 19:02:58', 'N', '187.19.240.108', NULL),
(98, 'b89ecb53cff23330c25dddf6ddb3763d', 'admin', '2022-10-27 19:04:03', '2022', '10', '27', '2022-10-27 19:04:18', 'N', '187.19.240.108', NULL),
(99, 'acfffc9388e98f0601b0b23203ad976b', 'admin', '2022-10-27 19:04:13', '2022', '10', '27', '2022-10-27 19:08:47', 'N', '2804:29b8:50d3:a49f:ccbc:38e6:4a52:17c5', NULL),
(100, '82eecf1781550b5ddc2294a7427a7057', 'admin', '2022-10-27 19:04:22', '2022', '10', '27', NULL, 'N', '187.19.240.108', NULL),
(101, '9298cf79857cac6f3deb33200be8fae9', 'admin', '2022-10-27 19:04:41', '2022', '10', '27', NULL, 'N', '187.19.240.108', NULL),
(102, 'h55n6nietrdiv1cp4letl4fg4a', 'admin', '2022-10-27 19:07:14', '2022', '10', '27', NULL, 'N', '::1', NULL),
(103, '3a4c4eb7af5272a53c5887cd7afd89f8', 'admin', '2022-10-27 19:08:51', '2022', '10', '27', NULL, 'N', '2804:29b8:50d3:a49f:ccbc:38e6:4a52:17c5', NULL),
(104, 's8an06evfkanspagck6k7lnm3j', 'admin', '2022-10-27 19:19:33', '2022', '10', '27', NULL, 'N', '::1', NULL),
(105, 'e7155692b1c42405460028af71b094a7', 'admin', '2022-10-27 19:22:06', '2022', '10', '27', NULL, 'N', '187.19.240.108', NULL),
(106, 'b0ecb3fc34bdc6a93ce98be5e8e71190', 'admin', '2022-10-27 19:48:35', '2022', '10', '27', NULL, 'N', '2804:29b8:50ea:2d7:e5d1:60c0:99b8:4966', NULL),
(107, '5fef6767b4285e5fe0598dd336679b33', 'admin', '2022-10-27 19:53:40', '2022', '10', '27', NULL, 'N', '2804:29b8:50d3:a49f:ccbc:38e6:4a52:17c5', NULL),
(108, '8qhugbtfdf44hp64l3fsugnlf1', 'admin', '2022-10-27 20:45:27', '2022', '10', '27', NULL, 'N', '::1', NULL),
(109, '0a8005933b879c5bf1cd45636f66b0f4', 'admin', '2022-10-28 08:30:24', '2022', '10', '28', '2022-10-28 08:38:00', 'N', '190.15.116.68', NULL),
(110, '15acac4edd33437da16a283f7538bb5f', 'admin', '2022-10-28 08:37:13', '2022', '10', '28', NULL, 'N', '177.51.10.238', NULL),
(111, 'd1atpbpjjkj9ki55cj4cp4mbo8', 'admin', '2022-10-28 09:26:46', '2022', '10', '28', NULL, 'N', '::1', NULL),
(112, 'd2ed3ec2aca4f936f1be924d4ef02698', 'admin', '2022-10-29 06:22:37', '2022', '10', '29', NULL, 'N', '187.19.240.108', NULL),
(113, '5967965b9e60de86d349b34bbfee169a', 'admin', '2022-10-29 11:59:05', '2022', '10', '29', NULL, 'N', '2804:29b8:50d3:a49f:c5dd:62d2:4942:c2e0', NULL),
(114, '935p71cf34uik891jmorouf22h', 'admin', '2022-10-29 14:57:52', '2022', '10', '29', NULL, 'N', '::1', NULL),
(115, '74b801229780cc0683235cacd4267872', 'admin', '2022-11-02 17:13:44', '2022', '11', '02', '2022-11-03 17:23:38', 'N', '2804:29b8:50d3:a49f:e15a:28b:972d:7c83', NULL),
(116, '4905ode5m5olgumlv850n9ucbd', 'admin', '2022-11-02 18:57:46', '2022', '11', '02', NULL, 'N', '::1', NULL),
(117, '0dpe2csqr1kgrkogh1e8uqrjtf', 'admin', '2022-11-03 09:05:20', '2022', '11', '03', NULL, 'N', '::1', NULL),
(118, 'f97a1fa0ff5ffc5297e6bdf746c69b25', 'admin', '2022-11-03 17:23:45', '2022', '11', '03', '2022-11-03 17:26:31', 'N', '2804:29b8:50d3:a49f:16a:baf9:c61a:6bb4', NULL),
(119, '90961enc8es04ff3hgqm0vtqt1', 'admin', '2022-11-03 17:27:11', '2022', '11', '03', NULL, 'N', '::1', NULL),
(120, 'eff4970b14f4dceaa34702c19619e8d0', 'gabriel', '2022-11-03 17:30:19', '2022', '11', '03', NULL, 'N', '2804:29b8:50ee:27:24f4:77f7:e74a:9713', NULL),
(121, 'lrno2v5vupm2t3n2u1mneodre7', 'user', '2022-11-03 17:35:26', '2022', '11', '03', '2022-11-03 17:55:44', 'N', '::1', NULL),
(122, 'fj6ko11nf24c59h9d08qqcek62', 'admin', '2022-11-03 17:55:56', '2022', '11', '03', NULL, 'N', '::1', NULL),
(123, 'b8dbd595d042e7d58394d273f31f8f58', 'admin', '2022-11-03 17:57:37', '2022', '11', '03', NULL, 'N', '2804:29b8:50ea:2d7:81b5:b178:c3f6:5ae2', NULL),
(124, 'a2241fe50a39f1b6d74e54fea288a092', 'admin', '2022-11-03 18:07:00', '2022', '11', '03', NULL, 'N', '2804:29b8:50d3:a49f:7558:49ab:e35d:3f4d', NULL),
(125, '2g4c4e8urviqj7rorhmbk6j9f4', 'admin', '2022-11-03 19:44:47', '2022', '11', '03', NULL, 'N', '::1', NULL),
(126, '9d0a7ea1977b1449bc1bac5c341cfe22', 'admin', '2022-11-04 19:37:41', '2022', '11', '04', NULL, 'N', '177.37.207.16', NULL),
(127, 's8s0tlmt9stk9s8oe1imv35mg7', 'admin', '2022-11-05 15:30:51', '2022', '11', '05', NULL, 'N', '::1', NULL),
(128, 'rspt4fk6lpqkaiv4r84vsuqumk', 'admin', '2022-11-05 17:52:39', '2022', '11', '05', NULL, 'N', '::1', NULL),
(129, 'mf6dg6iqg0kpv60fblhiq0t46v', 'admin', '2022-11-05 18:04:58', '2022', '11', '05', NULL, 'N', '192.168.0.13', NULL),
(130, 'b7ffcff124e37da094416beb10db50b6', 'admin', '2022-11-05 20:04:16', '2022', '11', '05', '2022-11-05 20:04:34', 'N', '2804:29b8:50d3:a49f:1438:d366:4e30:dfd', NULL),
(131, 'd6bbbf935d6e421f10cd47a7a0ea5edd', 'user', '2022-11-05 20:04:38', '2022', '11', '05', '2022-11-05 20:06:36', 'N', '2804:29b8:50d3:a49f:1438:d366:4e30:dfd', NULL),
(132, '90ij4kj1he1ugogp582i3vvvgs', 'admin', '2022-11-06 14:01:25', '2022', '11', '06', '2022-11-06 15:07:38', 'N', '::1', NULL),
(133, '3ebupmok57u2gboaptev24hg09', 'user', '2022-11-06 15:07:46', '2022', '11', '06', '2022-11-06 15:08:32', 'N', '::1', NULL),
(134, 'k57qnuva6v67k2eshljfj8a425', 'admin', '2022-11-06 15:08:40', '2022', '11', '06', '2022-11-06 15:21:08', 'N', '::1', NULL),
(135, '3g42igdrf0fh728unopj1bqa4p', 'user', '2022-11-06 15:21:17', '2022', '11', '06', '2022-11-06 15:25:20', 'N', '::1', NULL),
(136, 'b59mh7qanbe8ai3vnstso4k0hu', 'admin', '2022-11-06 15:25:31', '2022', '11', '06', '2022-11-06 16:03:05', 'N', '::1', NULL),
(137, 'ts250ob6037llth0il4aq5tro2', 'user', '2022-11-06 16:03:15', '2022', '11', '06', '2022-11-06 16:08:04', 'N', '::1', NULL),
(138, 'ta10jvho4i2upffcj4evls3rc3', 'admin', '2022-11-06 16:08:12', '2022', '11', '06', NULL, 'N', '::1', NULL),
(139, 'd0s9bla5k1uipabrhhvb10jjtn', 'admin', '2022-11-07 14:16:40', '2022', '11', '07', NULL, 'N', '::1', NULL),
(140, 's1j9c8cd4ov4eduee6tt08k2lk', 'admin', '2022-11-07 16:03:42', '2022', '11', '07', NULL, 'N', '::1', NULL),
(141, '4bnk4fn8vtfshcita3h4fj0q2c', 'admin', '2022-11-07 19:13:37', '2022', '11', '07', '2022-11-07 19:23:40', 'N', '::1', NULL),
(142, 'r8c28087utof52ic5vrgnta2q5', 'user', '2022-11-07 19:23:55', '2022', '11', '07', '2022-11-07 19:24:57', 'N', '::1', NULL),
(143, 'u98u2g65a8vdr022p8bio48oeh', 'admin', '2022-11-07 19:25:25', '2022', '11', '07', NULL, 'N', '::1', NULL),
(144, 'ou5igtlr844ciiis7a0ceueqn3', 'admin', '2022-11-09 14:20:56', '2022', '11', '09', '2022-11-09 14:21:13', 'N', '::1', NULL),
(145, '3n7u46u7ghel1vtnjogetatj44', 'admin', '2022-11-09 14:23:04', '2022', '11', '09', '2022-11-09 14:30:37', 'N', '::1', NULL),
(146, 'haq2odohog4moegh18l2otr6sb', 'admin', '2022-11-09 15:14:42', '2022', '11', '09', '2022-11-09 15:15:30', 'N', '::1', NULL),
(147, 'rlorc35fp75qtluokooeq8dlki', 'admin', '2022-11-09 15:46:00', '2022', '11', '09', NULL, 'N', '::1', NULL),
(148, 'v2ucgdep5ri56rb7bo0edpp27i', 'admin', '2022-11-09 19:26:39', '2022', '11', '09', NULL, 'N', '::1', NULL),
(149, 'd8e2bb2224307810a5e6a35470a7a0f2', 'admin', '2022-11-09 19:36:05', '2022', '11', '09', NULL, 'N', '177.21.160.120', NULL),
(150, 'grrgadvpinumq26nhtjb9is077', 'admin', '2022-11-09 21:59:14', '2022', '11', '09', NULL, 'N', '::1', NULL),
(151, 'trj3dn0c6h77remip81hig7ai3', 'admin', '2022-11-10 17:05:21', '2022', '11', '10', NULL, 'N', '::1', NULL),
(152, '08a872918d98b79a776b8881a1f51a36', 'admin', '2022-11-11 06:39:11', '2022', '11', '11', NULL, 'N', '187.19.240.108', NULL),
(153, '19b5fjfu7bmmqssrb9scrkh5mu', 'admin', '2022-11-12 23:02:58', '2022', '11', '12', '2022-11-13 04:29:39', 'N', '::1', NULL),
(154, 'f38bg1e226vmmh8lha7tnahi8m', 'pedro', '2022-11-13 04:30:02', '2022', '11', '13', '2022-11-13 04:30:26', 'N', '::1', NULL),
(155, 'ahtqircbllr92h9eb184qipu22', 'admin', '2022-11-13 04:30:34', '2022', '11', '13', '2022-11-13 04:31:11', 'N', '::1', NULL),
(156, 'brpu6v1sfhvhas7dp1q9loer50', 'pedro', '2022-11-13 04:31:20', '2022', '11', '13', '2022-11-13 04:31:51', 'N', '::1', NULL),
(157, '8p901dqq7fu1rc9p0c211mlkpp', 'admin', '2022-11-13 04:32:05', '2022', '11', '13', '2022-11-13 04:35:19', 'N', '::1', NULL),
(158, 'o5m1upgtnnih7sa2i93vor0b3j', 'pedro', '2022-11-13 04:35:28', '2022', '11', '13', '2022-11-13 04:36:48', 'N', '::1', NULL),
(159, 'ri8j3kk2v65ds2eisoae8afv2t', 'admin', '2022-11-13 04:36:56', '2022', '11', '13', '2022-11-13 04:37:43', 'N', '::1', NULL),
(160, 'kgk00d7g48tsgh24toe1d7rurt', 'pedro', '2022-11-13 04:37:58', '2022', '11', '13', '2022-11-13 04:49:08', 'N', '::1', NULL),
(161, '7h6be5ad04osf3140qnitvu0gp', 'admin', '2022-11-13 04:49:22', '2022', '11', '13', '2022-11-13 04:51:01', 'N', '::1', NULL),
(162, 'a79umok5l60djt3t1rquog2hcd', 'user', '2022-11-13 04:51:08', '2022', '11', '13', '2022-11-13 04:52:27', 'N', '::1', NULL),
(163, 'fbke1tk1q0aa6uicr0ap1q0tgm', 'admin', '2022-11-13 04:52:41', '2022', '11', '13', '2022-11-13 04:53:34', 'N', '::1', NULL),
(164, 'jn4kbv22acttl9isiijf4er44i', 'user', '2022-11-13 04:53:41', '2022', '11', '13', '2022-11-13 05:11:45', 'N', '::1', NULL),
(165, 'nkc7jrgk6ogfdf4kjgr3v1f833', 'admin', '2022-11-13 05:12:00', '2022', '11', '13', '2022-11-13 05:13:49', 'N', '::1', NULL),
(166, 'ip4p2q2v7f7e1025ud93cl0lei', 'pedro', '2022-11-13 05:13:54', '2022', '11', '13', '2022-11-13 05:14:03', 'N', '::1', NULL),
(167, 'mn7pr1eop3shu4eb1lmfjbmrr1', 'admin', '2022-11-13 05:14:12', '2022', '11', '13', '2022-11-13 05:18:09', 'N', '::1', NULL),
(168, 'op5ss1pnurf347v9nbeid3idbf', 'user', '2022-11-13 05:18:17', '2022', '11', '13', '2022-11-13 05:19:24', 'N', '::1', NULL),
(169, '15btn8p523ive6dqslkvms3tes', 'admin', '2022-11-13 05:19:32', '2022', '11', '13', '2022-11-13 05:38:23', 'N', '::1', NULL),
(170, '48558cc181aac82b6fe1d312fb21df46', 'admin', '2022-11-13 05:28:04', '2022', '11', '13', '2022-11-13 05:28:59', 'N', '187.19.240.108', NULL),
(171, '3a708fb70a827ebab1021d584bba2a79', 'admin', '2022-11-13 05:29:04', '2022', '11', '13', '2022-11-13 05:29:29', 'N', '187.19.240.108', NULL),
(172, '8662ea138f3955a2a9cd1005d1863842', 'admin', '2022-11-13 05:29:35', '2022', '11', '13', '2022-11-13 05:30:58', 'N', '187.19.240.108', NULL),
(173, '96ef6b96993ae065a0657154551b1fd6', 'admin', '2022-11-13 05:29:51', '2022', '11', '13', NULL, 'N', '187.19.240.108', NULL),
(174, 'e39fc8358bdfbc8c0f091c505e905bc4', 'admin', '2022-11-13 05:31:07', '2022', '11', '13', '2022-11-13 05:36:24', 'N', '187.19.240.108', NULL),
(175, 'df6e36262ea68159e641f179911d7022', 'admin', '2022-11-13 05:36:29', '2022', '11', '13', '2022-11-13 06:01:35', 'N', '187.19.240.108', NULL),
(176, '33taukksq1g6k7aq647llhvn3b', 'pedro', '2022-11-13 05:38:37', '2022', '11', '13', '2022-11-13 05:38:58', 'N', '::1', NULL),
(177, 'c30f84ptkhtc5m5panilg9tg6n', 'user', '2022-11-13 05:39:07', '2022', '11', '13', '2022-11-13 05:39:30', 'N', '::1', NULL),
(178, 'um3b1pis8enehlc9vsp4imbhcm', 'admin', '2022-11-13 05:39:42', '2022', '11', '13', '2022-11-13 05:45:15', 'N', '::1', NULL),
(179, '71p33l2esbis49dh4hl5bvctp7', 'pedro', '2022-11-13 05:45:24', '2022', '11', '13', '2022-11-13 05:45:37', 'N', '::1', NULL),
(180, 'dj8coreueg68lorgheh7huvkch', 'user', '2022-11-13 05:45:46', '2022', '11', '13', '2022-11-13 05:47:24', 'N', '::1', NULL),
(181, '3v3ccn3s3fni503munuhvtllqa', 'admin', '2022-11-13 05:47:42', '2022', '11', '13', '2022-11-13 05:58:36', 'N', '::1', NULL),
(182, 's28k37d8t84mhc2008p0ef1jag', 'pedro', '2022-11-13 05:58:50', '2022', '11', '13', '2022-11-13 06:00:24', 'N', '::1', NULL),
(183, '94847u9gpsoc3d2mdgah9n6hfj', 'admin', '2022-11-13 06:00:34', '2022', '11', '13', '2022-11-13 06:01:00', 'N', '::1', NULL),
(184, 'igd24p54437coqp8t8gvf2o120', 'pedro', '2022-11-13 06:15:54', '2022', '11', '13', '2022-11-13 06:16:08', 'N', '::1', NULL),
(185, 'ap2f3k01deuq20ejgm04q5bohe', 'admin', '2022-11-13 06:16:18', '2022', '11', '13', '2022-11-13 06:18:02', 'N', '::1', NULL),
(186, 'cr2mtq3bv5b98j266p4lrkshnr', 'pedro', '2022-11-13 06:18:08', '2022', '11', '13', '2022-11-13 06:27:40', 'N', '::1', NULL),
(187, '82o9vr4s7ktln3ii1kbqn9ucho', 'admin', '2022-11-13 06:28:04', '2022', '11', '13', '2022-11-13 06:31:17', 'N', '::1', NULL),
(188, '2nabhhrjkirq58jetiut6af3lb', 'admin', '2022-11-13 06:45:36', '2022', '11', '13', NULL, 'N', '192.168.0.10', NULL),
(189, 'hhb802e4140u7dl8sted3npagn', 'admin', '2022-11-13 06:49:36', '2022', '11', '13', NULL, 'N', '::1', NULL),
(190, 'h5duk4nvv89l50b8dm7p70uanc', 'admin', '2022-11-13 06:55:37', '2022', '11', '13', NULL, 'N', '::1', NULL),
(191, '390546ae2503684746727f81a351d003', 'admin', '2022-11-13 09:05:06', '2022', '11', '13', '2022-11-14 09:47:24', 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(192, 'b67170916581bbc2544ce81af89a34ba', 'admin', '2022-11-14 09:47:28', '2022', '11', '14', NULL, 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(193, 'd1f627cd17e01c3b1986e04ef919f4ab', 'admin', '2022-11-14 10:11:49', '2022', '11', '14', NULL, 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(194, 'd2ccd89b6f0d4929faed6d75eae13e74', 'admin', '2022-11-15 00:51:33', '2022', '11', '15', NULL, 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(195, '09idq1d2h9130qo5qpp2mrevjk', 'admin', '2022-11-15 01:01:31', '2022', '11', '15', '2022-11-15 01:15:37', 'N', '::1', NULL),
(196, 'a0950q4r47vshojts2go38n6fj', 'admin', '2022-11-15 01:16:13', '2022', '11', '15', '2022-11-15 01:32:49', 'N', '::1', NULL),
(197, 'rfhvigcqmf8jiu042bijmdajts', 'admin', '2022-11-15 01:33:03', '2022', '11', '15', '2022-11-15 01:38:03', 'N', '::1', NULL),
(198, '0e9utnkptgrdngins768a59i8r', 'admin', '2022-11-15 01:38:14', '2022', '11', '15', '2022-11-15 11:32:48', 'N', '::1', NULL),
(199, 'a201f83b22cc80cf49d8222cf66aa9ff', 'admin', '2022-11-15 08:50:58', '2022', '11', '15', NULL, 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(200, 'f16c45da4a1e358c2d083d3ca53d12b3', 'admin', '2022-11-15 08:56:26', '2022', '11', '15', NULL, 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(201, 'cjovjumeugjjkv9ck8dd7orsp7', 'admin', '2022-11-15 11:33:07', '2022', '11', '15', NULL, 'N', '::1', NULL),
(202, '3e6779571974d0b3fa59f8eb0271d20b', 'admin', '2022-11-15 12:17:49', '2022', '11', '15', '2022-11-15 15:14:46', 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(203, '934fa4583ab62caeda9a90282dcb028c', 'admin', '2022-11-15 15:15:22', '2022', '11', '15', '2022-11-15 23:00:28', 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(204, 'acd1965678c56043bf0de9841de3d6ba', 'admin', '2022-11-15 18:59:18', '2022', '11', '15', NULL, 'N', '2804:29b8:50ea:2d7:d1ce:80ee:dc69:30fc', NULL),
(205, 'hcf3rtb7rad7rs4foj14v6bj1m', 'admin', '2022-11-15 22:47:29', '2022', '11', '15', NULL, 'N', '::1', NULL),
(206, 'abt30teuk9hg15gmqd97rt0msk', 'admin', '2022-11-15 22:53:24', '2022', '11', '15', NULL, 'N', '::1', NULL),
(207, '7947fc5007188d28104de120121729fd', 'admin', '2022-11-15 23:00:32', '2022', '11', '15', NULL, 'N', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', NULL),
(208, 'b84334b2f5ce2a8ceae8beb57615f3ab', 'admin', '2022-11-16 17:10:33', '2022', '11', '16', '2022-11-16 17:41:01', 'N', '2804:29b8:50ee:27:ecf9:dea1:3a00:fee7', NULL),
(209, 'f5de0b9285a748b0eeaccb6184cfc2c8', 'admin', '2022-11-16 19:01:09', '2022', '11', '16', '2022-11-16 19:01:25', 'N', '177.21.160.119', NULL),
(210, '59757d91063ef0a657a4539f8e8ec9c0', 'admin', '2022-11-16 19:27:08', '2022', '11', '16', NULL, 'N', '177.21.160.120', NULL),
(211, 'dcd848bfc39d59725bcaf3118da8096f', 'admin', '2022-11-16 19:32:03', '2022', '11', '16', '2022-11-16 19:34:33', 'N', '177.21.160.120', NULL),
(212, '9ff71549c50d0d71c261f043bb643e1c', 'user', '2022-11-16 19:34:37', '2022', '11', '16', '2022-11-16 19:35:31', 'N', '177.21.160.120', NULL),
(213, 'be5d9b9dbdf1a45860b56f4ac90da18d', 'admin', '2022-11-16 20:05:50', '2022', '11', '16', '2022-11-16 20:10:27', 'N', '177.21.160.120', NULL),
(214, '8a1834e33c45858e1f8835cd06d8bc18', 'admin', '2022-11-16 20:13:29', '2022', '11', '16', '2022-11-17 16:09:57', 'N', '177.21.160.119', NULL),
(215, 'ff97902695d26679956283366b845147', 'admin', '2022-11-16 20:14:11', '2022', '11', '16', NULL, 'N', '177.21.160.120', NULL),
(216, 'b06badf5347d248b82bbd9eedf7b8965', 'admin', '2022-11-16 20:17:17', '2022', '11', '16', NULL, 'N', '177.21.160.119', NULL),
(217, 'jt42cnqehths2d6vo5eejbto2p', 'admin', '2022-11-17 07:01:03', '2022', '11', '17', NULL, 'N', '::1', NULL),
(218, 'o57qsued18mtpcr5i37vtuuur1', 'admin', '2022-11-17 17:33:12', '2022', '11', '17', NULL, 'N', '::1', NULL),
(219, '575825e7696341da36e6e6a05f80d744', 'admin', '2022-11-17 19:23:06', '2022', '11', '17', NULL, 'N', '177.21.160.119', NULL),
(220, 'ru2t2l12ho9265v5r9h8fnmbmv', 'admin', '2022-11-17 20:36:53', '2022', '11', '17', NULL, 'N', '127.0.0.1', NULL),
(221, 'pk2eek0hpnnt95tdia9nr3ah2u', 'admin', '2022-11-18 10:30:01', '2022', '11', '18', '2022-11-18 16:27:59', 'N', '::1', NULL),
(222, '5f2d45b512db0442319264a34d54d287', 'admin', '2022-11-18 16:31:53', '2022', '11', '18', NULL, 'N', '187.19.240.108', NULL),
(223, 'pi05h29c51fcq392f9e2b2l7pq', 'admin', '2022-11-18 16:32:25', '2022', '11', '18', NULL, 'N', '::1', NULL),
(224, 'nhlsbqad1asjid2av3g3eld7nr', 'admin', '2022-11-19 07:56:29', '2022', '11', '19', '2022-11-19 11:27:33', 'N', '::1', NULL),
(225, 'c07519636fa02504753f4f087ed82f36', 'admin', '2022-11-19 10:45:07', '2022', '11', '19', NULL, 'N', '2804:29b8:50d3:a49f:7147:b338:adb8:5651', NULL),
(226, 's0agttk63d4g13v1q56lblh1u5', 'pedro', '2022-11-19 11:27:40', '2022', '11', '19', '2022-11-19 11:34:33', 'N', '::1', NULL),
(227, 'mjn8dv1i5ssctdou13e4taackk', 'admin', '2022-11-19 11:34:55', '2022', '11', '19', '2022-11-19 11:53:22', 'N', '::1', NULL),
(228, 'oiep6enak9vd5ju3ntlorprfr5', 'admin', '2022-11-19 11:53:32', '2022', '11', '19', NULL, 'N', '::1', NULL),
(229, '4d44ac70ece80a13b1f3994e4445a182', 'admin', '2022-11-21 10:14:40', '2022', '11', '21', '2022-11-21 10:14:47', 'N', '187.19.163.138', NULL),
(230, '4b6b88300fd39ff1918af60dffe35aa5', 'User1 ', '2022-11-21 10:16:49', '2022', '11', '21', '2022-11-21 10:17:27', 'N', '187.19.163.138', NULL),
(231, '031212c9e8fca7c4a0d0cb5649e60c60', 'admin', '2022-11-21 10:17:36', '2022', '11', '21', '2022-11-21 10:31:46', 'N', '187.19.163.138', NULL),
(232, '019eef4eb56bc9b7ac5707814900c167', 'User1 ', '2022-11-21 10:31:58', '2022', '11', '21', '2022-11-21 10:32:02', 'N', '187.19.163.138', NULL),
(233, '7294a0a04d76451ff0ecb30220036d8f', 'User1 ', '2022-11-21 10:32:09', '2022', '11', '21', NULL, 'N', '187.19.163.138', NULL),
(234, 'dhfnv9ru4ghk4sa9k8vqr9vl4k', 'admin', '2022-11-22 16:00:06', '2022', '11', '22', '2022-11-22 18:34:49', 'N', '::1', NULL),
(235, 'spouh9is9iuj9e98aneq84mhl3', 'admin', '2022-11-22 18:35:07', '2022', '11', '22', NULL, 'N', '::1', NULL),
(236, '4daaca3816e8fa76857be99b46521c37', 'admin', '2022-11-23 14:51:35', '2022', '11', '23', '2022-11-23 14:51:57', 'N', '189.89.71.62', NULL),
(237, '0387eff8ae2bb63bfca7dab2207b2eec', 'admin', '2022-11-23 14:52:00', '2022', '11', '23', NULL, 'N', '189.89.71.62', NULL),
(238, 'c698e179b24141824cd8bb9119756bbb', 'admin', '2022-11-23 20:36:42', '2022', '11', '23', '2022-11-23 20:38:12', 'N', '177.21.160.119', NULL),
(239, '5b6d3f83f286848c979af6b5900554f9', 'admin', '2022-11-24 00:18:06', '2022', '11', '24', NULL, 'N', '2804:29b8:50d3:a49f:48ee:ef6e:6bb2:34ad', NULL),
(240, 'b279fffeecb275def66074fb27717eb0', 'admin', '2022-11-24 13:39:24', '2022', '11', '24', '2022-11-24 13:39:57', 'N', '189.89.71.62', NULL),
(241, '660e79302675eab4b14465a6651cfb7f', 'admin', '2022-11-24 13:44:38', '2022', '11', '24', '2022-11-24 13:45:17', 'N', '189.89.71.62', NULL),
(242, 'f83bd05da25f2d377d824f0ecd2a2cf0', 'admin', '2022-11-24 15:06:47', '2022', '11', '24', '2022-11-24 17:02:18', 'N', '2804:29b8:50d3:a49f:11e2:1b18:7a99:4075', NULL),
(243, 'eb835c295fa3165f5895bdc5e4a9b15c', 'admin', '2022-11-24 15:09:12', '2022', '11', '24', '2022-11-24 18:58:51', 'N', '187.19.241.228', NULL),
(244, '94e3a7cf74d297f39f15c55aa64c6edf', 'admin', '2022-11-24 18:59:00', '2022', '11', '24', NULL, 'N', '187.19.241.228', NULL),
(245, 'e0d6c306218893808966e45163ef4742', 'admin', '2022-11-24 19:00:21', '2022', '11', '24', NULL, 'N', '187.19.241.228', NULL),
(246, 'matvuaa1o4eqfb1dpruj8r4ffp', 'admin', '2022-11-24 19:25:41', '2022', '11', '24', NULL, 'N', '::1', NULL),
(247, 'fe5cdec222702bb8a0f36eb688a584e8', 'admin', '2022-11-25 11:25:41', '2022', '11', '25', NULL, 'N', '177.51.15.43', NULL),
(248, '767f13663b584a96cf3c6d427b88af78', 'admin', '2022-11-25 11:44:00', '2022', '11', '25', '2022-11-25 11:53:39', 'N', '189.89.71.62', NULL),
(249, 'oleo9a6slkklvgnkn99rm82gdh', 'admin', '2022-11-25 11:47:34', '2022', '11', '25', '2022-11-25 11:51:11', 'N', '::1', NULL),
(250, 'djer596puhht5dfjq604ppsdq9', 'admin', '2022-11-25 11:49:35', '2022', '11', '25', NULL, 'N', '::1', NULL),
(251, '5c556280df19541f52d8dd0e4b36051a', 'admin', '2022-11-25 11:54:18', '2022', '11', '25', '2022-11-25 11:55:03', 'N', '189.89.71.62', NULL),
(252, '553ee0d98ad1941dfae16e967fc411d1', 'admin', '2022-11-27 01:06:35', '2022', '11', '27', NULL, 'N', '2804:29b8:50d3:a49f:815e:14c1:acbc:d9e8', NULL),
(253, '2cf460058fa4632ceae0b6087a333a2c', 'admin', '2022-11-27 14:17:14', '2022', '11', '27', NULL, 'N', '177.51.12.213', NULL),
(254, 'qot04h9j9h9rds4c0q2a5n7ein', 'admin', '2022-11-27 14:22:05', '2022', '11', '27', NULL, 'N', '::1', NULL),
(255, '1582b856face65cbd2db437b6f075044', 'admin', '2022-11-27 14:48:24', '2022', '11', '27', '2022-11-27 15:52:05', 'N', '2804:29b8:50d3:a49f:d0f:66c4:145e:71ea', NULL),
(256, 'lnl53bkmug1jg4dsg37955micg', 'admin', '2022-11-27 15:42:32', '2022', '11', '27', NULL, 'N', '::1', NULL),
(257, 'eacdeb7afdd3c3be93cad7ad9c944e6a', 'admin', '2022-11-27 15:52:10', '2022', '11', '27', NULL, 'N', '2804:29b8:50d3:a49f:d0f:66c4:145e:71ea', NULL),
(258, '384124a382f51b9b402d5832058a1e4e', 'admin', '2022-11-27 16:05:48', '2022', '11', '27', NULL, 'N', '2804:29b8:50d3:a49f:d0f:66c4:145e:71ea', NULL),
(259, '48tau9337farolflars2n1k8gd', 'admin', '2022-11-27 19:02:30', '2022', '11', '27', NULL, 'N', '::1', NULL),
(260, 'gu877e6kf4e53mise4lu974k8l', 'admin', '2022-11-27 19:17:56', '2022', '11', '27', NULL, 'N', '::1', NULL),
(261, 'kikgldsc5iht6f60cv36khu991', 'admin', '2022-11-28 11:49:58', '2022', '11', '28', NULL, 'N', '::1', NULL),
(262, '74e2di80cev8ov5o81i8l7gbjj', 'admin', '2022-11-28 18:15:57', '2022', '11', '28', '2022-11-28 18:20:07', 'N', '::1', NULL),
(263, '0njo7vr3bllq4coaa86p5u563k', 'admin', '2022-11-28 18:25:18', '2022', '11', '28', NULL, 'N', '::1', NULL),
(264, 'cf20ik9brr1088o2obug91mnq7', 'admin', '2022-11-28 18:29:13', '2022', '11', '28', NULL, 'N', '::1', NULL),
(265, '413d193af8ea2664f5369b328992592f', 'admin', '2022-11-29 07:03:21', '2022', '11', '29', NULL, 'N', '2804:29b8:50d3:a49f:e8b4:9a15:313d:ce85', NULL),
(266, 'af1c39480425d8839a6aa79ae00b964b', 'admin', '2022-11-30 23:13:36', '2022', '11', '30', NULL, 'N', '2804:29b8:50ea:2d7:eddd:ce8e:f7ef:bd', NULL),
(267, '2d549102936d7d726d262034880ee506', 'admin', '2022-11-30 23:13:46', '2022', '11', '30', NULL, 'N', '2804:29b8:50d3:a49f:dda:9be3:af98:d55e', NULL),
(268, '71acee5da2e27ef3a8b0f2baa61a1822', 'admin', '2022-12-01 15:16:58', '2022', '12', '01', NULL, 'N', '2804:29b8:50d3:a49f:75ef:1485:60c0:721f', NULL),
(269, '424f9fffff49b152b716f0af2e8a28c2', 'admin', '2022-12-01 15:17:34', '2022', '12', '01', '2022-12-01 15:19:15', 'N', '2804:29b8:50ea:2d7:c5e:7cc7:8c9:8562', NULL),
(270, 'eb4d4a6bb61f27defc044a56a2950b07', 'igor', '2022-12-01 15:19:53', '2022', '12', '01', '2022-12-01 15:22:33', 'N', '2804:29b8:50ea:2d7:c5e:7cc7:8c9:8562', NULL),
(271, '0326ks0irdtmvmcav8rbjkbqsp', 'admin', '2022-12-01 15:22:24', '2022', '12', '01', NULL, 'N', '::1', NULL),
(272, 'bcab04ffc54f4a7bb26ad2fb0887bd2d', 'admin', '2022-12-01 15:22:35', '2022', '12', '01', NULL, 'N', '2804:29b8:50ea:2d7:c5e:7cc7:8c9:8562', NULL),
(273, '21366c65bcd831b24bfeff51c7060285', 'admin', '2022-12-01 17:13:25', '2022', '12', '01', '2022-12-01 17:13:51', 'N', '2804:29b8:50d3:a49f:1501:4fe5:2bb2:7aa8', NULL),
(274, 'u8tr08bis8u8nroc8mltjn3grb', 'admin', '2022-12-01 17:23:52', '2022', '12', '01', '2022-12-01 17:27:07', 'N', '::1', NULL),
(275, 'i8tvmuel3no3g94p7dhdq4avir', 'admin', '2022-12-01 17:42:17', '2022', '12', '01', NULL, 'N', '::1', NULL),
(276, 'dgf17jecnd6u5fk0p7thapun4c', 'admin', '2022-12-01 17:46:18', '2022', '12', '01', '2022-12-01 18:55:11', 'N', '::1', NULL),
(277, '70dcd45e09e2d197db34d7482019343c', 'admin', '2022-12-01 17:46:53', '2022', '12', '01', '2022-12-01 17:50:32', 'N', '2804:29b8:50d3:a49f:1501:4fe5:2bb2:7aa8', NULL),
(278, 'ircfubh675g0lkn8muhaikv6sf', 'admin', '2022-12-01 18:49:39', '2022', '12', '01', NULL, 'N', '::1', NULL),
(279, '01bff4ad54a0548502c57fa9f797a364', 'admin', '2022-12-01 18:50:56', '2022', '12', '01', '2022-12-01 18:52:47', 'N', '187.19.241.228', NULL),
(280, 'f858486dc874c15fe1b9621f2e5e938f', 'user', '2022-12-01 18:55:58', '2022', '12', '01', '2022-12-02 20:00:40', 'N', '187.19.241.228', NULL),
(281, '07edade51769bb0c3c9cce6d2adca3d2', 'admin', '2022-12-01 18:56:31', '2022', '12', '01', '2022-12-02 21:45:09', 'N', '2804:29b8:50d3:a49f:d0ba:32f4:1b92:7222', NULL),
(282, '46a52523d7af956d66df3131e92d97eb', 'admin', '2022-12-01 20:21:25', '2022', '12', '01', NULL, 'N', '2804:29b8:50ee:27:29bc:cb2:531f:4427', NULL),
(283, '71b949a2afc31e449d5d77b16df3d796', 'igor', '2022-12-01 20:39:05', '2022', '12', '01', '2022-12-01 20:39:39', 'N', '2804:29b8:50ea:2d7:d8f6:ce67:7f49:d4e', NULL),
(284, '13f598ea3af092c6ce00c180f5ff8c4b', 'admin', '2022-12-01 20:39:57', '2022', '12', '01', NULL, 'N', '2804:29b8:50ea:2d7:d8f6:ce67:7f49:d4e', NULL),
(285, '00f00badb983d936ea1ee123eef2a7b8', 'admin', '2022-12-02 20:00:55', '2022', '12', '02', '2022-12-03 15:16:47', 'N', '187.19.241.228', NULL),
(286, 'ofll5c9m965st8k689eqcif0a1', 'admin', '2022-12-02 21:10:29', '2022', '12', '02', '2022-12-02 21:21:44', 'N', '::1', NULL),
(287, 'vnllo6pmqbud3pjl8rr87qg1ie', 'admin', '2022-12-02 21:42:12', '2022', '12', '02', NULL, 'N', '::1', NULL),
(288, 'a1e9f139ee1e4ddfa004a504bc06e7a8', 'admin', '2022-12-02 21:45:22', '2022', '12', '02', '2022-12-03 07:04:53', 'N', '187.19.163.181', NULL),
(289, '981a67689b04f3f945349b128eec3448', 'admin', '2022-12-03 07:08:08', '2022', '12', '03', '2022-12-03 07:29:55', 'N', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', NULL),
(290, 'f8e674da169f6bad1f64d8f5257b5c52', 'admin', '2022-12-03 07:39:05', '2022', '12', '03', '2022-12-03 07:44:34', 'N', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', NULL),
(291, '8e021ee7d93e0fda27e2264ef2e5d6d9', 'admin', '2022-12-03 07:44:41', '2022', '12', '03', '2022-12-03 07:44:47', 'N', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', NULL),
(292, '18e4c78ec8010f27c1e9255f9e94fa81', 'italo', '2022-12-03 07:46:02', '2022', '12', '03', '2022-12-03 07:47:03', 'N', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', NULL),
(293, '81b67094e8557dc338b03fbdf48e3b99', 'admin', '2022-12-03 07:47:11', '2022', '12', '03', '2022-12-03 08:10:34', 'N', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', NULL),
(294, 'd89ab06eb7633f2c948a8636f0b8be88', 'italo', '2022-12-03 07:49:10', '2022', '12', '03', '2022-12-03 08:05:39', 'N', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', NULL),
(295, 'd80f42adbbcaa66715267284f38c5ccf', 'italo', '2022-12-03 08:05:49', '2022', '12', '03', NULL, 'N', '187.19.163.181', NULL),
(296, '09bd09e5b7d9b8ac86c7519131380601', 'italo', '2022-12-03 08:07:40', '2022', '12', '03', NULL, 'N', '187.19.163.181', NULL),
(297, 'd3ec1f9987b74f628358f47f87f8097c', 'italo', '2022-12-03 08:10:46', '2022', '12', '03', '2022-12-03 08:20:30', 'N', '187.19.163.181', NULL),
(298, 'vp2vto7g22jb29tsdaspli5c9s', 'admin', '2022-12-03 15:17:06', '2022', '12', '03', NULL, 'N', '::1', NULL),
(299, 'd7ccb1ba50a907aa3dad12b49b1bae9f', 'admin', '2022-12-03 15:19:20', '2022', '12', '03', '2022-12-04 16:46:51', 'N', '2804:29b8:50d3:a49f:e9be:bf86:3986:8ac7', NULL),
(300, '278d6168a7d950a6db35781fcf12c060', 'admin', '2022-12-04 13:54:54', '2022', '12', '04', NULL, 'N', '187.19.243.84', NULL),
(301, 'f75befcdf9a3f3c4423c7804daecebeb', 'admin', '2022-12-04 16:48:40', '2022', '12', '04', '2022-12-04 17:10:49', 'N', '187.19.163.181', NULL),
(302, 'kd5eo6f88ai1v7jncd84c9jlm5', 'admin', '2022-12-04 17:30:08', '2022', '12', '04', NULL, 'N', '::1', NULL),
(303, '7281bfa5e6001f4af00e58c22fd89f3f', 'admin', '2022-12-06 19:28:23', '2022', '12', '06', NULL, 'N', '187.19.163.85', NULL),
(304, 'c78098ca2151b09141405fab7b57c055', 'admin', '2022-12-07 20:01:36', '2022', '12', '07', NULL, 'N', '177.21.160.120', NULL),
(305, '946fb896a9cc2b4c6ecdcda02648d66a', 'user', '2022-12-08 00:37:43', '2022', '12', '08', '2022-12-08 00:42:09', 'N', '187.19.243.84', NULL),
(306, '99cc2568e0a76c5b237cec87326231bf', 'admin', '2022-12-08 00:42:17', '2022', '12', '08', NULL, 'N', '187.19.243.84', NULL),
(307, 'db81965acaa78218e67913d03fbc29f5', 'admin', '2022-12-08 01:08:12', '2022', '12', '08', '2022-12-08 01:15:33', 'N', '187.19.243.84', NULL),
(308, '41bbb150eb09ca93197ecaa69e817446', 'admin', '2022-12-08 10:36:34', '2022', '12', '08', NULL, 'N', '2804:214:85de:70e9:71c2:8a7a:4505:b2a4', NULL),
(309, '463780f3bace18a9ac15cd5c68da9557', 'admin', '2022-12-08 11:53:52', '2022', '12', '08', '2022-12-08 12:21:32', 'N', '2804:29b8:50d3:a49f:b9e9:431:ebae:9fde', NULL),
(310, 'c38ffcec1b445c61ce30f52ff562ffdc', 'admin', '2022-12-08 16:22:18', '2022', '12', '08', '2022-12-08 16:38:27', 'N', '190.15.116.68', NULL),
(311, 'c8f8ff280d8675ab7a9421bb59b50c51', 'user', '2022-12-08 16:38:38', '2022', '12', '08', '2022-12-08 16:41:02', 'N', '190.15.116.68', NULL),
(312, '84656a56c96a4db2d13ccc1f42525039', 'admin', '2022-12-08 18:27:04', '2022', '12', '08', '2022-12-08 19:16:38', 'N', '177.21.160.100', NULL),
(313, 'f1sn751le4kv8v0upqe0qc87kt', 'admin', '2022-12-08 18:46:59', '2022', '12', '08', NULL, 'N', '::1', NULL),
(314, '4e79761d1149ba47702015d0028d8bdf', 'admin', '2022-12-08 19:17:43', '2022', '12', '08', '2022-12-08 19:39:51', 'N', '177.21.160.100', NULL),
(315, 'cd55a14b6280f420858279710cdd9eb3', 'italo', '2022-12-08 20:06:16', '2022', '12', '08', '2022-12-08 20:07:46', 'N', '177.21.160.119', NULL),
(316, '13f21aeccc44fbf6b52be925de8b4dc0', 'user', '2022-12-08 20:08:07', '2022', '12', '08', '2022-12-08 20:08:19', 'N', '177.21.160.119', NULL),
(317, 'd21e29f4052d5ab55cf6b6070b0bd9e4', 'admin', '2022-12-08 20:10:22', '2022', '12', '08', '2022-12-08 20:12:46', 'N', '177.21.160.119', NULL),
(318, '3faa97cae9738c5437a975b6e59d9a0f', 'admin', '2022-12-08 20:56:28', '2022', '12', '08', '2022-12-08 20:56:46', 'N', '177.21.160.119', NULL),
(319, '57d8e9c5c9d0ba911ef6535253c24cef', 'admin', '2022-12-08 21:08:31', '2022', '12', '08', '2022-12-08 21:09:28', 'N', '177.21.160.119', NULL),
(320, '19429773a09ec268943d860163a863b9', 'admin', '2022-12-08 21:52:08', '2022', '12', '08', NULL, 'N', '177.21.160.119', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_access_notification_log`
--

CREATE TABLE `system_access_notification_log` (
  `id` int(11) NOT NULL,
  `login` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `ip_address` text DEFAULT NULL,
  `login_time` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_access_notification_log`
--

INSERT INTO `system_access_notification_log` (`id`, `login`, `email`, `ip_address`, `login_time`) VALUES
(1, 'admin', 'admin@admin.net', '::1', '2022-09-08 15:26:15'),
(2, 'admin', 'admin@admin.net', '::1', '2022-09-26 17:40:28'),
(3, 'admin', 'admin@admin.net', '::1', '2022-09-27 20:09:44'),
(4, 'admin', 'admin@admin.net', '::1', '2022-09-27 20:59:26'),
(5, 'admin', 'admin@admin.net', '187.19.242.156', '2022-09-27 21:56:05'),
(6, 'admin', 'admin@admin.net', '187.19.242.156', '2022-09-27 21:56:34'),
(7, 'admin', 'admin@admin.net', '187.19.242.156', '2022-09-27 22:00:57'),
(8, 'admin', 'admin@admin.net', '::1', '2022-09-28 19:18:20'),
(9, 'admin', 'admin@admin.net', '::1', '2022-09-28 19:21:16'),
(10, 'admin', 'admin@admin.net', '::1', '2022-09-28 19:47:14'),
(11, 'admin', 'admin@admin.net', '::1', '2022-10-01 12:20:22'),
(12, 'admin', 'admin@admin.net', '::1', '2022-10-01 12:57:37'),
(13, 'admin', 'admin@admin.net', '::1', '2022-10-01 13:58:56'),
(14, 'admin', 'admin@admin.net', '::1', '2022-10-03 14:00:03'),
(15, 'admin', 'admin@admin.net', '::1', '2022-10-03 14:06:46'),
(16, 'admin', 'admin@admin.net', '::1', '2022-10-03 14:09:05'),
(17, 'admin', 'admin@admin.net', '::1', '2022-10-03 14:09:35'),
(18, 'admin', 'admin@admin.net', '::1', '2022-10-03 14:20:15'),
(19, 'admin', 'admin@admin.net', '::1', '2022-10-03 14:55:17'),
(20, 'admin', 'admin@admin.net', '::1', '2022-10-03 16:17:38'),
(21, 'admin', 'admin@admin.net', '::1', '2022-10-03 16:18:50'),
(22, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-10-03 16:35:26'),
(23, 'admin', 'admin@admin.net', '::1', '2022-10-03 16:37:06'),
(24, 'admin', 'admin@admin.net', '187.19.242.156', '2022-10-03 16:47:43'),
(25, 'admin', 'admin@admin.net', '::1', '2022-10-03 17:57:27'),
(26, 'admin', 'admin@admin.net', '::1', '2022-10-03 17:59:14'),
(27, 'admin', 'admin@admin.net', '187.19.242.156', '2022-10-03 18:31:36'),
(28, 'user', 'user@user.net', '187.19.242.156', '2022-10-03 18:43:01'),
(29, 'admin', 'admin@admin.net', '187.19.163.234', '2022-10-03 22:50:09'),
(30, 'admin', 'admin@admin.net', '::1', '2022-10-04 08:18:10'),
(31, 'admin', 'admin@admin.net', '::1', '2022-10-04 21:14:33'),
(32, 'admin', 'admin@admin.net', '187.19.163.210', '2022-10-04 22:44:33'),
(33, 'admin', 'admin@admin.net', '187.19.163.210', '2022-10-04 22:53:15'),
(34, 'admin', 'admin@admin.net', '189.89.71.62', '2022-10-05 09:09:23'),
(35, 'admin', 'admin@admin.net', '::1', '2022-10-05 09:40:20'),
(36, 'admin', 'admin@admin.net', '::1', '2022-10-05 11:45:35'),
(37, 'admin', 'admin@admin.net', '::1', '2022-10-05 11:52:31'),
(38, 'admin', 'admin@admin.net', '::1', '2022-10-05 13:01:05'),
(39, 'admin', 'admin@admin.net', '::1', '2022-10-05 13:01:47'),
(40, 'admin', 'admin@admin.net', '2804:214:85dc:9c54:a075:d527:bd8e:61ff', '2022-10-05 14:16:22'),
(41, 'admin', 'admin@admin.net', '::1', '2022-10-05 21:19:39'),
(42, 'admin', 'admin@admin.net', '::1', '2022-10-05 21:21:03'),
(43, 'admin', 'admin@admin.net', '187.19.242.156', '2022-10-05 21:46:01'),
(44, 'admin', 'admin@admin.net', '::1', '2022-10-05 22:09:42'),
(45, 'admin', 'admin@admin.net', '::1', '2022-10-05 23:07:08'),
(46, 'admin', 'admin@admin.net', '::1', '2022-10-05 23:19:34'),
(47, 'admin', 'admin@admin.net', '187.19.163.42', '2022-10-05 23:53:15'),
(48, 'admin', 'admin@admin.net', '::1', '2022-10-06 08:59:29'),
(49, 'admin', 'admin@admin.net', '::1', '2022-10-06 13:38:52'),
(50, 'admin', 'admin@admin.net', '::1', '2022-10-06 21:50:32'),
(51, 'admin', 'admin@admin.net', '181.223.136.175', '2022-10-07 20:39:05'),
(52, 'admin', 'admin@admin.net', '::1', '2022-10-07 21:05:46'),
(53, 'admin', 'admin@admin.net', '::1', '2022-10-08 15:48:28'),
(54, 'admin', 'admin@admin.net', '::1', '2022-10-10 22:25:43'),
(55, 'admin', 'admin@admin.net', '::1', '2022-10-11 19:31:13'),
(56, 'admin', 'admin@admin.net', '::1', '2022-10-13 17:47:53'),
(57, 'admin', 'admin@admin.net', '::1', '2022-10-13 21:42:39'),
(58, 'admin', 'admin@admin.net', '::1', '2022-10-15 11:34:47'),
(59, 'admin', 'admin@admin.net', '::1', '2022-10-16 21:21:06'),
(60, 'admin', 'admin@admin.net', '::1', '2022-10-17 01:14:05'),
(61, 'admin', 'admin@admin.net', '::1', '2022-10-17 23:10:30'),
(62, 'admin', 'admin@admin.net', '::1', '2022-10-18 08:50:06'),
(63, 'admin', 'admin@admin.net', '::1', '2022-10-18 09:14:40'),
(64, 'admin', 'admin@admin.net', '::1', '2022-10-18 10:27:30'),
(65, 'admin', 'admin@admin.net', '172.20.10.3', '2022-10-18 10:56:05'),
(66, 'admin', 'admin@admin.net', '2804:214:85d9:78ff:e199:8f03:d9a2:a7c9', '2022-10-18 11:05:11'),
(67, 'admin', 'admin@admin.net', '::1', '2022-10-18 20:49:51'),
(68, 'admin', 'admin@admin.net', '::1', '2022-10-18 21:00:44'),
(69, 'admin', 'admin@admin.net', '::1', '2022-10-19 17:03:58'),
(70, 'admin', 'admin@admin.net', '::1', '2022-10-20 08:24:41'),
(71, 'admin', 'admin@admin.net', '::1', '2022-10-20 19:38:58'),
(72, 'admin', 'admin@admin.net', '::1', '2022-10-20 21:19:10'),
(73, 'admin', 'admin@admin.net', '192.168.0.15', '2022-10-20 22:38:34'),
(74, 'admin', 'admin@admin.net', '::1', '2022-10-21 08:17:47'),
(75, 'admin', 'admin@admin.net', '::1', '2022-10-22 15:14:12'),
(76, 'admin', 'admin@admin.net', '187.19.240.108', '2022-10-23 02:18:14'),
(77, 'admin', 'admin@admin.net', '::1', '2022-10-23 20:22:21'),
(78, 'admin', 'admin@admin.net', '::1', '2022-10-24 10:11:12'),
(79, 'admin', 'admin@admin.net', '::1', '2022-10-24 10:19:43'),
(80, 'admin', 'admin@admin.net', '::1', '2022-10-24 17:48:00'),
(81, 'admin', 'admin@admin.net', '::1', '2022-10-24 17:52:20'),
(82, 'admin', 'admin@admin.net', '::1', '2022-10-24 19:27:23'),
(83, 'admin', 'admin@admin.net', '::1', '2022-10-25 09:13:40'),
(84, 'admin', 'admin@admin.net', '::1', '2022-10-25 18:34:52'),
(85, 'admin', 'admin@admin.net', '::1', '2022-10-25 23:14:13'),
(86, 'admin', 'admin@admin.net', '::1', '2022-10-25 23:40:14'),
(87, 'admin', 'admin@admin.net', '::1', '2022-10-26 09:09:36'),
(88, 'admin', 'admin@admin.net', '::1', '2022-10-26 10:20:57'),
(89, 'admin', 'admin@admin.net', '::1', '2022-10-26 12:12:30'),
(90, 'admin', 'admin@admin.net', '::1', '2022-10-26 18:13:28'),
(91, 'admin', 'admin@admin.net', '::1', '2022-10-26 19:08:04'),
(92, 'admin', 'admin@admin.net', '2804:29b8:50ea:2d7:acc6:989e:3923:93bb', '2022-10-26 22:13:59'),
(93, 'admin', 'admin@admin.net', '::1', '2022-10-26 23:10:06'),
(94, 'admin', 'admin@admin.net', '187.19.240.108', '2022-10-27 19:00:59'),
(95, 'admin', 'admin@admin.net', '187.19.240.108', '2022-10-27 19:02:36'),
(96, 'admin', 'admin@admin.net', '187.19.240.108', '2022-10-27 19:04:03'),
(97, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:ccbc:38e6:4a52:17c5', '2022-10-27 19:04:13'),
(98, 'admin', 'admin@admin.net', '187.19.240.108', '2022-10-27 19:04:22'),
(99, 'admin', 'admin@admin.net', '187.19.240.108', '2022-10-27 19:04:41'),
(100, 'admin', 'admin@admin.net', '::1', '2022-10-27 19:07:14'),
(101, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:ccbc:38e6:4a52:17c5', '2022-10-27 19:08:51'),
(102, 'admin', 'admin@admin.net', '::1', '2022-10-27 19:19:33'),
(103, 'admin', 'admin@admin.net', '187.19.240.108', '2022-10-27 19:22:06'),
(104, 'admin', 'admin@admin.net', '2804:29b8:50ea:2d7:e5d1:60c0:99b8:4966', '2022-10-27 19:48:35'),
(105, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:ccbc:38e6:4a52:17c5', '2022-10-27 19:53:40'),
(106, 'admin', 'admin@admin.net', '::1', '2022-10-27 20:45:27'),
(107, 'admin', 'admin@admin.net', '190.15.116.68', '2022-10-28 08:30:24'),
(108, 'admin', 'admin@admin.net', '177.51.10.238', '2022-10-28 08:37:13'),
(109, 'admin', 'admin@admin.net', '::1', '2022-10-28 09:26:47'),
(110, 'admin', 'admin@admin.net', '187.19.240.108', '2022-10-29 06:22:37'),
(111, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:c5dd:62d2:4942:c2e0', '2022-10-29 11:59:05'),
(112, 'admin', 'admin@admin.net', '::1', '2022-10-29 14:57:52'),
(113, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:e15a:28b:972d:7c83', '2022-11-02 17:13:44'),
(114, 'admin', 'admin@admin.net', '::1', '2022-11-02 18:57:46'),
(115, 'admin', 'admin@admin.net', '::1', '2022-11-03 09:05:20'),
(116, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:16a:baf9:c61a:6bb4', '2022-11-03 17:23:45'),
(117, 'admin', 'admin@admin.net', '::1', '2022-11-03 17:27:11'),
(118, 'gabriel', 'bielpcosta@hotmail.com', '2804:29b8:50ee:27:24f4:77f7:e74a:9713', '2022-11-03 17:30:19'),
(119, 'user', 'user@user.net', '::1', '2022-11-03 17:35:26'),
(120, 'admin', 'admin@admin.net', '::1', '2022-11-03 17:55:57'),
(121, 'admin', 'admin@admin.net', '2804:29b8:50ea:2d7:81b5:b178:c3f6:5ae2', '2022-11-03 17:57:37'),
(122, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:7558:49ab:e35d:3f4d', '2022-11-03 18:07:00'),
(123, 'admin', 'admin@admin.net', '::1', '2022-11-03 19:44:47'),
(124, 'admin', 'admin@admin.net', '177.37.207.16', '2022-11-04 19:37:41'),
(125, 'admin', 'admin@admin.net', '::1', '2022-11-05 15:30:51'),
(126, 'admin', 'admin@admin.net', '::1', '2022-11-05 17:52:40'),
(127, 'admin', 'admin@admin.net', '192.168.0.13', '2022-11-05 18:04:58'),
(128, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:1438:d366:4e30:dfd', '2022-11-05 20:04:16'),
(129, 'user', 'user@user.net', '2804:29b8:50d3:a49f:1438:d366:4e30:dfd', '2022-11-05 20:04:38'),
(130, 'admin', 'admin@admin.net', '::1', '2022-11-06 14:01:25'),
(131, 'user', 'user@user.net', '::1', '2022-11-06 15:07:46'),
(132, 'admin', 'admin@admin.net', '::1', '2022-11-06 15:08:40'),
(133, 'user', 'user@user.net', '::1', '2022-11-06 15:21:18'),
(134, 'admin', 'admin@admin.net', '::1', '2022-11-06 15:25:31'),
(135, 'user', 'user@user.net', '::1', '2022-11-06 16:03:15'),
(136, 'admin', 'admin@admin.net', '::1', '2022-11-06 16:08:12'),
(137, 'admin', 'admin@admin.net', '::1', '2022-11-07 14:16:40'),
(138, 'admin', 'admin@admin.net', '::1', '2022-11-07 16:03:42'),
(139, 'admin', 'admin@admin.net', '::1', '2022-11-07 19:13:38'),
(140, 'user', 'user@user.net', '::1', '2022-11-07 19:23:55'),
(141, 'admin', 'admin@admin.net', '::1', '2022-11-07 19:25:25'),
(142, 'admin', 'admin@admin.net', '::1', '2022-11-09 14:20:56'),
(143, 'admin', 'admin@admin.net', '::1', '2022-11-09 14:23:04'),
(144, 'admin', 'admin@admin.net', '::1', '2022-11-09 15:14:43'),
(145, 'admin', 'admin@admin.net', '::1', '2022-11-09 15:46:01'),
(146, 'admin', 'admin@admin.net', '::1', '2022-11-09 19:26:39'),
(147, 'admin', 'admin@admin.net', '177.21.160.120', '2022-11-09 19:36:05'),
(148, 'admin', 'admin@admin.net', '::1', '2022-11-09 21:59:14'),
(149, 'admin', 'admin@admin.net', '::1', '2022-11-10 17:05:21'),
(150, 'admin', 'admin@admin.net', '187.19.240.108', '2022-11-11 06:39:11'),
(151, 'admin', 'admin@admin.net', '::1', '2022-11-12 23:02:58'),
(152, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 04:30:03'),
(153, 'admin', 'admin@admin.net', '::1', '2022-11-13 04:30:34'),
(154, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 04:31:20'),
(155, 'admin', 'admin@admin.net', '::1', '2022-11-13 04:32:05'),
(156, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 04:35:28'),
(157, 'admin', 'admin@admin.net', '::1', '2022-11-13 04:36:56'),
(158, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 04:37:58'),
(159, 'admin', 'admin@admin.net', '::1', '2022-11-13 04:49:22'),
(160, 'user', 'user@user.net', '::1', '2022-11-13 04:51:08'),
(161, 'admin', 'admin@admin.net', '::1', '2022-11-13 04:52:42'),
(162, 'user', 'user@user.net', '::1', '2022-11-13 04:53:41'),
(163, 'admin', 'admin@admin.net', '::1', '2022-11-13 05:12:01'),
(164, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 05:13:55'),
(165, 'admin', 'admin@admin.net', '::1', '2022-11-13 05:14:12'),
(166, 'user', 'user@user.net', '::1', '2022-11-13 05:18:18'),
(167, 'admin', 'admin@admin.net', '::1', '2022-11-13 05:19:32'),
(168, 'admin', 'admin@admin.net', '187.19.240.108', '2022-11-13 05:28:04'),
(169, 'admin', 'admin@admin.net', '187.19.240.108', '2022-11-13 05:29:04'),
(170, 'admin', 'admin@admin.net', '187.19.240.108', '2022-11-13 05:29:35'),
(171, 'admin', 'admin@admin.net', '187.19.240.108', '2022-11-13 05:29:51'),
(172, 'admin', 'admin@admin.net', '187.19.240.108', '2022-11-13 05:31:07'),
(173, 'admin', 'admin@admin.net', '187.19.240.108', '2022-11-13 05:36:29'),
(174, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 05:38:38'),
(175, 'user', 'user@user.net', '::1', '2022-11-13 05:39:07'),
(176, 'admin', 'admin@admin.net', '::1', '2022-11-13 05:39:43'),
(177, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 05:45:24'),
(178, 'user', 'user@user.net', '::1', '2022-11-13 05:45:47'),
(179, 'admin', 'admin@admin.net', '::1', '2022-11-13 05:47:43'),
(180, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 05:58:50'),
(181, 'admin', 'admin@admin.net', '::1', '2022-11-13 06:00:34'),
(182, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 06:15:54'),
(183, 'admin', 'admin@admin.net', '::1', '2022-11-13 06:16:18'),
(184, 'pedro', 'pedrofelipe@caern.com.br', '::1', '2022-11-13 06:18:08'),
(185, 'admin', 'admin@admin.net', '::1', '2022-11-13 06:28:04'),
(186, 'admin', 'admin@admin.net', '192.168.0.10', '2022-11-13 06:45:36'),
(187, 'admin', 'admin@admin.net', '::1', '2022-11-13 06:49:36'),
(188, 'admin', 'admin@admin.net', '::1', '2022-11-13 06:55:37'),
(189, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-13 09:05:06'),
(190, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-14 09:47:28'),
(191, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-14 10:11:49'),
(192, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-15 00:51:33'),
(193, 'admin', 'admin@admin.net', '::1', '2022-11-15 01:01:31'),
(194, 'admin', 'admin@admin.net', '::1', '2022-11-15 01:16:13'),
(195, 'admin', 'admin@admin.net', '::1', '2022-11-15 01:33:03'),
(196, 'admin', 'admin@admin.net', '::1', '2022-11-15 01:38:14'),
(197, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-15 08:50:58'),
(198, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-15 08:56:26'),
(199, 'admin', 'admin@admin.net', '::1', '2022-11-15 11:33:08'),
(200, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-15 12:17:49'),
(201, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-15 15:15:22'),
(202, 'admin', 'admin@admin.net', '2804:29b8:50ea:2d7:d1ce:80ee:dc69:30fc', '2022-11-15 18:59:18'),
(203, 'admin', 'admin@admin.net', '::1', '2022-11-15 22:47:29'),
(204, 'admin', 'admin@admin.net', '::1', '2022-11-15 22:53:24'),
(205, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8903:d64e:9a6e:aca4', '2022-11-15 23:00:32'),
(206, 'admin', 'admin@admin.net', '2804:29b8:50ee:27:ecf9:dea1:3a00:fee7', '2022-11-16 17:10:33'),
(207, 'admin', 'admin@admin.net', '177.21.160.119', '2022-11-16 19:01:09'),
(208, 'admin', 'admin@admin.net', '177.21.160.120', '2022-11-16 19:27:08'),
(209, 'admin', 'admin@admin.net', '177.21.160.120', '2022-11-16 19:32:03'),
(210, 'user', 'user@user.net', '177.21.160.120', '2022-11-16 19:34:37'),
(211, 'admin', 'admin@admin.net', '177.21.160.120', '2022-11-16 20:05:50'),
(212, 'admin', 'admin@admin.net', '177.21.160.119', '2022-11-16 20:13:29'),
(213, 'admin', 'admin@admin.net', '177.21.160.120', '2022-11-16 20:14:11'),
(214, 'admin', 'admin@admin.net', '177.21.160.119', '2022-11-16 20:17:17'),
(215, 'admin', 'admin@admin.net', '::1', '2022-11-17 07:01:03'),
(216, 'admin', 'admin@admin.net', '::1', '2022-11-17 17:33:12'),
(217, 'admin', 'admin@admin.net', '177.21.160.119', '2022-11-17 19:23:06'),
(218, 'admin', 'admin@admin.net', '127.0.0.1', '2022-11-17 20:36:53'),
(219, 'admin', 'admin@admin.net', '::1', '2022-11-18 10:30:01'),
(220, 'admin', 'admin@admin.net', '187.19.240.108', '2022-11-18 16:31:53'),
(221, 'admin', 'admin@admin.net', '::1', '2022-11-18 16:32:26'),
(222, 'admin', 'admin@admin.net', '::1', '2022-11-19 07:56:29'),
(223, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:7147:b338:adb8:5651', '2022-11-19 10:45:07'),
(224, 'pedro', 'pfelipemedeiros@hotmail.com', '::1', '2022-11-19 11:27:40'),
(225, 'admin', 'admin@admin.net', '::1', '2022-11-19 11:34:56'),
(226, 'admin', 'admin@admin.net', '::1', '2022-11-19 11:53:33'),
(227, 'admin', 'admin@admin.net', '187.19.163.138', '2022-11-21 10:14:40'),
(228, 'User1 ', 'user1@teste.com', '187.19.163.138', '2022-11-21 10:16:49'),
(229, 'admin', 'admin@admin.net', '187.19.163.138', '2022-11-21 10:17:36'),
(230, 'User1 ', 'user1@teste.com', '187.19.163.138', '2022-11-21 10:31:58'),
(231, 'User1 ', 'user1@teste.com', '187.19.163.138', '2022-11-21 10:32:09'),
(232, 'admin', 'admin@admin.net', '::1', '2022-11-22 16:00:07'),
(233, 'admin', 'admin@admin.net', '::1', '2022-11-22 18:35:07'),
(234, 'admin', 'admin@admin.net', '189.89.71.62', '2022-11-23 14:51:35'),
(235, 'admin', 'admin@admin.net', '189.89.71.62', '2022-11-23 14:52:00'),
(236, 'admin', 'admin@admin.net', '177.21.160.119', '2022-11-23 20:36:42'),
(237, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:48ee:ef6e:6bb2:34ad', '2022-11-24 00:18:06'),
(238, 'admin', 'admin@admin.net', '189.89.71.62', '2022-11-24 13:39:24'),
(239, 'admin', 'admin@admin.net', '189.89.71.62', '2022-11-24 13:44:38'),
(240, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:11e2:1b18:7a99:4075', '2022-11-24 15:06:47'),
(241, 'admin', 'admin@admin.net', '187.19.241.228', '2022-11-24 15:09:12'),
(242, 'admin', 'admin@admin.net', '187.19.241.228', '2022-11-24 18:59:00'),
(243, 'admin', 'admin@admin.net', '187.19.241.228', '2022-11-24 19:00:21'),
(244, 'admin', 'admin@admin.net', '::1', '2022-11-24 19:25:41'),
(245, 'admin', 'admin@admin.net', '177.51.15.43', '2022-11-25 11:25:41'),
(246, 'admin', 'admin@admin.net', '189.89.71.62', '2022-11-25 11:44:01'),
(247, 'admin', 'admin@admin.net', '::1', '2022-11-25 11:47:34'),
(248, 'admin', 'admin@admin.net', '::1', '2022-11-25 11:49:35'),
(249, 'admin', 'admin@admin.net', '189.89.71.62', '2022-11-25 11:54:18'),
(250, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:815e:14c1:acbc:d9e8', '2022-11-27 01:06:35'),
(251, 'admin', 'admin@admin.net', '177.51.12.213', '2022-11-27 14:17:14'),
(252, 'admin', 'admin@admin.net', '::1', '2022-11-27 14:22:05'),
(253, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:d0f:66c4:145e:71ea', '2022-11-27 14:48:24'),
(254, 'admin', 'admin@admin.net', '::1', '2022-11-27 15:42:32'),
(255, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:d0f:66c4:145e:71ea', '2022-11-27 15:52:10'),
(256, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:d0f:66c4:145e:71ea', '2022-11-27 16:05:48'),
(257, 'admin', 'admin@admin.net', '::1', '2022-11-27 19:02:31'),
(258, 'admin', 'admin@admin.net', '::1', '2022-11-27 19:17:56'),
(259, 'admin', 'admin@admin.net', '::1', '2022-11-28 11:49:58'),
(260, 'admin', 'admin@admin.net', '::1', '2022-11-28 18:15:58'),
(261, 'admin', 'admin@admin.net', '::1', '2022-11-28 18:25:18'),
(262, 'admin', 'admin@admin.net', '::1', '2022-11-28 18:29:14'),
(263, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:e8b4:9a15:313d:ce85', '2022-11-29 07:03:21'),
(264, 'admin', 'admin@admin.net', '2804:29b8:50ea:2d7:eddd:ce8e:f7ef:bd', '2022-11-30 23:13:36'),
(265, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:dda:9be3:af98:d55e', '2022-11-30 23:13:46'),
(266, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:75ef:1485:60c0:721f', '2022-12-01 15:16:58'),
(267, 'admin', 'admin@admin.net', '2804:29b8:50ea:2d7:c5e:7cc7:8c9:8562', '2022-12-01 15:17:34'),
(268, 'igor', 'salgado.igor.is@gmail.com', '2804:29b8:50ea:2d7:c5e:7cc7:8c9:8562', '2022-12-01 15:19:53'),
(269, 'admin', 'admin@admin.net', '::1', '2022-12-01 15:22:24'),
(270, 'admin', 'admin@admin.net', '2804:29b8:50ea:2d7:c5e:7cc7:8c9:8562', '2022-12-01 15:22:35'),
(271, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:1501:4fe5:2bb2:7aa8', '2022-12-01 17:13:25'),
(272, 'admin', 'admin@admin.net', '::1', '2022-12-01 17:23:52'),
(273, 'admin', 'admin@admin.net', '::1', '2022-12-01 17:42:18'),
(274, 'admin', 'admin@admin.net', '::1', '2022-12-01 17:46:18'),
(275, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:1501:4fe5:2bb2:7aa8', '2022-12-01 17:46:53'),
(276, 'admin', 'admin@admin.net', '::1', '2022-12-01 18:49:39'),
(277, 'admin', 'admin@admin.net', '187.19.241.228', '2022-12-01 18:50:56'),
(278, 'user', 'user@user.net', '187.19.241.228', '2022-12-01 18:55:58'),
(279, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:d0ba:32f4:1b92:7222', '2022-12-01 18:56:31'),
(280, 'admin', 'admin@admin.net', '2804:29b8:50ee:27:29bc:cb2:531f:4427', '2022-12-01 20:21:25'),
(281, 'igor', 'salgado.igor.is@gmail.com', '2804:29b8:50ea:2d7:d8f6:ce67:7f49:d4e', '2022-12-01 20:39:05'),
(282, 'admin', 'admin@admin.net', '2804:29b8:50ea:2d7:d8f6:ce67:7f49:d4e', '2022-12-01 20:39:57'),
(283, 'admin', 'admin@admin.net', '187.19.241.228', '2022-12-02 20:00:55'),
(284, 'admin', 'admin@admin.net', '::1', '2022-12-02 21:10:29'),
(285, 'admin', 'admin@admin.net', '::1', '2022-12-02 21:42:12'),
(286, 'admin', 'admin@admin.net', '187.19.163.181', '2022-12-02 21:45:22'),
(287, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', '2022-12-03 07:08:08'),
(288, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', '2022-12-03 07:39:05'),
(289, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', '2022-12-03 07:44:41'),
(290, 'italo', 'italon938@gmail.com', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', '2022-12-03 07:46:02'),
(291, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', '2022-12-03 07:47:11'),
(292, 'italo', 'italon938@gmail.com', '2804:29b8:50d3:a49f:8cbd:ce01:f639:17e5', '2022-12-03 07:49:10'),
(293, 'italo', 'italon938@gmail.com', '187.19.163.181', '2022-12-03 08:05:49'),
(294, 'italo', 'italon938@gmail.com', '187.19.163.181', '2022-12-03 08:07:40'),
(295, 'italo', 'italon938@gmail.com', '187.19.163.181', '2022-12-03 08:10:46'),
(296, 'admin', 'admin@admin.net', '::1', '2022-12-03 15:17:07'),
(297, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:e9be:bf86:3986:8ac7', '2022-12-03 15:19:20'),
(298, 'admin', 'admin@admin.net', '187.19.243.84', '2022-12-04 13:54:54'),
(299, 'admin', 'admin@admin.net', '187.19.163.181', '2022-12-04 16:48:40'),
(300, 'admin', 'admin@admin.net', '::1', '2022-12-04 17:30:08'),
(301, 'admin', 'admin@admin.net', '187.19.163.85', '2022-12-06 19:28:23'),
(302, 'admin', 'admin@admin.net', '177.21.160.120', '2022-12-07 20:01:36'),
(303, 'user', 'user@user.net', '187.19.243.84', '2022-12-08 00:37:43'),
(304, 'admin', 'admin@admin.net', '187.19.243.84', '2022-12-08 00:42:17'),
(305, 'admin', 'admin@admin.net', '187.19.243.84', '2022-12-08 01:08:12'),
(306, 'admin', 'admin@admin.net', '2804:214:85de:70e9:71c2:8a7a:4505:b2a4', '2022-12-08 10:36:34'),
(307, 'admin', 'admin@admin.net', '2804:29b8:50d3:a49f:b9e9:431:ebae:9fde', '2022-12-08 11:53:52'),
(308, 'admin', 'admin@admin.net', '190.15.116.68', '2022-12-08 16:22:19'),
(309, 'user', 'user@user.net', '190.15.116.68', '2022-12-08 16:38:38'),
(310, 'admin', 'admin@admin.net', '177.21.160.100', '2022-12-08 18:27:04'),
(311, 'admin', 'admin@admin.net', '::1', '2022-12-08 18:47:00'),
(312, 'admin', 'admin@admin.net', '177.21.160.100', '2022-12-08 19:17:43'),
(313, 'italo', 'italon938@gmail.com', '177.21.160.119', '2022-12-08 20:06:16'),
(314, 'user', 'user@user.net', '177.21.160.119', '2022-12-08 20:08:07'),
(315, 'admin', 'admin@admin.net', '177.21.160.119', '2022-12-08 20:10:22'),
(316, 'admin', 'admin@admin.net', '177.21.160.119', '2022-12-08 20:56:28'),
(317, 'admin', 'admin@admin.net', '177.21.160.119', '2022-12-08 21:08:31'),
(318, 'admin', 'admin@admin.net', '177.21.160.119', '2022-12-08 21:52:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_change_log`
--

CREATE TABLE `system_change_log` (
  `id` int(11) NOT NULL,
  `logdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `login` text DEFAULT NULL,
  `tablename` text DEFAULT NULL,
  `primarykey` text DEFAULT NULL,
  `pkvalue` text DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `columnname` text DEFAULT NULL,
  `oldvalue` text DEFAULT NULL,
  `newvalue` text DEFAULT NULL,
  `access_ip` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `log_trace` text DEFAULT NULL,
  `session_id` text DEFAULT NULL,
  `class_name` text DEFAULT NULL,
  `php_sapi` text DEFAULT NULL,
  `log_year` varchar(4) DEFAULT NULL,
  `log_month` varchar(2) DEFAULT NULL,
  `log_day` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_document`
--

CREATE TABLE `system_document` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `archive_date` date DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_document_category`
--

CREATE TABLE `system_document_category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_document_category`
--

INSERT INTO `system_document_category` (`id`, `name`) VALUES
(1, 'DocumentaÃƒÂ§ÃƒÂ£o');

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_document_group`
--

CREATE TABLE `system_document_group` (
  `id` int(11) NOT NULL,
  `document_id` int(11) DEFAULT NULL,
  `system_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_document_user`
--

CREATE TABLE `system_document_user` (
  `id` int(11) NOT NULL,
  `document_id` int(11) DEFAULT NULL,
  `system_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_group`
--

CREATE TABLE `system_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_group`
--

INSERT INTO `system_group` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Usuário Comum'),
(3, 'Gerente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_group_program`
--

CREATE TABLE `system_group_program` (
  `id` int(11) NOT NULL,
  `system_group_id` int(11) DEFAULT NULL,
  `system_program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_group_program`
--

INSERT INTO `system_group_program` (`id`, `system_group_id`, `system_program_id`) VALUES
(260, 1, 1),
(261, 1, 2),
(262, 1, 3),
(263, 1, 4),
(264, 1, 5),
(265, 1, 6),
(266, 1, 7),
(267, 1, 8),
(268, 1, 9),
(269, 1, 10),
(270, 1, 11),
(271, 1, 12),
(272, 1, 13),
(273, 1, 14),
(274, 1, 15),
(275, 1, 16),
(276, 1, 17),
(277, 1, 18),
(278, 1, 19),
(279, 1, 20),
(280, 1, 21),
(281, 1, 22),
(282, 1, 23),
(283, 1, 24),
(284, 1, 25),
(285, 1, 26),
(286, 1, 27),
(287, 1, 28),
(288, 1, 29),
(289, 1, 30),
(290, 1, 31),
(291, 1, 32),
(292, 1, 33),
(293, 1, 34),
(294, 1, 35),
(295, 1, 36),
(296, 1, 37),
(297, 1, 38),
(298, 1, 39),
(299, 1, 40),
(300, 1, 41),
(301, 1, 42),
(302, 1, 43),
(303, 1, 44),
(304, 1, 45),
(305, 1, 46),
(306, 1, 47),
(307, 1, 48),
(308, 1, 49),
(309, 1, 50),
(310, 1, 51),
(311, 1, 52),
(312, 1, 53),
(313, 1, 54),
(314, 1, 55),
(315, 1, 56),
(316, 1, 57),
(317, 1, 58),
(318, 1, 59),
(319, 1, 60),
(320, 1, 61),
(321, 1, 62),
(322, 1, 63),
(323, 1, 64),
(324, 1, 65),
(325, 1, 66),
(326, 1, 67),
(327, 1, 68),
(328, 1, 69),
(329, 1, 70),
(330, 1, 71),
(331, 1, 72),
(332, 1, 73),
(333, 1, 74),
(334, 1, 75),
(335, 3, 5),
(336, 3, 6),
(337, 3, 10),
(338, 3, 19),
(339, 3, 20),
(340, 3, 36),
(341, 3, 37),
(342, 3, 42),
(343, 3, 62),
(344, 3, 63),
(345, 3, 64),
(346, 3, 65),
(347, 3, 66),
(348, 3, 67),
(349, 3, 68),
(350, 3, 69),
(351, 3, 70),
(352, 3, 71),
(353, 3, 72),
(354, 3, 73),
(355, 3, 74),
(356, 3, 75),
(372, 1, 76),
(374, 3, 76),
(375, 1, 77),
(377, 3, 77),
(378, 1, 78),
(380, 3, 78),
(381, 1, 79),
(383, 3, 79),
(384, 1, 80),
(386, 3, 80),
(387, 1, 81),
(389, 3, 81),
(390, 1, 82),
(392, 3, 82),
(393, 2, 10),
(394, 2, 12),
(395, 2, 13),
(396, 2, 16),
(397, 2, 17),
(398, 2, 18),
(399, 2, 19),
(400, 2, 20),
(401, 2, 42),
(402, 2, 64),
(403, 2, 65),
(404, 2, 66),
(405, 2, 69),
(406, 2, 70),
(407, 2, 71),
(408, 2, 76),
(409, 2, 78),
(410, 2, 79),
(411, 2, 80),
(412, 2, 81),
(413, 2, 82);

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_message`
--

CREATE TABLE `system_message` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_user_to_id` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `dt_message` text DEFAULT NULL,
  `checked` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_notification`
--

CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_user_to_id` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `dt_message` text DEFAULT NULL,
  `action_url` text DEFAULT NULL,
  `action_label` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `checked` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_preference`
--

CREATE TABLE `system_preference` (
  `id` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_program`
--

CREATE TABLE `system_program` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `controller` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_program`
--

INSERT INTO `system_program` (`id`, `name`, `controller`) VALUES
(1, 'System Group Form', 'SystemGroupForm'),
(2, 'System Group List', 'SystemGroupList'),
(3, 'System Program Form', 'SystemProgramForm'),
(4, 'System Program List', 'SystemProgramList'),
(5, 'System User Form', 'SystemUserForm'),
(6, 'System User List', 'SystemUserList'),
(7, 'Common Page', 'CommonPage'),
(8, 'System PHP Info', 'SystemPHPInfoView'),
(9, 'System ChangeLog View', 'SystemChangeLogView'),
(10, 'Welcome View', 'WelcomeView'),
(11, 'System Sql Log', 'SystemSqlLogList'),
(12, 'System Profile View', 'SystemProfileView'),
(13, 'System Profile Form', 'SystemProfileForm'),
(14, 'System SQL Panel', 'SystemSQLPanel'),
(15, 'System Access Log', 'SystemAccessLogList'),
(16, 'System Message Form', 'SystemMessageForm'),
(17, 'System Message List', 'SystemMessageList'),
(18, 'System Message Form View', 'SystemMessageFormView'),
(19, 'System Notification List', 'SystemNotificationList'),
(20, 'System Notification Form View', 'SystemNotificationFormView'),
(21, 'System Document Category List', 'SystemDocumentCategoryFormList'),
(22, 'System Document Form', 'SystemDocumentForm'),
(23, 'System Document Upload Form', 'SystemDocumentUploadForm'),
(24, 'System Document List', 'SystemDocumentList'),
(25, 'System Shared Document List', 'SystemSharedDocumentList'),
(26, 'System Unit Form', 'SystemUnitForm'),
(27, 'System Unit List', 'SystemUnitList'),
(28, 'System Access stats', 'SystemAccessLogStats'),
(29, 'System Preference form', 'SystemPreferenceForm'),
(30, 'System Support form', 'SystemSupportForm'),
(31, 'System PHP Error', 'SystemPHPErrorLogView'),
(32, 'System Database Browser', 'SystemDatabaseExplorer'),
(33, 'System Table List', 'SystemTableList'),
(34, 'System Data Browser', 'SystemDataBrowser'),
(35, 'System Menu Editor', 'SystemMenuEditor'),
(36, 'System Request Log', 'SystemRequestLogList'),
(37, 'System Request Log View', 'SystemRequestLogView'),
(38, 'System Administration Dashboard', 'SystemAdministrationDashboard'),
(39, 'System Log Dashboard', 'SystemLogDashboard'),
(40, 'System Session dump', 'SystemSessionDumpView'),
(41, 'System ChangeLog View', 'SystemChangeLogView'),
(42, 'Welcome View', 'WelcomeView'),
(43, 'System Sql Log', 'SystemSqlLogList'),
(44, 'System Profile View', 'SystemProfileView'),
(45, 'System Profile Form', 'SystemProfileForm'),
(46, 'System SQL Panel', 'SystemSQLPanel'),
(47, 'System Access Log', 'SystemAccessLogList'),
(48, 'System Message List', 'SystemMessageList'),
(49, 'System Message Form View', 'SystemMessageFormView'),
(50, 'System Notification List', 'SystemNotificationList'),
(51, 'System Notification Form View', 'SystemNotificationFormView'),
(52, 'System Document Category List', 'SystemDocumentCategoryFormList'),
(53, 'System Document Form', 'SystemDocumentForm'),
(54, 'System Document Upload Form', 'SystemDocumentUploadForm'),
(55, 'System Document List', 'SystemDocumentList'),
(56, 'System Shared Document List', 'SystemSharedDocumentList'),
(57, 'System Unit Form', 'SystemUnitForm'),
(58, 'System Unit List', 'SystemUnitList'),
(59, 'System Access stats', 'SystemAccessLogStats'),
(60, 'System Preference form', 'SystemPreferenceForm'),
(61, 'System Support form', 'SystemSupportForm'),
(62, 'Cadastro Form', 'CadastroForm'),
(63, 'Cadastro List', 'CadastroList'),
(64, 'Emprestimo Form', 'EmprestimoForm'),
(65, 'Emprestimo List', 'EmprestimoList'),
(66, 'Pedido Material', 'PedidoMaterial'),
(67, 'Cadastro Ferramentas Form', 'CadastroFerramentasForm'),
(68, 'Ferramentas List', 'FerramentasList'),
(69, 'Emprestimo Ferramentas Form', 'EmprestimoFerramentasForm'),
(70, 'Peidido List', 'PeididoList'),
(71, 'Aprovacao Solicitacao Form', 'AprovacaoSolicitacaoForm'),
(72, 'Pedido Aprovacao Form', 'PedidoAprovacaoForm'),
(73, 'Pedido Edit Form', 'PedidoEditForm'),
(74, 'Pedido Hidrometro', 'PedidoHidrometro'),
(75, 'Peidido Hidrometro List', 'PeididoHidrometroList'),
(76, 'Cadastro Material Form', 'CadastroMaterialForm'),
(77, 'Material List', 'MaterialList'),
(78, 'Pedido List', 'PedidoList'),
(79, 'Pedido Material Form', 'PedidoMaterialForm'),
(80, 'Public View', 'PublicView'),
(81, 'helpers', 'helpers'),
(82, 'Pedido Hidrometro List', 'PedidoHidrometroList');

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_request_log`
--

CREATE TABLE `system_request_log` (
  `id` int(11) NOT NULL,
  `endpoint` text DEFAULT NULL,
  `logdate` text DEFAULT NULL,
  `log_year` varchar(4) DEFAULT NULL,
  `log_month` varchar(2) DEFAULT NULL,
  `log_day` varchar(2) DEFAULT NULL,
  `session_id` text DEFAULT NULL,
  `login` text DEFAULT NULL,
  `access_ip` text DEFAULT NULL,
  `class_name` text DEFAULT NULL,
  `http_host` text DEFAULT NULL,
  `server_port` text DEFAULT NULL,
  `request_uri` text DEFAULT NULL,
  `request_method` text DEFAULT NULL,
  `query_string` text DEFAULT NULL,
  `request_headers` text DEFAULT NULL,
  `request_body` text DEFAULT NULL,
  `request_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_sql_log`
--

CREATE TABLE `system_sql_log` (
  `id` int(11) NOT NULL,
  `logdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `login` text DEFAULT NULL,
  `database_name` text DEFAULT NULL,
  `sql_command` text DEFAULT NULL,
  `statement_type` text DEFAULT NULL,
  `access_ip` varchar(45) DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `log_trace` text DEFAULT NULL,
  `session_id` text DEFAULT NULL,
  `class_name` text DEFAULT NULL,
  `php_sapi` text DEFAULT NULL,
  `request_id` text DEFAULT NULL,
  `log_year` varchar(4) DEFAULT NULL,
  `log_month` varchar(2) DEFAULT NULL,
  `log_day` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_sql_log`
--

INSERT INTO `system_sql_log` (`id`, `logdate`, `login`, `database_name`, `sql_command`, `statement_type`, `access_ip`, `transaction_id`, `log_trace`, `session_id`, `class_name`, `php_sapi`, `request_id`, `log_year`, `log_month`, `log_day`) VALUES
(1, '2022-10-05 22:07:24', 'admin', 'permission', 'INSERT INTO system_program (id, name, controller) VALUES (68, \'Ferramentas List\', \'FerramentasList\')', 'INSERT', '::1', '633e2a4c727ad', '#0 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\MERGE\\app\\control\\admin\\SystemProgramForm.class.php(210): Adianti\\Database\\TRecord->store()\n#3 [internal function]: SystemProgramForm->onSave(Array)\n#4 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#5 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#6 C:\\laragon\\www\\MERGE\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#7 C:\\laragon\\www\\MERGE\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#8 C:\\laragon\\www\\MERGE\\engine.php(66): TApplication::run()\n#9 {main}', 'c1hmqv4g40asgt0eiqlcv3g6ku', 'SystemProgramForm', 'apache2handler', '633e2a4ab526a', '2022', '10', '05'),
(2, '2022-10-05 22:07:25', 'admin', 'permission', 'DELETE FROM system_group_program WHERE (system_program_id = 68)', 'DELETE', '::1', '633e2a4c727ad', '#0 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'DELETE FROM sys...\')\n#1 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TRepository.php(562): Adianti\\Database\\TTransaction::log(\'DELETE FROM sys...\')\n#2 C:\\laragon\\www\\MERGE\\app\\model\\admin\\SystemProgram.class.php(82): Adianti\\Database\\TRepository->delete()\n#3 C:\\laragon\\www\\MERGE\\app\\control\\admin\\SystemProgramForm.class.php(214): SystemProgram->clearParts()\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\MERGE\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\MERGE\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\MERGE\\engine.php(66): TApplication::run()\n#10 {main}', 'c1hmqv4g40asgt0eiqlcv3g6ku', 'SystemProgramForm', 'apache2handler', '633e2a4ab526a', '2022', '10', '05'),
(3, '2022-10-05 22:07:25', 'admin', 'permission', 'INSERT INTO system_group_program (system_program_id, system_group_id, id) VALUES (68, \'1\', 116)', 'INSERT', '::1', '633e2a4c727ad', '#0 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\MERGE\\app\\model\\admin\\SystemProgram.class.php(51): Adianti\\Database\\TRecord->store()\n#3 C:\\laragon\\www\\MERGE\\app\\control\\admin\\SystemProgramForm.class.php(220): SystemProgram->addSystemGroup(Object(SystemGroup))\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\MERGE\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\MERGE\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\MERGE\\engine.php(66): TApplication::run()\n#10 {main}', 'c1hmqv4g40asgt0eiqlcv3g6ku', 'SystemProgramForm', 'apache2handler', '633e2a4ab526a', '2022', '10', '05'),
(4, '2022-10-05 22:07:26', 'admin', 'permission', 'INSERT INTO system_group_program (system_program_id, system_group_id, id) VALUES (68, \'2\', 117)', 'INSERT', '::1', '633e2a4c727ad', '#0 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\MERGE\\app\\model\\admin\\SystemProgram.class.php(51): Adianti\\Database\\TRecord->store()\n#3 C:\\laragon\\www\\MERGE\\app\\control\\admin\\SystemProgramForm.class.php(220): SystemProgram->addSystemGroup(Object(SystemGroup))\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\MERGE\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\MERGE\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\MERGE\\engine.php(66): TApplication::run()\n#10 {main}', 'c1hmqv4g40asgt0eiqlcv3g6ku', 'SystemProgramForm', 'apache2handler', '633e2a4ab526a', '2022', '10', '05'),
(5, '2022-10-05 23:20:43', 'admin', 'permission', 'INSERT INTO system_program (id, name, controller) VALUES (69, \'Emprestimo Ferramentas Form\', \'EmprestimoFerramentasForm\')', 'INSERT', '::1', '633e3b7b2690e', '#0 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\MERGE\\app\\control\\admin\\SystemProgramForm.class.php(210): Adianti\\Database\\TRecord->store()\n#3 [internal function]: SystemProgramForm->onSave(Array)\n#4 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#5 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#6 C:\\laragon\\www\\MERGE\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#7 C:\\laragon\\www\\MERGE\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#8 C:\\laragon\\www\\MERGE\\engine.php(66): TApplication::run()\n#9 {main}', 'nr4qc474d4tcfn3p9udraitlb7', 'SystemProgramForm', 'apache2handler', '633e3b7a2e72c', '2022', '10', '05'),
(6, '2022-10-05 23:20:44', 'admin', 'permission', 'DELETE FROM system_group_program WHERE (system_program_id = 69)', 'DELETE', '::1', '633e3b7b2690e', '#0 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'DELETE FROM sys...\')\n#1 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TRepository.php(562): Adianti\\Database\\TTransaction::log(\'DELETE FROM sys...\')\n#2 C:\\laragon\\www\\MERGE\\app\\model\\admin\\SystemProgram.class.php(82): Adianti\\Database\\TRepository->delete()\n#3 C:\\laragon\\www\\MERGE\\app\\control\\admin\\SystemProgramForm.class.php(214): SystemProgram->clearParts()\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\MERGE\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\MERGE\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\MERGE\\engine.php(66): TApplication::run()\n#10 {main}', 'nr4qc474d4tcfn3p9udraitlb7', 'SystemProgramForm', 'apache2handler', '633e3b7a2e72c', '2022', '10', '05'),
(7, '2022-10-05 23:20:44', 'admin', 'permission', 'INSERT INTO system_group_program (system_program_id, system_group_id, id) VALUES (69, \'1\', 118)', 'INSERT', '::1', '633e3b7b2690e', '#0 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\MERGE\\app\\model\\admin\\SystemProgram.class.php(51): Adianti\\Database\\TRecord->store()\n#3 C:\\laragon\\www\\MERGE\\app\\control\\admin\\SystemProgramForm.class.php(220): SystemProgram->addSystemGroup(Object(SystemGroup))\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\MERGE\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\MERGE\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\MERGE\\engine.php(66): TApplication::run()\n#10 {main}', 'nr4qc474d4tcfn3p9udraitlb7', 'SystemProgramForm', 'apache2handler', '633e3b7a2e72c', '2022', '10', '05'),
(8, '2022-10-05 23:20:45', 'admin', 'permission', 'INSERT INTO system_group_program (system_program_id, system_group_id, id) VALUES (69, \'2\', 119)', 'INSERT', '::1', '633e3b7b2690e', '#0 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\MERGE\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\MERGE\\app\\model\\admin\\SystemProgram.class.php(51): Adianti\\Database\\TRecord->store()\n#3 C:\\laragon\\www\\MERGE\\app\\control\\admin\\SystemProgramForm.class.php(220): SystemProgram->addSystemGroup(Object(SystemGroup))\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\MERGE\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\MERGE\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\MERGE\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\MERGE\\engine.php(66): TApplication::run()\n#10 {main}', 'nr4qc474d4tcfn3p9udraitlb7', 'SystemProgramForm', 'apache2handler', '633e3b7a2e72c', '2022', '10', '05'),
(9, '2022-10-06 19:41:00', 'admin', 'permission', 'DELETE FROM system_group_program WHERE (system_group_id = \'3\')', 'DELETE', '::1', '633f597be589a', '#0 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'DELETE FROM sys...\')\n#1 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\database\\TRepository.php(562): Adianti\\Database\\TTransaction::log(\'DELETE FROM sys...\')\n#2 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\app\\model\\admin\\SystemGroup.class.php(153): Adianti\\Database\\TRepository->delete()\n#3 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\base\\AdiantiStandardCollectionTrait.php(387): SystemGroup->delete()\n#4 [internal function]: Adianti\\Base\\TStandardList->Delete(Array)\n#5 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\base\\AdiantiStandardCollectionTrait.php(424): Adianti\\Control\\TPage->show()\n#8 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Base\\TStandardList->show(Array)\n#9 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#10 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\engine.php(66): TApplication::run()\n#11 {main}', 'eslvlh2bqrqj2kbmcvfjkg08po', 'SystemGroupList', 'apache2handler', '633f597af1661', '2022', '10', '06'),
(10, '2022-10-06 19:41:01', 'admin', 'permission', 'DELETE FROM system_user_group WHERE (system_group_id = \'3\')', 'DELETE', '::1', '633f597be589a', '#0 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'DELETE FROM sys...\')\n#1 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\database\\TRepository.php(562): Adianti\\Database\\TTransaction::log(\'DELETE FROM sys...\')\n#2 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\app\\model\\admin\\SystemGroup.class.php(154): Adianti\\Database\\TRepository->delete()\n#3 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\base\\AdiantiStandardCollectionTrait.php(387): SystemGroup->delete()\n#4 [internal function]: Adianti\\Base\\TStandardList->Delete(Array)\n#5 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\base\\AdiantiStandardCollectionTrait.php(424): Adianti\\Control\\TPage->show()\n#8 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Base\\TStandardList->show(Array)\n#9 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#10 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\engine.php(66): TApplication::run()\n#11 {main}', 'eslvlh2bqrqj2kbmcvfjkg08po', 'SystemGroupList', 'apache2handler', '633f597af1661', '2022', '10', '06'),
(11, '2022-10-06 19:41:02', 'admin', 'permission', 'DELETE FROM system_group WHERE (id = \'3\')', 'DELETE', '::1', '633f597be589a', '#0 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'DELETE FROM sys...\')\n#1 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\database\\TRecord.php(1001): Adianti\\Database\\TTransaction::log(\'DELETE FROM sys...\')\n#2 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\app\\model\\admin\\SystemGroup.class.php(157): Adianti\\Database\\TRecord->delete(\'3\')\n#3 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\base\\AdiantiStandardCollectionTrait.php(387): SystemGroup->delete()\n#4 [internal function]: Adianti\\Base\\TStandardList->Delete(Array)\n#5 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\base\\AdiantiStandardCollectionTrait.php(424): Adianti\\Control\\TPage->show()\n#8 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Base\\TStandardList->show(Array)\n#9 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#10 C:\\laragon\\www\\DEPOSITO_UMAS_UMES\\engine.php(66): TApplication::run()\n#11 {main}', 'eslvlh2bqrqj2kbmcvfjkg08po', 'SystemGroupList', 'apache2handler', '633f597af1661', '2022', '10', '06'),
(12, '2022-10-23 20:19:27', 'admin', 'permission', 'INSERT INTO system_program (id, name, controller) VALUES (70, \'Peidido List\', \'PeididoList\')', 'INSERT', '::1', '6355cbffa4789', '#0 C:\\laragon\\www\\UMAS\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\UMAS\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\UMAS\\app\\control\\admin\\SystemProgramForm.class.php(210): Adianti\\Database\\TRecord->store()\n#3 [internal function]: SystemProgramForm->onSave(Array)\n#4 C:\\laragon\\www\\UMAS\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#5 C:\\laragon\\www\\UMAS\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#6 C:\\laragon\\www\\UMAS\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#7 C:\\laragon\\www\\UMAS\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#8 C:\\laragon\\www\\UMAS\\engine.php(66): TApplication::run()\n#9 {main}', 'fhuv686rlum1vu1vku9u4nksfd', 'SystemProgramForm', 'apache2handler', '6355cbfddb126', '2022', '10', '23'),
(13, '2022-10-23 20:19:28', 'admin', 'permission', 'DELETE FROM system_group_program WHERE (system_program_id = 70)', 'DELETE', '::1', '6355cbffa4789', '#0 C:\\laragon\\www\\UMAS\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'DELETE FROM sys...\')\n#1 C:\\laragon\\www\\UMAS\\lib\\adianti\\database\\TRepository.php(562): Adianti\\Database\\TTransaction::log(\'DELETE FROM sys...\')\n#2 C:\\laragon\\www\\UMAS\\app\\model\\admin\\SystemProgram.class.php(82): Adianti\\Database\\TRepository->delete()\n#3 C:\\laragon\\www\\UMAS\\app\\control\\admin\\SystemProgramForm.class.php(214): SystemProgram->clearParts()\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\UMAS\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\UMAS\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\UMAS\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\UMAS\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\UMAS\\engine.php(66): TApplication::run()\n#10 {main}', 'fhuv686rlum1vu1vku9u4nksfd', 'SystemProgramForm', 'apache2handler', '6355cbfddb126', '2022', '10', '23'),
(14, '2022-10-23 20:19:29', 'admin', 'permission', 'INSERT INTO system_group_program (system_program_id, system_group_id, id) VALUES (70, \'1\', 120)', 'INSERT', '::1', '6355cbffa4789', '#0 C:\\laragon\\www\\UMAS\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\UMAS\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\UMAS\\app\\model\\admin\\SystemProgram.class.php(51): Adianti\\Database\\TRecord->store()\n#3 C:\\laragon\\www\\UMAS\\app\\control\\admin\\SystemProgramForm.class.php(220): SystemProgram->addSystemGroup(Object(SystemGroup))\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\UMAS\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\UMAS\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\UMAS\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\UMAS\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\UMAS\\engine.php(66): TApplication::run()\n#10 {main}', 'fhuv686rlum1vu1vku9u4nksfd', 'SystemProgramForm', 'apache2handler', '6355cbfddb126', '2022', '10', '23'),
(15, '2022-10-23 20:19:30', 'admin', 'permission', 'INSERT INTO system_group_program (system_program_id, system_group_id, id) VALUES (70, \'2\', 121)', 'INSERT', '::1', '6355cbffa4789', '#0 C:\\laragon\\www\\UMAS\\lib\\adianti\\database\\TTransaction.php(241): SystemSqlLogService->write(\'INSERT INTO sys...\')\n#1 C:\\laragon\\www\\UMAS\\lib\\adianti\\database\\TRecord.php(686): Adianti\\Database\\TTransaction::log(\'INSERT INTO sys...\')\n#2 C:\\laragon\\www\\UMAS\\app\\model\\admin\\SystemProgram.class.php(51): Adianti\\Database\\TRecord->store()\n#3 C:\\laragon\\www\\UMAS\\app\\control\\admin\\SystemProgramForm.class.php(220): SystemProgram->addSystemGroup(Object(SystemGroup))\n#4 [internal function]: SystemProgramForm->onSave(Array)\n#5 C:\\laragon\\www\\UMAS\\lib\\adianti\\control\\TPage.php(96): call_user_func(Array, Array)\n#6 C:\\laragon\\www\\UMAS\\lib\\adianti\\control\\TPage.php(258): Adianti\\Control\\TPage->run()\n#7 C:\\laragon\\www\\UMAS\\lib\\adianti\\core\\AdiantiCoreApplication.php(96): Adianti\\Control\\TPage->show(Array)\n#8 C:\\laragon\\www\\UMAS\\engine.php(27): Adianti\\Core\\AdiantiCoreApplication::run(\'1\')\n#9 C:\\laragon\\www\\UMAS\\engine.php(66): TApplication::run()\n#10 {main}', 'fhuv686rlum1vu1vku9u4nksfd', 'SystemProgramForm', 'apache2handler', '6355cbfddb126', '2022', '10', '23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_unit`
--

CREATE TABLE `system_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `connection_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_unit`
--

INSERT INTO `system_unit` (`id`, `name`, `connection_name`) VALUES
(1, 'Unit A', 'unit_a'),
(2, 'Unit B', 'unit_b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_user`
--

CREATE TABLE `system_user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `frontpage_id` int(11) DEFAULT NULL,
  `system_unit_id` int(11) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `accepted_term_policy` char(1) DEFAULT NULL,
  `accepted_term_policy_at` text DEFAULT NULL,
  `matricula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_user`
--

INSERT INTO `system_user` (`id`, `name`, `login`, `password`, `email`, `frontpage_id`, `system_unit_id`, `active`, `accepted_term_policy`, `accepted_term_policy_at`, `matricula`) VALUES
(1, 'Administrator', 'admin', '3c3bddc74444c2df39cd4cd0aa819c4a', 'admin@admin.net', 42, NULL, 'Y', 'N', NULL, 1),
(2, 'User', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user@user.net', 10, NULL, 'Y', 'N', NULL, 2),
(3, 'pedro felipe', 'pedro', '81dc9bdb52d04dc20036dbd8313ed055', 'pfelipemedeiros@hotmail.com', 10, NULL, 'Y', NULL, NULL, 4944),
(4, 'gabriel costa', 'gabriel', 'b16417d852f4c9648263cfed98c2c418', 'bielpcosta@hotmail.com', 10, NULL, 'Y', NULL, NULL, 0),
(5, 'Usuário 1 ', 'User1 ', '24c9e15e52afc47c225b757e7bee1f9d', 'user1@teste.com', 10, NULL, 'Y', NULL, NULL, NULL),
(6, 'igor salgado', 'igor', '202cb962ac59075b964b07152d234b70', 'salgado.igor.is@gmail.com', 10, NULL, 'Y', NULL, NULL, 981555),
(7, 'italo Nogueira', 'italo', '1943e3027f269bd638fa1faa1607b4ca', 'italon938@gmail.com', 10, NULL, 'Y', NULL, NULL, 128191);

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_user_group`
--

CREATE TABLE `system_user_group` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_user_group`
--

INSERT INTO `system_user_group` (`id`, `system_user_id`, `system_group_id`) VALUES
(31, 1, 1),
(32, 3, 1),
(33, 1, 3),
(34, 2, 2),
(35, 4, 2),
(36, 5, 2),
(37, 6, 2),
(38, 7, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_user_program`
--

CREATE TABLE `system_user_program` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_user_program`
--

INSERT INTO `system_user_program` (`id`, `system_user_id`, `system_program_id`) VALUES
(1, 2, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_user_unit`
--

CREATE TABLE `system_user_unit` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_unit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_user_unit`
--

INSERT INTO `system_user_unit` (`id`, `system_user_id`, `system_unit_id`) VALUES
(20, 3, 1),
(21, 1, 1),
(22, 1, 2),
(23, 2, 1),
(24, 2, 2),
(25, 5, 1),
(26, 4, 1),
(27, 6, 1),
(28, 7, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `estoque_gms`
--
ALTER TABLE `estoque_gms`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices para tabela `ferramentas`
--
ALTER TABLE `ferramentas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedido_hidrometro`
--
ALTER TABLE `pedido_hidrometro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_material_FK_2` (`id_usuario`) USING BTREE;

--
-- Índices para tabela `pedido_material`
--
ALTER TABLE `pedido_material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_material_FK_2` (`id_usuario`),
  ADD KEY `pedido_material_FK_1` (`status`);

--
-- Índices para tabela `pivot_emprestimo_ferramentas`
--
ALTER TABLE `pivot_emprestimo_ferramentas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_emprestimo` (`id_emprestimo`),
  ADD KEY `id_ferramenta` (`id_ferramenta`);

--
-- Índices para tabela `system_access_log`
--
ALTER TABLE `system_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_access_notification_log`
--
ALTER TABLE `system_access_notification_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_change_log`
--
ALTER TABLE `system_change_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_document`
--
ALTER TABLE `system_document`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_document_category`
--
ALTER TABLE `system_document_category`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_document_group`
--
ALTER TABLE `system_document_group`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_document_user`
--
ALTER TABLE `system_document_user`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_group`
--
ALTER TABLE `system_group`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_group_program`
--
ALTER TABLE `system_group_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_group_program_program_idx` (`system_program_id`),
  ADD KEY `sys_group_program_group_idx` (`system_group_id`);

--
-- Índices para tabela `system_message`
--
ALTER TABLE `system_message`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_program`
--
ALTER TABLE `system_program`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_request_log`
--
ALTER TABLE `system_request_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_sql_log`
--
ALTER TABLE `system_sql_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_unit`
--
ALTER TABLE `system_unit`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_program_idx` (`frontpage_id`);

--
-- Índices para tabela `system_user_group`
--
ALTER TABLE `system_user_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_group_group_idx` (`system_group_id`),
  ADD KEY `sys_user_group_user_idx` (`system_user_id`);

--
-- Índices para tabela `system_user_program`
--
ALTER TABLE `system_user_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_program_program_idx` (`system_program_id`),
  ADD KEY `sys_user_program_user_idx` (`system_user_id`);

--
-- Índices para tabela `system_user_unit`
--
ALTER TABLE `system_user_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_user_id` (`system_user_id`),
  ADD KEY `system_unit_id` (`system_unit_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estoque_gms`
--
ALTER TABLE `estoque_gms`
  MODIFY `id_item` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9999993;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedido_hidrometro`
--
ALTER TABLE `pedido_hidrometro`
  ADD CONSTRAINT `pedido_material_FK_2_copy` FOREIGN KEY (`id_usuario`) REFERENCES `system_user` (`id`);

--
-- Limitadores para a tabela `pedido_material`
--
ALTER TABLE `pedido_material`
  ADD CONSTRAINT `pedido_material_FK_2` FOREIGN KEY (`id_usuario`) REFERENCES `system_user` (`id`);

--
-- Limitadores para a tabela `system_group_program`
--
ALTER TABLE `system_group_program`
  ADD CONSTRAINT `system_group_program_ibfk_1` FOREIGN KEY (`system_group_id`) REFERENCES `system_group` (`id`),
  ADD CONSTRAINT `system_group_program_ibfk_2` FOREIGN KEY (`system_program_id`) REFERENCES `system_program` (`id`);

--
-- Limitadores para a tabela `system_user`
--
ALTER TABLE `system_user`
  ADD CONSTRAINT `system_user_ibfk_1` FOREIGN KEY (`frontpage_id`) REFERENCES `system_program` (`id`);

--
-- Limitadores para a tabela `system_user_group`
--
ALTER TABLE `system_user_group`
  ADD CONSTRAINT `system_user_group_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `system_user_group_ibfk_2` FOREIGN KEY (`system_group_id`) REFERENCES `system_group` (`id`);

--
-- Limitadores para a tabela `system_user_program`
--
ALTER TABLE `system_user_program`
  ADD CONSTRAINT `system_user_program_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `system_user_program_ibfk_2` FOREIGN KEY (`system_program_id`) REFERENCES `system_program` (`id`);

--
-- Limitadores para a tabela `system_user_unit`
--
ALTER TABLE `system_user_unit`
  ADD CONSTRAINT `system_user_unit_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `system_user_unit_ibfk_2` FOREIGN KEY (`system_unit_id`) REFERENCES `system_unit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
