-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 02-Abr-2019 às 19:33
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mendescunha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_areas`
--

CREATE TABLE `ci_areas` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descricao` text NOT NULL,
  `folder` text NOT NULL,
  `arquivo` text NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `excluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_areas`
--

INSERT INTO `ci_areas` (`id`, `titulo`, `descricao`, `folder`, `arquivo`, `data`, `status`, `excluido`) VALUES
(1, 'Direito Civil', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 14px; text-align: center;\">Is simply dummy text of the printing and types etting industry.</span>', '2019/04/01', 'bf1be64df1dbbc6403b802a36a4a670c.png', '2019-04-01 11:30:36', 1, 0),
(2, 'Direito Previdenciário', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 14px; text-align: center;\">Is simply dummy text of the printing and types etting industry.</span>', '2019/04/01', '29943d1254669669a28462e9030b5da4.png', '2019-04-01 11:31:57', 1, 0),
(3, 'Direito Empresarial', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, sans-serif; font-size: 14px; text-align: center;\">Is simply dummy text of the printing and types etting industry.</span>', '2019/04/01', '04b6fc2f71b5d96b116517e7aae34479.png', '2019-04-01 11:32:05', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_categorias`
--

CREATE TABLE `ci_categorias` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `status` int(11) NOT NULL,
  `excluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ci_categorias`
--

INSERT INTO `ci_categorias` (`id`, `titulo`, `status`, `excluido`) VALUES
(1, 'Institucional', 0, 0),
(2, 'POLÍTICA', 1, 0),
(3, 'ECONOMIA', 1, 0),
(4, 'DIREITO', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_contatos`
--

CREATE TABLE `ci_contatos` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `telefone` text NOT NULL,
  `mensagem` text NOT NULL,
  `lido` int(11) NOT NULL,
  `data` date NOT NULL,
  `status` int(11) NOT NULL,
  `excluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ci_contatos`
--

INSERT INTO `ci_contatos` (`id`, `nome`, `email`, `telefone`, `mensagem`, `lido`, `data`, `status`, `excluido`) VALUES
(1, 'Carlos', 'Email de teste', 'Telefone de teste', 'Mensagem de teste ', 0, '2019-03-13', 0, 0),
(9, 'Teste2', 'Teste2@Teste2', 'Teste2', 'Teste2', 0, '2019-03-13', 0, 0),
(10, 'Teste3', 'Teste3@Teste3', 'Teste3', 'Teste3', 0, '2019-03-13', 0, 0),
(11, 'Teste4', 'Teste4@Teste4', 'Teste4', 'Teste4', 0, '2019-03-13', 0, 0),
(12, 'Teste5', 'Teste5@Teste5', 'Teste5', 'Teste5', 0, '2019-03-13', 0, 0),
(13, 'Teste6', 'Teste6@Teste6', 'Teste6', 'Teste6', 0, '2019-03-13', 0, 0),
(14, 'Teste7', 'Teste7@Teste7', 'Teste7', 'Teste7', 0, '2019-03-13', 0, 0),
(15, 'teste', 'carlosemidiopereira@gmail.com', '(84) 9919-11006', 'Testando contatos', 0, '2019-04-02', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_decisoes`
--

CREATE TABLE `ci_decisoes` (
  `id` int(11) NOT NULL,
  `empresa` text NOT NULL,
  `pessoa` text NOT NULL,
  `descricao` text NOT NULL,
  `folder` text NOT NULL,
  `arquivo` text NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `excluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_decisoes`
--

INSERT INTO `ci_decisoes` (`id`, `empresa`, `pessoa`, `descricao`, `folder`, `arquivo`, `data`, `status`, `excluido`) VALUES
(1, 'Teste 1', 'Teste 1', '<p><span style=\"color: rgb(34, 34, 34); font-family: Menlo, monospace; font-size: 11px; white-space: pre-wrap;\">Is simply dummy text of the printing and types etting industry. Is simply dummy text of the printing and types etting industry.Is simply dummy text of the printing and types etting industry.Is simply dummy text of the printing and types etting industry.Is simply dummy text of the printing and types etting industry.</span></p>', '2019/04/01', 'eaf4677e38a5ba70fd8f56315db81ca7.jpg', '2019-04-01 16:14:11', 1, 0),
(2, 'Teste 2', 'Teste 2', '<p>Teste 2</p>', '2019/04/01', '383f239cc38f36f68a5ab87b1046e985.jpg', '2019-04-01 16:10:56', 1, 0),
(3, 'Teste 3', 'Teste 3', '<p>Teste 3</p>', '2019/04/01', '982e90a00d8c1876ed3dceb80846a442.png', '2019-04-01 16:11:59', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_equipe`
--

CREATE TABLE `ci_equipe` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `oab` text NOT NULL,
  `folder` text NOT NULL,
  `arquivo` text NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `excluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_equipe`
--

INSERT INTO `ci_equipe` (`id`, `nome`, `oab`, `folder`, `arquivo`, `data`, `status`, `excluido`) VALUES
(1, 'Teste 1', 'Teste 1', '2019/03/26', '93eb6ab06686d54b416a937caf05db6f.jpg', '2019-03-26 17:24:46', 1, 0),
(2, 'Teste 2', 'Teste 2', '2019/03/26', '95ba3cabecf6d0ad526fca18403d26ac.jpg', '2019-03-26 18:26:38', 1, 0),
(3, 'Teste 3', 'Teste 3', '2019/04/01', 'ef30cf5fc33091711119786d2133463f.jpg', '2019-04-01 14:28:22', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_grupos`
--

CREATE TABLE `ci_grupos` (
  `id` int(10) NOT NULL,
  `titulo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `excluido` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ci_grupos`
--

INSERT INTO `ci_grupos` (`id`, `titulo`, `email`, `status`, `excluido`) VALUES
(1, 'Maxmeio', 'programacao@maxmeio.com', 1, 0),
(9, 'Jornalistas', 'jornalistas@maxmeio.com', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_grupos_modulos`
--

CREATE TABLE `ci_grupos_modulos` (
  `id` int(10) NOT NULL,
  `grupo_id` int(10) NOT NULL,
  `modulo_id` int(10) NOT NULL,
  `view` int(2) NOT NULL DEFAULT '0',
  `add` int(2) NOT NULL DEFAULT '0',
  `upd` int(2) NOT NULL DEFAULT '0',
  `del` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ci_grupos_modulos`
--

INSERT INTO `ci_grupos_modulos` (`id`, `grupo_id`, `modulo_id`, `view`, `add`, `upd`, `del`) VALUES
(2034, 1, 10, 1, 1, 1, 1),
(2033, 1, 4, 1, 1, 1, 1),
(2032, 1, 11, 1, 1, 1, 1),
(2031, 1, 1, 1, 1, 1, 1),
(2030, 1, 2, 1, 1, 1, 1),
(2029, 1, 7, 1, 1, 1, 1),
(1978, 9, 5, 0, 0, 0, 0),
(1979, 9, 6, 0, 0, 0, 0),
(1980, 9, 2, 0, 0, 0, 0),
(1981, 9, 1, 0, 0, 0, 0),
(1982, 9, 4, 1, 1, 1, 1),
(1983, 9, 3, 0, 0, 0, 0),
(2028, 1, 9, 1, 1, 1, 1),
(2027, 1, 6, 1, 1, 1, 1),
(2026, 1, 5, 1, 1, 1, 1),
(2025, 1, 8, 1, 1, 1, 1),
(2035, 1, 3, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_grupos_usuarios`
--

CREATE TABLE `ci_grupos_usuarios` (
  `usuario_id` int(10) NOT NULL,
  `grupo_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ci_grupos_usuarios`
--

INSERT INTO `ci_grupos_usuarios` (`usuario_id`, `grupo_id`) VALUES
(24, 1),
(280, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_logs`
--

CREATE TABLE `ci_logs` (
  `id` int(10) NOT NULL,
  `registro_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_ip` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `created` datetime NOT NULL,
  `tabela` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `acao` varchar(20) CHARACTER SET latin1 NOT NULL,
  `browser` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ci_logs`
--

INSERT INTO `ci_logs` (`id`, `registro_id`, `user_id`, `user_ip`, `created`, `tabela`, `acao`, `browser`, `url`) VALUES
(1, 2, 24, '192.168.137.152', '2017-02-14 15:14:05', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(2, 2, 24, '192.168.137.152', '2017-02-14 15:15:24', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(3, 2, 24, '192.168.137.152', '2017-02-14 15:17:48', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(4, 2, 24, '192.168.137.152', '2017-02-14 15:26:05', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(5, 3, 24, '192.168.137.152', '2017-02-14 15:26:19', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(6, 4, 24, '192.168.137.152', '2017-02-14 15:47:48', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(7, 5, 24, '192.168.137.152', '2017-02-14 16:06:05', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(8, 5, 24, '192.168.137.152', '2017-02-14 16:07:50', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(9, 5, 24, '192.168.137.152', '2017-02-14 16:08:27', 'unidades', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/del'),
(10, 4, 24, '192.168.137.152', '2017-02-14 16:08:29', 'unidades', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/del'),
(11, 3, 24, '192.168.137.152', '2017-02-14 16:08:31', 'unidades', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/del'),
(12, 1, 24, '192.168.137.152', '2017-02-14 16:08:43', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(13, 1, 24, '192.168.137.152', '2017-02-14 16:13:09', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(14, 2, 24, '192.168.137.152', '2017-02-14 16:13:18', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(15, 2, 24, '192.168.137.152', '2017-02-14 16:13:25', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(16, 2, 24, '192.168.137.152', '2017-02-14 16:13:44', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(17, 2, 24, '192.168.137.152', '2017-02-14 16:13:59', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(18, 2, 24, '192.168.137.152', '2017-02-14 16:14:16', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(19, 2, 24, '192.168.137.152', '2017-02-14 16:14:33', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(20, 2, 24, '192.168.137.152', '2017-02-14 16:14:49', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(21, 2, 24, '192.168.137.152', '2017-02-14 16:15:07', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(22, 2, 24, '192.168.137.152', '2017-02-14 16:15:20', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(23, 2, 24, '192.168.137.152', '2017-02-14 16:15:31', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(24, 2, 24, '192.168.137.152', '2017-02-14 16:15:42', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(25, 2, 24, '192.168.137.152', '2017-02-14 16:15:47', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(26, 2, 24, '192.168.137.152', '2017-02-14 16:15:57', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(27, 2, 24, '192.168.137.152', '2017-02-14 16:16:03', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(28, 2, 24, '192.168.137.152', '2017-02-14 16:16:14', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(29, 2, 24, '192.168.137.152', '2017-02-14 16:16:41', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(30, 2, 24, '192.168.137.152', '2017-02-14 16:16:50', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(31, 6, 24, '192.168.137.152', '2017-02-14 16:17:28', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(32, 6, 24, '192.168.137.152', '2017-02-14 16:17:45', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(33, 6, 24, '192.168.137.152', '2017-02-14 16:18:02', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(34, 6, 24, '192.168.137.152', '2017-02-14 16:18:14', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(35, 6, 24, '192.168.137.152', '2017-02-14 16:18:31', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(36, 6, 24, '192.168.137.152', '2017-02-14 16:18:43', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(37, 6, 24, '192.168.137.152', '2017-02-14 16:18:59', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(38, 6, 24, '192.168.137.152', '2017-02-14 16:19:38', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(39, 6, 24, '192.168.137.152', '2017-02-14 16:20:04', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(40, 6, 24, '192.168.137.152', '2017-02-14 16:20:21', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(41, 6, 24, '192.168.137.152', '2017-02-14 16:20:26', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(42, 2, 24, '192.168.137.152', '2017-02-14 16:21:02', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(43, 6, 24, '192.168.137.152', '2017-02-14 16:25:08', 'unidades', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/del'),
(44, 7, 24, '192.168.137.152', '2017-02-14 16:26:19', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(45, 0, 0, '192.168.137.152', '2017-02-14 16:51:25', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(46, 0, 0, '192.168.137.152', '2017-02-14 16:52:43', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(47, 24, 0, '192.168.137.152', '2017-02-14 16:57:12', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(48, 8, 24, '192.168.137.152', '2017-02-14 17:13:09', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(49, 8, 24, '192.168.137.152', '2017-02-14 17:14:23', 'unidades', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/del'),
(50, 9, 24, '192.168.137.152', '2017-02-14 17:14:41', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(51, 10, 24, '192.168.137.152', '2017-02-14 17:29:22', 'unidades', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(52, 10, 24, '192.168.137.152', '2017-02-14 17:31:03', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(53, 10, 24, '192.168.137.152', '2017-02-14 17:31:55', 'unidades', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/send/0'),
(54, 24, 24, '192.168.137.152', '2017-02-14 17:35:32', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(55, 24, 0, '192.168.137.152', '2017-02-14 17:46:53', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(56, 58, 24, '192.168.137.152', '2017-02-14 18:07:40', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/send/0'),
(57, 58, 24, '192.168.137.152', '2017-02-14 18:07:43', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(58, 6, 24, '192.168.137.152', '2017-02-14 18:07:52', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(59, 1710, 24, '192.168.137.152', '2017-02-14 18:07:52', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(60, 1, 24, '192.168.137.152', '2017-02-14 18:08:33', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(61, 1714, 24, '192.168.137.152', '2017-02-14 18:08:33', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(62, 1, 24, '192.168.137.152', '2017-02-14 18:10:55', 'restaurantes', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/restaurantes/send/0'),
(63, 59, 24, '192.168.137.171', '2017-02-15 16:59:01', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/send/0'),
(64, 59, 24, '192.168.137.171', '2017-02-15 16:59:06', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(65, 6, 24, '192.168.137.171', '2017-02-15 16:59:16', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(66, 1718, 24, '192.168.137.171', '2017-02-15 16:59:16', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(67, 10, 24, '192.168.137.171', '2017-02-16 09:53:20', 'unidades', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/status'),
(68, 9, 24, '192.168.137.171', '2017-02-16 09:53:20', 'unidades', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/status'),
(69, 7, 24, '192.168.137.171', '2017-02-16 09:53:21', 'unidades', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/status'),
(70, 2, 24, '192.168.137.171', '2017-02-16 09:53:21', 'unidades', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/status'),
(71, 1, 24, '192.168.137.171', '2017-02-16 09:53:22', 'unidades', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/unidades/status'),
(72, 1, 24, '192.168.137.171', '2017-02-16 10:01:01', 'cardapio', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/cardapio/send/0'),
(73, 1, 24, '192.168.137.171', '2017-02-16 10:15:25', 'cardapio', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/cardapio/send/0'),
(74, 2, 24, '192.168.137.171', '2017-02-16 10:31:41', 'cardapio', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/cardapio/send/0'),
(75, 2, 24, '192.168.137.171', '2017-02-16 10:37:39', 'cardapio', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/cardapio/del'),
(76, 1, 24, '192.168.137.171', '2017-02-16 10:37:41', 'cardapio', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/cardapio/del'),
(77, 3, 24, '192.168.137.171', '2017-02-16 10:38:11', 'cardapio', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/cardapio/send/0'),
(78, 0, 0, '192.168.137.171', '2017-02-16 10:58:30', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(79, 24, 0, '192.168.137.171', '2017-02-16 10:58:32', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(80, 0, 0, '192.168.137.171', '2017-02-16 11:10:19', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(81, 24, 0, '192.168.137.171', '2017-02-16 11:10:20', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(82, 60, 24, '192.168.137.171', '2017-02-16 12:48:16', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/send/0'),
(83, 60, 24, '192.168.137.171', '2017-02-16 12:48:18', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(84, 6, 24, '192.168.137.171', '2017-02-16 12:48:27', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(85, 1723, 24, '192.168.137.171', '2017-02-16 12:48:27', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(86, 1, 24, '192.168.137.171', '2017-02-16 12:48:55', 'frases', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/frases/send/0'),
(87, 1, 24, '192.168.137.171', '2017-02-16 12:49:49', 'frases', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/frases/del'),
(88, 2, 24, '192.168.137.171', '2017-02-16 12:50:03', 'frases', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/frases/send/0'),
(89, 2, 24, '192.168.137.171', '2017-02-16 17:05:42', 'frases', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/frases/status'),
(90, 13, 24, '192.168.137.171', '2017-02-16 18:11:15', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(91, 6, 24, '192.168.137.171', '2017-02-16 18:11:36', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(92, 1729, 24, '192.168.137.171', '2017-02-16 18:11:36', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(93, 13, 24, '192.168.137.171', '2017-02-16 18:12:53', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(94, 61, 24, '192.168.137.171', '2017-02-16 18:31:35', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/send/0'),
(95, 61, 24, '192.168.137.171', '2017-02-16 18:31:42', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(96, 6, 24, '192.168.137.171', '2017-02-16 18:31:53', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(97, 1736, 24, '192.168.137.171', '2017-02-16 18:31:53', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(98, 1, 24, '192.168.137.171', '2017-02-16 18:35:55', 'clippings', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/clippings/send/0'),
(99, 2, 24, '192.168.137.171', '2017-02-16 18:51:09', 'clippings', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/clippings/send/0'),
(100, 3, 24, '192.168.137.171', '2017-02-16 18:52:10', 'clippings', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/clippings/send/0'),
(101, 4, 24, '192.168.137.171', '2017-02-16 19:00:44', 'clippings', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/clippings/send/0'),
(102, 5, 24, '192.168.137.171', '2017-02-17 09:39:37', 'clippings', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/clippings/send/0'),
(103, 53, 24, '192.168.137.171', '2017-02-17 09:45:44', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/del'),
(104, 52, 24, '192.168.137.171', '2017-02-17 09:45:47', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/del'),
(105, 51, 24, '192.168.137.171', '2017-02-17 09:45:49', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/del'),
(106, 49, 24, '192.168.137.171', '2017-02-17 09:45:52', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/del'),
(107, 48, 24, '192.168.137.171', '2017-02-17 09:45:54', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/del'),
(108, 47, 24, '192.168.137.171', '2017-02-17 09:45:56', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/del'),
(109, 54, 24, '192.168.137.171', '2017-02-17 09:46:03', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/del'),
(110, 56, 24, '192.168.137.171', '2017-02-17 09:46:07', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/del'),
(111, 6, 24, '192.168.137.171', '2017-02-17 09:46:14', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(112, 6, 24, '192.168.137.171', '2017-02-17 09:46:32', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(113, 1743, 24, '192.168.137.171', '2017-02-17 09:46:32', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(114, 1, 24, '192.168.137.171', '2017-02-17 09:47:50', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(115, 2, 24, '192.168.137.171', '2017-02-17 10:05:15', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(116, 2, 24, '192.168.137.171', '2017-02-17 10:05:56', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/del'),
(117, 1, 24, '192.168.137.171', '2017-02-17 10:06:00', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/del'),
(118, 13, 24, '192.168.137.171', '2017-02-17 10:11:58', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(119, 6, 24, '192.168.137.171', '2017-02-17 10:12:08', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(120, 1751, 24, '192.168.137.171', '2017-02-17 10:12:08', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(121, 3, 24, '192.168.137.171', '2017-02-17 11:17:18', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(122, 3, 24, '192.168.137.171', '2017-02-17 11:19:32', 'albuns', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/status'),
(123, 4, 24, '192.168.137.171', '2017-02-17 11:19:52', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(124, 5, 24, '192.168.137.171', '2017-02-17 11:28:45', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(125, 5, 24, '192.168.137.171', '2017-02-17 11:37:59', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/del'),
(126, 4, 24, '192.168.137.171', '2017-02-17 11:38:01', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/del'),
(127, 3, 24, '192.168.137.171', '2017-02-17 11:38:03', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/del'),
(128, 6, 24, '192.168.137.171', '2017-02-17 11:38:17', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(129, 7, 24, '192.168.137.171', '2017-02-17 12:04:43', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(130, 7, 24, '192.168.137.171', '2017-02-17 12:08:22', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/del'),
(131, 6, 24, '192.168.137.171', '2017-02-17 12:16:38', 'albuns', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/status'),
(132, 6, 24, '192.168.137.171', '2017-02-17 12:16:39', 'albuns', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/status'),
(133, 8, 24, '192.168.137.171', '2017-02-17 12:51:36', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(134, 62, 24, '192.168.137.151', '2017-02-17 15:45:31', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/send/0'),
(135, 62, 24, '192.168.137.151', '2017-02-17 15:45:36', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(136, 6, 24, '192.168.137.151', '2017-02-17 15:46:03', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(137, 1760, 24, '192.168.137.151', '2017-02-17 15:46:03', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(138, 1, 24, '192.168.137.151', '2017-02-17 16:01:14', 'vitrines', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/vitrines/send/0'),
(139, 1, 24, '192.168.137.151', '2017-02-17 16:02:43', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/vitrines/send/0'),
(140, 1, 24, '192.168.137.151', '2017-02-17 16:03:51', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/vitrines/send/0'),
(141, 1, 24, '192.168.137.151', '2017-02-17 16:04:38', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/vitrines/send/0'),
(142, 63, 24, '192.168.137.151', '2017-02-17 16:32:35', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/send/0'),
(143, 63, 24, '192.168.137.151', '2017-02-17 16:32:37', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/modulos/status'),
(144, 6, 24, '192.168.137.151', '2017-02-17 16:32:46', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(145, 1770, 24, '192.168.137.151', '2017-02-17 16:32:46', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/grupos/send/0'),
(146, 1, 24, '192.168.137.151', '2017-02-17 16:36:59', 'destaques', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/destaques/send/0'),
(147, 1, 24, '192.168.137.151', '2017-02-17 16:37:43', 'destaques', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/destaques/send/0'),
(148, 9, 24, '192.168.137.151', '2017-02-17 17:20:54', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(149, 9, 24, '192.168.137.151', '2017-02-17 17:21:00', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/del'),
(150, 10, 24, '192.168.137.151', '2017-02-17 17:39:41', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(151, 10, 24, '192.168.137.151', '2017-02-17 17:42:20', 'albuns', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/upd/10/0'),
(152, 11, 24, '192.168.137.151', '2017-02-17 17:48:59', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(153, 0, 0, '192.168.137.151', '2017-02-17 18:02:29', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(154, 24, 0, '192.168.137.151', '2017-02-17 18:02:32', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(155, 0, 0, '192.168.137.151', '2017-02-17 18:03:12', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(156, 24, 0, '192.168.137.151', '2017-02-17 18:03:14', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(157, 0, 0, '192.168.137.151', '2017-02-17 18:03:40', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(158, 24, 0, '192.168.137.151', '2017-02-17 18:03:42', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(159, 24, 24, '192.168.137.151', '2017-02-17 18:03:59', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(160, 24, 0, '192.168.137.151', '2017-02-17 18:04:01', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(161, 0, 0, '192.168.137.151', '2017-02-17 18:04:13', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/logout'),
(162, 24, 0, '192.168.137.151', '2017-02-17 18:04:14', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/autentica'),
(163, 11, 24, '192.168.137.151', '2017-02-17 18:09:04', 'albuns', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/upd/11/0'),
(164, 11, 24, '192.168.137.151', '2017-02-17 18:45:15', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/del'),
(165, 12, 24, '192.168.137.151', '2017-02-17 18:45:27', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/save'),
(166, 12, 24, '192.168.137.151', '2017-02-17 19:10:12', 'albuns', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/cnt/sesc/2017/painel/albuns/upd/12/0'),
(167, 0, 0, '::1', '2017-06-13 15:35:09', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/logout'),
(168, 24, 0, '::1', '2017-06-13 15:35:13', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/autentica'),
(169, 24, 24, '::1', '2017-06-13 15:43:03', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/autentica'),
(170, 24, 24, '::1', '2017-06-13 15:43:22', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/autentica'),
(171, 24, 24, '::1', '2017-06-13 15:43:32', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/autentica'),
(172, 24, 24, '::1', '2017-06-13 15:44:12', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/autentica'),
(173, 0, 0, '::1', '2017-06-13 15:57:09', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Mobile Safari/537.36', '/template/painel/logout'),
(174, 24, 0, '::1', '2017-06-13 15:57:12', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/autentica'),
(175, 59, 24, '::1', '2017-06-13 15:59:06', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(176, 57, 24, '::1', '2017-06-13 15:59:17', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(177, 58, 24, '::1', '2017-06-13 15:59:27', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(178, 62, 24, '::1', '2017-06-13 15:59:51', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(179, 60, 24, '::1', '2017-06-13 16:00:03', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(180, 63, 24, '::1', '2017-06-13 16:00:34', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(181, 61, 24, '::1', '2017-06-13 16:02:14', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(182, 55, 24, '::1', '2017-06-13 16:02:18', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(183, 31, 24, '::1', '2017-06-13 16:02:20', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(184, 30, 24, '::1', '2017-06-13 16:02:23', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(185, 29, 24, '::1', '2017-06-13 16:02:25', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/del'),
(186, 14, 24, '::1', '2017-06-13 16:02:31', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/status'),
(187, 64, 24, '::1', '2017-06-13 16:05:01', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/send/0'),
(188, 64, 24, '::1', '2017-06-13 16:05:04', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/modulos/status'),
(189, 6, 24, '::1', '2017-06-13 16:05:16', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/grupos/send/0'),
(190, 1781, 24, '::1', '2017-06-13 16:05:16', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '/template/painel/grupos/send/0'),
(191, 0, 0, '192.168.137.182', '2018-10-23 13:49:36', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/logout'),
(192, 24, 0, '192.168.137.182', '2018-10-23 13:49:39', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/autentica'),
(193, 6, 24, '192.168.137.182', '2018-10-23 13:51:01', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(194, 1787, 24, '192.168.137.182', '2018-10-23 13:51:01', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(195, 1, 24, '192.168.137.182', '2018-10-23 14:17:38', 'noticias', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/noticias/send/0'),
(196, 5, 24, '192.168.137.182', '2018-10-23 14:22:07', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/del'),
(197, 7, 24, '192.168.137.182', '2018-10-23 14:22:11', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/status'),
(198, 8, 24, '192.168.137.182', '2018-10-23 14:22:12', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/status'),
(199, 65, 24, '192.168.137.182', '2018-10-23 14:22:26', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/send/0'),
(200, 65, 24, '192.168.137.182', '2018-10-23 14:22:30', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/status'),
(201, 6, 24, '192.168.137.182', '2018-10-23 14:22:39', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(202, 1793, 24, '192.168.137.182', '2018-10-23 14:22:39', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(203, 1, 24, '192.168.137.182', '2018-10-23 14:40:30', 'banners', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/banners/send/0'),
(204, 66, 24, '192.168.137.182', '2018-10-23 14:50:05', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/send/0'),
(205, 66, 24, '192.168.137.182', '2018-10-23 14:50:07', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/status'),
(206, 6, 24, '192.168.137.182', '2018-10-23 14:50:14', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(207, 1802, 24, '192.168.137.182', '2018-10-23 14:50:14', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(208, 1, 24, '192.168.137.182', '2018-10-23 14:55:41', 'campeonatos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/campeonatos/send/0'),
(209, 67, 24, '192.168.137.182', '2018-10-23 15:12:51', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/send/0'),
(210, 67, 24, '192.168.137.182', '2018-10-23 15:12:53', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/status'),
(211, 6, 24, '192.168.137.182', '2018-10-23 15:13:08', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(212, 1812, 24, '192.168.137.182', '2018-10-23 15:13:08', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(213, 68, 24, '192.168.137.182', '2018-10-23 15:13:19', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/send/0'),
(214, 68, 24, '192.168.137.182', '2018-10-23 15:13:30', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/status'),
(215, 6, 24, '192.168.137.182', '2018-10-23 15:13:40', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(216, 1823, 24, '192.168.137.182', '2018-10-23 15:13:40', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(217, 0, 0, '192.168.137.182', '2018-10-24 07:48:45', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/logout'),
(218, 24, 0, '192.168.137.182', '2018-10-24 07:48:47', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/autentica'),
(219, 1, 24, '192.168.137.182', '2018-10-24 07:58:19', 'times', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/times/send/0'),
(220, 69, 24, '192.168.137.182', '2018-10-24 08:44:10', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/send/0'),
(221, 69, 24, '192.168.137.182', '2018-10-24 08:44:13', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/status'),
(222, 6, 24, '192.168.137.182', '2018-10-24 08:44:21', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(223, 1835, 24, '192.168.137.182', '2018-10-24 08:44:21', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(224, 1, 24, '192.168.137.182', '2018-10-24 08:52:48', 'estadios', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/estadios/send/0'),
(225, 2, 24, '192.168.137.182', '2018-10-24 10:08:13', 'estadios', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/estadios/send/0'),
(226, 2, 24, '192.168.137.182', '2018-10-24 10:08:28', 'estadios', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/estadios/del'),
(227, 1, 24, '192.168.137.182', '2018-10-24 10:17:35', 'partidas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/partidas/send/0'),
(228, 70, 24, '192.168.137.182', '2018-10-24 10:18:55', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/send/0'),
(229, 70, 24, '192.168.137.182', '2018-10-24 10:18:59', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/modulos/status');
INSERT INTO `ci_logs` (`id`, `registro_id`, `user_id`, `user_ip`, `created`, `tabela`, `acao`, `browser`, `url`) VALUES
(230, 6, 24, '192.168.137.182', '2018-10-24 10:19:09', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(231, 1848, 24, '192.168.137.182', '2018-10-24 10:19:09', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(232, 1, 24, '192.168.137.182', '2018-10-24 10:37:18', 'jogadores', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/send/0'),
(233, 6, 24, '192.168.137.182', '2018-10-24 10:37:48', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(234, 1862, 24, '192.168.137.182', '2018-10-24 10:37:48', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(235, 1, 24, '192.168.137.182', '2018-10-24 10:51:46', 'videos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/videos/send/0'),
(236, 1, 24, '192.168.137.182', '2018-10-24 14:06:29', 'videos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/videos/status'),
(237, 0, 0, '192.168.137.182', '2018-10-26 14:54:23', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/logout'),
(238, 24, 0, '192.168.137.182', '2018-10-26 14:54:24', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/autentica'),
(239, 1, 24, '192.168.137.182', '2018-10-26 16:21:15', 'banners', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/banners/status'),
(240, 0, 0, '192.168.137.182', '2018-10-29 08:01:21', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/logout'),
(241, 24, 0, '192.168.137.182', '2018-10-29 08:01:23', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/autentica'),
(242, 1, 24, '192.168.137.182', '2018-10-29 08:01:56', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(243, 2, 24, '192.168.137.182', '2018-10-29 08:01:56', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(244, 3, 24, '192.168.137.182', '2018-10-29 08:01:56', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(245, 1, 24, '192.168.137.182', '2018-10-29 08:01:56', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(246, 0, 24, '192.168.137.182', '2018-10-29 08:01:56', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(247, 0, 24, '192.168.137.182', '2018-10-29 08:01:56', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(248, 0, 24, '192.168.137.182', '2018-10-29 08:01:56', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(249, 1, 24, '192.168.137.182', '2018-10-29 08:02:49', 'albuns', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/status'),
(250, 4, 24, '192.168.137.182', '2018-10-29 08:03:37', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(251, 2, 24, '192.168.137.182', '2018-10-29 08:03:37', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(252, 0, 24, '192.168.137.182', '2018-10-29 08:03:37', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(253, 3, 24, '192.168.137.182', '2018-10-29 08:03:37', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(254, 3, 24, '192.168.137.182', '2018-10-29 08:03:49', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/del'),
(255, 5, 24, '192.168.137.182', '2018-10-29 08:19:17', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(256, 0, 24, '192.168.137.182', '2018-10-29 08:19:17', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(257, 2, 24, '192.168.137.182', '2018-10-29 08:19:21', 'albuns', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/upd/2/0'),
(258, 2, 24, '192.168.137.182', '2018-10-29 08:19:23', 'albuns', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/status'),
(259, 1, 24, '192.168.137.182', '2018-10-29 09:55:54', 'banners', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/banners/del'),
(260, 2, 24, '192.168.137.182', '2018-10-29 09:57:50', 'banners', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/banners/send/0'),
(261, 2, 24, '192.168.137.182', '2018-10-29 09:57:52', 'banners', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/banners/status'),
(262, 3, 24, '192.168.137.182', '2018-10-29 10:01:25', 'banners', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/banners/send/0'),
(263, 3, 24, '192.168.137.182', '2018-10-29 10:01:26', 'banners', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/banners/status'),
(264, 1, 24, '192.168.137.182', '2018-10-29 10:24:52', 'videos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/videos/del'),
(265, 2, 24, '192.168.137.182', '2018-10-29 10:25:04', 'videos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/videos/send/0'),
(266, 2, 24, '192.168.137.182', '2018-10-29 10:25:06', 'videos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/videos/status'),
(267, 1, 0, '192.168.137.182', '2018-10-30 10:36:31', 'contatos', 'INSERT', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36', '/gama/contato/send'),
(268, 0, 0, '192.168.137.182', '2018-10-30 13:28:18', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/logout'),
(269, 0, 0, '192.168.137.182', '2018-10-30 13:28:25', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/logout'),
(270, 24, 0, '192.168.137.182', '2018-10-30 13:28:27', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/autentica'),
(271, 6, 24, '192.168.137.182', '2018-10-30 13:28:48', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(272, 1876, 24, '192.168.137.182', '2018-10-30 13:28:48', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/grupos/send/0'),
(273, 1, 24, '192.168.137.182', '2018-10-30 13:29:15', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/send/0'),
(274, 1, 24, '192.168.137.182', '2018-10-30 13:29:17', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/status'),
(275, 0, 0, '192.168.137.182', '2018-10-30 13:34:32', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/logout'),
(276, 24, 0, '192.168.137.182', '2018-10-30 13:34:34', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/autentica'),
(277, 2, 24, '192.168.137.182', '2018-10-30 13:35:01', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/send/0'),
(278, 2, 24, '192.168.137.182', '2018-10-30 13:35:03', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/status'),
(279, 3, 24, '192.168.137.182', '2018-10-30 13:35:56', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/send/0'),
(280, 3, 24, '192.168.137.182', '2018-10-30 13:35:58', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/status'),
(281, 4, 24, '192.168.137.182', '2018-10-30 13:36:17', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/send/0'),
(282, 4, 24, '192.168.137.182', '2018-10-30 13:36:21', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/status'),
(283, 5, 24, '192.168.137.182', '2018-10-30 13:36:36', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/send/0'),
(284, 5, 24, '192.168.137.182', '2018-10-30 13:36:37', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/status'),
(285, 4, 24, '192.168.137.182', '2018-10-30 13:36:42', 'paginas', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/paginas/send/0'),
(286, 1, 24, '192.168.137.182', '2018-10-30 14:01:15', 'noticias', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/noticias/send/0'),
(287, 2, 24, '192.168.137.182', '2018-10-30 14:02:30', 'noticias', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/noticias/send/0'),
(288, 2, 24, '192.168.137.182', '2018-10-30 14:04:14', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/del'),
(289, 0, 24, '192.168.137.182', '2018-10-30 14:04:52', 'albuns_arquivos', 'DELETE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/delfiles'),
(290, 0, 24, '192.168.137.182', '2018-10-30 14:04:55', 'albuns_arquivos', 'DELETE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/delfiles'),
(291, 1, 24, '192.168.137.182', '2018-10-30 14:05:00', 'albuns', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/del'),
(292, 6, 24, '192.168.137.182', '2018-10-30 14:05:17', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(293, 7, 24, '192.168.137.182', '2018-10-30 14:05:17', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(294, 8, 24, '192.168.137.182', '2018-10-30 14:05:17', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/do_uploads'),
(295, 4, 24, '192.168.137.182', '2018-10-30 14:05:17', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(296, 0, 24, '192.168.137.182', '2018-10-30 14:05:17', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(297, 0, 24, '192.168.137.182', '2018-10-30 14:05:17', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(298, 0, 24, '192.168.137.182', '2018-10-30 14:05:17', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/save'),
(299, 4, 24, '192.168.137.182', '2018-10-30 14:05:23', 'albuns', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/albuns/status'),
(300, 1, 24, '192.168.137.182', '2018-10-30 14:08:19', 'jogadores', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/del'),
(301, 2, 24, '192.168.137.182', '2018-10-30 14:09:00', 'jogadores', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/send/0'),
(302, 2, 24, '192.168.137.182', '2018-10-30 14:09:03', 'jogadores', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/status'),
(303, 3, 24, '192.168.137.182', '2018-10-30 14:09:18', 'jogadores', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/send/0'),
(304, 3, 24, '192.168.137.182', '2018-10-30 14:09:21', 'jogadores', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/status'),
(305, 0, 0, '192.168.137.182', '2018-10-30 14:12:18', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/logout'),
(306, 24, 0, '192.168.137.182', '2018-10-30 14:12:19', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/autentica'),
(307, 4, 24, '192.168.137.182', '2018-10-30 14:12:49', 'jogadores', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/send/0'),
(308, 4, 24, '192.168.137.182', '2018-10-30 14:12:51', 'jogadores', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/status'),
(309, 5, 24, '192.168.137.182', '2018-10-30 14:13:09', 'jogadores', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/send/0'),
(310, 5, 24, '192.168.137.182', '2018-10-30 14:13:11', 'jogadores', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/status'),
(311, 6, 24, '192.168.137.182', '2018-10-30 14:13:28', 'jogadores', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/send/0'),
(312, 6, 24, '192.168.137.182', '2018-10-30 14:13:29', 'jogadores', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/status'),
(313, 7, 24, '192.168.137.182', '2018-10-30 14:13:43', 'jogadores', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/send/0'),
(314, 7, 24, '192.168.137.182', '2018-10-30 14:13:44', 'jogadores', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '/gama/painel/jogadores/status'),
(315, 0, 0, '192.168.137.182', '2018-11-05 08:06:21', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/logout'),
(316, 24, 0, '192.168.137.182', '2018-11-05 08:06:23', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/autentica'),
(317, 65, 24, '192.168.137.182', '2018-11-05 08:21:02', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(318, 65, 24, '192.168.137.182', '2018-11-05 08:21:24', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(319, 64, 24, '192.168.137.182', '2018-11-05 08:23:59', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(320, 63, 24, '192.168.137.182', '2018-11-05 08:24:30', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(321, 62, 24, '192.168.137.182', '2018-11-05 08:24:36', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(322, 52, 24, '192.168.137.182', '2018-11-05 08:24:47', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(323, 45, 24, '192.168.137.182', '2018-11-05 08:24:54', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(324, 43, 24, '192.168.137.182', '2018-11-05 08:25:00', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(325, 42, 24, '192.168.137.182', '2018-11-05 08:25:06', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(326, 39, 24, '192.168.137.182', '2018-11-05 08:25:42', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(327, 34, 24, '192.168.137.182', '2018-11-05 08:25:49', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(328, 32, 24, '192.168.137.182', '2018-11-05 08:25:54', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(329, 30, 24, '192.168.137.182', '2018-11-05 08:26:00', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(330, 29, 24, '192.168.137.182', '2018-11-05 08:26:07', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(331, 28, 24, '192.168.137.182', '2018-11-05 08:26:13', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(332, 27, 24, '192.168.137.182', '2018-11-05 08:26:21', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/0'),
(333, 26, 24, '192.168.137.182', '2018-11-05 08:26:33', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(334, 25, 24, '192.168.137.182', '2018-11-05 08:26:40', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(335, 24, 24, '192.168.137.182', '2018-11-05 08:26:49', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(336, 23, 24, '192.168.137.182', '2018-11-05 08:26:59', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(337, 22, 24, '192.168.137.182', '2018-11-05 08:27:05', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(338, 20, 24, '192.168.137.182', '2018-11-05 08:27:11', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(339, 18, 24, '192.168.137.182', '2018-11-05 08:27:18', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(340, 14, 24, '192.168.137.182', '2018-11-05 08:27:26', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(341, 13, 24, '192.168.137.182', '2018-11-05 08:27:32', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(342, 12, 24, '192.168.137.182', '2018-11-05 08:27:42', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(343, 11, 24, '192.168.137.182', '2018-11-05 08:27:48', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(344, 9, 24, '192.168.137.182', '2018-11-05 08:27:53', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(345, 8, 24, '192.168.137.182', '2018-11-05 08:28:01', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(346, 23, 24, '192.168.137.182', '2018-11-05 08:28:49', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(347, 22, 24, '192.168.137.182', '2018-11-05 08:28:58', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(348, 20, 24, '192.168.137.182', '2018-11-05 08:29:05', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(349, 18, 24, '192.168.137.182', '2018-11-05 08:29:13', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(350, 14, 24, '192.168.137.182', '2018-11-05 08:29:24', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(351, 13, 24, '192.168.137.182', '2018-11-05 08:29:31', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(352, 12, 24, '192.168.137.182', '2018-11-05 08:29:38', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(353, 11, 24, '192.168.137.182', '2018-11-05 08:29:45', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(354, 9, 24, '192.168.137.182', '2018-11-05 08:29:54', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(355, 8, 24, '192.168.137.182', '2018-11-05 08:30:02', 'jogadores', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/jogadores/send/2'),
(356, 0, 0, '192.168.137.187', '2018-11-06 08:25:11', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/logout'),
(357, 24, 0, '192.168.137.187', '2018-11-06 08:25:21', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/autentica'),
(358, 129, 24, '192.168.137.187', '2018-11-06 08:28:17', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(359, 128, 24, '192.168.137.187', '2018-11-06 08:28:26', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(360, 128, 24, '192.168.137.187', '2018-11-06 08:28:26', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(361, 127, 24, '192.168.137.187', '2018-11-06 08:28:35', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(362, 126, 24, '192.168.137.187', '2018-11-06 08:28:45', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(363, 125, 24, '192.168.137.187', '2018-11-06 08:29:25', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(364, 125, 24, '192.168.137.187', '2018-11-06 08:29:25', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(365, 124, 24, '192.168.137.187', '2018-11-06 09:09:15', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(366, 124, 24, '192.168.137.187', '2018-11-06 09:09:15', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(367, 124, 24, '192.168.137.187', '2018-11-06 09:09:15', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(368, 123, 24, '192.168.137.187', '2018-11-06 09:10:47', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(369, 123, 24, '192.168.137.187', '2018-11-06 09:10:47', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(370, 122, 24, '192.168.137.187', '2018-11-06 09:11:27', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/0'),
(371, 121, 24, '192.168.137.187', '2018-11-06 09:19:57', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/status'),
(372, 120, 24, '192.168.137.187', '2018-11-06 09:20:34', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/1'),
(373, 119, 24, '192.168.137.187', '2018-11-06 09:21:39', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/1'),
(374, 119, 24, '192.168.137.187', '2018-11-06 09:26:33', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/1'),
(375, 118, 24, '192.168.137.187', '2018-11-06 09:28:13', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/1'),
(376, 118, 24, '192.168.137.187', '2018-11-06 09:28:13', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/1'),
(377, 122, 24, '192.168.137.187', '2018-11-06 09:30:51', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/noticias/send/1'),
(378, 2, 24, '192.168.137.187', '2018-11-06 09:34:16', 'times', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/del'),
(379, 1, 24, '192.168.137.187', '2018-11-06 09:34:18', 'times', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/del'),
(380, 3, 24, '192.168.137.187', '2018-11-06 09:38:18', 'times', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(381, 4, 24, '192.168.137.187', '2018-11-06 09:38:18', 'times', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(382, 3, 24, '192.168.137.187', '2018-11-06 09:38:23', 'times', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/del'),
(383, 4, 24, '192.168.137.187', '2018-11-06 09:38:24', 'times', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/status'),
(384, 5, 24, '192.168.137.187', '2018-11-06 09:40:07', 'times', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(385, 6, 24, '192.168.137.187', '2018-11-06 09:40:08', 'times', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(386, 5, 24, '192.168.137.187', '2018-11-06 09:40:11', 'times', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/del'),
(387, 6, 24, '192.168.137.187', '2018-11-06 09:40:12', 'times', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/status'),
(388, 1, 24, '192.168.137.187', '2018-11-06 09:40:20', 'partidas', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/del'),
(389, 1, 24, '192.168.137.187', '2018-11-06 09:40:30', 'campeonatos', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/campeonatos/del'),
(390, 2, 24, '192.168.137.187', '2018-11-06 09:40:39', 'campeonatos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/campeonatos/send/0'),
(391, 2, 24, '192.168.137.187', '2018-11-06 09:40:41', 'campeonatos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/campeonatos/status'),
(392, 2, 24, '192.168.137.187', '2018-11-06 09:41:08', 'partidas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/send/0'),
(393, 2, 24, '192.168.137.187', '2018-11-06 09:41:11', 'partidas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/status'),
(394, 1, 24, '192.168.137.187', '2018-11-06 09:41:23', 'estadios', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/estadios/send/0'),
(395, 1, 24, '192.168.137.187', '2018-11-06 09:41:23', 'estadios', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/estadios/send/0'),
(396, 1, 24, '192.168.137.187', '2018-11-06 14:05:27', 'paginas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/paginas/send/0'),
(397, 3, 24, '192.168.137.187', '2018-11-06 15:53:02', 'banners', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/banners/send/0'),
(398, 2, 24, '192.168.137.187', '2018-11-06 15:56:07', 'banners', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/banners/send/0'),
(399, 3, 24, '192.168.137.187', '2018-11-06 15:56:15', 'banners', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/banners/send/0'),
(400, 3, 24, '192.168.137.187', '2018-11-06 15:59:08', 'banners', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/banners/send/0'),
(401, 2, 24, '192.168.137.187', '2018-11-06 15:59:15', 'banners', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/banners/send/0'),
(402, 6, 24, '192.168.137.187', '2018-11-06 16:13:49', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/paginas/send/0'),
(403, 6, 24, '192.168.137.187', '2018-11-06 16:13:51', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/paginas/status'),
(404, 6, 24, '192.168.137.187', '2018-11-06 16:22:00', 'paginas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/paginas/send/0'),
(405, 0, 0, '192.168.137.187', '2018-11-07 12:21:27', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/logout'),
(406, 24, 0, '192.168.137.187', '2018-11-07 12:21:33', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/autentica'),
(407, 6, 24, '192.168.137.187', '2018-11-07 12:37:11', 'paginas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/paginas/send/0'),
(408, 6, 24, '192.168.137.187', '2018-11-07 12:37:44', 'paginas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/paginas/send/0'),
(409, 6, 24, '192.168.137.187', '2018-11-07 12:46:58', 'paginas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/paginas/send/0'),
(410, 6, 24, '192.168.137.187', '2018-11-07 12:48:24', 'paginas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/paginas/send/0'),
(411, 0, 0, '192.168.137.182', '2018-11-07 14:40:07', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/logout'),
(412, 24, 0, '192.168.137.182', '2018-11-07 14:40:09', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/autentica'),
(413, 2, 24, '192.168.137.182', '2018-11-07 14:40:40', 'partidas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/partidas/status'),
(414, 2, 24, '192.168.137.182', '2018-11-07 14:41:23', 'partidas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/partidas/status'),
(415, 2, 24, '192.168.137.182', '2018-11-07 14:43:53', 'partidas', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/partidas/send/0'),
(416, 2, 24, '192.168.137.182', '2018-11-07 14:44:04', 'partidas', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/partidas/send/0'),
(417, 3, 24, '192.168.137.182', '2018-11-07 14:51:54', 'banners', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/send/0'),
(418, 3, 24, '192.168.137.182', '2018-11-07 14:52:35', 'banners', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/send/0'),
(419, 2, 24, '192.168.137.182', '2018-11-07 14:52:42', 'banners', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/send/0'),
(420, 4, 24, '192.168.137.182', '2018-11-07 14:57:03', 'banners', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/send/0'),
(421, 5, 24, '192.168.137.182', '2018-11-07 14:57:34', 'banners', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/send/0'),
(422, 5, 24, '192.168.137.182', '2018-11-07 14:57:36', 'banners', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/status'),
(423, 4, 24, '192.168.137.182', '2018-11-07 14:57:37', 'banners', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/status'),
(424, 6, 24, '192.168.137.182', '2018-11-07 14:58:03', 'banners', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/send/0'),
(425, 6, 24, '192.168.137.182', '2018-11-07 14:58:05', 'banners', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/status'),
(426, 6, 24, '192.168.137.182', '2018-11-07 15:10:53', 'banners', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/send/0'),
(427, 5, 24, '192.168.137.182', '2018-11-07 15:11:15', 'banners', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/banners/send/0'),
(428, 0, 0, '192.168.137.187', '2018-11-08 07:01:53', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/logout'),
(429, 24, 0, '192.168.137.187', '2018-11-08 07:01:55', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/autentica'),
(430, 4, 24, '192.168.137.187', '2018-11-08 07:14:17', 'times', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(431, 6, 24, '192.168.137.187', '2018-11-08 07:16:25', 'times', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(432, 6, 24, '192.168.137.187', '2018-11-08 07:17:49', 'times', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(433, 7, 24, '192.168.137.187', '2018-11-08 07:20:15', 'times', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(434, 7, 24, '192.168.137.187', '2018-11-08 07:20:38', 'times', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/status'),
(435, 3, 24, '192.168.137.187', '2018-11-08 07:23:05', 'partidas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/send/0'),
(436, 4, 24, '192.168.137.187', '2018-11-08 07:23:05', 'partidas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/send/0'),
(437, 3, 24, '192.168.137.187', '2018-11-08 07:23:24', 'partidas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/status'),
(438, 3, 24, '192.168.137.182', '2018-11-08 07:51:45', 'partidas', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/gama/painel/partidas/send/0'),
(439, 3, 24, '192.168.137.187', '2018-11-08 07:57:28', 'partidas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/status'),
(440, 4, 24, '192.168.137.187', '2018-11-08 07:57:29', 'partidas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/status'),
(441, 4, 24, '192.168.137.187', '2018-11-08 07:57:46', 'partidas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/send/0'),
(442, 2, 24, '192.168.137.187', '2018-11-08 07:58:49', 'partidas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/partidas/send/0'),
(443, 7, 24, '192.168.137.187', '2018-11-08 08:00:13', 'times', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36', '/gama/painel/times/send/0'),
(444, 0, 0, '192.168.137.182', '2018-11-09 08:06:49', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/logout'),
(445, 24, 0, '192.168.137.182', '2018-11-09 08:06:51', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/autentica'),
(446, 70, 24, '192.168.137.182', '2018-11-09 08:17:51', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/del'),
(447, 69, 24, '192.168.137.182', '2018-11-09 08:17:53', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/del'),
(448, 68, 24, '192.168.137.182', '2018-11-09 08:17:55', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/del'),
(449, 67, 24, '192.168.137.182', '2018-11-09 08:17:57', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/del'),
(450, 66, 24, '192.168.137.182', '2018-11-09 08:17:59', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/del'),
(451, 1, 24, '192.168.137.182', '2018-11-09 08:29:00', 'noticias', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/noticias/send/0'),
(452, 71, 24, '192.168.137.182', '2018-11-09 08:30:50', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/send/0'),
(453, 71, 24, '192.168.137.182', '2018-11-09 08:30:59', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/status'),
(454, 6, 24, '192.168.137.182', '2018-11-09 08:31:12', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/grupos/send/0'),
(455, 1890, 24, '192.168.137.182', '2018-11-09 08:31:12', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/grupos/send/0'),
(456, 72, 24, '192.168.137.182', '2018-11-09 09:22:10', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/send/0');
INSERT INTO `ci_logs` (`id`, `registro_id`, `user_id`, `user_ip`, `created`, `tabela`, `acao`, `browser`, `url`) VALUES
(457, 72, 24, '192.168.137.182', '2018-11-09 09:22:12', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/modulos/status'),
(458, 6, 24, '192.168.137.182', '2018-11-09 09:22:22', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/grupos/send/0'),
(459, 1900, 24, '192.168.137.182', '2018-11-09 09:22:22', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/grupos/send/0'),
(460, 1, 24, '192.168.137.182', '2018-11-09 09:23:13', 'cursos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(461, 1, 24, '192.168.137.182', '2018-11-09 09:43:12', 'cursos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/cursos/status'),
(462, 1, 24, '192.168.137.182', '2018-11-09 09:43:20', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/noticias/status'),
(463, 1, 24, '192.168.137.182', '2018-11-09 09:43:45', 'noticias', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/noticias/send/0'),
(464, 9, 24, '192.168.137.182', '2018-11-09 12:50:43', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/albuns/do_uploads'),
(465, 10, 24, '192.168.137.182', '2018-11-09 12:50:43', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/albuns/do_uploads'),
(466, 11, 24, '192.168.137.182', '2018-11-09 12:50:44', 'arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/albuns/do_uploads'),
(467, 5, 24, '192.168.137.182', '2018-11-09 12:50:44', 'albuns', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/albuns/save'),
(468, 0, 24, '192.168.137.182', '2018-11-09 12:50:44', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/albuns/save'),
(469, 0, 24, '192.168.137.182', '2018-11-09 12:50:44', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/albuns/save'),
(470, 0, 24, '192.168.137.182', '2018-11-09 12:50:44', 'albuns_arquivos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/albuns/save'),
(471, 5, 24, '192.168.137.182', '2018-11-09 12:50:46', 'albuns', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '/ibrapes/painel/albuns/status'),
(472, 1, 0, '192.168.137.182', '2018-11-09 13:14:08', 'newsletter', 'INSERT', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Mobile Safari/537.36', '/ibrapes/contato/newsletter'),
(473, 0, 0, '192.168.137.182', '2018-11-13 08:54:30', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/logout'),
(474, 24, 0, '192.168.137.182', '2018-11-13 08:54:35', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/autentica'),
(475, 2, 24, '192.168.137.182', '2018-11-13 08:56:45', 'cursos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(476, 2, 24, '192.168.137.182', '2018-11-13 08:56:48', 'cursos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/status'),
(477, 3, 24, '192.168.137.182', '2018-11-13 08:57:24', 'cursos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(478, 3, 24, '192.168.137.182', '2018-11-13 08:57:26', 'cursos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/status'),
(479, 4, 24, '192.168.137.182', '2018-11-13 09:00:28', 'cursos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(480, 4, 24, '192.168.137.182', '2018-11-13 09:00:30', 'cursos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/status'),
(481, 5, 24, '192.168.137.182', '2018-11-13 09:01:16', 'cursos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(482, 5, 24, '192.168.137.182', '2018-11-13 09:01:18', 'cursos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/status'),
(483, 5, 24, '192.168.137.182', '2018-11-13 09:01:21', 'cursos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(484, 6, 24, '192.168.137.182', '2018-11-13 09:01:55', 'cursos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(485, 6, 24, '192.168.137.182', '2018-11-13 09:01:57', 'cursos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/status'),
(486, 7, 24, '192.168.137.182', '2018-11-13 09:02:22', 'cursos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(487, 7, 24, '192.168.137.182', '2018-11-13 09:02:24', 'cursos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/status'),
(488, 8, 24, '192.168.137.182', '2018-11-13 09:02:56', 'cursos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/send/0'),
(489, 8, 24, '192.168.137.182', '2018-11-13 09:02:57', 'cursos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/cursos/status'),
(490, 1, 24, '192.168.137.182', '2018-11-13 09:19:17', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/paginas/send/0'),
(491, 1, 24, '192.168.137.182', '2018-11-13 09:19:19', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/paginas/status'),
(492, 2, 0, '192.168.137.182', '2018-11-13 10:01:16', 'newsletter', 'INSERT', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Mobile Safari/537.36', '/ibrapes/contato/newsletter'),
(493, 0, 0, '192.168.137.182', '2018-11-13 12:14:28', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/logout'),
(494, 24, 0, '192.168.137.182', '2018-11-13 12:14:30', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/autentica'),
(495, 2, 24, '192.168.137.182', '2018-11-13 12:14:47', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/paginas/send/0'),
(496, 2, 24, '192.168.137.182', '2018-11-13 12:14:49', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/paginas/status'),
(497, 3, 24, '192.168.137.182', '2018-11-13 12:15:43', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/paginas/send/0'),
(498, 3, 24, '192.168.137.182', '2018-11-13 12:15:46', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/paginas/status'),
(499, 4, 24, '192.168.137.182', '2018-11-13 12:17:06', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/paginas/send/0'),
(500, 4, 24, '192.168.137.182', '2018-11-13 12:17:08', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/painel/paginas/status'),
(501, 2, 0, '192.168.137.182', '2018-11-13 15:43:56', 'contatos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/ibrapes/contato/send'),
(502, 0, 0, '192.168.137.182', '2018-11-26 08:21:46', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/logout'),
(503, 24, 0, '192.168.137.182', '2018-11-26 08:21:48', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/autentica'),
(504, 72, 24, '192.168.137.182', '2018-11-26 08:22:01', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/del'),
(505, 71, 24, '192.168.137.182', '2018-11-26 08:22:03', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/del'),
(506, 65, 24, '192.168.137.182', '2018-11-26 08:22:11', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/del'),
(507, 11, 24, '192.168.137.182', '2018-11-26 08:45:07', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/del'),
(508, 10, 24, '192.168.137.182', '2018-11-26 08:45:09', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/del'),
(509, 7, 24, '192.168.137.182', '2018-11-26 08:45:34', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/del'),
(510, 73, 24, '192.168.137.182', '2018-11-26 08:46:34', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/send/0'),
(511, 73, 24, '192.168.137.182', '2018-11-26 08:46:37', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/status'),
(512, 74, 24, '192.168.137.182', '2018-11-26 08:47:09', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/send/0'),
(513, 8, 24, '192.168.137.182', '2018-11-26 08:47:14', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/del'),
(514, 74, 24, '192.168.137.182', '2018-11-26 08:47:33', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/status'),
(515, 75, 24, '192.168.137.182', '2018-11-26 08:47:45', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/send/0'),
(516, 75, 24, '192.168.137.182', '2018-11-26 08:48:09', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/status'),
(517, 6, 24, '192.168.137.182', '2018-11-26 08:48:21', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/modulos/status'),
(518, 6, 24, '192.168.137.182', '2018-11-26 08:48:36', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/grupos/send/0'),
(519, 1911, 24, '192.168.137.182', '2018-11-26 08:48:36', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/grupos/send/0'),
(520, 1, 24, '192.168.137.182', '2018-11-26 09:40:53', 'presentes', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/presentes/send/0'),
(521, 2, 24, '192.168.137.182', '2018-11-26 14:28:38', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/presentes/situacao'),
(522, 1, 24, '192.168.137.182', '2018-11-26 14:30:06', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/presentes/situacao'),
(523, 1, 24, '192.168.137.182', '2018-11-26 14:43:39', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '/midway/arvore/painel/presentes/situacao'),
(524, 0, 0, '192.168.137.182', '2018-11-28 06:57:37', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/logout'),
(525, 24, 0, '192.168.137.182', '2018-11-28 06:57:40', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/autentica'),
(526, 2, 24, '192.168.137.182', '2018-11-28 07:03:04', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/presentes/send/0'),
(527, 3, 24, '192.168.137.182', '2018-11-28 07:27:50', 'presentes', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/presentes/send/0'),
(528, 3, 24, '192.168.137.182', '2018-11-28 07:43:27', 'presentes', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/presentes/status'),
(529, 3, 24, '192.168.137.182', '2018-11-28 07:44:55', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/presentes/send/0'),
(530, 3, 24, '192.168.137.182', '2018-11-28 07:45:13', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/presentes/send/0'),
(531, 2, 0, '192.168.137.182', '2018-11-28 09:11:36', 'padrinhos', 'INSERT', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', '/midway/arvore/contato/send'),
(532, 3, 0, '192.168.137.182', '2018-11-28 09:11:36', 'presentes', 'UPDATE', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', '/midway/arvore/contato/send'),
(533, 0, 0, '192.168.137.182', '2018-11-28 09:12:16', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/logout'),
(534, 24, 0, '192.168.137.182', '2018-11-28 09:12:21', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/painel/autentica'),
(535, 3, 24, '192.168.137.182', '2018-11-28 09:18:34', 'padrinhos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(536, 3, 24, '192.168.137.182', '2018-11-28 09:18:34', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(537, 4, 24, '192.168.137.182', '2018-11-28 09:20:24', 'padrinhos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(538, 3, 24, '192.168.137.182', '2018-11-28 09:20:24', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(539, 2, 24, '192.168.137.182', '2018-11-28 09:34:26', 'empresas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/empresa'),
(540, 5, 24, '192.168.137.182', '2018-11-28 09:38:23', 'padrinhos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(541, 3, 24, '192.168.137.182', '2018-11-28 09:38:23', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(542, 6, 24, '192.168.137.182', '2018-11-28 09:44:50', 'padrinhos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(543, 3, 24, '192.168.137.182', '2018-11-28 09:44:50', 'presentes', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(544, 3, 24, '192.168.137.182', '2018-11-28 09:45:03', 'empresas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/empresa'),
(545, 4, 24, '192.168.137.182', '2018-11-28 09:45:47', 'empresas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/empresa'),
(546, 5, 0, '192.168.137.190', '2018-11-28 15:00:55', 'empresas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/empresa'),
(547, 7, 0, '192.168.137.190', '2018-11-28 15:02:08', 'padrinhos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(548, 3, 0, '192.168.137.190', '2018-11-28 15:02:08', 'presentes', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/midway/arvore/contato/send'),
(549, 0, 0, '192.168.137.182', '2018-11-30 08:42:57', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(550, 0, 0, '192.168.137.182', '2018-11-30 08:44:49', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(551, 0, 0, '192.168.137.182', '2018-11-30 08:51:42', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(552, 24, 0, '192.168.137.182', '2018-11-30 09:03:03', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/autentica'),
(553, 3, 24, '192.168.137.182', '2018-11-30 09:51:25', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(554, 6, 24, '192.168.137.182', '2018-11-30 09:51:58', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(555, 1917, 24, '192.168.137.182', '2018-11-30 09:51:58', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(556, 75, 24, '192.168.137.182', '2018-11-30 13:27:31', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(557, 75, 24, '192.168.137.182', '2018-11-30 13:29:17', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(558, 75, 24, '192.168.137.182', '2018-11-30 13:29:22', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(559, 75, 24, '192.168.137.182', '2018-11-30 13:29:23', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(560, 3, 24, '192.168.137.182', '2018-11-30 13:31:14', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(561, 3, 24, '192.168.137.182', '2018-11-30 13:31:18', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(562, 3, 24, '192.168.137.182', '2018-11-30 13:32:02', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(563, 3, 24, '192.168.137.182', '2018-11-30 13:32:08', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(564, 75, 24, '192.168.137.182', '2018-11-30 13:43:47', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/del'),
(565, 74, 24, '192.168.137.182', '2018-11-30 13:43:49', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/del'),
(566, 73, 24, '192.168.137.182', '2018-11-30 13:43:52', 'modulos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/del'),
(567, 6, 24, '192.168.137.182', '2018-11-30 13:45:32', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(568, 6, 24, '192.168.137.182', '2018-11-30 13:47:33', 'grupos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/status'),
(569, 6, 24, '192.168.137.182', '2018-11-30 13:47:34', 'grupos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/status'),
(570, 65, 24, '192.168.137.182', '2018-11-30 14:09:30', 'modulos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/send/0'),
(571, 65, 24, '192.168.137.182', '2018-11-30 14:09:39', 'modulos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/send/0'),
(572, 6, 24, '192.168.137.182', '2018-11-30 14:10:35', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(573, 1924, 24, '192.168.137.182', '2018-11-30 14:10:35', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(574, 7, 24, '192.168.137.182', '2018-11-30 14:10:48', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(575, 1, 24, '192.168.137.182', '2018-11-30 16:01:49', 'noticias', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(576, 1, 24, '192.168.137.182', '2018-11-30 16:04:49', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(577, 1, 24, '192.168.137.182', '2018-11-30 16:05:21', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(578, 1, 24, '192.168.137.182', '2018-11-30 16:07:03', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(579, 1, 24, '192.168.137.182', '2018-11-30 16:07:10', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(580, 1, 24, '192.168.137.182', '2018-11-30 16:07:39', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(581, 1, 24, '192.168.137.182', '2018-11-30 16:08:31', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(582, 1, 24, '192.168.137.182', '2018-11-30 16:14:09', 'noticias', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(583, 0, 0, '192.168.137.126', '2018-12-06 06:23:36', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(584, 24, 0, '192.168.137.126', '2018-12-06 06:23:41', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/autentica'),
(585, 1, 24, '192.168.137.126', '2018-12-06 13:55:50', 'convenios', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(586, 1, 24, '192.168.137.126', '2018-12-06 13:56:17', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(587, 1, 24, '192.168.137.126', '2018-12-06 13:56:20', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(588, 9, 24, '192.168.137.126', '2018-12-06 13:58:39', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(589, 1, 24, '192.168.137.126', '2018-12-06 14:11:04', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(590, 2, 24, '192.168.137.126', '2018-12-06 14:12:16', 'paginas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(591, 76, 24, '192.168.137.126', '2018-12-06 14:16:06', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/send/0'),
(592, 76, 24, '192.168.137.126', '2018-12-06 14:16:09', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(593, 6, 24, '192.168.137.126', '2018-12-06 14:16:19', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(594, 1934, 24, '192.168.137.126', '2018-12-06 14:16:19', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(595, 2, 24, '192.168.137.126', '2018-12-06 14:36:56', 'noticias', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(596, 2, 24, '192.168.137.126', '2018-12-06 14:37:05', 'noticias', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(597, 1, 24, '192.168.137.126', '2018-12-06 14:39:15', 'dicas', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/send/0'),
(598, 3, 24, '192.168.137.126', '2018-12-07 07:34:55', 'newsletter', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/contato/newsletter'),
(599, 4, 24, '192.168.137.126', '2018-12-07 07:35:14', 'newsletter', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/contato/newsletter'),
(600, 5, 0, '192.168.137.126', '2018-12-07 07:35:19', 'newsletter', 'INSERT', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', '/hospitalrn/contato/newsletter'),
(601, 6, 0, '192.168.137.126', '2018-12-07 07:39:20', 'newsletter', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/contato/newsletter'),
(602, 0, 0, '192.168.137.126', '2018-12-07 10:38:11', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(603, 3, 0, '192.168.137.126', '2018-12-07 12:58:00', 'contatos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/contato/send'),
(604, 0, 0, '192.168.137.112', '2018-12-07 13:18:45', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(605, 0, 0, '192.168.137.112', '2018-12-07 13:19:10', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(606, 24, 0, '192.168.137.112', '2018-12-07 13:19:19', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/autentica'),
(607, 24, 24, '192.168.137.112', '2018-12-07 13:19:28', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/autentica'),
(608, 0, 0, '192.168.137.126', '2018-12-07 13:19:39', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(609, 24, 0, '192.168.137.126', '2018-12-07 13:19:43', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/autentica'),
(610, 24, 0, '192.168.137.126', '2018-12-07 13:19:47', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', '/hospitalrn/painel/autentica'),
(611, 24, 24, '192.168.137.126', '2018-12-07 13:20:23', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', '/hospitalrn/painel/autentica'),
(612, 24, 24, '192.168.137.126', '2018-12-07 13:20:34', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', '/hospitalrn/painel/autentica'),
(613, 24, 0, '192.168.137.126', '2018-12-07 13:21:01', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/autentica'),
(614, 77, 24, '192.168.137.126', '2018-12-07 13:21:27', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/send/0'),
(615, 77, 24, '192.168.137.126', '2018-12-07 13:21:29', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(616, 6, 24, '192.168.137.126', '2018-12-07 13:22:30', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(617, 1943, 24, '192.168.137.126', '2018-12-07 13:22:30', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(618, 1, 24, '192.168.137.126', '2018-12-07 13:41:55', 'diretoria', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/diretoria/send/0'),
(619, 1, 24, '192.168.137.126', '2018-12-07 13:46:52', 'diretoria', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/diretoria/status'),
(620, 6, 24, '192.168.137.126', '2018-12-07 13:48:34', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(621, 78, 24, '192.168.137.126', '2018-12-07 13:50:17', 'modulos', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/send/0'),
(622, 78, 24, '192.168.137.126', '2018-12-07 13:50:20', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/modulos/status'),
(623, 6, 24, '192.168.137.126', '2018-12-07 13:50:29', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(624, 1953, 24, '192.168.137.126', '2018-12-07 13:50:29', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/grupos/send/0'),
(625, 1, 24, '192.168.137.126', '2018-12-07 13:58:04', 'vitrines', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(626, 1, 24, '192.168.137.126', '2018-12-07 13:58:08', 'vitrines', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/status'),
(627, 2, 24, '192.168.137.126', '2018-12-07 13:59:08', 'vitrines', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(628, 2, 24, '192.168.137.126', '2018-12-07 13:59:11', 'vitrines', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/status'),
(629, 0, 0, '192.168.137.126', '2018-12-11 15:13:38', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/profbarros/painel/logout'),
(630, 24, 0, '192.168.137.126', '2018-12-11 15:19:12', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/profbarros/painel/autentica'),
(631, 19, 24, '192.168.137.126', '2018-12-11 15:47:08', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/profbarros/painel/noticias/status'),
(632, 19, 24, '192.168.137.126', '2018-12-11 15:47:09', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/profbarros/painel/noticias/status'),
(633, 77, 24, '192.168.137.126', '2018-12-12 06:32:27', 'modulos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/profbarros/painel/modulos/send/0'),
(634, 7, 0, '192.168.137.126', '2018-12-12 12:28:52', 'newsletter', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/contato/newsletter'),
(635, 8, 0, '192.168.137.126', '2018-12-12 12:29:28', 'newsletter', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/contato/newsletter'),
(636, 0, 0, '192.168.137.190', '2018-12-14 06:15:37', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/logout'),
(637, 24, 0, '192.168.137.190', '2018-12-14 06:15:46', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/autentica'),
(638, 1, 24, '192.168.137.190', '2018-12-14 07:16:02', 'convenios', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/del'),
(639, 2, 24, '192.168.137.190', '2018-12-14 07:21:25', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(640, 3, 24, '192.168.137.190', '2018-12-14 07:22:18', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(641, 3, 24, '192.168.137.190', '2018-12-14 07:22:21', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(642, 2, 24, '192.168.137.190', '2018-12-14 07:22:22', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(643, 4, 24, '192.168.137.190', '2018-12-14 07:22:56', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(644, 4, 24, '192.168.137.190', '2018-12-14 07:23:00', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(645, 5, 24, '192.168.137.190', '2018-12-14 07:23:13', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(646, 5, 24, '192.168.137.190', '2018-12-14 07:23:16', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(647, 6, 24, '192.168.137.190', '2018-12-14 07:23:25', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(648, 6, 24, '192.168.137.190', '2018-12-14 07:23:28', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(649, 7, 24, '192.168.137.190', '2018-12-14 07:23:39', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(650, 7, 24, '192.168.137.190', '2018-12-14 07:23:42', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(651, 8, 24, '192.168.137.190', '2018-12-14 07:23:54', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(652, 9, 24, '192.168.137.190', '2018-12-14 07:24:10', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(653, 10, 24, '192.168.137.190', '2018-12-14 07:24:23', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(654, 11, 24, '192.168.137.190', '2018-12-14 07:24:35', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(655, 12, 24, '192.168.137.190', '2018-12-14 07:24:46', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(656, 13, 24, '192.168.137.190', '2018-12-14 07:25:19', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(657, 14, 24, '192.168.137.190', '2018-12-14 07:25:32', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(658, 15, 24, '192.168.137.190', '2018-12-14 07:25:56', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(659, 16, 24, '192.168.137.190', '2018-12-14 07:26:11', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(660, 17, 24, '192.168.137.190', '2018-12-14 07:26:36', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(661, 17, 24, '192.168.137.190', '2018-12-14 07:26:39', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(662, 16, 24, '192.168.137.190', '2018-12-14 07:26:40', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(663, 15, 24, '192.168.137.190', '2018-12-14 07:26:40', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(664, 14, 24, '192.168.137.190', '2018-12-14 07:26:42', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(665, 13, 24, '192.168.137.190', '2018-12-14 07:26:42', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(666, 12, 24, '192.168.137.190', '2018-12-14 07:26:43', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(667, 11, 24, '192.168.137.190', '2018-12-14 07:26:43', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(668, 10, 24, '192.168.137.190', '2018-12-14 07:26:44', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(669, 9, 24, '192.168.137.190', '2018-12-14 07:26:45', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(670, 8, 24, '192.168.137.190', '2018-12-14 07:26:45', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(671, 18, 24, '192.168.137.190', '2018-12-14 07:28:35', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(672, 19, 24, '192.168.137.190', '2018-12-14 07:28:45', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(673, 20, 24, '192.168.137.190', '2018-12-14 07:28:59', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(674, 21, 24, '192.168.137.190', '2018-12-14 07:29:14', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(675, 22, 24, '192.168.137.190', '2018-12-14 07:29:26', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(676, 23, 24, '192.168.137.190', '2018-12-14 07:29:39', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(677, 24, 24, '192.168.137.190', '2018-12-14 07:29:58', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(678, 25, 24, '192.168.137.190', '2018-12-14 07:30:12', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0');
INSERT INTO `ci_logs` (`id`, `registro_id`, `user_id`, `user_ip`, `created`, `tabela`, `acao`, `browser`, `url`) VALUES
(679, 26, 24, '192.168.137.190', '2018-12-14 07:30:30', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(680, 27, 24, '192.168.137.190', '2018-12-14 07:30:46', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(681, 27, 24, '192.168.137.190', '2018-12-14 07:30:48', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(682, 26, 24, '192.168.137.190', '2018-12-14 07:30:49', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(683, 25, 24, '192.168.137.190', '2018-12-14 07:30:50', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(684, 24, 24, '192.168.137.190', '2018-12-14 07:30:50', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(685, 23, 24, '192.168.137.190', '2018-12-14 07:30:51', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(686, 22, 24, '192.168.137.190', '2018-12-14 07:30:51', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(687, 21, 24, '192.168.137.190', '2018-12-14 07:30:52', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(688, 20, 24, '192.168.137.190', '2018-12-14 07:30:53', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(689, 19, 24, '192.168.137.190', '2018-12-14 07:30:53', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(690, 18, 24, '192.168.137.190', '2018-12-14 07:30:54', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(691, 28, 24, '192.168.137.190', '2018-12-14 07:31:04', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(692, 29, 24, '192.168.137.190', '2018-12-14 07:31:16', 'convenios', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/send/0'),
(693, 29, 24, '192.168.137.190', '2018-12-14 07:31:21', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(694, 28, 24, '192.168.137.190', '2018-12-14 07:31:22', 'convenios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/convenios/status'),
(695, 4, 24, '192.168.137.190', '2018-12-14 07:35:39', 'dicas', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/del'),
(696, 3, 24, '192.168.137.190', '2018-12-14 07:35:42', 'dicas', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/del'),
(697, 3, 24, '192.168.137.190', '2018-12-14 07:35:44', 'dicas', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/del'),
(698, 2, 24, '192.168.137.190', '2018-12-14 07:35:47', 'dicas', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/del'),
(699, 2, 24, '192.168.137.190', '2018-12-14 07:35:47', 'dicas', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/del'),
(700, 1, 24, '192.168.137.190', '2018-12-14 07:35:49', 'dicas', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/del'),
(701, 5, 24, '192.168.137.190', '2018-12-14 07:37:45', 'dicas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/send/0'),
(702, 5, 24, '192.168.137.190', '2018-12-14 07:38:18', 'dicas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/status'),
(703, 5, 24, '192.168.137.190', '2018-12-14 07:39:14', 'dicas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/send/0'),
(704, 6, 24, '192.168.137.190', '2018-12-14 07:40:40', 'dicas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/send/0'),
(705, 6, 24, '192.168.137.190', '2018-12-14 07:40:44', 'dicas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/status'),
(706, 7, 24, '192.168.137.190', '2018-12-14 07:42:17', 'dicas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/send/0'),
(707, 7, 24, '192.168.137.190', '2018-12-14 07:42:24', 'dicas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/status'),
(708, 8, 24, '192.168.137.190', '2018-12-14 07:43:51', 'dicas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/send/0'),
(709, 8, 24, '192.168.137.190', '2018-12-14 07:43:58', 'dicas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/status'),
(710, 9, 24, '192.168.137.190', '2018-12-14 07:45:36', 'dicas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/send/0'),
(711, 9, 24, '192.168.137.190', '2018-12-14 07:45:40', 'dicas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/dicas/status'),
(712, 3, 24, '192.168.137.190', '2018-12-14 07:54:27', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(713, 4, 24, '192.168.137.190', '2018-12-14 07:54:50', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(714, 5, 24, '192.168.137.190', '2018-12-14 07:55:09', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(715, 6, 24, '192.168.137.190', '2018-12-14 07:55:24', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(716, 6, 24, '192.168.137.190', '2018-12-14 07:55:32', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/status'),
(717, 5, 24, '192.168.137.190', '2018-12-14 07:55:33', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/status'),
(718, 4, 24, '192.168.137.190', '2018-12-14 07:55:33', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/status'),
(719, 3, 24, '192.168.137.190', '2018-12-14 07:55:34', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/status'),
(720, 19, 24, '192.168.137.190', '2018-12-14 08:11:52', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(721, 18, 24, '192.168.137.190', '2018-12-14 08:11:53', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(722, 17, 24, '192.168.137.190', '2018-12-14 08:11:56', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(723, 16, 24, '192.168.137.190', '2018-12-14 08:11:57', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(724, 15, 24, '192.168.137.190', '2018-12-14 08:11:59', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(725, 14, 24, '192.168.137.190', '2018-12-14 08:12:00', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(726, 13, 24, '192.168.137.190', '2018-12-14 08:12:02', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(727, 12, 24, '192.168.137.190', '2018-12-14 08:12:04', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(728, 11, 24, '192.168.137.190', '2018-12-14 08:12:06', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(729, 10, 24, '192.168.137.190', '2018-12-14 08:12:07', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(730, 9, 24, '192.168.137.190', '2018-12-14 08:12:13', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(731, 8, 24, '192.168.137.190', '2018-12-14 08:12:15', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(732, 7, 24, '192.168.137.190', '2018-12-14 08:12:17', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(733, 6, 24, '192.168.137.190', '2018-12-14 08:12:20', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(734, 5, 24, '192.168.137.190', '2018-12-14 08:12:21', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(735, 4, 24, '192.168.137.190', '2018-12-14 08:12:23', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(736, 3, 24, '192.168.137.190', '2018-12-14 08:12:24', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(737, 2, 24, '192.168.137.190', '2018-12-14 08:12:26', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(738, 1, 24, '192.168.137.190', '2018-12-14 08:12:28', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(739, 20, 24, '192.168.137.190', '2018-12-14 08:13:16', 'noticias', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(740, 21, 24, '192.168.137.190', '2018-12-14 08:14:59', 'noticias', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(741, 22, 24, '192.168.137.190', '2018-12-14 08:16:29', 'noticias', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(742, 23, 24, '192.168.137.190', '2018-12-14 08:18:14', 'noticias', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(743, 23, 24, '192.168.137.190', '2018-12-14 08:18:57', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(744, 22, 24, '192.168.137.190', '2018-12-14 08:18:57', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(745, 21, 24, '192.168.137.190', '2018-12-14 08:18:58', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(746, 20, 24, '192.168.137.190', '2018-12-14 08:18:58', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(747, 21, 24, '192.168.137.190', '2018-12-14 08:21:11', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(748, 20, 24, '192.168.137.190', '2018-12-14 08:22:40', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(749, 20, 24, '192.168.137.190', '2018-12-14 08:23:17', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(750, 20, 24, '192.168.137.190', '2018-12-14 08:24:01', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(751, 24, 24, '192.168.137.190', '2018-12-14 08:24:45', 'noticias', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(752, 24, 24, '192.168.137.190', '2018-12-14 08:24:49', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/status'),
(753, 20, 24, '192.168.137.190', '2018-12-14 08:25:58', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/send/0'),
(754, 24, 24, '192.168.137.190', '2018-12-14 08:26:23', 'noticias', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/noticias/del'),
(755, 7, 24, '192.168.137.190', '2018-12-14 08:30:14', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(756, 8, 24, '192.168.137.190', '2018-12-14 08:30:42', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(757, 9, 24, '192.168.137.190', '2018-12-14 08:31:38', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(758, 10, 24, '192.168.137.190', '2018-12-14 08:32:54', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/send/0'),
(759, 10, 24, '192.168.137.190', '2018-12-14 08:32:59', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/status'),
(760, 9, 24, '192.168.137.190', '2018-12-14 08:32:59', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/status'),
(761, 8, 24, '192.168.137.190', '2018-12-14 08:33:00', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/status'),
(762, 7, 24, '192.168.137.190', '2018-12-14 08:33:01', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/paginas/status'),
(763, 2, 24, '192.168.137.190', '2018-12-14 08:38:14', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(764, 2, 24, '192.168.137.190', '2018-12-14 08:38:45', 'vitrines', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/del'),
(765, 1, 24, '192.168.137.190', '2018-12-14 08:38:47', 'vitrines', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/del'),
(766, 3, 24, '192.168.137.190', '2018-12-14 08:38:58', 'vitrines', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(767, 3, 24, '192.168.137.190', '2018-12-14 08:39:00', 'vitrines', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/status'),
(768, 4, 24, '192.168.137.190', '2018-12-14 08:39:42', 'vitrines', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(769, 4, 24, '192.168.137.190', '2018-12-14 08:39:45', 'vitrines', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/status'),
(770, 4, 24, '192.168.137.190', '2018-12-14 08:41:33', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(771, 3, 24, '192.168.137.190', '2018-12-14 08:41:42', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(772, 4, 24, '192.168.137.190', '2018-12-14 08:42:44', 'vitrines', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/del'),
(773, 3, 24, '192.168.137.190', '2018-12-14 08:42:45', 'vitrines', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/del'),
(774, 5, 24, '192.168.137.190', '2018-12-14 08:42:57', 'vitrines', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(775, 5, 24, '192.168.137.190', '2018-12-14 08:43:00', 'vitrines', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/status'),
(776, 5, 24, '192.168.137.126', '2018-12-14 08:44:09', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(777, 5, 24, '192.168.137.126', '2018-12-14 08:45:00', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(778, 5, 24, '192.168.137.126', '2018-12-14 08:46:59', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(779, 6, 24, '192.168.137.126', '2018-12-14 08:47:41', 'vitrines', 'INSERT', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(780, 6, 24, '192.168.137.126', '2018-12-14 08:47:54', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(781, 6, 24, '192.168.137.126', '2018-12-14 08:48:30', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(782, 6, 24, '192.168.137.126', '2018-12-14 08:48:36', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(783, 6, 24, '192.168.137.126', '2018-12-14 08:48:47', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(784, 6, 24, '192.168.137.126', '2018-12-14 08:54:22', 'vitrines', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(785, 7, 24, '192.168.137.190', '2018-12-14 08:55:48', 'vitrines', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/send/0'),
(786, 7, 24, '192.168.137.190', '2018-12-14 08:55:55', 'vitrines', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/status'),
(787, 6, 24, '192.168.137.190', '2018-12-14 08:56:42', 'vitrines', 'DEL', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '/hospitalrn/painel/vitrines/del'),
(788, 0, 0, '192.168.137.126', '2018-12-17 07:39:12', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '/hospitalrn/painel/logout'),
(789, 0, 0, '192.168.137.111', '2019-03-01 14:02:40', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/logout'),
(790, 24, 0, '192.168.137.111', '2019-03-01 14:02:42', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/autentica'),
(791, 6, 24, '192.168.137.111', '2019-03-01 14:11:55', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/grupos/send/0'),
(792, 1963, 24, '192.168.137.111', '2019-03-01 14:11:55', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/grupos/send/0'),
(793, 24, 24, '192.168.137.111', '2019-03-01 14:15:55', 'usuarios', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/usuarios/send/0'),
(794, 0, 24, '192.168.137.111', '2019-03-01 14:15:55', 'grupos_usuarios', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/usuarios/send/0'),
(795, 1, 24, '192.168.137.111', '2019-03-01 14:16:15', 'grupos', 'UPDATE', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/grupos/send/0'),
(796, 1973, 24, '192.168.137.111', '2019-03-01 14:16:15', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/grupos/send/0'),
(797, 6, 24, '192.168.137.111', '2019-03-01 14:16:24', 'grupos', 'DEL', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/grupos/del'),
(798, 24, 24, '192.168.137.111', '2019-03-01 14:20:29', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/logout'),
(799, 0, 0, '192.168.137.111', '2019-03-01 14:58:26', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/logout'),
(800, 24, 0, '192.168.137.111', '2019-03-01 14:58:27', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/autentica'),
(801, 0, 0, '192.168.137.111', '2019-03-01 15:00:32', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Mobile Safari/537.36', '/_ate2018/hospitalrn/painel/logout'),
(802, 24, 0, '192.168.137.111', '2019-03-01 15:00:36', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/autentica'),
(803, 24, 24, '192.168.137.111', '2019-03-01 15:00:41', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/logout'),
(804, 24, 0, '192.168.137.111', '2019-03-01 15:00:49', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/autentica'),
(805, 24, 24, '192.168.137.111', '2019-03-01 15:00:54', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '/_ate2018/hospitalrn/painel/logout'),
(806, 0, 0, '::1', '2019-03-12 09:49:12', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(807, 24, 0, '::1', '2019-03-12 10:08:55', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(808, 4, 24, '::1', '2019-03-12 10:51:15', 'modulos', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(809, 4, 24, '::1', '2019-03-12 10:51:28', 'modulos', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(810, 4, 24, '::1', '2019-03-12 11:04:14', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/status'),
(811, 4, 24, '::1', '2019-03-12 11:04:46', 'modulos', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(812, 0, 0, '::1', '2019-03-12 11:19:41', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(813, 0, 0, '::1', '2019-03-12 11:19:46', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(814, 24, 0, '::1', '2019-03-12 11:19:50', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(815, 0, 0, '::1', '2019-03-12 11:22:29', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(816, 24, 0, '::1', '2019-03-12 11:22:32', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(817, 0, 0, '::1', '2019-03-12 11:29:37', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(818, 0, 0, '::1', '2019-03-12 11:29:42', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(819, 24, 0, '::1', '2019-03-12 11:29:44', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(820, 0, 0, '::1', '2019-03-12 11:41:54', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(821, 0, 0, '::1', '2019-03-12 11:42:05', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(822, 24, 0, '::1', '2019-03-12 11:42:07', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(823, 4, 24, '::1', '2019-03-12 13:21:22', 'modulos', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(824, 0, 0, '::1', '2019-03-12 13:53:03', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(825, 24, 0, '::1', '2019-03-12 13:53:07', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(826, 0, 0, '::1', '2019-03-12 13:59:01', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(827, 24, 0, '::1', '2019-03-12 13:59:03', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(828, 24, 24, '::1', '2019-03-12 13:59:08', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(829, 24, 0, '::1', '2019-03-12 13:59:10', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(830, 2, 24, '::1', '2019-03-12 14:11:04', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(831, 4, 24, '::1', '2019-03-12 14:14:27', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(832, 5, 24, '::1', '2019-03-12 14:16:32', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(833, 6, 24, '::1', '2019-03-12 14:17:27', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(834, 7, 24, '::1', '2019-03-12 14:19:11', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(835, 280, 24, '::1', '2019-03-12 14:20:14', 'usuarios', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/usuarios/send/0'),
(836, 0, 24, '::1', '2019-03-12 14:20:14', 'grupos_usuarios', 'ADD', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/usuarios/send/0'),
(837, 0, 0, '::1', '2019-03-12 14:35:40', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(838, 24, 0, '::1', '2019-03-12 14:35:42', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(839, 0, 0, '::1', '2019-03-12 14:53:37', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(840, 24, 0, '::1', '2019-03-12 14:53:42', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(841, 0, 0, '::1', '2019-03-12 14:54:42', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(842, 24, 0, '::1', '2019-03-12 14:54:44', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(843, 8, 24, '::1', '2019-03-12 15:28:13', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(844, 0, 0, '::1', '2019-03-12 16:43:48', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(845, 24, 0, '::1', '2019-03-12 16:43:50', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(846, 9, 24, '::1', '2019-03-12 17:15:32', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(847, 0, 0, '::1', '2019-03-12 17:26:46', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(848, 24, 0, '::1', '2019-03-12 17:26:48', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(849, 10, 24, '::1', '2019-03-12 17:27:33', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(850, 10, 24, '::1', '2019-03-12 17:32:42', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/status'),
(851, 7, 24, '::1', '2019-03-12 17:33:36', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/status'),
(852, 0, 0, '::1', '2019-03-12 20:31:39', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(853, 24, 0, '::1', '2019-03-12 20:33:06', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(854, 0, 0, '::1', '2019-03-12 20:33:14', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(855, 24, 0, '::1', '2019-03-12 20:33:16', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(856, 24, 24, '::1', '2019-03-12 20:33:18', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(857, 5, 24, '::1', '2019-03-12 21:12:15', 'modulos', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(858, 5, 24, '::1', '2019-03-12 21:12:30', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/status'),
(859, 5, 24, '::1', '2019-03-12 21:13:26', 'modulos', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(860, 5, 24, '::1', '2019-03-12 21:15:17', 'modulos', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(861, 0, 0, '::1', '2019-03-12 21:51:03', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(862, 24, 0, '::1', '2019-03-12 21:51:05', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(863, 0, 0, '::1', '2019-03-12 21:56:26', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(864, 24, 0, '::1', '2019-03-12 21:56:28', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(865, 5, 24, '::1', '2019-03-12 22:27:13', 'modulos', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(866, 0, 0, '::1', '2019-03-12 22:30:06', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(867, 24, 0, '::1', '2019-03-12 22:30:11', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(868, 0, 0, '::1', '2019-03-13 07:34:04', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(869, 24, 0, '::1', '2019-03-13 07:34:35', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(870, 5, 24, '::1', '2019-03-13 07:59:16', 'modulos', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(871, 1, 24, '::1', '2019-03-13 08:00:46', 'categorias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/send/0'),
(872, 1, 24, '::1', '2019-03-13 08:00:52', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/status'),
(873, 2, 24, '::1', '2019-03-13 08:01:11', 'categorias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/send/0'),
(874, 2, 24, '::1', '2019-03-13 08:01:15', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/status'),
(875, 3, 24, '::1', '2019-03-13 08:01:40', 'categorias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/send/0'),
(876, 3, 24, '::1', '2019-03-13 08:01:42', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/status'),
(877, 4, 24, '::1', '2019-03-13 08:01:49', 'categorias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/send/0'),
(878, 4, 24, '::1', '2019-03-13 08:01:57', 'categorias', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/send/0'),
(879, 4, 24, '::1', '2019-03-13 08:02:02', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/categorias/status'),
(880, 11, 24, '::1', '2019-03-13 08:02:48', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(881, 12, 24, '::1', '2019-03-13 08:18:33', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(882, 0, 0, '::1', '2019-03-13 08:35:08', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Mobile Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(883, 0, 0, '::1', '2019-03-13 08:48:31', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(884, 24, 0, '::1', '2019-03-13 08:48:32', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(885, 0, 0, '::1', '2019-03-13 09:20:34', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(886, 24, 0, '::1', '2019-03-13 09:20:36', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(887, 0, 0, '::1', '2019-03-13 09:46:55', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/logout'),
(888, 24, 0, '::1', '2019-03-13 09:46:56', 'usuarios', 'LOGIN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/autentica'),
(889, 13, 24, '::1', '2019-03-13 09:47:37', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(890, 6, 24, '::1', '2019-03-13 10:22:23', 'modulos', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/send/0'),
(891, 6, 24, '::1', '2019-03-13 10:22:28', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/modulos/status'),
(892, 1, 24, '::1', '2019-03-13 10:24:40', 'contatos', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/contatos/send/0'),
(893, 1, 24, '::1', '2019-03-13 10:25:37', 'contatos', 'UPDATE', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/contatos/send/0'),
(894, 2, 24, '::1', '2019-03-13 10:47:23', 'contatos', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/contato/send'),
(895, 2, 24, '::1', '2019-03-13 12:33:42', 'contatos', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/contato/send'),
(896, 3, 24, '::1', '2019-03-13 12:39:23', 'contatos', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/contato/send'),
(897, 5, 24, '::1', '2019-03-13 12:46:12', 'contatos', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/contato/send');
INSERT INTO `ci_logs` (`id`, `registro_id`, `user_id`, `user_ip`, `created`, `tabela`, `acao`, `browser`, `url`) VALUES
(898, 14, 24, '::1', '2019-03-13 15:43:42', 'noticias', 'INSERT', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', '/Teste-Vaga-Backend/painel/noticias/send/0'),
(899, 0, 0, '::1', '2019-03-26 13:43:55', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/logout'),
(900, 24, 0, '::1', '2019-03-26 13:58:17', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/autentica'),
(901, 9, 24, '::1', '2019-03-26 14:00:24', 'grupos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(902, 1978, 24, '::1', '2019-03-26 14:00:24', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(903, 9, 24, '::1', '2019-03-26 14:00:36', 'grupos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/grupos/status'),
(904, 4, 24, '::1', '2019-03-26 18:27:26', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(905, 2, 24, '::1', '2019-03-26 18:29:38', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(906, 4, 24, '::1', '2019-03-26 18:37:54', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(907, 4, 24, '::1', '2019-03-26 18:43:29', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(908, 4, 24, '::1', '2019-03-26 18:43:38', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(909, 4, 24, '::1', '2019-03-26 18:44:03', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(910, 4, 24, '::1', '2019-03-26 18:44:50', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(911, 4, 24, '::1', '2019-03-26 18:46:17', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(912, 2, 24, '::1', '2019-03-26 18:46:54', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(913, 1, 24, '::1', '2019-03-26 18:47:01', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(914, 3, 24, '::1', '2019-03-26 18:47:10', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(915, 4, 24, '::1', '2019-03-26 18:47:55', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(916, 2, 24, '::1', '2019-03-26 18:49:14', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(917, 1, 24, '::1', '2019-03-26 19:02:12', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(918, 4, 24, '::1', '2019-03-26 19:09:01', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(919, 4, 24, '::1', '2019-03-26 19:09:55', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(920, 4, 24, '::1', '2019-03-26 19:10:00', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(921, 4, 24, '::1', '2019-03-26 19:10:14', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(922, 4, 24, '::1', '2019-03-26 19:10:26', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(923, 4, 24, '::1', '2019-03-26 19:13:13', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(924, 4, 24, '::1', '2019-03-26 19:14:17', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(925, 4, 24, '::1', '2019-03-26 19:14:24', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(926, 3, 24, '::1', '2019-03-26 19:14:38', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(927, 2, 24, '::1', '2019-03-26 19:15:35', 'categorias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/send/0'),
(928, 1, 24, '::1', '2019-03-26 19:15:45', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(929, 4, 24, '::1', '2019-03-26 19:16:23', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(930, 4, 24, '::1', '2019-03-26 19:16:25', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(931, 3, 24, '::1', '2019-03-26 19:16:26', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(932, 2, 24, '::1', '2019-03-26 19:16:27', 'categorias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/categorias/status'),
(933, 15, 24, '::1', '2019-03-26 19:36:57', 'noticias', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/noticias/send/0'),
(934, 14, 24, '::1', '2019-03-26 21:16:48', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/noticias/send/0'),
(935, 16, 24, '::1', '2019-03-26 21:20:17', 'noticias', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/noticias/send/0'),
(936, 17, 24, '::1', '2019-03-26 21:21:08', 'noticias', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/noticias/send/0'),
(937, 17, 24, '::1', '2019-03-26 21:21:32', 'noticias', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/noticias/send/0'),
(938, 7, 24, '::1', '2019-03-26 21:49:39', 'modulos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/modulos/send/0'),
(939, 7, 24, '::1', '2019-03-26 21:49:43', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/modulos/status'),
(940, 1, 24, '::1', '2019-03-26 21:50:29', 'grupos', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(941, 1984, 24, '::1', '2019-03-26 21:50:29', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(942, 1, 24, '::1', '2019-03-26 22:03:36', 'grupos', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(943, 1991, 24, '::1', '2019-03-26 22:03:36', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(944, 1, 24, '::1', '2019-03-26 22:24:46', 'equipe', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/equipe/send/0'),
(945, 2, 24, '::1', '2019-03-26 22:26:37', 'equipe', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', '/MendesCunha/painel/equipe/send/0'),
(946, 0, 0, '::1', '2019-03-28 11:59:34', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/logout'),
(947, 24, 0, '::1', '2019-03-28 11:59:41', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/autentica'),
(948, 8, 24, '::1', '2019-03-28 12:35:40', 'modulos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/send/0'),
(949, 8, 24, '::1', '2019-03-28 12:36:02', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/status'),
(950, 1, 24, '::1', '2019-03-28 12:36:14', 'grupos', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(951, 1998, 24, '::1', '2019-03-28 12:36:14', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(952, 1, 24, '::1', '2019-03-28 12:37:14', 'areas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(953, 9, 24, '::1', '2019-03-28 13:03:50', 'modulos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/send/0'),
(954, 9, 24, '::1', '2019-03-28 13:03:53', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/status'),
(955, 1, 24, '::1', '2019-03-28 13:04:06', 'grupos', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(956, 2006, 24, '::1', '2019-03-28 13:04:06', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(957, 0, 24, '::1', '2019-03-28 13:11:05', 'decisoes', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/send/0'),
(958, 0, 24, '::1', '2019-03-28 13:11:17', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(959, 0, 24, '::1', '2019-03-28 13:11:33', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(960, 1, 24, '::1', '2019-03-28 13:12:05', 'areas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/status'),
(961, 2, 24, '::1', '2019-03-28 13:12:09', 'equipe', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/equipe/status'),
(962, 1, 24, '::1', '2019-03-28 13:12:10', 'equipe', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/equipe/status'),
(963, 17, 24, '::1', '2019-03-28 13:12:14', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/noticias/status'),
(964, 16, 24, '::1', '2019-03-28 13:12:14', 'noticias', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/noticias/status'),
(965, 0, 24, '::1', '2019-03-28 13:12:39', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(966, 10, 24, '::1', '2019-03-28 13:26:42', 'modulos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/send/0'),
(967, 10, 24, '::1', '2019-03-28 13:26:47', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/status'),
(968, 1, 24, '::1', '2019-03-28 13:26:53', 'grupos', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(969, 2015, 24, '::1', '2019-03-28 13:26:53', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(970, 24, 24, '::1', '2019-03-28 13:28:21', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/logout'),
(971, 24, 0, '::1', '2019-03-28 13:35:07', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/autentica'),
(972, 10, 24, '::1', '2019-03-28 13:38:59', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/status'),
(973, 10, 24, '::1', '2019-03-28 13:39:03', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/status'),
(974, 280, 24, '::1', '2019-03-28 13:40:01', 'usuarios', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/usuarios/status'),
(975, 11, 24, '::1', '2019-03-28 14:00:10', 'modulos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/send/0'),
(976, 11, 24, '::1', '2019-03-28 14:00:12', 'modulos', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/modulos/status'),
(977, 1, 24, '::1', '2019-03-28 14:01:05', 'grupos', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(978, 2025, 24, '::1', '2019-03-28 14:01:05', 'grupos_modulos', 'ADD', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/grupos/send/0'),
(979, 24, 24, '::1', '2019-03-28 14:16:35', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/logout'),
(980, 24, 0, '::1', '2019-03-28 14:16:42', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/autentica'),
(981, 1, 24, '::1', '2019-03-28 14:19:34', 'news', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/news/send/0'),
(982, 1, 24, '::1', '2019-03-28 14:19:39', 'news', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/news/status'),
(983, 1, 24, '::1', '2019-03-28 14:19:55', 'news', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/news/send/0'),
(984, 2, 24, '::1', '2019-03-28 14:20:13', 'equipe', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/equipe/status'),
(985, 2, 24, '::1', '2019-03-28 14:20:14', 'equipe', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/equipe/status'),
(986, 1, 24, '::1', '2019-03-28 14:20:20', 'news', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/news/status'),
(987, 0, 24, '::1', '2019-03-28 14:20:50', 'paginas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/paginas/send/0'),
(988, 0, 24, '::1', '2019-03-28 14:20:53', 'paginas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/paginas/status'),
(989, 0, 0, '::1', '2019-03-29 21:02:22', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/lopmed/painel/logout'),
(990, 24, 0, '::1', '2019-03-29 21:02:28', 'usuarios', 'LOGIN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/lopmed/painel/autentica'),
(991, 1, 24, '::1', '2019-04-01 17:27:29', 'areas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(992, 2, 24, '::1', '2019-04-01 17:28:20', 'areas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(993, 2, 24, '::1', '2019-04-01 17:28:33', 'areas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/status'),
(994, 3, 24, '::1', '2019-04-01 17:29:13', 'areas', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(995, 3, 24, '::1', '2019-04-01 17:29:16', 'areas', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/status'),
(996, 3, 24, '::1', '2019-04-01 17:29:49', 'areas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(997, 2, 24, '::1', '2019-04-01 17:30:17', 'areas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(998, 1, 24, '::1', '2019-04-01 17:30:36', 'areas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(999, 2, 24, '::1', '2019-04-01 17:30:52', 'areas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(1000, 2, 24, '::1', '2019-04-01 17:31:57', 'areas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(1001, 3, 24, '::1', '2019-04-01 17:32:05', 'areas', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/areas/send/0'),
(1002, 3, 24, '::1', '2019-04-01 19:28:22', 'equipe', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/equipe/send/0'),
(1003, 3, 24, '::1', '2019-04-01 19:28:24', 'equipe', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/equipe/status'),
(1004, 0, 24, '::1', '2019-04-01 21:57:26', 'decisoes', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/send/0'),
(1005, 0, 24, '::1', '2019-04-01 21:57:29', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(1006, 0, 24, '::1', '2019-04-01 21:57:58', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(1007, 0, 24, '::1', '2019-04-01 21:58:00', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(1008, 0, 24, '::1', '2019-04-01 21:58:15', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(1009, 0, 24, '::1', '2019-04-01 21:58:15', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(1010, 1, 24, '::1', '2019-04-01 22:10:34', 'decisoes', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/send/0'),
(1011, 2, 24, '::1', '2019-04-01 22:10:56', 'decisoes', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/send/0'),
(1012, 2, 24, '::1', '2019-04-01 22:11:08', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(1013, 1, 24, '::1', '2019-04-01 22:11:09', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(1014, 3, 24, '::1', '2019-04-01 22:11:59', 'decisoes', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/send/0'),
(1015, 3, 24, '::1', '2019-04-01 22:12:00', 'decisoes', 'UPD STATUS', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/status'),
(1016, 1, 24, '::1', '2019-04-01 22:14:11', 'decisoes', 'UPDATE', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/painel/decisoes/send/0'),
(1017, 2, 24, '::1', '2019-04-02 14:38:08', 'newsletter', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/contato/newsletter'),
(1018, 3, 24, '::1', '2019-04-02 14:39:12', 'newsletter', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/contato/newsletter'),
(1019, 4, 24, '::1', '2019-04-02 09:41:43', 'newsletter', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/contato/newsletter'),
(1020, 5, 24, '::1', '2019-04-02 14:42:58', 'newsletter', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/contato/newsletter'),
(1021, 15, 24, '::1', '2019-04-02 15:18:15', 'contatos', 'INSERT', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '/MendesCunha/contato/send');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_modulos`
--

CREATE TABLE `ci_modulos` (
  `id` int(10) NOT NULL,
  `titulo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 NOT NULL,
  `model` varchar(100) CHARACTER SET latin1 DEFAULT 'posts',
  `file` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `excluido` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ci_modulos`
--

INSERT INTO `ci_modulos` (`id`, `titulo`, `url`, `model`, `file`, `status`, `excluido`) VALUES
(1, 'Modulos', 'modulos', 'modulos', 0, 1, 0),
(2, 'Grupos', 'grupos', 'grupos', 0, 1, 0),
(3, 'Usuarios', 'usuarios', 'usuarios', 0, 1, 0),
(4, 'Noticias', 'noticias', 'noticias', 0, 1, 0),
(5, 'Categorias', 'categorias', 'categorias', 0, 1, 0),
(6, 'Contatos', 'contatos', 'contatos', 0, 1, 0),
(7, 'Equipe', 'equipe', 'equipe', 0, 1, 0),
(8, 'Áreas', 'areas', 'areas', 0, 1, 0),
(9, 'Decisões', 'decisoes', 'decisoes', 0, 1, 0),
(10, 'Páginas', 'paginas', 'paginas', 0, 1, 0),
(11, 'News', 'news', 'news', 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_newsletter`
--

CREATE TABLE `ci_newsletter` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `lido` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `excluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_newsletter`
--

INSERT INTO `ci_newsletter` (`id`, `email`, `lido`, `data`, `status`, `excluido`) VALUES
(1, 'Email de teste', 0, '2019-03-28 09:19:34', 0, 0),
(2, 'carlosemidiopereira@gmail.com', 0, '2019-04-02 08:38:08', 0, 0),
(3, 'carlosemidiopereira@gmail.com', 0, '2019-04-02 08:39:12', 0, 0),
(4, 'carlosemidiopereira@gmail.com', 0, '2019-04-02 08:41:43', 0, 0),
(5, 'carlosemidiopereira@gmail.com', 0, '2019-04-02 09:42:58', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_noticias`
--

CREATE TABLE `ci_noticias` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `autor` text NOT NULL,
  `titulo` text NOT NULL,
  `chamada` text NOT NULL,
  `conteudo` text NOT NULL,
  `folder` text NOT NULL,
  `arquivo` text NOT NULL,
  `data` datetime NOT NULL,
  `data_pub` text NOT NULL,
  `status` int(11) NOT NULL,
  `excluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ci_noticias`
--

INSERT INTO `ci_noticias` (`id`, `categoria`, `autor`, `titulo`, `chamada`, `conteudo`, `folder`, `arquivo`, `data`, `data_pub`, `status`, `excluido`) VALUES
(16, 2, 'Teste 1', 'Teste 1', 'Teste 1', '<p>Teste 1 (adicionar notícia)</p>', '2019/03/26', 'e40bb5a2468e91991637ecb5d78e3097.jpg', '2019-03-26 16:20:18', '2019-03-26 17:19', 1, 0),
(17, 2, 'Teste 2', 'Teste 2', 'Teste 2', '<p>Teste 2 (editar notícia)</p>', '2019/03/26', 'd587040e40deedef6cc316603ef75e81.jpg', '2019-03-26 16:21:32', '2019-03-28 17:20', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_paginas`
--

CREATE TABLE `ci_paginas` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `slug` text NOT NULL,
  `conteudo` text NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `excluido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_usuarios`
--

CREATE TABLE `ci_usuarios` (
  `id` int(1) NOT NULL,
  `nome` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `tipo` int(1) DEFAULT '0',
  `setor_id` int(10) DEFAULT '0',
  `gabinete_id` int(11) DEFAULT NULL,
  `hits` int(10) DEFAULT '0',
  `num_reg` int(3) DEFAULT '10',
  `status` int(1) DEFAULT '0',
  `excluido` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ci_usuarios`
--

INSERT INTO `ci_usuarios` (`id`, `nome`, `email`, `username`, `password`, `created`, `tipo`, `setor_id`, `gabinete_id`, `hits`, `num_reg`, `status`, `excluido`) VALUES
(24, 'Maxmeio', 'programacao@maxmeio.com', 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2013-09-02 11:54:57', 0, NULL, NULL, 594, 0, 1, 0),
(280, 'carlos', 'carlosemidiopereira@gmail.com', 'carlos', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2019-03-12 13:20:14', 1, 0, 0, 0, 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_areas`
--
ALTER TABLE `ci_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_categorias`
--
ALTER TABLE `ci_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_contatos`
--
ALTER TABLE `ci_contatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_decisoes`
--
ALTER TABLE `ci_decisoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_equipe`
--
ALTER TABLE `ci_equipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_grupos`
--
ALTER TABLE `ci_grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_grupos_modulos`
--
ALTER TABLE `ci_grupos_modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_grupos_usuarios`
--
ALTER TABLE `ci_grupos_usuarios`
  ADD UNIQUE KEY `id_usuario` (`usuario_id`,`grupo_id`);

--
-- Indexes for table `ci_logs`
--
ALTER TABLE `ci_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_modulos`
--
ALTER TABLE `ci_modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_newsletter`
--
ALTER TABLE `ci_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_noticias`
--
ALTER TABLE `ci_noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- Indexes for table `ci_paginas`
--
ALTER TABLE `ci_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_usuarios`
--
ALTER TABLE `ci_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_areas`
--
ALTER TABLE `ci_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ci_categorias`
--
ALTER TABLE `ci_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_contatos`
--
ALTER TABLE `ci_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ci_decisoes`
--
ALTER TABLE `ci_decisoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ci_equipe`
--
ALTER TABLE `ci_equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ci_grupos`
--
ALTER TABLE `ci_grupos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ci_grupos_modulos`
--
ALTER TABLE `ci_grupos_modulos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2036;

--
-- AUTO_INCREMENT for table `ci_logs`
--
ALTER TABLE `ci_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- AUTO_INCREMENT for table `ci_modulos`
--
ALTER TABLE `ci_modulos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ci_newsletter`
--
ALTER TABLE `ci_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ci_noticias`
--
ALTER TABLE `ci_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ci_paginas`
--
ALTER TABLE `ci_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_usuarios`
--
ALTER TABLE `ci_usuarios`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `ci_noticias`
--
ALTER TABLE `ci_noticias`
  ADD CONSTRAINT `ci_noticias_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `ci_categorias` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
