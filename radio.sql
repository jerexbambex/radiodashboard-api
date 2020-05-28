-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table radio.abouts
DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.abouts: ~1 rows (approximately)
DELETE FROM `abouts`;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` (`id`, `body`, `created_at`, `updated_at`) VALUES
	(1, 'CHAPTER IV. The Rabbit Sends in a Little Bill It was the White Rabbit, trotting slowly back again, and looking anxiously about as it went, as if it had lost something; and she heard it muttering to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' Alice guessed in a moment.', '2020-05-28 10:56:04', '2020-05-28 10:56:04');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;

-- Dumping structure for table radio.details
DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.details: ~0 rows (approximately)
DELETE FROM `details`;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
/*!40000 ALTER TABLE `details` ENABLE KEYS */;

-- Dumping structure for table radio.events
DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.events: ~5 rows (approximately)
DELETE FROM `events`;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `name`, `description`, `date`, `time`, `avatar`, `created_at`, `updated_at`) VALUES
	(1, 'Sed sit laboriosam quidem.', 'Take your choice!\' The Duchess took her choice, and was gone in a moment. \'Let\'s go on with the game,\' the Queen said to Alice; and Alice was too much frightened to say a word, but slowly followed her back to the croquet-ground. The other guests had taken advantage of the Queen\'s absence, and were resting in the shade: however, the moment they saw her, they hurried back to the game, the Queen.', '1979-07-19', '23:07:47', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:55', '2020-05-28 10:55:55'),
	(2, 'Tempore autem.', 'There was certainly too much of it in the air. Even the Duchess sneezed occasionally; and as for the baby, it was sneezing and howling alternately without a moment\'s pause. The only things in the kitchen that did not sneeze, were the cook, and a large cat which was sitting on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, a little timidly, for she was not quite.', '1984-05-28', '12:48:05', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:55', '2020-05-28 10:55:55'),
	(3, 'Distinctio doloribus labore natus.', 'Alice soon came to the conclusion that it was a very difficult game indeed. The players all played at once without waiting for turns, quarrelling all the while, and fighting for the hedgehogs; and in a very short time the Queen was in a furious passion, and went stamping about, and shouting \'Off with his head!\' or \'Off with her head!\' Those whom she sentenced were taken into custody by the.', '2008-12-04', '04:25:45', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:55', '2020-05-28 10:55:55'),
	(4, 'Corporis reprehenderit vel.', 'There was no \'One, two, three, and away,\' but they began running when they liked, and left off when they liked, so that it was not easy to know when the race was over. However, when they had been running half an hour or so, and were quite dry again, the Dodo suddenly called out \'The race is over!\' and they all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo could.', '2000-12-14', '17:38:41', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:55', '2020-05-28 10:55:55'),
	(5, 'Vel atque quo atque.', 'Alice heard the King say in a low voice, to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good thing!\' she said to herself, for she had felt quite unhappy at the number of executions the Queen had ordered. They very soon came upon a Gryphon, lying fast asleep in the sun. (IF you don\'t know what a Gryphon is, look at the picture.) \'Up, lazy thing!\' said the Queen, \'and take this.', '1994-11-29', '10:43:58', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:55', '2020-05-28 10:55:55');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Dumping structure for table radio.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table radio.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.migrations: ~11 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(39, '2014_10_12_000000_create_users_table', 1),
	(40, '2014_10_12_100000_create_password_resets_table', 1),
	(41, '2019_08_19_000000_create_failed_jobs_table', 1),
	(42, '2020_05_18_222816_create_teams_table', 1),
	(43, '2020_05_19_135705_create_schedules_table', 1),
	(44, '2020_05_23_100720_create_events_table', 1),
	(45, '2020_05_23_104209_create_podcasts_table', 1),
	(46, '2020_05_23_104250_create_socials_table', 1),
	(47, '2020_05_23_104313_create_abouts_table', 1),
	(48, '2020_05_28_062823_create_videos_table', 1),
	(49, '2020_05_28_095546_create_details_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table radio.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table radio.podcasts
DROP TABLE IF EXISTS `podcasts`;
CREATE TABLE IF NOT EXISTS `podcasts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.podcasts: ~5 rows (approximately)
DELETE FROM `podcasts`;
/*!40000 ALTER TABLE `podcasts` DISABLE KEYS */;
INSERT INTO `podcasts` (`id`, `title`, `url`, `owner`, `avatar`, `created_at`, `updated_at`) VALUES
	(1, 'Suscipit dignissimos animi blanditiis.', 'http://www.west.com/omnis-perspiciatis-culpa-sed-voluptas.html', 'Margie Collins', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:51', '2020-05-28 10:55:51'),
	(2, 'Illo autem saepe dolor.', 'http://www.homenick.com/laborum-quidem-fuga-deserunt-qui-dolore-occaecati', 'Pierre Kautzer III', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:51', '2020-05-28 10:55:51'),
	(3, 'Voluptatem impedit voluptatem.', 'http://fahey.com/', 'Branson Herzog', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:51', '2020-05-28 10:55:51'),
	(4, 'Veritatis pariatur qui ratione.', 'https://hammes.com/voluptatem-voluptas-repellat-quod-incidunt-doloremque.html', 'Porter Adams Sr.', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:51', '2020-05-28 10:55:51'),
	(5, 'Quis quia similique neque consequatur.', 'http://rolfson.com/', 'Liana Hartmann', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', '2020-05-28 10:55:52', '2020-05-28 10:55:52');
/*!40000 ALTER TABLE `podcasts` ENABLE KEYS */;

-- Dumping structure for table radio.schedules
DROP TABLE IF EXISTS `schedules`;
CREATE TABLE IF NOT EXISTS `schedules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anchor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.schedules: ~50 rows (approximately)
DELETE FROM `schedules`;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` (`id`, `day`, `start_time`, `end_time`, `title`, `anchor`, `avatar`, `description`, `priority`, `created_at`, `updated_at`) VALUES
	(1, 'Wednesday', '18:04:48', '20:40:18', 'Footman remarked, \'till tomorrow--\' At this.', 'Justice Ortiz', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Lizard as she spoke. (The unfortunate little Bill had left off writing on his slate with one finger, as he found it made no mark; but he now hastily began again, using the ink, that was trickling down his face, as long as it lasted.) \'Then the words don\'t FIT you,\' said the King, looking round the court with a smile. There was a dead silence. \'It\'s a pun!\' the King added in an offended tone, and.', '0', '2020-05-28 10:56:31', '2020-05-28 10:56:31'),
	(2, 'Saturday', '18:31:05', '14:51:11', 'Majesty,\' said Two, in a solemn tone, only.', 'Dr. Dangelo Skiles MD', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I meant,\' the King hastily said, and went on to himself in an undertone, \'important--unimportant--unimportant--important--\' as if he were trying which word sounded best. Some of the jury wrote it down \'important,\' and some \'unimportant.\' Alice could see this, as she was near enough to look over their slates; \'but it doesn\'t matter a bit,\' she thought to herself. At this moment the King, who had.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(3, 'Wednesday', '02:30:04', '15:09:09', 'Soup," will you, won\'t you join the dance? Will.', 'Mrs. Dena Sanford DDS', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I was sent for.\' \'You ought to have finished,\' said the King. \'When did you begin?\' The Hatter looked at the March Hare, who had followed him into the court, arm-in-arm with the Dormouse. \'Fourteenth of March, I think it was,\' he said. \'Fifteenth,\' said the March Hare. \'Sixteenth,\' added the Dormouse. \'Write that down,\' the King said to the Hatter. \'It isn\'t mine,\' said the Hatter. \'Stolen!\' the.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(4, 'Sunday', '09:31:02', '10:52:39', 'However, I\'ve got to the beginning again?\' Alice.', 'Corene Wehner', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I beg your pardon!\' cried Alice hastily, afraid that she had hurt the poor animal\'s feelings. \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Mouse, in a shrill, passionate voice. \'Would YOU like cats if you were me?\' \'Well, perhaps not,\' said Alice in a soothing tone: \'don\'t be angry about it. And yet I wish I could show you our cat Dinah: I think you\'d take a fancy to cats if.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(5, 'Wednesday', '11:35:43', '12:17:22', 'Mock Turtle angrily: \'really you are painting.', 'Raleigh Walter', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I can\'t get out at the door--I do wish I hadn\'t drunk quite so much!\' Alas! it was too late to wish that! She went on growing, and growing, and very soon had to kneel down on the floor: in another minute there was not even room for this, and she tried the effect of lying down with one elbow against the door, and the other arm curled round her head. Still she went on growing, and, as a last.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(6, 'Saturday', '04:24:47', '02:01:23', 'But she waited for a minute or two she stood.', 'Jameson Altenwerth', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I should think very likely it can talk: at any rate, there\'s no harm in trying.\' So she began: \'O Mouse, do you know the way out of this pool? I am very tired of swimming about here, O Mouse!\' (Alice thought this must be the right way of speaking to a mouse: she had never done such a thing before, but she remembered having seen in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(7, 'Tuesday', '10:54:37', '10:14:40', 'William the Conqueror.\' (For, with all speed.', 'Vincent Boyer Sr.', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I THINK I can kick a little!\' She drew her foot as far down the chimney as she could, and waited till she heard a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the chimney close above her: then, saying to herself \'This is Bill,\' she gave one sharp kick, and waited to see what would happen next. The first thing she heard was a general chorus of \'There.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(8, 'Wednesday', '04:20:15', '15:15:41', 'She said the King, \'and don\'t look at them--\'I.', 'Tiara Kuhn', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'That your eye was as steady as ever; Yet you balanced an eel on the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think I can listen all day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(9, 'Friday', '01:08:26', '19:27:27', 'King: \'however, it may kiss my hand if it began.', 'Ardith Abernathy', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'King sharply. \'Do you take me for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter went on, \'and most things twinkled after that--only the March Hare said--\' \'I didn\'t!\' the March Hare interrupted in a great hurry. \'You did!\' said the Hatter. \'I deny it!\' said the March Hare. \'He denies it,\' said the King: \'leave out that part.\' \'Well, at any rate, the Dormouse said--\' the Hatter went on, looking.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(10, 'Wednesday', '21:32:37', '06:39:56', 'I eat one of the garden, where Alice could think.', 'Mrs. Florine Schroeder DVM', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Duchess said in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, who felt very glad to get an opportunity of showing off a little of her knowledge. \'Just think of what work it would make with the day and night! You see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Duchess, \'chop off.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(11, 'Friday', '07:10:12', '03:16:51', 'How puzzling all these strange Adventures of.', 'Katrina Langworth DVM', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'It was opened by another footman in livery, with a round face, and large eyes like a frog; and both footmen, Alice noticed, had powdered hair that curled all over their heads. She felt very curious to know what it was all about, and crept a little way out of the wood to listen. The Fish-Footman began by producing from under his arm a great letter, nearly as large as himself, and this he handed.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(12, 'Friday', '14:22:41', '13:23:58', 'Soup," will you, old fellow?\' The Mock Turtle\'s.', 'Ryley Jacobs', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Rabbit asked. \'No, I didn\'t,\' said Alice: \'I don\'t think it\'s at all a pity. I said "What for?"\' \'She boxed the Queen\'s ears--\' the Rabbit began. Alice gave a little scream of laughter. \'Oh, hush!\' the Rabbit whispered in a frightened tone. \'The Queen will hear you! You see, she came rather late, and the Queen said--\' \'Get to your places!\' shouted the Queen in a voice of thunder, and people.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(13, 'Tuesday', '13:06:54', '08:11:31', 'Alice did not appear, and after a pause: \'the.', 'Dr. Savannah Donnelly I', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Lory and an Eaglet, and several other curious creatures. Alice led the way, and the whole party swam to the shore. CHAPTER III. A Caucus-Race and a Long Tale They were indeed a queer-looking party that assembled on the bank--the birds with draggled feathers, the animals with their fur clinging close to them, and all dripping wet, cross, and uncomfortable. The first question of course was, how to.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(14, 'Monday', '12:12:08', '01:44:57', 'Everybody looked at the Cat\'s head with great.', 'Kobe Kling DDS', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Alice, \'as all the arches are gone from this side of the ground.\' So she tucked it away under her arm, that it might not escape again, and went back for a little more conversation with her friend. When she got back to the Cheshire Cat, she was surprised to find quite a large crowd collected round it: there was a dispute going on between the executioner, the King, and the Queen, who were all.', '0', '2020-05-28 10:56:32', '2020-05-28 10:56:32'),
	(15, 'Saturday', '12:24:47', '06:02:09', 'Alice laughed so much about a thousand times as.', 'Dr. Helen Farrell Jr.', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'D,\' she added in a whisper, half afraid that it would be offended again. \'Mine is a long and a sad tale!\' said the Mouse, turning to Alice, and sighing. \'It IS a long tail, certainly,\' said Alice, looking down with wonder at the Mouse\'s tail; \'but why do you call it sad?\' And she kept on puzzling about it while the Mouse was speaking, so that her idea of the tale was something like this:-- \'Fury.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(16, 'Tuesday', '02:36:03', '13:11:12', 'Alice, in a tone of the trees behind him. \'--or.', 'Jamaal Kling MD', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Duchess. An invitation from the Queen to play croquet.\' The Frog-Footman repeated, in the same solemn tone, only changing the order of the words a little, \'From the Queen. An invitation for the Duchess to play croquet.\' Then they both bowed low, and their curls got entangled together. Alice laughed so much at this, that she had to run back into the wood for fear of their hearing her; and when.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(17, 'Tuesday', '10:39:36', '00:58:44', 'Luckily for Alice, the little door: but, alas!.', 'Kristofer Wyman', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Gryphon; and then they both sat silent and looked at poor Alice, who felt ready to sink into the earth. At last the Gryphon said to the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' and he went on in these words: \'Yes, we went to school in the sea. The master was an old Turtle--we used to call him Tortoise--\' \'Why did you call him Tortoise, if he wasn\'t one?\' Alice asked. \'We.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(18, 'Wednesday', '09:49:47', '17:18:14', 'How the Owl and the poor animal\'s feelings. \'I.', 'Dr. Cedrick Hansen', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I learn music.\' \'Ah! that accounts for it,\' said the Hatter. \'He won\'t stand beating. Now, if you only kept on good terms with him, he\'d do almost anything you liked with the clock. For instance, suppose it were nine o\'clock in the morning, just time to begin lessons: you\'d only have to whisper a hint to Time, and round goes the clock in a twinkling! Half-past one, time for dinner!\' (\'I only.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(19, 'Friday', '21:47:33', '00:53:37', 'His voice has a timid and tremulous sound.].', 'Dr. Zachary Kerluke I', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'In the very middle of the court was a table, with a large dish of tarts upon it: they looked so good, that it made Alice quite hungry to look at them--\'I wish they\'d get the trial done,\' she thought, \'and hand round the refreshments!\' But there seemed to be no sort of chance of her ever getting out of the room again, no wonder she felt unhappy. \'It was much pleasanter at home,\' thought poor.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(20, 'Thursday', '18:03:36', '05:58:52', 'And the executioner went off like an honest.', 'Callie Dickens', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Pigeon, but in a more subdued tone, and added with a kind of sob, \'I\'ve tried every way, and nothing seems to suit them!\' \'I haven\'t the least idea what you\'re talking about,\' said Alice. \'I\'ve tried the roots of trees, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was more and more puzzled, but.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(21, 'Saturday', '02:32:25', '14:28:40', 'Next came an angry tone, \'Why, Mary Ann, what.', 'Ms. Pearl Nikolaus', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Alice, and she put them into a large flower-pot that stood near. The three soldiers wandered about for a minute or two, looking for them, and then quietly marched off after the others. \'Are their heads off?\' shouted the Queen. \'Their heads are gone, if it please your Majesty!\' the soldiers shouted in reply. \'That\'s right!\' shouted the Queen. \'Can you play croquet?\' The soldiers were silent, and.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(22, 'Tuesday', '11:10:19', '16:27:38', 'Alice, rather doubtfully, as she ran. \'How.', 'Dr. Addie Ward DVM', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Imagine her surprise, when the White Rabbit read out, at the top of his head. But at any rate he might answer questions.--How am I to get in?\' she repeated, aloud. \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At this moment the door of the house opened, and a large plate came skimming out, straight at the Footman\'s head: it just grazed his nose, and broke to pieces against one of.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(23, 'Wednesday', '21:27:42', '10:51:19', 'There could be beheaded, and that is rather a.', 'Jamie Morar Jr.', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Gryphon said, in a rather offended tone, \'Hm! No accounting for tastes! Sing her "Turtle Soup," will you, old fellow?\' The Mock Turtle sighed deeply, and began, in a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a hot tureen! Who for such dainties would not stoop? Soup of the evening, beautiful Soup! Soup of the evening, beautiful Soup! Soup of.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(24, 'Sunday', '23:12:20', '09:16:52', 'Alice. \'Now we shall have to beat them off, and.', 'Jordy Lockman DDS', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'SAID was, \'Why is a raven like a writing-desk?\' \'Come, we shall have some fun now!\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added aloud. \'Do you mean that you think you can find out the answer to it?\' said the March Hare. \'Exactly so,\' said Alice. \'Then you should say what you mean,\' the March Hare went on. \'I do,\' Alice hastily replied; \'at.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(25, 'Monday', '01:23:31', '02:52:00', 'Alice, and tried to speak, but for a long sleep.', 'Ms. Winnifred Beatty V', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I do wonder what CAN have happened to me! When I used to read fairy-tales, I fancied that kind of thing never happened, and now here I am in the middle of one! There ought to be a book written about me, that there ought! And when I grow up, I\'ll write one--but I\'m grown up now,\' she added in a sorrowful tone; \'at least there\'s no room to grow up any more HERE.\' \'But then,\' thought Alice, \'shall.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(26, 'Saturday', '08:10:27', '21:02:57', 'Alice hastily replied; \'at least--at least I.', 'Janiya Keeling PhD', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'VERY deeply with a knife, it usually bleeds; and she had never forgotten that, if you drink much from a bottle marked \'poison,\' it is almost certain to disagree with you, sooner or later. However, this bottle was NOT marked \'poison,\' so Alice ventured to taste it, and finding it very nice, (it had, in fact, a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(27, 'Sunday', '15:56:41', '19:22:34', 'There could be no use speaking to a shriek, \'and.', 'Clint Reichert', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Alice. \'It must be a very pretty dance,\' said Alice timidly. \'Would you like to see a little of it?\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'Come, let\'s try the first figure!\' said the Mock Turtle to the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Gryphon. \'I\'ve forgotten the words.\' So they began solemnly dancing round and round.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(28, 'Tuesday', '21:38:35', '13:11:38', 'After a while she was beginning to feel which.', 'Dana Spinka MD', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Alice was more and more puzzled, but she thought there was no use in saying anything more till the Pigeon had finished. \'As if it wasn\'t trouble enough hatching the eggs,\' said the Pigeon; \'but I must be on the look-out for serpents night and day! Why, I haven\'t had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, who was beginning to see its meaning. \'And.', '0', '2020-05-28 10:56:33', '2020-05-28 10:56:33'),
	(29, 'Friday', '08:43:57', '16:06:01', 'Dodo could not help thinking there MUST be more.', 'Macie Douglas', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Still she went on growing, and, as a last resource, she put one arm out of the window, and one foot up the chimney, and said to herself \'Now I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little magic bottle had now had its full effect, and she grew no larger: still it was very uncomfortable, and, as there seemed to be no chance of this, so she began looking.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(30, 'Monday', '03:36:10', '23:09:17', 'I\'m sure she\'s the best cat in the pool a little.', 'Randy Cronin V', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Gryphon: and it set to work shaking him and punching him in the back. At last the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on again:-- \'You may not have lived much under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were never even introduced to a lobster--\' (Alice began to say \'I once tasted--\' but checked herself hastily, and said \'No, never\').', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(31, 'Monday', '16:03:34', '14:18:06', 'I\'ve got to?\' (Alice had no reason to be lost.', 'Julian Harvey', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'IS that to be done, I wonder?\' As she said this, she came upon a neat little house, on the door of which was a bright brass plate with the name \'W. RABBIT\' engraved upon it. She went in without knocking, and hurried upstairs, in great fear lest she should meet the real Mary Ann, and be turned out of the house before she had found the fan and gloves. \'How queer it seems,\' Alice said to herself.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(32, 'Friday', '12:18:25', '01:02:48', 'THAT direction,\' waving the other guinea-pig.', 'Maggie Funk', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'The moment Alice appeared, she was appealed to by all three to settle the question, and they repeated their arguments to her, though, as they all spoke at once, she found it very hard indeed to make out exactly what they said. The executioner\'s argument was, that you couldn\'t cut off a head unless there was a body to cut it off from: that he had never had to do such a thing before, and he wasn\'t.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(33, 'Sunday', '15:54:08', '17:34:27', 'Don\'t be all day about it!\' and he poured a.', 'Noah Dach', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'So she set to work, and very soon finished off the cake. * * * * * * * * * \'What a curious feeling!\' said Alice; \'I must be shutting up like a telescope.\' And so it was indeed: she was now only ten inches high, and her face brightened up at the thought that she was now the right size for going through the little door into that lovely garden. First, however, she waited for a few minutes to see if.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(34, 'Sunday', '17:58:52', '21:04:47', 'Dormouse, and repeated her question. \'Why did.', 'Miss Cecile Boehm IV', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Caterpillar. Alice thought she might as well wait, as she had nothing else to do, and perhaps after all it might tell her something worth hearing. For some minutes it puffed away without speaking, but at last it unfolded its arms, took the hookah out of its mouth again, and said, \'So you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'I can\'t remember things as I used--and I.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(35, 'Saturday', '06:43:17', '09:24:39', 'Gryphon. \'It all came different!\' the Mock.', 'Verona Kub', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'M, such as mouse-traps, and the moon, and memory, and muchness--you know you say things are "much of a muchness"--did you ever see such a thing as a drawing of a muchness?\' \'Really, now you ask me,\' said Alice, very much confused, \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Hatter. This piece of rudeness was more than Alice could bear: she got up in great disgust, and walked off; the.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(36, 'Wednesday', '18:46:48', '00:28:59', 'Off--\' \'Nonsense!\' said Alice, rather alarmed at.', 'Bradley Fahey', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how this same little sister of hers would, in the after-time, be herself a grown woman; and how she would keep, through all her riper years, the simple and loving heart of her childhood: and how she would gather about her other little children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the dream of.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(37, 'Thursday', '01:40:59', '16:27:12', 'Queen, who were all in bed!\' On various pretexts.', 'Phyllis Kuhlman', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should think very likely it can talk: at any rate, there\'s no harm in trying.\' So she began: \'O Mouse, do you know the way out of this pool? I am very tired of swimming about here, O Mouse!\' (Alice thought this must be the right way of speaking to a mouse: she had never done such a thing before, but she remembered.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(38, 'Thursday', '06:56:10', '05:13:39', 'Alice opened the door of the Mock Turtle. \'Hold.', 'Dr. Madisen Ernser', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'The other guests had taken advantage of the Queen\'s absence, and were resting in the shade: however, the moment they saw her, they hurried back to the game, the Queen merely remarking that a moment\'s delay would cost them their lives. All the time they were playing the Queen never left off quarrelling with the other players, and shouting \'Off with his head!\' or \'Off with her head!\' about once in.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(39, 'Wednesday', '13:58:26', '02:06:18', 'Alice felt dreadfully puzzled. The Hatter\'s.', 'Lourdes McCullough', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I\'ve got to go through next walking about at the other end of the ground--and I should have croqueted the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you like the Queen?\' said the Cat in a low voice. \'Not at all,\' said Alice: \'she\'s so extremely--\' Just then she noticed that the Queen was close behind her, listening: so she went on, \'--likely to win, that it\'s.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(40, 'Monday', '10:54:57', '18:33:22', 'When the Mouse to Alice again. \'No, I give you.', 'Otha Braun', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'On various pretexts they all moved off, and Alice was soon left alone. \'I wish I hadn\'t mentioned Dinah!\' she said to herself in a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure she\'s the best cat in the world! Oh, my dear Dinah! I wonder if I shall ever see you any more!\' And here poor Alice began to cry again, for she felt very lonely and low-spirited. In a little while.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(41, 'Thursday', '03:51:47', '22:53:21', 'As there seemed to be a Caucus-race.\' \'What IS.', 'Cecilia Turner', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Footman\'s head: it just grazed his nose, and broke to pieces against one of the trees behind him. \'--or next day, maybe,\' the Footman continued in the same tone, exactly as if nothing had happened. \'How am I to get in?\' \'There might be some sense in your knocking,\' the Footman went on without attending to her, \'if we had the door between us. For instance, if you were INSIDE, you might knock, and.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(42, 'Sunday', '18:54:40', '04:29:06', 'I\'ll stay down here with me! There are no mice.', 'Vada Jaskolski', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'King eagerly, and he hurried off. Alice thought she might as well wait, as she had nothing else to do, and perhaps after all it might tell her something worth hearing. For some minutes it puffed away without speaking, but at last it unfolded its arms, took the hookah out of its mouth again, and said, \'So you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'I can\'t remember.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(43, 'Saturday', '00:12:11', '10:12:42', 'PROVES his guilt,\' said the Gryphon, and the.', 'Ms. Rosa Ziemann MD', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'I\'d hardly finished the first verse,\' said the Hatter, \'when the Queen jumped up and bawled out, "He\'s murdering the time! Off with his head!"\' \'How dreadfully savage!\' exclaimed Alice. \'And ever since that,\' the Hatter went on in a mournful tone, \'he won\'t do a thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the reason so many tea-things are put out.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(44, 'Monday', '02:13:33', '13:00:13', 'The Caterpillar and Alice was only a pack of.', 'Terrill Lindgren', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Duchess. An invitation from the Queen to play croquet.\' The Frog-Footman repeated, in the same solemn tone, only changing the order of the words a little, \'From the Queen. An invitation for the Duchess to play croquet.\' Then they both bowed low, and their curls got entangled together. Alice laughed so much at this, that she had to run back into the wood for fear of their hearing her; and when.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(45, 'Tuesday', '08:30:05', '07:53:27', 'Cat went on, spreading out the verses to.', 'Keanu Roberts', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Alice said to herself, as well as she could for sneezing. There was certainly too much of it in the air. Even the Duchess sneezed occasionally; and as for the baby, it was sneezing and howling alternately without a moment\'s pause. The only things in the kitchen that did not sneeze, were the cook, and a large cat which was sitting on the hearth and grinning from ear to ear. \'Please would you tell.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(46, 'Wednesday', '23:50:16', '03:08:19', 'March Hare. \'Sixteenth,\' added the Queen. \'I.', 'Emil Cremin', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Fish-Footman was gone, and the other was sitting on the ground near the door, staring stupidly up into the sky. Alice went timidly up to the door, and knocked. \'There\'s no sort of use in knocking,\' said the Footman, \'and that for two reasons. First, because I\'m on the same side of the door as you are; secondly, because they\'re making such a noise inside, no one could possibly hear you.\' And.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(47, 'Monday', '15:38:29', '22:29:10', 'Mock Turtle replied; \'and then the Mock Turtle.', 'Jerad Cummings', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'But the snail replied "Too far, too far!" and gave a look askance-- Said he thanked the whiting kindly, but he would not join the dance. Would not, could not, would not, could not, would not join the dance. Would not, could not, would not, could not, could not join the dance. \'"What matters it how far we go?" his scaly friend replied. "There is another shore, you know, upon the other side. The.', '0', '2020-05-28 10:56:34', '2020-05-28 10:56:34'),
	(48, 'Monday', '05:36:01', '05:28:55', 'Alice said; but was dreadfully puzzled by the.', 'Demarcus Orn', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'The other guests had taken advantage of the Queen\'s absence, and were resting in the shade: however, the moment they saw her, they hurried back to the game, the Queen merely remarking that a moment\'s delay would cost them their lives. All the time they were playing the Queen never left off quarrelling with the other players, and shouting \'Off with his head!\' or \'Off with her head!\' Those whom.', '0', '2020-05-28 10:56:35', '2020-05-28 10:56:35'),
	(49, 'Wednesday', '09:39:06', '06:43:55', 'I\'ll never go THERE again!\' said Alice sadly.', 'Mariam Kling', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'IS it to be managed? I suppose I ought to eat or drink something or other; but the great question is, what?\' The great question certainly was, what? Alice looked all round her at the flowers and the blades of grass, but she did not see anything that looked like the right thing to eat or drink under the circumstances. There was a large mushroom growing near her, about the same height as herself.', '0', '2020-05-28 10:56:35', '2020-05-28 10:56:35'),
	(50, 'Wednesday', '10:01:04', '19:09:50', 'Alice, \'when one wasn\'t always growing larger.', 'Alessandro Smith', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png', 'Dormouse followed him: the March Hare moved into the Dormouse\'s place, and Alice rather unwillingly took the place of the March Hare. The Hatter was the only one who got any advantage from the change: and Alice was a good deal worse off than before, as the March Hare had just upset the milk-jug into his plate. Alice did not wish to offend the Dormouse again, so she began very cautiously: \'But I.', '0', '2020-05-28 10:56:35', '2020-05-28 10:56:35');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;

-- Dumping structure for table radio.socials
DROP TABLE IF EXISTS `socials`;
CREATE TABLE IF NOT EXISTS `socials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.socials: ~0 rows (approximately)
DELETE FROM `socials`;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;

-- Dumping structure for table radio.teams
DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png',
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.teams: ~1 rows (approximately)
DELETE FROM `teams`;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` (`id`, `first_name`, `last_name`, `about`, `email`, `avatar`, `twitter`, `facebook`, `instagram`, `created_at`, `updated_at`) VALUES
	(6, 'Ogunniyi', 'Jeremiah', 'A very good boy and God fearing christian', 'jerexbambex@gmail.com', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590663624/qgwaz0axjkj6fwedrq3w.jpg', 'jerexbambex', 'jerexbambex', 'jerexbambex', '2020-05-28 10:59:22', '2020-05-28 11:00:23');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

-- Dumping structure for table radio.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Oluwatosin', 'Ogunniyi', 'jerexbambex@gmail.com', NULL, '$2y$10$mNVyhfSWGJpxTWseT7/y9uGrru9N1TmKkUy3D.am4bLOlv.ZN9NT.', 'admin', NULL, '2020-05-28 10:57:38', '2020-05-28 10:57:38'),
	(2, 'Taiwo', 'Babalola', 'beto@gmail.com', NULL, '$2y$10$XlqerILNDrzUP9afazpWdO7m/rrk1dStVQf7PR.PHnYK1d0Z1lsEu', 'admin', NULL, '2020-05-28 14:26:05', '2020-05-28 14:26:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table radio.videos
DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.videos: ~0 rows (approximately)
DELETE FROM `videos`;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
