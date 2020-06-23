-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 23 juin 2020 à 11:33
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `appvideo`
--

-- --------------------------------------------------------

--
-- Structure de la table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE IF NOT EXISTS `episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_saison` int(11) NOT NULL,
  `titre_episode` varchar(255) NOT NULL,
  `photo_episode` text NOT NULL,
  `numero_episode` int(11) NOT NULL,
  `date_diffusion` date NOT NULL,
  `synopsis_episode` text NOT NULL,
  `duree_episode` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `episodes`
--

INSERT INTO `episodes` (`id`, `id_saison`, `titre_episode`, `photo_episode`, `numero_episode`, `date_diffusion`, `synopsis_episode`, `duree_episode`) VALUES
(1, 1, 'Au bord de la rivière', 'photo Riverdale saison 1 ep 1', 1, '2015-06-01', 'La rue la vrai que de la fumée yaya', '00:40:00');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_genre` int(11) NOT NULL,
  `titre_film` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `date_sortie` date NOT NULL,
  `synopsis` text NOT NULL,
  `bande_annonce` text NOT NULL,
  `duree_film` time NOT NULL,
  `origine` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `id_genre`, `titre_film`, `photo`, `date_sortie`, `synopsis`, `bande_annonce`, `duree_film`, `origine`) VALUES
(1, 1, 'Titanic', 'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg', '1998-05-07', 'En 1997, l\'épave du Titanic est l\'objet d\'une exploration fiévreuse, menée par des chercheurs de trésor en quête d\'un diamant bleu qui se trouvait à bord. Frappée par un reportage télévisé, l\'une des rescapés du naufrage, âgée de 102 ans, Rose DeWitt, se rend sur place et évoque ses souvenirs. Fiancée à un industriel arrogant, Rose croise sur le bateau un artiste sans le sou.', 'https://www.youtube.com/watch?v=Quf4qIkD3KY&t=9s', '03:15:00', 'Américain'),
(2, 1, 'Captain Marvel', 'https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_SX300.jpg', '2019-03-06', 'Carol Danvers va devenir l\'une des super-héroïnes les plus puissantes de l\'univers lorsque la Terre se révèle l\'enjeu d\'une guerre galactique entre deux races extraterrestres.', 'https://www.youtube.com/watch?v=rndLWLmwgeA', '02:04:00', 'Américain'),
(3, 2, 'Inception', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg', '2010-07-21', 'Dom Cobb est un voleur expérimenté dans l\'art périlleux de `l\'extraction\' : sa spécialité consiste à s\'approprier les secrets les plus précieux d\'un individu, enfouis au plus profond de son subconscient, pendant qu\'il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l\'univers trouble de l\'espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier. Cependant, une ultime mission pourrait lui permettre de retrouver sa vie d\'avant.', 'https://www.youtube.com/watch?v=CPTIgILtna8', '02:28:00', 'Américain'),
(4, 1, 'Iron Man', 'https://m.media-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SX300.jpg', '2008-04-30', 'Tony Stark, inventeur de génie, vendeur d\'armes et playboy milliardaire, est kidnappé en Aghanistan. Forcé par ses ravisseurs à fabriquer une arme redoutable, il construit en secret une armure high-tech révolutionnaire qu\'il utilise pour s\'échapper. Comprenant la puissance de cette armure, il décide de l\'améliorer et de l\'utiliser pour faire régner la justice et protéger les innocents', 'https://www.youtube.com/watch?v=r01g_W-HR4s', '02:06:00', 'Américain'),
(5, 1, 'Forrest Gump', 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', '2015-10-28', 'Au fil des différents interlocuteurs qui viennent s\'asseoir tour à tour à côté de lui sur un banc, Forrest Gump raconte la fabuleuse histoire de sa vie. Sa vie est à l\'image d\'une plume qui se laisse porter par le vent, tout comme Forrest se laisse porter par les événements qu\'il traverse dans l\'Amérique de la seconde moitié du 20e siècle.', 'https://www.youtube.com/watch?v=HzxX_TDldcQ', '02:20:00', 'Américain'),
(6, 1, 'One Piece: Stampede', 'https://m.media-amazon.com/images/M/MV5BM2MxY2QwYTAtMDM1My00MTc0LWEwZjktMDdjODY2NWJiNDg2XkEyXkFqcGdeQXVyODY3ODQ2MTk@._V1_SX300.jpg', '2019-09-12', 'Luffy et son équipage sont sur le point de participer au plus grand rassemblement mondial de pirates : le Pirate Fest, organisé par le machiavélique Buena Festa.', 'https://www.youtube.com/watch?v=a3HveJDbCJI', '01:41:00', 'Japonais'),
(7, 1, 'Get Out', 'https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_SX300.jpg', '2017-05-03', 'Maintenant que Chris et sa copine Rose vont rencontrer leurs parents respectifs, elle l\'invite dans la résidence secondaire de sa famille pour un week-end. D\'abord Chris comprend que le comportement un peu étrange de la famille de Rose est lié au fait qu\'il est noir et qu\'elle est blanche. Cependant, il découvre que la vérité est bien plus dérangeante.', 'https://www.youtube.com/watch?v=tygbmB7TrsA&t=1s', '01:44:00', 'Américain'),
(8, 1, '300', 'https://m.media-amazon.com/images/M/MV5BNWMxYTZlOTUtZDExMi00YzZmLTkwYTMtZmM2MmRjZmQ3OGY4XkEyXkFqcGdeQXVyMTAwMzUyMzUy._V1_SX300.jpg', '2007-03-09', 'En 485 avant notre ère, Xerxès succède à Darius Ier sur le trône de l\'empire perse. Rapidement, les grandes cités grecques comprennent qu\'une nouvelle guerre s\'annonce. Athènes, Thèbes, Corinthe et Délos se rallient à Sparte qui dispose de la meilleure armée. En 480, le roi spartiate Léonidas est nommé commandant en chef de cette union militaire de la dernière chance. Lorsque la flotte perse rallie les fantassins de Xerxès, les troupes grecques prennent peur.', 'https://www.youtube.com/watch?v=1R2HpgDVrFc', '01:55:00', 'Américain'),
(9, 1, 'Avengers Endgame', 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg', '2019-04-24', 'Le Titan Thanos, ayant réussi à s\'approprier les six Pierres d\'Infinité et à les réunir sur le Gantelet doré, a pu réaliser son objectif de pulvériser la moitié de la population de l\'Univers. Cinq ans plus tard, Scott Lang, alias Ant-Man, parvient à s\'échapper de la dimension subatomique où il était coincé. Il propose aux Avengers une solution pour faire revenir à la vie tous les êtres disparus, dont leurs alliés et coéquipiers : récupérer les Pierres d\'Infinité dans le passé.', 'https://www.youtube.com/watch?v=wV-Q0o2OQjQ', '03:01:00', 'Américain');

