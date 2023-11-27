
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



CREATE TABLE `modality` (
  `id` int(11) UNIQUE NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `dia_semana` enum('Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo') NOT NULL,
  `horario` time DEFAULT NULL
);



INSERT INTO `modality` (`id`, `nome`, `dia_semana`, `horario`) VALUES
(1, 'Musculação', 'Segunda', '06:00:00'),
(2, 'Musculação', 'Segunda', '07:00:00'),
(3, 'Musculação', 'Segunda', '08:00:00'),
(4, '', 'Segunda', '09:00:00'),
(5, 'Musculação', 'Segunda', '17:00:00'),
(6, 'Musculação', 'Segunda', '18:00:00'),
(7, 'Musculação', 'Segunda', '19:00:00'),
(8, 'Musculação', 'Segunda', '20:00:00'),
(9, '', 'Terça', '06:00:00'),
(10, '', 'Terça', '07:00:00'),
(11, '', 'Terça', '08:00:00'),
(12, '', 'Terça', '09:00:00'),
(13, '', 'Terça', '17:00:00'),
(14, '', 'Terça', '18:00:00'),
(15, 'aeróbica', 'Terça', '19:00:00'),
(16, 'Musculação', 'Terça', '20:00:00'),
(17, 'Musculação', 'Quarta', '06:00:00'),
(18, 'Musculação', 'Quarta', '07:00:00'),
(19, '', 'Quarta', '08:00:00'),
(20, '', 'Quarta', '09:00:00'),
(21, 'Musculação', 'Quarta', '17:00:00'),
(22, 'Musculação', 'Quarta', '18:00:00'),
(23, 'Musculação', 'Quarta', '19:00:00'),
(24, 'Musculação', 'Quarta', '20:00:00'),
(25, '', 'Quinta', '06:00:00'),
(26, '', 'Quinta', '07:00:00'),
(27, '', 'Quinta', '08:00:00'),
(28, '', 'Quinta', '09:00:00'),
(29, '', 'Quinta', '17:00:00'),
(30, '', 'Quinta', '18:00:00'),
(31, 'Musculação', 'Quinta', '19:00:00'),
(32, 'aeróbica', 'Quinta', '20:00:00'),
(33, 'Musculação', 'Sexta', '06:00:00'),
(34, 'Musculação', 'Sexta', '07:00:00'),
(35, '', 'Sexta', '08:00:00'),
(36, '', 'Sexta', '09:00:00'),
(37, 'Musculação', 'Sexta', '17:00:00'),
(38, 'Musculação', 'Sexta', '18:00:00'),
(39, 'Musculação', 'Sexta', '19:00:00'),
(40, 'aeróbica', 'Sexta', '20:00:00'),
(41, '', 'Sábado', '06:00:00'),
(42, '', 'Sábado', '07:00:00'),
(43, 'Musculação', 'Sábado', '08:00:00'),
(44, '', 'Sábado', '09:00:00'),
(45, '', 'Sábado', '17:00:00'),
(46, '', 'Sábado', '18:00:00'),
(47, '', 'Sábado', '19:00:00'),
(48, '', 'Sábado', '20:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modalidadeusuario`
--

CREATE TABLE `student` (
  `id` int(11) UNIQUE NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `modalidade` varchar(255) NOT NULL,
  `frequencia` varchar(255) NOT NULL,
  `situacao` varchar(255) NOT NULL,
  `dia_semana` varchar(255)  NOT NULL,
  `horario` varchar(255) NOT NULL
);

--
-- Despejando dados para a tabela `modalidadeusuario`
--

INSERT INTO `student` (`id`, `nome`, `modalidade`, `frequencia`, `situacao`,`dia_semana`,   `horario`) VALUES
(1, "Daniel", "Musculação", 'iniciante', "regular", "segunda, terca, quinta, sexta", "09:00:00, 18:00:00"),
(2, "Lucas", "aeróbica", 'iniciante', "irregular", "terca, quinta, sexta", "07:00:00, 08:00:00"),
(3, "Joyce", "aeróbica", 'rosa', "regular", "terca, quarta, sabado", "07:00:00, 08:00:00, 17:00:00, 18:00:00"),
(4, "kamila", "Musculação", 'iniciante', "irregular", "segunda, quinta", "07:00:00, 08:00:00"),
(5, "Pedro", "Musculação", 'iniciante', "regular", "segunda, sexta", "07:00:00, 08:00:00");

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `users` (
  `id` int(11) UNIQUE NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `senha` int(11) NOT NULL
)

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `users` (`id`, `nome`, `email`, `senha`) VALUES
(1, "Daniel", "daniel@email.com.br", 123),
(2, "Kamila", "Kamila@email.com.br", 123),
(3, "Admin", "admin@email.com.br", 000);