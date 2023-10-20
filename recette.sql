-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 20 oct. 2023 à 01:41
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `recette`
--

-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `id` int(11) NOT NULL,
  `categorie` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Categorie`
--

INSERT INTO `Categorie` (`id`, `categorie`, `description`) VALUES
(22, 'Cuisine Italienne ', 'La cuisine italienne est célèbre pour sa simplicité et son utilisation d\'ingrédients de haute qualité. Les plats italiens mettent en avant les pâtes, les sauces tomates, l\'huile d\'olive, le fromage et les herbes aromatiques. Les pizzas, les pâtes fraîches comme les spaghettis et les lasagnes, ainsi que les antipasti, comme la bruschetta et les charcuteries, sont emblématiques de cette cuisine riche en saveurs.'),
(23, 'Cuisine Japonaise', 'La cuisine japonaise se distingue par sa délicatesse, sa présentation artistique et son souci du détail. Les sushis, les sashimis, les tempuras et les ramens sont des exemples de plats japonais populaires. Les Japonais utilisent des ingrédients frais tels que le poisson cru, le riz vinaigré, les légumes marinés et les algues pour créer des plats équilibrés et sains, mettant en avant les saveurs naturelles.'),
(26, 'Cuisine Mexicaine', 'La cuisine mexicaine est reconnue pour ses saveurs audacieuses et épicées. Elle inclut des plats tels que les tacos, les enchiladas, les tamales et les quesadillas. Les ingrédients clés sont le maïs, les haricots, le piment, la viande, le fromage et l\'avocat. Les sauces salsa et le guacamole sont des accompagnements traditionnels qui ajoutent une touche de piquant à cette cuisine chaleureuse et colorée.'),
(28, 'Cuisine Européenne', 'La cuisine européenne est une mosaïque de traditions culinaires riches et diverses présentes à travers le continent. Elle se caractérise par des plats emblématiques variés, allant des pâtes italiennes aux saucisses allemandes en passant par les fromages français. Les ingrédients de qualité, les techniques de cuisine raffinées et l\'importance de la gastronomie font partie intégrante de cette cuisine européenne.');

-- --------------------------------------------------------

--
-- Structure de la table `Etapes`
--

CREATE TABLE `Etapes` (
  `id` int(11) NOT NULL,
  `numero_etape` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `Log`
--

CREATE TABLE `Log` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `date_accessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `page_visited` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Log`
--

INSERT INTO `Log` (`id`, `ip_address`, `date_accessed`, `page_visited`, `username`) VALUES
(1, '::1', '2023-10-20 05:11:32', '/PHP/TP3-v2/home', '27'),
(2, '::1', '2023-10-20 05:11:40', '/PHP/TP3-v2/login/logout', '27'),
(3, '::1', '2023-10-20 05:11:40', '/PHP/TP3-v2/login', 'visitor'),
(4, '::1', '2023-10-20 05:11:52', '/PHP/TP3-v2/login/auth', 'visitor'),
(5, '::1', '2023-10-20 05:11:52', '/PHP/TP3-v2/home', '26'),
(6, '::1', '2023-10-20 05:11:59', '/PHP/TP3-v2/home', '26'),
(7, '::1', '2023-10-20 05:12:01', '/PHP/TP3-v2/login/logout', '26'),
(8, '::1', '2023-10-20 05:12:01', '/PHP/TP3-v2/login', 'visitor'),
(9, '::1', '2023-10-20 05:12:06', '/PHP/TP3-v2/', 'visitor'),
(10, '::1', '2023-10-20 05:13:21', '/PHP/TP3-v2/', 'visitor'),
(11, '::1', '2023-10-20 05:13:23', '/PHP/TP3-v2/recette', 'visitor'),
(12, '::1', '2023-10-20 05:13:23', '/PHP/TP3-v2/login', 'visitor'),
(13, '::1', '2023-10-20 05:13:31', '/PHP/TP3-v2/login/auth', 'visitor'),
(14, '::1', '2023-10-20 05:13:31', '/PHP/TP3-v2/home/error', 'visitor'),
(15, '::1', '2023-10-20 05:13:36', '/PHP/TP3-v2/login', 'visitor'),
(16, '::1', '2023-10-20 05:13:44', '/PHP/TP3-v2/login/auth', 'visitor'),
(17, '::1', '2023-10-20 05:13:44', '/PHP/TP3-v2/home/error', 'visitor'),
(20, '::1', '2023-10-20 05:13:58', '/PHP/TP3-v2/home', 'tom'),
(21, '::1', '2023-10-20 05:14:02', '/PHP/TP3-v2/recette', 'tom'),
(22, '::1', '2023-10-20 05:16:14', '/PHP/TP3-v2/recette/show/91', 'tom'),
(23, '::1', '2023-10-20 05:16:16', '/PHP/TP3-v2/recette/edit/91', 'tom'),
(24, '::1', '2023-10-20 05:16:16', '/PHP/TP3-v2/recette', 'tom'),
(25, '::1', '2023-10-20 05:16:20', '/PHP/TP3-v2/recette/show/91', 'tom'),
(26, '::1', '2023-10-20 05:16:22', '/PHP/TP3-v2/recette/edit/91', 'tom'),
(27, '::1', '2023-10-20 05:16:22', '/PHP/TP3-v2/recette', 'tom'),
(28, '::1', '2023-10-20 05:16:24', '/PHP/TP3-v2/recette/show/91', 'tom'),
(29, '::1', '2023-10-20 05:16:26', '/PHP/TP3-v2/recette/edit/91', 'tom'),
(30, '::1', '2023-10-20 05:16:26', '/PHP/TP3-v2/recette', 'tom'),
(31, '::1', '2023-10-20 05:16:33', '/PHP/TP3-v2/recette/show/88', 'tom'),
(32, '::1', '2023-10-20 05:16:36', '/PHP/TP3-v2/recette/edit/88', 'tom'),
(33, '::1', '2023-10-20 05:16:36', '/PHP/TP3-v2/recette', 'tom'),
(34, '::1', '2023-10-20 05:16:43', '/PHP/TP3-v2/login/logout', 'tom'),
(35, '::1', '2023-10-20 05:16:43', '/PHP/TP3-v2/login', 'visitor'),
(36, '::1', '2023-10-20 05:16:52', '/PHP/TP3-v2/login/auth', 'visitor'),
(37, '::1', '2023-10-20 05:16:53', '/PHP/TP3-v2/home', 'nana'),
(38, '::1', '2023-10-20 05:16:57', '/PHP/TP3-v2/recette/create', 'nana'),
(39, '::1', '2023-10-20 05:16:59', '/PHP/TP3-v2/recette', 'nana'),
(40, '::1', '2023-10-20 05:17:00', '/PHP/TP3-v2/recette/show/91', 'nana'),
(41, '::1', '2023-10-20 05:17:03', '/PHP/TP3-v2/recette/edit/91', 'nana'),
(42, '::1', '2023-10-20 05:17:06', '/PHP/TP3-v2/recette/destroy', 'nana'),
(43, '::1', '2023-10-20 05:17:06', '/PHP/TP3-v2/recette', 'nana'),
(44, '::1', '2023-10-20 05:17:09', '/PHP/TP3-v2/recette/show/90', 'nana'),
(45, '::1', '2023-10-20 05:17:11', '/PHP/TP3-v2/recette/edit/90', 'nana'),
(46, '::1', '2023-10-20 05:17:12', '/PHP/TP3-v2/recette/destroy', 'nana'),
(47, '::1', '2023-10-20 05:17:12', '/PHP/TP3-v2/recette', 'nana'),
(48, '::1', '2023-10-20 05:17:15', '/PHP/TP3-v2/recette/show/89', 'nana'),
(49, '::1', '2023-10-20 05:17:17', '/PHP/TP3-v2/recette/edit/89', 'nana'),
(50, '::1', '2023-10-20 05:17:18', '/PHP/TP3-v2/recette/destroy', 'nana'),
(51, '::1', '2023-10-20 05:17:18', '/PHP/TP3-v2/recette', 'nana'),
(52, '::1', '2023-10-20 05:17:21', '/PHP/TP3-v2/recette/show/88', 'nana'),
(53, '::1', '2023-10-20 05:17:23', '/PHP/TP3-v2/recette/edit/88', 'nana'),
(54, '::1', '2023-10-20 05:17:25', '/PHP/TP3-v2/recette/destroy', 'nana'),
(55, '::1', '2023-10-20 05:17:25', '/PHP/TP3-v2/recette', 'nana'),
(56, '::1', '2023-10-20 05:17:32', '/PHP/TP3-v2/recette', 'nana'),
(57, '::1', '2023-10-20 05:17:34', '/PHP/TP3-v2/home', 'nana'),
(58, '::1', '2023-10-20 05:17:35', '/PHP/TP3-v2/recette', 'nana'),
(59, '::1', '2023-10-20 05:17:41', '/PHP/TP3-v2/recette/show/85', 'nana'),
(60, '::1', '2023-10-20 05:17:45', '/PHP/TP3-v2/recette', 'nana'),
(61, '::1', '2023-10-20 05:17:48', '/PHP/TP3-v2/recette/show/85', 'nana'),
(62, '::1', '2023-10-20 05:18:04', '/PHP/TP3-v2/recette', 'nana'),
(63, '::1', '2023-10-20 05:18:10', '/PHP/TP3-v2/recette/create', 'nana'),
(64, '::1', '2023-10-20 05:18:12', '/PHP/TP3-v2/recette', 'nana'),
(65, '::1', '2023-10-20 05:18:14', '/PHP/TP3-v2/recette/show/86', 'nana'),
(66, '::1', '2023-10-20 05:18:18', '/PHP/TP3-v2/recette', 'nana');

-- --------------------------------------------------------

--
-- Structure de la table `Privilege`
--

CREATE TABLE `Privilege` (
  `id` int(11) NOT NULL,
  `privilege` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Privilege`