-- --------------------------------------------------------

--
-- Structure de la table `filmsvus`
--

DROP TABLE IF EXISTS `filmsvus`;
CREATE TABLE IF NOT EXISTS `filmsvus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_film` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_vision` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filmsvus`
--

INSERT INTO `filmsvus` (`id`, `id_film`, `id_user`, `date_vision`) VALUES
(1, 1, 1, '2020-05-28 13:30:00'),
(2, 2, 1, '2020-05-29 15:30:00'),
(3, 3, 1, '2020-06-02 16:00:00'),
(4, 4, 1, '2020-06-09 15:00:00'),
(5, 5, 1, '2020-06-09 15:30:00'),
(6, 6, 1, '2020-06-09 16:00:00'),
(7, 7, 1, '2020-06-09 16:30:00'),
(8, 8, 1, '2020-06-09 17:00:00'),
(9, 9, 1, '2020-06-09 17:30:00');

-- --------------------------------------------------------

--
-- Structure de la table `film_genres`
--

DROP TABLE IF EXISTS `film_genres`;
CREATE TABLE IF NOT EXISTS `film_genres` (
  `id_film` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `film_genres`
--

INSERT INTO `film_genres` (`id_film`, `id_genre`) VALUES
(1, 9),
(1, 6),
(2, 1),
(2, 10),
(3, 12),
(3, 1),
(4, 1),
(4, 10),
(5, 4),
(5, 6),
(6, 2),
(6, 3),
(7, 8),
(7, 12),
(8, 13),
(8, 1),
(9, 1),
(9, 10);

-- --------------------------------------------------------

--
-- Structure de la table `film_personnes`
--

DROP TABLE IF EXISTS `film_personnes`;
CREATE TABLE IF NOT EXISTS `film_personnes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_film` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `id_fonction` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `film_personnes`
--

INSERT INTO `film_personnes` (`id`, `id_film`, `id_personne`, `id_fonction`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 2),
(3, 3, 3, 2),
(4, 4, 4, 2),
(5, 5, 5, 2),
(6, 6, 6, 2),
(7, 7, 7, 2),
(8, 8, 8, 2),
(9, 9, 9, 2),
(10, 1, 10, 3),
(11, 1, 11, 3),
(12, 1, 12, 3),
(13, 2, 13, 3),
(14, 2, 14, 3),
(15, 2, 15, 3),
(16, 3, 10, 3),
(17, 3, 16, 3),
(18, 3, 17, 3),
(19, 4, 4, 3),
(20, 4, 18, 3),
(21, 4, 19, 3),
(22, 5, 20, 3),
(23, 5, 21, 3),
(24, 5, 22, 3),
(25, 6, 23, 3),
(26, 6, 24, 3),
(27, 6, 25, 3),
(28, 7, 26, 3),
(29, 7, 27, 3),
(30, 7, 28, 3),
(31, 8, 29, 3),
(32, 8, 30, 3),
(33, 8, 31, 3),
(34, 9, 18, 3),
(35, 9, 32, 3),
(36, 9, 33, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

DROP TABLE IF EXISTS `fonctions`;
CREATE TABLE IF NOT EXISTS `fonctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_fonction` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonctions`
--

INSERT INTO `fonctions` (`id`, `nom_fonction`) VALUES
(1, 'Producteur'),
(2, 'Realisateur'),
(3, 'Acteur');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `nom_genre`) VALUES
(1, 'Action'),
(2, 'Anime'),
(3, 'Aventure'),
(4, 'Comédie'),
(5, 'Documentaire'),
(6, 'Drame'),
(7, 'Enfant'),
(8, 'Horreur'),
(9, 'Romance'),
(10, 'Science Fiction'),
(11, 'Sport'),
(12, 'Thriller'),
(13, 'Guerre');

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

DROP TABLE IF EXISTS `personnes`;
CREATE TABLE IF NOT EXISTS `personnes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`id`, `nom`, `prenom`, `date_naissance`) VALUES
(1, 'Cameron', 'James', '1954-08-16'),
(2, 'Boden', 'Anna', '1979-10-20'),
(3, 'Nolan', 'Christopher', '1970-07-30'),
(4, 'Favreau', 'Jon', '1966-10-19'),
(5, 'Zemeckis', 'Robert', '1952-05-14'),
(6, 'Otsuka', 'Takashi', '1981-02-23'),
(7, 'Peele', 'Jordan', '1979-02-21'),
(8, 'Snyder', 'Zack', '1966-03-01'),
(9, 'Russo', 'Joe', '1970-02-03'),
(10, 'Di Caprio', 'Leonardo', '1974-11-11'),
(11, 'Winslet', 'Kate', '1975-10-05'),
(12, 'Zane', 'Billy', '1966-02-24'),
(13, 'Larson', 'Brie', '1989-10-01'),
(14, 'Jackson', 'Samuel Leroy', '1948-12-21'),
(15, 'Mendelsohn', 'Ben', '1969-04-03'),
(16, 'Page', 'Ellen', '1987-02-21'),
(17, 'Murphy', 'Cillian', '1976-05-25'),
(18, 'Downey Jr', 'Robert', '1965-04-04'),
(19, 'Paltrow', 'Gwyneth', '1976-09-27'),
(20, 'Wright', 'Robin', '1966-04-08'),
(21, 'Hanks', 'Tom', '1956-07-09'),
(22, 'Sinise', 'Gary', '1955-03-17'),
(23, 'Tanaka', 'Mayumi', '1955-01-15'),
(24, 'Nakai', 'Kazuya', '1967-11-25'),
(25, 'Yamaguchi', 'Kappei', '1965-05-23'),
(26, 'Williams', 'Allison', '1988-04-13'),
(27, 'Kaluuya', 'Daniel', '1989-02-24'),
(28, 'Stanfield', 'Lakeith', '1991-08-12'),
(29, 'Headey', 'Lena', '1973-10-03'),
(30, 'Butler', 'Gerard', '1969-11-13'),
(31, 'Santoro', 'Rodrigo', '1975-08-22'),
(32, 'Johansson', 'Scarlett', '1984-11-22'),
(33, 'Hemsworth', 'Chris', '1983-08-11'),
(34, 'Benioff', 'David', '1970-09-25'),
(35, 'Benioff', 'David', '1970-09-25');

-- --------------------------------------------------------

--
-- Structure de la table `saisons`
--

DROP TABLE IF EXISTS `saisons`;
CREATE TABLE IF NOT EXISTS `saisons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_serie` int(11) NOT NULL,
  `numero_saison` int(11) NOT NULL,
  `nom_saison` varchar(255) NOT NULL,
  `nb_episode` int(11) NOT NULL,
  `liste_episode` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `saisons`
--

INSERT INTO `saisons` (`id`, `id_serie`, `numero_saison`, `nom_saison`, `nb_episode`, `liste_episode`) VALUES
(1, 1, 1, 'Saison 1', 24, 'Saison 1 liste_episode'),
(2, 1, 2, 'Saison 2', 24, 'Saison 2 liste_episode'),
(3, 2, 1, 'Saison 1', 12, ''),
(4, 3, 1, 'Saison 1', 73, '');

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_genre` int(11) NOT NULL,
  `titre_serie` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `date_sortie` date NOT NULL,
  `date_fin` date NOT NULL,
  `dateSortie` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `bande_annonce` text NOT NULL,
  `duree_serie` time NOT NULL,
  `liste_saison` varchar(255) NOT NULL,
  `nb_saison` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `series`
--

INSERT INTO `series` (`id`, `id_genre`, `titre_serie`, `photo`, `date_sortie`, `date_fin`, `dateSortie`, `synopsis`, `bande_annonce`, `duree_serie`, `liste_saison`, `nb_saison`) VALUES
(1, 1, 'Riverdale', 'https://m.media-amazon.com/images/M/MV5BNDYxOTU0NDYtYzg2MC00YzgyLTg1YzctMDc1MGJmOGIzMTc3XkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SX300.jpg', '2017-01-26', '2020-06-01', '', 'Sous ses airs de petite ville tranquille, Riverdale cache en réalité de sombres secrets. Alors qu\'une nouvelle année scolaire débute, le jeune Archie Andrews et ses amis voient leur quotidien bouleversé par la mort mystérieuse de Jason Blossom.', 'https://www.youtube.com/watch?v=QHt7M4LJgWI', '00:47:00', 'Riverdale liste_saison', 4),
(2, 1, 'Stranger Things', 'https://m.media-amazon.com/images/M/MV5BZGExYjQzNTQtNGNhMi00YmY1LTlhY2MtMTRjODg3MjU4YTAyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', '2016-07-15', '2020-06-01', '', 'En 1983, à Hawkins dans l\'Indiana, Will Byers disparaît de son domicile. Ses amis se lancent alors dans une recherche semée d\'embûches pour le retrouver. Pendant leur quête de réponses, les garçons rencontrent une étrange jeune fille en fuite.', 'https://www.youtube.com/watch?v=wQoHfKDncLU', '00:42:00', '', 0),
(3, 2, 'Game of Thrones', 'https://m.media-amazon.com/images/M/MV5BMjA5NzA5NjMwNl5BMl5BanBnXkFtZTgwNjg2OTk2NzM@._V1_SX300.jpg', '2011-04-17', '2020-06-01', '', 'Neuf familles nobles rivalisent pour le contrôle du Trône de Fer dans les sept royaumes de Westeros. Pendant ce temps, des anciennes créatures mythiques oubliées reviennent pour faire des ravages.', 'https://www.youtube.com/watch?v=aAF12LNAeNI', '00:47:00', '', 8),
(4, 1, 'Hunter x Hunter', 'https://m.media-amazon.com/images/M/MV5BZjNmZDhkN2QtNDYyZC00YzJmLTg0ODUtN2FjNjhhMzE3ZmUxXkEyXkFqcGdeQXVyNjc2NjA5MTU@._V1_SX300.jpg', '2011-10-02', '2020-06-01', '', 'Gon Freecss est un jeune garçon de 12 ans qui rêve de devenir « Hunter ». Les « Hunter » sont des aventuriers d’élites dans des domaines aussi différents que la cuisine, l’archéologie, la justice… Ils peuvent être aussi chasseurs de primes ou bien consultants. Gon va se présenter à l’examen afin de retrouver son père qu’il ne connaît pas, l’un des plus grands « Hunter » de son temps. 3 autres aspirants « Hunter » vont se rapprocher de Gon, afin de former une équipe solide et soudée. Une fois leur but commun atteint, la quête qui s’annonce sera des plus passionnantes.\r\n', 'https://www.youtube.com/watch?v=U7ZFxWPPIhs', '00:22:00', 'Hunter X Hunter', 6),
(5, 1, 'Friends', 'https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg', '1994-09-22', '2004-05-06', '', 'Les péripéties de trois jeunes femmes et trois jeunes hommes new-yorkais liés par une profonde amitié. Entre amour, travail, famille, ils partagent leurs bonheurs et leurs soucis au Central Perk, leur café favori.', 'https://www.youtube.com/watch?v=-6-rrJIL-nM', '00:22:00', 'Friends', 10),
(6, 1, 'Vikings', 'https://m.media-amazon.com/images/M/MV5BNjIzZjljZmQtOGNiYi00YmY2LWE1MGYtN2VlMmEyZDBlMzRmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', '2013-03-03', '2019-12-05', '', 'Scandinavie, à la fin du 8ème siècle. Ragnar Lodbrok, un jeune guerrier viking, est avide d\'aventures et de nouvelles conquêtes. Lassé des pillages sur les terres de l\'Est, il se met en tête d\'explorer l\'Ouest par la mer.', 'https://www.youtube.com/watch?v=mAl60ykBm4A', '00:42:00', 'Vikings', 6),
(7, 1, 'Narcos', 'https://m.media-amazon.com/images/M/MV5BNmFjODU3YzgtMGUwNC00ZGI3LWFkZjQtMjkxZDc3NmQ1MzcyXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg', '2015-08-28', '2017-09-01', '', 'Inspirée de l\'histoire du célèbre narcotrafiquant de Medellín Pablo Escobar, cette série raconte la guerre sanglante des cartels en Colombie.', 'https://www.youtube.com/watch?v=sFlUFVJFGNA', '00:49:00', 'Narcos', 3),
(8, 1, 'Prison Break', 'https://m.media-amazon.com/images/M/MV5BMTg3NTkwNzAxOF5BMl5BanBnXkFtZTcwMjM1NjI5MQ@@._V1_SX300.jpg', '2005-08-29', '2017-05-30', '', 'Son frère injustement accusé de meurtre, un ingénieur en génie civil décide de le faire évader de prison.', 'https://www.youtube.com/watch?v=VoW8RvUQdUM', '00:42:00', 'Prison Break', 5),
(9, 1, 'Naruto', 'https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg', '2002-10-03', '2007-02-08', '', 'L’histoire commence dans le village caché de Konoha, où vit Naruto, le pire garnement de l’académie des ninjas. Le passe-temps favori de celui qui rêve de devenir le nouvel Hokage est de faire les quatre cents coups. Mais pour devenir un vrai ninja, la route est longue et parsemée d’embûches…', 'https://www.youtube.com/watch?v=4t__wczfpRI', '00:22:00', 'Naruto', 9);

-- --------------------------------------------------------

--
-- Structure de la table `seriesvues`
--

DROP TABLE IF EXISTS `seriesvues`;
CREATE TABLE IF NOT EXISTS `seriesvues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_serie` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_vision` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `seriesvues`
--

INSERT INTO `seriesvues` (`id`, `id_serie`, `id_user`, `date_vision`) VALUES
(1, 1, 1, '2020-05-28 16:30:00'),
(2, 2, 1, '2020-05-29 17:00:00'),
(3, 3, 1, '2020-06-02 17:30:00'),
(4, 4, 1, '2020-06-09 15:15:00'),
(5, 5, 1, '2020-06-09 15:45:00'),
(6, 6, 1, '2020-06-09 16:15:00'),
(7, 7, 1, '2020-06-09 16:45:00'),
(8, 8, 1, '2020-06-09 16:55:00'),
(9, 9, 1, '2020-06-09 17:15:00');

-- --------------------------------------------------------

--
-- Structure de la table `serie_genres`
--

DROP TABLE IF EXISTS `serie_genres`;
CREATE TABLE IF NOT EXISTS `serie_genres` (
  `id_serie` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `serie_personnes`
--

DROP TABLE IF EXISTS `serie_personnes`;
CREATE TABLE IF NOT EXISTS `serie_personnes` (
  `id_serie` int(11) NOT NULL,
  `id_episode` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `id_fonction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `serie_personnes`
--

INSERT INTO `serie_personnes` (`id_serie`, `id_episode`, `id_personne`, `id_fonction`) VALUES
(1, 1, 1, 2),
(2, 1, 1, 2),
(3, 1, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`) VALUES
(1, 'DJELAD', 'Yacine'),
(2, 'KHEMAR', 'Mohamed');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
