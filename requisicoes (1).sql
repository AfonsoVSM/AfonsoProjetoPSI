-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Fev-2021 às 19:40
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `requisicoes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `materiais`
--

CREATE TABLE `materiais` (
  `id_material` int(10) UNSIGNED NOT NULL,
  `id_tipo_equipamento` int(10) UNSIGNED DEFAULT NULL,
  `designacao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_interno` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacoes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `materiais`
--

INSERT INTO `materiais` (`id_material`, `id_tipo_equipamento`, `designacao`, `codigo_interno`, `observacoes`, `created_at`, `updated_at`) VALUES
(1, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(2, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(3, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(4, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(5, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(6, 2, 'Sistemas de Informação de Apoio à Gestão', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(7, 2, 'Cidades e Regiões Digitais: impacte nas cidades e nas pessoas', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(8, 2, 'Informática e Competências Tecnológicas para a Sociedade da Informação', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisicoes`
--

CREATE TABLE `requisicoes` (
  `id_requisicao` int(10) UNSIGNED NOT NULL,
  `data_requisicao` date DEFAULT NULL,
  `data_prevista_entrega` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `data_renovacao` date DEFAULT NULL,
  `entregue` tinyint(1) NOT NULL DEFAULT 0,
  `renovou` tinyint(1) NOT NULL DEFAULT 0,
  `hora_requisicao` time DEFAULT NULL,
  `hora_entrega` time DEFAULT NULL,
  `id_material` int(10) UNSIGNED NOT NULL,
  `id_tipo_equipamento` int(10) UNSIGNED NOT NULL,
  `observacoes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `requisicoes`
--

INSERT INTO `requisicoes` (`id_requisicao`, `data_requisicao`, `data_prevista_entrega`, `data_entrega`, `data_renovacao`, `entregue`, `renovou`, `hora_requisicao`, `hora_entrega`, `id_material`, `id_tipo_equipamento`, `observacoes`, `created_at`, `updated_at`) VALUES
(3, '2020-12-15', '2020-12-16', '2020-12-12', '2020-12-18', 1, 1, '18:13:56', '18:23:48', 3, 3, 'Bom estado', NULL, NULL),
(4, '2020-12-01', '2020-12-01', '2020-12-01', '2020-12-17', 1, 1, '23:19:18', '27:22:13', 2, 2, 'Bom estado', NULL, NULL),
(5, '2020-12-01', '2020-12-01', '2020-12-01', '2020-12-17', 1, 1, '23:19:18', '27:22:13', 2, 2, 'Mau estado', NULL, NULL),
(6, '2020-12-01', '2020-12-01', '2020-12-01', '2020-12-17', 1, 1, '23:19:18', '27:22:13', 2, 2, 'Bom estado', NULL, NULL),
(7, '2020-12-01', '2020-12-01', '2020-12-01', '2020-12-17', 1, 1, '23:19:18', '27:22:13', 1, 1, 'Mau estado', NULL, NULL),
(8, '2020-12-01', '2020-12-01', '2020-12-01', '2020-12-17', 1, 1, '23:19:18', '27:22:13', 2, 2, 'Bom estado', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisitantes`
--

CREATE TABLE `requisitantes` (
  `id_requisitante` int(10) UNSIGNED NOT NULL,
  `nome` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidade` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cartao_cidadao` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipo_requisitante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `requisitantes`
--

INSERT INTO `requisitantes` (`id_requisitante`, `nome`, `telefone`, `email`, `localidade`, `cartao_cidadao`, `id_tipo_requisitante`, `created_at`, `updated_at`) VALUES
(2, 'antonio', '931313112', 'antonio@gmail.com', 'fafe', '323313', 'Aluno', NULL, NULL),
(3, 'Manuel', '93134242', 'manuel@gmail.com', 'porto', '323354', 'Professor', NULL, NULL),
(4, 'Joaquim', '931354545', 'joaquiem@gmail.com', 'braga', '323546', 'Professor', NULL, NULL),
(5, 'Adelina', '933553535', 'adelina@gmail.com', 'guimares', '323888', 'Auxiliar', NULL, NULL),
(6, 'Manuela', '931359089', 'manuela@gmail.com', 'porto', '323567', 'Auxiliar', NULL, NULL),
(7, 'Gabriel', '931313000', 'gabriel@gmail.com', 'braga', '326573', 'Professor', NULL, NULL),
(8, 'Rui', '931315784', 'rui@gmail.com', 'porto', '323543', 'Aluno', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_equipamentos`
--

CREATE TABLE `tipos_equipamentos` (
  `id_tipo_equipamento` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipos_equipamentos`
--

INSERT INTO `tipos_equipamentos` (`id_tipo_equipamento`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Computadores', NULL, NULL),
(2, 'Livros', NULL, NULL),
(3, 'Calculadoras', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_requisitantes`
--

CREATE TABLE `tipos_requisitantes` (
  `id_tipo_requisitante` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipos_requisitantes`
--

INSERT INTO `tipos_requisitantes` (`id_tipo_requisitante`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Auxiliares', NULL, NULL),
(2, 'Professores', NULL, NULL),
(3, 'Alunos', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'afonso', 'a16607@aedah.pt', NULL, '$2y$10$IksIOeIrWEnKYF8Y106ckO9h.UxzY1aGGnEzt1HDoGEePWklbtDTu', NULL, '2021-02-17 17:03:19', '2021-02-17 17:03:19');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`id_material`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `requisicoes`
--
ALTER TABLE `requisicoes`
  ADD PRIMARY KEY (`id_requisicao`);

--
-- Índices para tabela `requisitantes`
--
ALTER TABLE `requisitantes`
  ADD PRIMARY KEY (`id_requisitante`);

--
-- Índices para tabela `tipos_equipamentos`
--
ALTER TABLE `tipos_equipamentos`
  ADD PRIMARY KEY (`id_tipo_equipamento`);

--
-- Índices para tabela `tipos_requisitantes`
--
ALTER TABLE `tipos_requisitantes`
  ADD PRIMARY KEY (`id_tipo_requisitante`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `materiais`
--
ALTER TABLE `materiais`
  MODIFY `id_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `requisicoes`
--
ALTER TABLE `requisicoes`
  MODIFY `id_requisicao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `requisitantes`
--
ALTER TABLE `requisitantes`
  MODIFY `id_requisitante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tipos_requisitantes`
--
ALTER TABLE `tipos_requisitantes`
  MODIFY `id_tipo_requisitante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
