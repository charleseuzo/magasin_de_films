SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `realisateur` text NOT NULL,
  `categorie` text NOT NULL,
  `annee` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `image` text NOT NULL,
  `prix` float NOT NULL,
  `urlYoutube` text NOT NULL,
  `photopanel` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `realisateur`, `categorie`, `annee`, `duree`, `image`, `prix`, `urlYoutube`, `photopanel`, `description`) VALUES
(1, 'The Lord of the Rings : The Fellowship of the Ring', 'Peter Jackson', 'Fantasy', 2001, 178, 'lotr1.jpg', 8.5, 'V75dMMIW2B4', 'lotr1_panel.png', 'Frodon reçoit l\'Anneau de son oncle Bilbo. Sa vie et son monde sont pourtant en danger, car cet anneau appartient à Sauron, le maître des ténèbres.'),
(2, 'The Lord of the Rings : The Two Towers', 'Peter Jackson', 'Fantasy', 2002, 179, 'lotr2.jpg', 9.5, 'hYcw5ksV8YQ', 'lotr2_panel.jpg', 'Frodon et Sam continuent leur voyage vers Mordor pour détruire l\'anneau de Sauron. Aragorn, Gimli et Legolas partent pour sauver leurs amis hobbits.'),
(3, 'The Lord of the Rings : The Return of the King', 'Peter Jackson', 'Fantasy', 2003, 201, 'lotr3.jpg', 10.5, 'r5X-hFf6Bwo', 'lotr3_panel.jpg', 'Guidés par Gollum, Frodon et Sam continuent leur périple vers la montagne du destin, tandis que Gandalf et ses compagnons se retrouvent à Isengard.'),
(4, 'Pulp Fiction', 'Quentin Tarantino', 'Gangster', 1994, 154, 'pulp_fiction.jpg', 9.5, 's7EdQ4FqbhY', 'pulp_fiction_panel.jpeg', 'L\'odyssée sanglante, burlesque et cocasse de petits malfrats dans la jungle de Hollywood à travers trois histoires qui s\'entremêlent.'),
(5, 'C.R.A.Z.Y.', 'Jean-Marc Vallée', 'Comédie dramatique', 2005, 127, 'crazy.jpg', 9.5, 'N1Dvh3Xh_9k', 'crazy_panel.jpg', 'Zach est le 4eme fils d\'un père plein d\'amour filial et d\'une mère aux petits soins pour ses 5 fils. L\'enfant voue une grande admiration à son père.'),
(6, 'Jésus de Montréal', 'Denys Arcand', 'Drame', 1989, 119, 'jesus_de_montreal.jpg', 7.5, '4kiBpwemACg', 'jesus_de_montreal_panel.jpg', 'Le curé d\'un sanctuaire et d\'un lieu de pèlerinage engage le jeune comédien Daniel, nouvellement de retour à Montréal, afin de monter une version rafraîchie de la Passion du Christ.'),
(7, 'La grande séduction', 'Jean-François Pouliot', 'Comédie', 2003, 108, 'grande_seduction.jpg', 9.5, 'XcKXjO70UVk', 'grande_seduction_panel.jpg', 'Dans un petit village portuaire, les habitants, autrefois de fiers pêcheurs, sont maintenant contraints de vivre des allocations gouvernementales.'),
(8, 'Camping sauvage', 'Sylvain Roy, Guy A. Lepage, Sylvain Roy', 'Comédie', 2004, 100, 'camping_sauvage.jpg', 8.5, 'uY4rgu4scXI', 'camping_sauvage_panel.jpg', 'À la suite d\'un événement impliquant la police et la justice, Pierre-Louis Cinq-Mars, un courtier taciturne, se voit relooké et renommé Marcel Paquette par le programme de protection des témoins.'),
(9, 'Sheitan', 'Kim Chapiron', 'Horreur', 2006, 94, 'sheitan.jpg', 8.5, 'GwzDKwkwDgk', 'sheitan_panel.jpg', 'Une bande de jeunes de banlieue, la veille de Noël, partis en boîte, quitte Paris à la suite d\'une bagarre. Ils sont accueillis par une séduisante jeune fille, rencontrée dans la boîte, qui les invite chez elle, à la campagne.'),
(10, 'La Dolce Vita', 'Federico Fellini', 'Comédie dramatique', 1960, 174, 'dolce_vita.jpg', 8.5, 'ARlSVnAiX00', 'dolce_vita_panel.jpg', 'Marcello, journaliste autant que paparazzi, est sans cesse à l’affût de ragots pour sa revue. Ses virées dans Rome vont l’amener à découvrir les recoins de la faune de la capitale italienne.'),
(11, 'Les Dangereux', 'Louis Saïa', 'Comédie', 2002, 174, 'les_dangereux.jpg', 10.5, 'acZIjTfgkfk', 'les_dangereux_panel.jpg', 'Roxane est une chanteuse pop de renommée mondiale. Après un de ces spectacles, elle se fait kidnapper par une bande de ravisseurs qui demande une importante rançon afin de la revoir vivante.'),
(12, 'Polytechnique', 'Denis Villeneuve', 'Drame', 2009, 77, 'polytechnique.jpg', 8.5, 'cCP-v7lrx38', 'polytechnique_panel.jpg', 'Basé sur les témoignages des survivants du drame survenu à l\'École polytechnique de Montréal, le 6 décembre 1989. Le film raconte une tuerie.'),
(13, 'Sicario', 'Denis Villeneuve', 'Action', 2015, 121, 'sicario.jpg', 10.5, 'G8tlEcnrGnU', 'sicario_panel.jpg', 'La zone frontalière entre les États-Unis et le Mexique est devenue un territoire de non-droit. Kate, une jeune recrue idéaliste du FBI, y est enrôlée pour aider un groupe d’intervention d’élite.'),
(14, 'Dédé, à travers les brumes', 'Jean-Philippe Duval', 'Drame', 2009, 139, 'dede.jpg', 9.5, 'DPnWH-oI3Rs', 'dede_panel.jpg', 'Dans la blancheur de la campagne québécoise, à St-Étienne-de-Bolton dans l\'Estrie, Dédé Fortin et ses Colocs se retirent pour composer ce qui deviendra leur plus célèbre, mais également leur dernier album, Dehors Novembre.'),
(15, 'Blade Runner', 'Ridley Scott', 'Science-fiction', 1982, 117, 'blade_runner.png', 8.5, 'eogpIG53Cis', 'blade_runner_panel.png', '2019, Los Angeles. La Terre est surpeuplée et l’humanité est partie coloniser l’espace. Les nouveaux colons sont assistés de Replicants, androïdes que rien ne peut distinguer de l\'être humain.'),
(16, 'Horloge biologique', 'Ricardo Trogi', 'Comédie', 2005, 100, 'horloge_biologique.jpg', 10.5, 'oCO1M9siFmg', 'horloge_biologique_panel.jpg', 'Trois hommes dans la trentaine sont confrontés au désir de leurs conjointes respectives d\'avoir des enfants.'),
(17, 'Le Mirage', 'Ricardo Trogi', 'Comédie dramatique', 2015, 101, 'mirage.jpg', 9.5, 'HJVGBVjsMpM', 'mirage_panel.jpg', 'Propriétaire d\'une franchise de magasin de sport, Patrick Lupien mène une vie de banlieue rangée, auprès de sa conjointe, Isabelle, et de leurs deux enfants.'),
(18, 'Raging Bull', 'Martin Scorsese', 'Drame biographique', 1980, 129, 'raging_bull.jpg', 8.5, 'yUp6d79WRVI', 'raging_bull_panel.jpg', 'Jake LaMotta est un boxeur américain surnommé « le taureau du Bronx ». Issu d\'un milieu modeste, il atteint les sommets grâce à des combats mythiques.'),
(19, 'The Shining', 'Stanley Kubrick', 'Horreur psychologique', 1980, 144, 'the_shining.jpg', 9.5, 'S014oGZiSdI', 'the_shining_panel.jpg', 'Écrivain, Jack Torrance est engagé comme gardien, pendant tout l’hiver, d’un grand hôtel isolé du Colorado, l’Overlook, où il espère surmonter enfin sa panne d’inspiration.'),
(20, 'Elvis Gratton: Le King des kings', 'Pierre Falardeau, Julien Poulin', 'Comédie', 1985, 89, 'elvis_gratton1.jpg', 6.5, 'D88oBVriv-Y', 'elvis_gratton1_panel.jpg', 'Son but dans la vie est de devenir le meilleur imitateur d\'Elvis, et est réalisé par une exposition locale de talent de télévision. Il parvient à gagner un concours qui offre une croisière et des vacances sur l\'île fictive de la République de Santa Banana.'),
(21, 'Interstellar', 'Christopher Nolan', 'Science-fiction', 2014, 169, 'interstellar.jpg', 7.5, '2LqzF5WauAw', 'interstellar_panel.jpg', 'Un groupe d\'explorateurs exploite une faille dans l\'espace-temps afin de parcourir des distances incroyables dans le but de sauver l\'humanité.'),
(22, 'The Silence of the Lambs', 'Jonathan Demme', 'Horreur psychologique', 1991, 118, 'silence.jpg', 9.5, 'W6Mm8Sbe__o', 'silence_panel.jpg', 'Clarice Starling, une jeune agent du FBI, enquête sur Buffalo Bill, un tueur en série connu pour dépecer ses victimes. Pour comprendre la psychologie du meurtrier, elle décide de rencontrer le Dr Hannibal Lecter.'),
(23, 'Die Hard', 'John McTiernan', 'Action', 1988, 132, 'die_hard.jpg', 10.5, 'jaJuwKCmJbY', 'die_hard_panel.jpg', 'John McClane, policier new-yorkais, est venu rejoindre pour les fêtes de Noël sa femme Holly, dont il est séparé depuis plusieurs mois, dans le secret espoir d\'une réconciliation.'),
(24, 'GoodFellas', 'Martin Scorsese', 'Gangster', 1990, 145, 'goodfellas.jpg', 11.5, '2ilzidi_J8Q', 'goodfellas_panel.jpg', 'A Brooklyn, dans les années 1950, Henry Hill, né d’un père irlandais et d’une mère sicilienne, a toujours voulu devenir gangster. Il commet à 16 ans ses premiers délits.'),
(25, 'Le Dîner de cons', 'Francis Veber', 'Comédie', 1998, 77, 'diner_de_cons.jpg', 10.5, 'u8FOJEzdYAs', 'diner_de_cons_panel.jpg', 'Le passe-temps préféré d\'une bande d\'amis, satisfaits d\'eux-mêmes, consiste à se retrouver pour un dîner hebdomadaire où chacun doit amener avec lui un simple d\'esprit, dont la stupidité enchantera tout le monde.'),
(26, 'OSS 117 : Le Caire, nid d\'espions', 'Michel Hazanavicius', 'Comédie', 2006, 99, 'oss117_caire.jpg', 9.5, 'KSnoKZuKUgU', 'oss117_caire_panel.jpg', 'OSS 117 est envoyé dans un nid d\'espions : le Caire. Les complots se multiplient entre Anglais, Soviétiques, Français, partisans du roi Farouk.'),
(27, 'Star Wars : Episode IV - A New Hope', 'George Lucas', 'Science-fiction', 1977, 121, 'star_wars4.jpg', 11.5, 'vZ734NWnAHA', 'star_wars4_panel.jpg', 'Dans une galaxie lointaine, l\'univers est dominé par l\'Empire galactique avec à sa tête le sombre et impitoyable Dark Vador.'),
(28, 'Star Wars : Episode V - The Empire Strikes Back', 'Irvin Kershner', 'Science-fiction', 1980, 124, 'star_wars5.jpg', 11.5, 'JNwNXF9Y6kY', 'star_wars5_panel.jpg', 'Malgré la destruction de l\'Etoile noire, l\'Empire règne toujours sur la galaxie. Un groupe de l\'Alliance rebelle, mené par la princesse Leia se réfugie sur la planète glacée de Hoth.'),
(29, 'Star Wars : Episode VI - Return of the Jedi', 'Richard Marquand', 'Science-fiction', 1983, 132, 'star_wars6.jpg', 11.5, '5UfA_aKBGMc', 'star_wars6_panel.jpg', 'L\'empereur charge le maléfique Dark Vador de mettre au point un satellite d\'attaque pour remplacer L\'Étoile noire, détruite par Luke Skywalker et ses amis rebelles.'),
(30, 'Star Wars : Episode 1 - The Phantom Menace', 'George Lucas', 'Science-fiction', 1999, 133, 'star_wars1.jpg', 11.5, 'bD7bpG-zDJQ', 'star_wars1_panel.jpg', 'Le maître Jedi Qui-Gon Jinn et son jeune disciple, Obi-Wan Kenobi, viennent en aide à la très sage reine Amidala, dont la petite planète Naboo est occupée par les droïdes de la Fédération.'),
(31, 'Star Wars : Episode II - Attack of the Clones', 'George Lucas', 'Science-fiction', 2002, 142, 'star_wars2.jpg', 11.5, 'gYbW1F_c9eM', 'star_wars2_panel.jpg', 'Alors qu\'elle tente de maintenir la paix dans une République en crise, Padmé Amidala, l\'ancienne reine de la planète Naboo, échappe de justesse à une tentative d\'assassinat.'),
(32, 'Star Wars : Episode III - Revenge of the Sith', 'George Lucas', 'Science-fiction', 2005, 140, 'star_wars3.jpg', 11.5, '5UnjrG_N8hU', 'star_wars3_panel.jpg', 'La guerre entre les séparatistes et la République fait rage. Le chevalier Jedi Obi-Wan Kenobi et son disciple Anakin Skywalker parviennent à délivrer le chancelier Palpatine des geôles de l\'infâme général Grievous.'),
(33, 'Dumb and Dumber', 'Peter Farelly', 'Comédie', 1994, 106, 'dumb_and_dumber.jpg', 5.7, 'l13yPhimE3o', 'dumb_and_dumber_panel.jpg', 'Deux amis, spécialistes de l’élevage de lombrics, traversent une partie des États-Unis pour retrouver la propriétaire d’une valise oubliée à l’aéroport. Et se retrouvent au cœur d’un complot…'),
(34, 'Click', 'Frank Coraci', 'Comédie', 2006, 107, 'click.jpg', 6.5, 'VfwPpbNg4', 'click_panel.jpg', 'Le travail, le travail et encore le travail ! Décidément, notre pote Michael Newman (Adam Sandler) semble n\'avoir que ce mot là à la bouche au détriment de sa famille.'),
(35, 'Superbad', 'Greg Mottola', 'Comédie', 2007, 113, 'superbad.png', 7.5, 'zFjaJbihWwc', 'superbad_panel.png', 'Evan et Seth sont deux amis inséparables. L\'un est d\'une timidité maladive, l\'autre est obsédé par les filles. Mais les deux garçons sont bien décidés à perdre leur virginité avant d\'entrer en faculté.'),
(36, 'Taxi', 'Gérard Pirès', 'Action', 1998, 86, 'taxi.jpg', 8.5, 'OnEcAcVPXUw', 'taxi_panel.jpg', 'Passionné de mécanique et de vitesse, Daniel est devenu depuis peu chauffeur de taxi à Marseille. Il a modifié sa voiture pour en faire un véritable bolide de course.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