--

INSERT INTO `Privilege` (`id`, `privilege`) VALUES
(1, 'admin'),
(2, 'staff');

-- --------------------------------------------------------

--
-- Structure de la table `Recette`
--

CREATE TABLE `Recette` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` varchar(800) COLLATE utf8_bin DEFAULT NULL,
  `temps_preparation` int(11) DEFAULT NULL,
  `temps_cuisson` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Recette`
--

INSERT INTO `Recette` (`id`, `nom`, `description`, `temps_preparation`, `temps_cuisson`, `image`, `Categorie_id`) VALUES
(85, 'Tacos', 'Des tortillas de maïs ou de farine garnies de viande (comme du bœuf, du porc, du poulet ou des fruits de mer), de salsa, d\'oignons, de coriandre et d\'autres ingrédients au choix.\r\n                ', 15, 15, 'Tacos.jpg', 26),
(86, 'Risotto', 'Un plat de riz italien cuit dans un bouillon crémeux. Il existe de nombreuses variations de risotto, y compris le risotto aux champignons, le risotto au safran et le risotto aux fruits de mer.', 45, 160, 'Risotto.jpg', 22),
(87, 'Sushi', 'Des petits morceaux de riz vinaigré garnis de poisson cru, de fruits de mer, d\'œufs, de légumes ou d\'autres ingrédients, souvent servis avec du wasabi, du gingembre mariné et de la sauce soja. Les types de sushi les plus populaires incluent le nigiri, le sashimi, et les makizushi (rouleaux de sushi).\r\n                ', 15, 15, 'Soushi.jpg', 23),
(92, 'Tacos', '\r\nLa moussaka est un plat traditionnel des cuisines grecque et méditerranéenne, bien qu\'elle soit également populaire dans d\'autres régions du Moyen-Orient et des Balkans. Voici ce que vous devez savoir sur ce délicieux plat :', 30, 50, 'Moussaka.jpg', 22);

