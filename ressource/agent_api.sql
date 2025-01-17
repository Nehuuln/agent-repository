-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 jan. 2025 à 12:36
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agent_api`
--

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `photo` longtext NOT NULL,
  `cinematic` longtext NOT NULL,
  `profile` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agent`
--

INSERT INTO `agent` (`id`, `category_id`, `name`, `description`, `photo`, `cinematic`, `profile`) VALUES
(1, 1, 'Brimstone', 'Tout droit venu des États-Unis d\'Amérique, Brimstone possède un arsenal orbital qui permet à son escouade de toujours avoir l\'avantage. La précision et la fiabilité de ses compétences utilitaires font de lui un commandant sans égal sur le terrain.\r\n', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/28db4af74acd1d78ddba82ed127a99731261b9c8-5120x1772.png?auto=format&fit=fill&q=80&w=1851', '7yHnJ_oNxTI?si=_ZIk2_7v0K0ej1V2', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/51e62f3c74356a7501d06feba42ac643133257d7-616x822.png?auto=format&fit=fill&q=80&w=403'),
(5, 1, 'Phoenix', 'En provenance du Royaume-Uni, Phoenix illumine le champ de bataille avec ses pouvoirs astraux et son style de combat flamboyant. Peu importe que les renforts arrivent ou non, il fonce au combat quand il le décide.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/ecdb26df5c69c4a1adcae5cf5ec31e7b0e252e66-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'ttJMFW2wUQM?si=v_RdujbjpH6qB4X4', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/47387e354c34d51b84066bc47af3c5755b92b9c5-616x822.png?auto=format&fit=fill&q=80&w=403'),
(6, 1, 'Sage', 'Véritable pilier originaire de Chine, Sage assure sa sécurité et celle de son équipe où qu\'elle aille. Elle peut réanimer ses alliés tombés au combat et repousser les assauts ennemis pour offrir des oasis de tranquillité sur un champ de bataille infernal.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/ded53d6f127a00074675eb79fde95437f2c2f521-5120x1772.png?auto=format&fit=fill&q=80&w=1851', '1aRwM_QsqQI?si=OXbjkK6m1Lvsf6ow', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/58a180961a14beb631877921e647c233804853c1-616x822.png?auto=format&fit=fill&q=80&w=403'),
(7, 1, 'Sova', 'Né dans l\'hiver éternel de la toundra russe, Sova traque, trouve et élimine ses ennemis avec une efficacité et une précision redoutables. Ses incroyables talents d\'éclaireur et son arc personnalisé lui garantissent que sa cible ne fuira jamais très longtemps.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/14331d268e545efd4f74c443e9a855f85c779aa4-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'OZ76UP-c8Ao?si=Zyg23aZd_t1bUi_r', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/08b3d8822544bd327ebed0768c8b90fcec83d1a5-616x822.png?auto=format&fit=fill&q=80&w=403'),
(8, 1, 'Viper', 'Viper est une chimiste américaine qui déploie un arsenal d\'appareils toxiques pour contrôler le champ de bataille et entraver la vision des ennemis. Si les toxines ne suffisent pas à abattre sa proie, ses machinations finiront le travail.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/9f3940cdddc20db52bade0f791763ca959dcebc6-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'Yyu0YVZCmes?si=x_9jR-f84vQ6ckB8', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/152244f121e61ca32bdd2bea9fc5370e315664fb-616x822.png?auto=format&fit=fill&q=80&w=403'),
(9, 1, 'Cypher', 'Informateur originaire du Maroc, Cypher est un véritable réseau de surveillance à lui tout seul. Il révèle tous les secrets. Il détecte toutes les manœuvres. Rien n\'échappe à Cypher.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/c5fc45f615ff1f0ca2ea71a69510316639c49ad7-5120x1772.png?auto=format&fit=fill&q=80&w=1851', '9N_iC-Yc0FA?si=VBIuc9kqtZGf587S', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/4a648cdbcbbeef137050deefeaf6a1369c606666-616x822.png?auto=format&fit=fill&q=80&w=403'),
(10, 1, 'Reyna', 'Originaire du cœur du Mexique, Reyna est une experte des combats singuliers qui se renforce à chaque élimination qu\'elle réussit. Son efficacité n\'est limitée que par son habileté, ce qui la rend très dépendante de ses propres performances.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/285726b9f66a2ab65a4f7f51f2acb8c6a33ec915-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'IzsQNYrq9AM?si=Eau-lBXo3CMTIxfN', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/7cb513c9b3eae3286449776e85753138436d553c-616x822.png?auto=format&fit=fill&q=80&w=403'),
(11, 1, 'Killjoy', 'Véritable génie originaire d\'Allemagne, Killjoy sécurise et défend les positions clés sans effort grâce à son arsenal d\'inventions. Si son équipement ne suffit pas à arrêter l\'ennemi, ce sont les entraves de ses robots qui en feront du menu fretin.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/d1a10ef502d13649e803119b02b7c9917bfc860c-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'ua-iIRQDY8g?si=NiuHz97J-KJGVWUC', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/820d36d431fff77b1e1ece39ad6f007746bd31f6-616x822.png?auto=format&fit=fill&q=80&w=403'),
(12, 1, 'Breach', 'Breach, le Suédois bionique, tire de puissantes décharges cinétiques pour ouvrir un chemin en territoire ennemi. Grâce aux dégâts et aux diversions ainsi provoqués, aucun combat n\'est jamais en sa défaveur.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/39d339b3de35f47fb0bc4bb295a9dc4aa07eeb55-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'Rux0HjzKQbw?si=Q_jUhFmlYDlJkEVq', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/e435c3378b7999a3338b408dbb5da8ba63f91150-616x822.png?auto=format&fit=fill&q=80&w=403'),
(13, 1, 'Omen', 'Véritable fantôme d\'un souvenir, Omen chasse dans les ténèbres. Il aveugle les ennemis, se téléporte d\'un bout à l\'autre du champ de bataille et laisse la peur se répandre parmi ses adversaires qui se demandent qui sera sa prochaine victime.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/dc30d112789cbf1ccd04bcce306b6059d7bca132-5120x1772.png?auto=format&fit=fill&q=80&w=1851', '_jJdWy6bDj4?si=MHqg7RKWaSvKCRN0', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/015a083717e9687de8a741cfceddb836775b5f9f-616x822.png?auto=format&fit=fill&q=80&w=403'),
(14, 1, 'Jett', 'Représentante de sa patrie, la Corée du Sud, Jett dispose d\'un style de combat basé sur l\'agilité et l\'esquive, qui lui permet de prendre des risques qu\'elle seule peut se permettre de prendre. Elle tourne autour des affrontements et découpe ses ennemis avant même qu\'ils ne s\'en rendent compte.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/74075835ddc4e8457fb30f7fe560d2aff6d51702-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'xU2U73Tk-DM?si=E6so1PwtT8mY0t9A', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/d41286dc9017bf79c0b4d907b7a260c27b0adb69-616x822.png?auto=format&fit=fill&q=80&w=403'),
(15, 1, 'Raze', 'Armée de sa personnalité et de sa grosse artillerie, Raze fait une entrée explosive depuis le Brésil. Grâce à sa force brute, elle excelle à débusquer les ennemis retranchés et à faire le ménage dans les espaces étroits, le tout avec une bonne dose de \"« boum ».', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/b4f9209f59915785278b06ff6a065f83cd4af8cc-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'ZGvz7jTVbc8?si=KlwJoD8uOcdDVreS', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/40b4b242b68afe30d21e7f95bdcacaebca46ea60-616x822.png?auto=format&fit=fill&q=80&w=403'),
(16, 1, 'Skye', 'Originaire d\'Australie, Skye et sa bande de bêtes sauvages ouvrent la voie à travers les territoires hostiles. Grâce à ses créations qui entravent l\'ennemi et à sa faculté à soigner les autres, l\'équipe est plus forte et plus en sécurité quand elle compte Skye dans ses rangs.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/c73f832e9448cec260412368f8992420b8224819-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'C3QTyMXi-WE?si=8doQjkk3NTO2kXyd', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/37ea1466beebb54aad4f16efbad184566cb80368-616x822.png?auto=format&fit=fill&q=80&w=403'),
(17, 1, 'Yoru', 'Le Japonais Yoru perce des trous dans la réalité pour s\'infiltrer derrière les lignes ennemies sans se faire repérer. En faisant preuve d\'autant de ruse que d\'agressivité, il prend ses cibles par surprise avant qu\'elles n\'aient le temps de se retourner.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/0336d9a53f3d051ca731d578b74f93b118854471-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'GdOEQv-zQVw?si=7qVaFSzDT5WdetsH', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/05e1a996814dd10d7179efee327d29a7be00e912-616x822.png?auto=format&fit=fill&q=80&w=403'),
(18, 1, 'Astra', 'L\'agent ghanéen Astra canalise les énergies du cosmos pour façonner le champ de bataille à sa convenance. Avec une maîtrise complète de sa forme astrale et un talent pour la planification stratégique, elle a toujours une large avance sur ses ennemis.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/c46c9b84f2cc977e984fe23ec3757470ac01a271-5120x1772.png?auto=format&fit=fill&q=80&w=1851', '-ylVnuPWlJM?si=pRSMbYt4SBg3bgfk', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/ba51d43803082941b0274b66413b0acc972546dd-616x822.png?auto=format&fit=fill&q=80&w=403'),
(19, 1, 'Kay/o', 'KAY/O est une machine de guerre conçue dans un but précis : neutraliser les radiants. La neutralisation des compétences ennemies réduit les possibilités de riposte des adversaires, ce qui confère un avantage décisif à son équipe.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/41354c181dc03318b79c77c5b99fee141e53cd20-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'eU1l7eBy2_Y?si=hYy5WF5waMSgAoPZ', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/fe52e0efac73ec782b19a54e98a4658b03677407-616x822.png?auto=format&fit=fill&q=80&w=403'),
(20, 1, 'Chamber', 'Aussi classe que bien équipé, le concepteur d\'armes français Chamber repousse les assaillants avec une précision mortelle. Il met à profit son arsenal bien particulier pour tenir sa position et éliminer les ennemis de loin en prévoyant une solution aux défis posés par chaque stratégie.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/e0411bbb14b69f7ce3d18b56fcf33649fdcc6a4b-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'FUoqAn5T4h4?si=qU3g81fXJW4bTqcN', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/0f5b668b77499c0051201389d6ac5e7343c9727f-616x822.png?auto=format&fit=fill&q=80&w=403'),
(21, 1, 'Neon', 'L\'agent philippin, Neon, s\'élance vers l\'avant à une vitesse fulgurante, libérant de grosses décharges de radiance biomagnétique générées frénétiquement par son corps. Elle se lance à la poursuite des ennemis qui n\'ont pas le temps de s\'y préparer et les élimine aussi vite que l\'éclair.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/911b0e61672512310b4f280a7ee65950544fee2a-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'dtx8CgjRmqE?si=lZuJM1U_LIl8mvyq', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/14145d7bf9be17afa80c04ee4fbe200076cc1769-616x822.png?auto=format&fit=fill&q=80&w=403'),
(22, 1, 'Fade', 'Originaire de Turquie, la chasseuse de primes Fade utilise le pouvoir des cauchemars pour s\'emparer des secrets ennemis. Elle traque ses cibles et révèle leurs plus grandes peurs pour mieux les briser dans l\'obscurité.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/ded0162c660c1b1f5f1667d040c80bb4140f6c4c-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'e7VOQ1l20eo?si=QfXrFEqahl3OHGf_', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/e7099cc13a665ed2b556d514e50984393ed49967-616x822.png?auto=format&fit=fill&q=80&w=403'),
(23, 1, 'Harbor', 'Venu de la côte indienne, Harbor déferle sur le terrain grâce à une technologie antique qui lui permet de contrôler l\'eau. Il déchaîne des torrents bouillonnants et de terribles lames d\'eau pour protéger ses alliés et noyer ses adversaires.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/a5f673b653fc9f09f01f1be6f5c669e5af42e958-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'qRao6FARFRo?si=bb-kQpT00ajcpQGO', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/1246b5c517f6c8fa660e884a7032c1c54994003e-616x822.png?auto=format&fit=fill&q=80&w=403'),
(24, 1, 'Gekko', 'Originaire de Los Angeles, Gekko dirige une bande de créatures chaotiques, mais très soudées. Ses amis s\'occupent de disperser les ennemis, puis Gekko rassemble sa petite troupe pour recommencer.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/eaea442872157b1108ae8a5483de2d9fd3de40ad-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'iYFh_XAXSPk?si=xhUp_2enCzVukFbl', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/8d88f133f735f6a9077679b1ece754e5624c728e-616x822.png?auto=format&fit=fill&q=80&w=403'),
(25, 1, 'Deadlock', 'Deadlock, l\'agent spécial norvégien, déploie un éventail de nanocâbles ultra-modernes pour défendre sa position contre le plus violent des assauts. Nul n\'échappe à sa vigilance, ni ne survit à sa cruelle ténacité.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/806fdea778ca34a6afe8ec5d7a074e36a09b0036-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'sUoSPryMZr0?si=rFNufZBDD-oGf0f-', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/477284dfe402a85abcf6b07512bcd6f01c8fe60e-616x822.png?auto=format&fit=fill&q=80&w=403'),
(26, 1, 'Iso', 'Venu de Chine et spécialiste de missions délicates, Iso se fond dans le flux de Radianite pour démanteler les réseaux ennemis. Capable de restructurer l\'énergie ambiante en protection anti-balles, il ne dévie pas de la route vers son prochain duel à mort.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/95a070badaa024eead9138d3e9255d8bcb155caa-5120x1772.png?auto=format&fit=fill&q=80&w=1851', '8OgcHAv6Jvk?si=gGBkwfXvkIGWjEvP', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/2c35cef9c38283f8478d1e808b1c129f371e50b3-616x822.png?auto=format&fit=fill&q=80&w=403'),
(27, 1, 'Clove', 'Clove, l\'intenable Écossais·e, déstabilise l\'ennemi dans le feu de l\'action comme le froid de la mort. Iel sème le trouble dans les rangs ennemis, même depuis sa tombe, car sa mort ne dure jamais très longtemps.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data/9b7acd6a5e06ac50039e4c8ec4e0c30e8dba7f5c-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'QL0LUaxWUOI?si=Uix4iIBsf9cIawUv', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/9f02060077f9d61dbe89555a339e6231006d9b7b-616x822.png?auto=format&fit=fill&q=80&w=403'),
(28, 1, 'Vyse', 'La génie du métal Vyse utilise le métal liquide pour isoler, piéger et désarmer ses ennemis. Par la ruse et la manipulation, elle force tous ses adversaires à craindre le champ de bataille lui-même.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/baa1f0d6255d92329812f6a689193536b4093db4-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'btpWg1gDXIE?si=qwqouisYCA2PO2iP', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/370e4b820670ef0bac7e685f6e8c5e64d19f1890-587x900.png?auto=format&fit=fill&q=80&w=403'),
(29, 1, 'Tejo', 'Originaire de Colombie, Tejo est un conseiller vétéran dans le domaine du renseignement. Son système de guidage balistique force les ennemis à perdre du terrain, voire la vie. Ses frappes chirurgicales lui permettent de garder les ennemis sous son emprise.', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/9d3724800f451f0d2f5e83277aa567b388c941e1-5120x1772.png?auto=format&fit=fill&q=80&w=1851', 'dRuRID5JoQY?si=IDBzew47fX5P0X3_', 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/3413df9939de606a355c1f88fbfc35f0774c19c9-587x900.jpg?auto=format&fit=fill&q=80&w=403'),
(30, 2, 'Adam Warlock', 'Adam Warlock, génétiquement modifié, possède une puissante magie quantique, lui permettant de connecter et de guérir les âmes d\'un simple toucher. Lorsque le moment est venu pour ses alliés de s\'unir, Warlock apparaît comme l\'épicentre inébranlable de la justice cosmique !', 'https://r.res.easebar.com/pic/20241120/02718499-b88c-4e31-83f8-e89ff802f4e1.png', 's9_ymS9vMLc?si=yHnEv42DCdieM6h8', 'https://www.marvelrivals.com/pc/gw/5da825b19a6a/heros/d21.png?v=20241123');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `logo`) VALUES
(1, 'Valorant', 'https://www.pngall.com/wp-content/uploads/13/Valorant-Logo-PNG-Cutout.png'),
(2, 'Marvel Rivlas', 'https://cdn2.steamgriddb.com/logo/c850eeb5c932d04621582f20d0160138.png');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250109100251', '2025-01-09 11:03:06', 336),
('DoctrineMigrations\\Version20250109120507', '2025-01-09 13:05:41', 102),
('DoctrineMigrations\\Version20250109131209', '2025-01-09 14:12:26', 15),
('DoctrineMigrations\\Version20250109140328', '2025-01-09 15:04:20', 36),
('DoctrineMigrations\\Version20250109154730', '2025-01-09 16:50:49', 75);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$lnQaXFWs25ML/PvWDS6.yu23Nt7k44gvi/IMG/KJ8Bi4QPT9OOZ2a');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_268B9C9D12469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `FK_268B9C9D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
