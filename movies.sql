-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2018 年 12 月 16 日 15:10
-- 伺服器版本: 10.0.36-MariaDB-0ubuntu0.16.04.1
-- PHP 版本： 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `movies`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Actors`
--

CREATE TABLE `Actors` (
  `actor_id` int(11) NOT NULL,
  `actor_name` text NOT NULL,
  `top_movie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `Actors`
--

INSERT INTO `Actors` (`actor_id`, `actor_name`, `top_movie`) VALUES
(1, 'Robert Downey Jr.', 6),
(2, 'Chris Evans', 6),
(3, 'Mark Ruffalo', 6),
(4, 'Chris Hemsworth', 0),
(5, 'Chadwick Boseman', 11),
(6, 'Brie Larson', 16),
(7, 'Jude Law ', 16),
(8, 'Christian Bale', 7),
(9, 'Nicolas Cage', NULL),
(10, 'Miles Teller', NULL),
(11, 'Heath Ledger', NULL),
(12, 'Tom Hiddleston', NULL),
(13, 'Chris Pratt', NULL),
(14, 'Tom Holland', NULL),
(15, 'Paul Rudd', NULL),
(16, 'Evangeline Lilly', NULL),
(17, 'Benedict Cumberbatch', NULL),
(18, 'Margot Robbie', NULL),
(19, 'Will Smith', NULL),
(20, 'Jared Leto', NULL),
(21, 'Hugh Jackman', NULL),
(22, 'Ryan Reynolds', NULL),
(23, 'Morena Baccarin', NULL),
(24, 'Sir Patrick Stewart', NULL),
(25, 'James McAvoy', NULL),
(26, 'Michael Fassbender', NULL),
(27, 'Thomas Jane ', NULL),
(28, 'John Travolta', NULL),
(29, 'Jason Momoa', NULL),
(30, 'Ben Affleck', NULL),
(31, 'Henry Cavill', NULL),
(32, 'Amber Heard', NULL),
(33, 'Chris Pine', NULL),
(34, 'Natalie Portman', NULL),
(35, 'Michael Keaton', NULL),
(36, '', NULL),
(37, 'Gal Gadot', NULL),
(38, 'Ezra Miller', NULL),
(39, 'Ray Fisher', NULL),
(40, 'Michael Caine', NULL),
(41, 'Michael B. Jordan', NULL),
(42, 'Danai Gurira', NULL),
(43, 'Lupita Nyong\'o', NULL),
(44, 'Samuel L. Jackson', NULL),
(45, 'Zoe Saldana', NULL),
(46, 'Dave Bautista', NULL),
(47, 'Bradley Cooper', NULL),
(48, 'Vin Diesel', NULL),
(49, 'Rachel McAdams', NULL),
(50, 'Benedict Wong', NULL),
(51, 'Tilda Swinton', NULL),
(52, 'Amy Adams', NULL),
(53, 'Sir Ian McKellan', NULL),
(54, 'Jennifer Lawrence', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `Awards`
--

CREATE TABLE `Awards` (
  `award_id` int(11) NOT NULL,
  `award_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `Awards`
--

INSERT INTO `Awards` (`award_id`, `award_name`) VALUES
(1, 'Oscars'),
(4, 'Golden Globes'),
(5, 'Screen Actors Guild Awards'),
(6, 'no awards');

-- --------------------------------------------------------

--
-- 資料表結構 `Directors`
--

CREATE TABLE `Directors` (
  `director_id` int(11) UNSIGNED NOT NULL,
  `director_name` text NOT NULL,
  `top_movie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `Directors`
--

INSERT INTO `Directors` (`director_id`, `director_name`, `top_movie`) VALUES
(1, 'Joss Whedon', 1),
(2, 'Ryan Coogler', 11),
(7, 'Patty Jenkins', 8),
(8, 'Christopher Nolan', 7),
(9, 'Anna Boden', NULL),
(10, 'Mark Neveldine', NULL),
(11, 'Josh Trank', NULL),
(12, 'Taika Waititi', NULL),
(13, 'Jon Favreau', NULL),
(14, 'Kenneth Branagh', NULL),
(15, 'James Gunn', NULL),
(16, 'Joe & Anthony Russo', NULL),
(17, 'Alan Taylor', NULL),
(18, 'Peyton Reed', NULL),
(19, 'Scott Derrickson', NULL),
(20, 'Jon Watts', NULL),
(21, 'Zack Snyder', NULL),
(22, 'David Ayer', NULL),
(23, 'James Wan', NULL),
(24, 'Jonathan Hensleigh', NULL),
(25, 'Tim Miller', NULL),
(26, 'Bryan Singer', NULL),
(27, 'Matthew Vaughn', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `Genre`
--

CREATE TABLE `Genre` (
  `genre_id` int(11) NOT NULL,
  `genre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `Genre`
--

INSERT INTO `Genre` (`genre_id`, `genre`) VALUES
(1, 'Super Hero'),
(2, 'Crime'),
(3, 'Biography'),
(4, 'Fantasy'),
(5, 'Western'),
(6, 'Comedy'),
(7, 'Mystery'),
(8, 'Thriller'),
(9, 'Family'),
(10, 'Drama'),
(11, 'Sci-Fi'),
(12, 'Adventure'),
(13, 'War');

-- --------------------------------------------------------

--
-- 資料表結構 `Movie`
--

CREATE TABLE `Movie` (
  `movie_id` int(11) NOT NULL,
  `movie_name` text NOT NULL,
  `imdb_id` varchar(10) NOT NULL,
  `year_released` int(11) NOT NULL,
  `run_time` int(11) NOT NULL,
  `director_id` int(11) UNSIGNED NOT NULL,
  `award_id` int(11) NOT NULL DEFAULT '0',
  `genre_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `story_line` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `Movie`
--

INSERT INTO `Movie` (`movie_id`, `movie_name`, `imdb_id`, `year_released`, `run_time`, `director_id`, `award_id`, `genre_id`, `image`, `story_line`) VALUES
(6, 'The Avengers', 'tt0848228', 2011, 143, 1, 1, 1, 'theavengers.jpg', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.'),
(7, 'The Dark Knight', 'tt0468569', 2008, 152, 8, 1, 1, 'darkknight.jpg', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.'),
(8, 'Wonder Woman', 'tt0451279', 2017, 141, 7, 1, 13, 'wonderwoman.jpg', 'When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.'),
(11, 'Black Panther', 'tt1825683', 2018, 134, 2, 1, 1, 'blackpanther.jpg', 'T\'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country\'s past.'),
(16, 'Captain Marvel', 'tt4154664', 2019, 132, 9, 1, 1, 'captainmarvel.jpg', 'Carol Danvers becomes one of the universe\'s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.'),
(17, 'Ghost Rider: Spirit of Vengeance', 'tt1071875', 2011, 96, 10, 1, 1, 'ghostrider.jpg', 'As Johnny Blaze hides out in Eastern Europe, he is called upon to stop the devil, who is trying to take human form.'),
(18, 'Fantastic Four', 'tt1502712', 2015, 100, 11, 1, 1, 'fantasticfour.jpg', 'Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.'),
(21, 'Guardians of the Galaxy', 'tt2015381', 2014, 121, 15, 1, 1, 'guardiansofthegalaxy.jpg', 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.'),
(22, 'Spider-Man: Homecoming', 'tt2250912', 2017, 133, 20, 6, 1, 'spinder-man-homecoming.jpg', 'Peter Parker balances his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and finds himself on the trail of a new menace prowling the skies of New York City.'),
(23, 'The Punisher', 'tt0330793', 2004, 124, 24, 6, 1, 'thepunisher.jpg', 'An undercover FBI agent becomes a vigilante assassin and sets out to unleash his wrath upon the corrupt businessman who slaughtered his entire family at a reunion.'),
(24, 'Ant-Man', 'tt0478970', 2015, 117, 18, 6, 1, 'ant-man.jpg', 'Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world.'),
(25, 'Doctor Strange', 'tt1211837', 2016, 115, 19, 6, 1, 'doctorstrange.jpg', 'While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.'),
(26, 'Suicide Squad', 'tt1386697', 2016, 123, 22, 6, 1, 'suicidesquad.jpg', 'A secret government agency recruits some of the most dangerous incarcerated super-villains to form a defensive task force. Their first mission: save the world from the apocalypse.\r\n'),
(27, 'Man of Steel', 'tt0770828', 2013, 143, 21, 6, 1, 'manofsteel.jpg', 'Clark Kent, one of the last of an extinguished race disguised as an unremarkable human, is forced to reveal his identity when Earth is invaded by an army of survivors who threaten to bring the planet to the brink of destruction.'),
(28, 'Thor', 'tt0800369', 2011, 115, 14, 6, 1, 'thor.jpg', 'The powerful, but arrogant god Thor, is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.'),
(29, 'Aquaman', 'tt1477834', 2018, 143, 23, 6, 1, 'aqua-man.jpg', 'Arthur Curry learns that he is the heir to the underwater kingdom of Atlantis, and must step forward to lead his people and be a hero to the world.'),
(30, 'Deadpool', 'tt1431045', 2016, 108, 25, 6, 1, 'deadpool.jpg', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.'),
(31, 'Justice League', 'tt0974015', 2017, 120, 21, 6, 1, 'justice_league.jpg', 'Fueled by his restored faith in humanity and inspired by Superman\'s selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy.'),
(32, 'X-Men', 'tt0120903', 2000, 104, 26, 6, 1, 'xmen.jpg', 'Two mutants come to a private academy for their kind whose resident superhero team must oppose a terrorist organization with similar powers.'),
(33, 'X-Men: First Class', 'tt1270798', 2011, 131, 27, 6, 1, 'x-menfirstclass.jpg', 'In 1962, the United States government enlists the help of Mutants with superhuman abilities to stop a malicious dictator who is determined to start World War III.');

-- --------------------------------------------------------

--
-- 資料表結構 `MovieActorJunction`
--

CREATE TABLE `MovieActorJunction` (
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `MovieActorJunction`
--

INSERT INTO `MovieActorJunction` (`actor_id`, `movie_id`, `id`) VALUES
(1, 6, 2),
(2, 6, 3),
(3, 6, 4),
(4, 6, 5),
(5, 11, 6),
(6, 16, 7),
(7, 16, 8),
(8, 7, 9),
(9, 17, 10),
(11, 7, 11),
(10, 18, 12),
(12, 28, 13),
(13, 21, 14),
(14, 22, 15),
(15, 24, 16),
(16, 24, 17),
(17, 25, 18),
(18, 26, 19),
(19, 26, 20),
(20, 26, 21),
(21, 32, 22),
(22, 30, 23),
(23, 30, 24),
(24, 32, 25),
(25, 33, 26),
(26, 33, 27),
(27, 23, 28),
(28, 23, 29),
(29, 29, 30),
(30, 31, 31),
(31, 27, 32),
(32, 29, 33),
(33, 8, 34),
(34, 28, 35),
(35, 22, 36),
(37, 8, 37),
(38, 31, 38),
(39, 31, 39),
(4, 28, 40),
(1, 22, 41),
(37, 31, 42),
(12, 6, 43),
(40, 7, 44),
(41, 11, 45),
(42, 11, 46),
(43, 11, 47),
(44, 16, 48),
(44, 6, 49),
(41, 18, 50),
(45, 21, 51),
(46, 21, 52),
(47, 21, 53),
(48, 21, 54),
(49, 25, 55),
(50, 25, 56),
(51, 25, 57),
(52, 27, 58),
(31, 31, 59),
(53, 32, 60),
(54, 33, 61);

-- --------------------------------------------------------

--
-- 資料表結構 `MovieTagJunction`
--

CREATE TABLE `MovieTagJunction` (
  `movie_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `MovieTagJunction`
--

INSERT INTO `MovieTagJunction` (`movie_id`, `tag_id`, `id`) VALUES
(6, 1, 1),
(6, 2, 2),
(11, 2, 3),
(7, 3, 4),
(8, 3, 5),
(16, 2, 6),
(16, 4, 7),
(8, 4, 8),
(6, 5, 9),
(11, 5, 10),
(16, 5, 11),
(17, 5, 12),
(18, 5, 13),
(18, 6, 14),
(21, 8, 15),
(21, 15, 16),
(22, 9, 17),
(22, 11, 18),
(21, 2, 19),
(22, 2, 20),
(23, 5, 21),
(23, 8, 22),
(24, 2, 23),
(24, 8, 24),
(24, 19, 25),
(24, 20, 26),
(25, 2, 27),
(25, 8, 28),
(25, 18, 29),
(21, 16, 31),
(26, 3, 32),
(26, 12, 33),
(26, 13, 34),
(27, 3, 35),
(27, 21, 36),
(27, 22, 37),
(25, 23, 38),
(11, 23, 39),
(11, 14, 40),
(28, 2, 41),
(29, 3, 48),
(28, 24, 49),
(30, 10, 50),
(30, 5, 51),
(31, 3, 52),
(31, 13, 53),
(7, 17, 54),
(32, 5, 55),
(33, 5, 56),
(32, 25, 57),
(33, 26, 58),
(17, 27, 59),
(6, 28, 60),
(29, 29, 61),
(16, 29, 62);

-- --------------------------------------------------------

--
-- 資料表結構 `MovieTags`
--

CREATE TABLE `MovieTags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `MovieTags`
--

INSERT INTO `MovieTags` (`tag_id`, `tag_name`) VALUES
(1, 'Joss Whedon is God'),
(2, 'Marvel Cinematic Universe'),
(3, 'DC Comics'),
(4, 'Heroine'),
(5, 'Marvel Comics'),
(6, 'Worst Reboot'),
(7, 'Don\'t waste your time'),
(8, 'Origin Story'),
(9, 'Bring your child to work day'),
(10, 'Merc with a Mouth'),
(11, 'Young but Strong'),
(12, 'It\'s not suicide if you\'re crazy'),
(13, 'Team-Building Excercises'),
(14, 'Wakanda Forever'),
(15, 'I am Groot'),
(16, 'My reflexes are too fast I would catch it'),
(17, 'Why so serious?'),
(18, 'Don\'t text and drive'),
(19, 'But I have the Van'),
(20, 'I was at a wine tasting'),
(21, 'Momma\'s Boy'),
(22, 'Krypton'),
(23, 'Magic or LSD trip? You be the judge'),
(24, 'Another!'),
(25, 'You\'re a dick.'),
(26, 'Next thing you know, I\'ll be going bald'),
(27, 'You can run but you can\'t hide'),
(28, 'Puny god'),
(29, 'Upcoming movie');

-- --------------------------------------------------------

--
-- 資料表結構 `User`
--

CREATE TABLE `User` (
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `User`
--

INSERT INTO `User` (`user_id`, `user_name`, `password`) VALUES
(8, 'user10', '12345678'),
(9, 'Kaitlyn', 'Kaitlyn'),
(10, 'sam', 'helloworld'),
(11, 'user11', '12345678'),
(12, 'user100', 'abcd1234'),
(13, 'kickdesk', '12345678'),
(14, '1', '123456'),
(15, '123', '123123123'),
(16, 'aaa', 'aaaaaa'),
(17, 'tine', 'movies');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `Actors`
--
ALTER TABLE `Actors`
  ADD PRIMARY KEY (`actor_id`),
  ADD KEY `top_movie` (`top_movie`);

--
-- 資料表索引 `Awards`
--
ALTER TABLE `Awards`
  ADD PRIMARY KEY (`award_id`);

--
-- 資料表索引 `Directors`
--
ALTER TABLE `Directors`
  ADD PRIMARY KEY (`director_id`);

--
-- 資料表索引 `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- 資料表索引 `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`movie_id`),
  ADD UNIQUE KEY `movie_id` (`movie_id`),
  ADD KEY `director_id` (`director_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `award_id` (`award_id`);

--
-- 資料表索引 `MovieActorJunction`
--
ALTER TABLE `MovieActorJunction`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `MovieTagJunction`
--
ALTER TABLE `MovieTagJunction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `movies_id` (`movie_id`);

--
-- 資料表索引 `MovieTags`
--
ALTER TABLE `MovieTags`
  ADD PRIMARY KEY (`tag_id`);

--
-- 資料表索引 `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `Actors`
--
ALTER TABLE `Actors`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- 使用資料表 AUTO_INCREMENT `Awards`
--
ALTER TABLE `Awards`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用資料表 AUTO_INCREMENT `Directors`
--
ALTER TABLE `Directors`
  MODIFY `director_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 使用資料表 AUTO_INCREMENT `Genre`
--
ALTER TABLE `Genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用資料表 AUTO_INCREMENT `Movie`
--
ALTER TABLE `Movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- 使用資料表 AUTO_INCREMENT `MovieActorJunction`
--
ALTER TABLE `MovieActorJunction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- 使用資料表 AUTO_INCREMENT `MovieTagJunction`
--
ALTER TABLE `MovieTagJunction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- 使用資料表 AUTO_INCREMENT `MovieTags`
--
ALTER TABLE `MovieTags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- 使用資料表 AUTO_INCREMENT `User`
--
ALTER TABLE `User`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_awards` FOREIGN KEY (`award_id`) REFERENCES `Awards` (`award_id`),
  ADD CONSTRAINT `movie_genre` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`genre_id`);

--
-- 資料表的 Constraints `MovieTagJunction`
--
ALTER TABLE `MovieTagJunction`
  ADD CONSTRAINT `movie_tag` FOREIGN KEY (`tag_id`) REFERENCES `MovieTags` (`tag_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