-- --------------------------------------------------------

--
-- Structure de la table `Recette_Etape`
--

CREATE TABLE `Recette_Etape` (
  `recette_id` int(11) NOT NULL,
  `etape_id` int(11) NOT NULL,
  `ordre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`id`, `nom`, `username`, `password`, `privilege_id`) VALUES
(26, 'tom', 'tom@gmail.com', '$2y$10$DlrYKakixZpBQDZUqOXVou2AJwIhnTFsE1gVzL8t3zA1I8rzj29W.', 2),
(27, 'nana', 'nana@gmail.com', '$2y$10$KyqxAO4ew.45wm/uCeyj..sgUzi0fbfnSjJuu.GRKBAPyHOJ9RIqK', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Etapes`
--
ALTER TABLE `Etapes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Log`
--
ALTER TABLE `Log`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Privilege`
--
ALTER TABLE `Privilege`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Recette`
--
ALTER TABLE `Recette`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Recette_Categorie1_idx` (`Categorie_id`);

--
-- Index pour la table `Recette_Etape`
--
ALTER TABLE `Recette_Etape`
  ADD PRIMARY KEY (`recette_id`,`etape_id`),
  ADD KEY `fk_Etapes_has_Recette_Recette1_idx` (`etape_id`),
  ADD KEY `fk_Etapes_has_Recette_Etapes1_idx` (`recette_id`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD KEY `fk_User_Privilege1_idx` (`privilege_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `Etapes`
--
ALTER TABLE `Etapes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Log`
--
ALTER TABLE `Log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `Privilege`
--
ALTER TABLE `Privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Recette`
--
ALTER TABLE `Recette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Recette`
--
ALTER TABLE `Recette`
  ADD CONSTRAINT `fk_Recette_Categorie1` FOREIGN KEY (`Categorie_id`) REFERENCES `Categorie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Recette_Etape`
--
ALTER TABLE `Recette_Etape`
  ADD CONSTRAINT `fk_Etapes_has_Recette_Etapes1` FOREIGN KEY (`recette_id`) REFERENCES `Etapes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Etapes_has_Recette_Recette1` FOREIGN KEY (`etape_id`) REFERENCES `Recette` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `fk_User_Privilege1` FOREIGN KEY (`privilege_id`) REFERENCES `Privilege` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
