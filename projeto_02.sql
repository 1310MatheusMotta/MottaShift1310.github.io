-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Out-2021 às 01:29
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_02`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.alunos`
--

CREATE TABLE `tb_admin.alunos` (
  `nomeAluno` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.alunos`
--

INSERT INTO `tb_admin.alunos` (`nomeAluno`, `id`) VALUES
('Caioo', 13),
('Márcio Fonseca', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.alunosturma`
--

CREATE TABLE `tb_admin.alunosturma` (
  `id_aluno` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.alunosturma`
--

INSERT INTO `tb_admin.alunosturma` (`id_aluno`, `id_turma`) VALUES
(13, 7),
(15, 8),
(13, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.avaliacao`
--

CREATE TABLE `tb_admin.avaliacao` (
  `nome` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `nota` int(11) NOT NULL,
  `codigo-aval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.disciplinas`
--

CREATE TABLE `tb_admin.disciplinas` (
  `nome` varchar(255) NOT NULL,
  `codigo-disc` int(11) NOT NULL,
  `codigo-aval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.instituicao`
--

CREATE TABLE `tb_admin.instituicao` (
  `nomeInst` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.instituicao`
--

INSERT INTO `tb_admin.instituicao` (`nomeInst`, `id`) VALUES
('IFRJ', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.tipo_aval`
--

CREATE TABLE `tb_admin.tipo_aval` (
  `nome` varchar(255) NOT NULL,
  `codigo-tipo-aval` int(11) NOT NULL,
  `codigo-aval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.turmainstituicao`
--

CREATE TABLE `tb_admin.turmainstituicao` (
  `id_turma` int(11) NOT NULL,
  `id_instituicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.turmainstituicao`
--

INSERT INTO `tb_admin.turmainstituicao` (`id_turma`, `id_instituicao`) VALUES
(7, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.turmas`
--

CREATE TABLE `tb_admin.turmas` (
  `nomeTurma` varchar(255) NOT NULL,
  `codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.turmas`
--

INSERT INTO `tb_admin.turmas` (`nomeTurma`, `codigo`) VALUES
('2101 - ADM', 7),
('3101 - Enfermagem', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `nome`, `img`, `email`) VALUES
(1, 'Danilo', 'danilo', 'danilo', '', 'danilodocoliveira@gmail.com'),
(2, 'Antonio', '123321', 'Antonio', '61746ea420bb7.jpg', 'tonin@gmail.com'),
(3, 'Eduardo', '123321', 'Eduardo', '', 'danilodocoliveira@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_admin.alunos`
--
ALTER TABLE `tb_admin.alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.alunosturma`
--
ALTER TABLE `tb_admin.alunosturma`
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Índices para tabela `tb_admin.avaliacao`
--
ALTER TABLE `tb_admin.avaliacao`
  ADD PRIMARY KEY (`codigo-aval`);

--
-- Índices para tabela `tb_admin.disciplinas`
--
ALTER TABLE `tb_admin.disciplinas`
  ADD PRIMARY KEY (`codigo-disc`);

--
-- Índices para tabela `tb_admin.instituicao`
--
ALTER TABLE `tb_admin.instituicao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.tipo_aval`
--
ALTER TABLE `tb_admin.tipo_aval`
  ADD PRIMARY KEY (`codigo-tipo-aval`);

--
-- Índices para tabela `tb_admin.turmainstituicao`
--
ALTER TABLE `tb_admin.turmainstituicao`
  ADD KEY `id_instituicao` (`id_instituicao`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Índices para tabela `tb_admin.turmas`
--
ALTER TABLE `tb_admin.turmas`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_admin.alunos`
--
ALTER TABLE `tb_admin.alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `tb_admin.avaliacao`
--
ALTER TABLE `tb_admin.avaliacao`
  MODIFY `codigo-aval` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_admin.disciplinas`
--
ALTER TABLE `tb_admin.disciplinas`
  MODIFY `codigo-disc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_admin.instituicao`
--
ALTER TABLE `tb_admin.instituicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_admin.tipo_aval`
--
ALTER TABLE `tb_admin.tipo_aval`
  MODIFY `codigo-tipo-aval` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_admin.turmas`
--
ALTER TABLE `tb_admin.turmas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_admin.alunosturma`
--
ALTER TABLE `tb_admin.alunosturma`
  ADD CONSTRAINT `tb_admin.alunosturma_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `tb_admin.alunos` (`id`),
  ADD CONSTRAINT `tb_admin.alunosturma_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `tb_admin.turmas` (`codigo`);

--
-- Limitadores para a tabela `tb_admin.turmainstituicao`
--
ALTER TABLE `tb_admin.turmainstituicao`
  ADD CONSTRAINT `tb_admin.turmainstituicao_ibfk_1` FOREIGN KEY (`id_instituicao`) REFERENCES `tb_admin.instituicao` (`id`),
  ADD CONSTRAINT `tb_admin.turmainstituicao_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `tb_admin.turmas` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
