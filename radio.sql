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
	(1, 'YOu sure _I_ shan\'t be able! I shall be a great deal too far off to trouble myself about you: you must manage the best way you can;--but I must be kind to them,\' thought Alice, \'or perhaps they won\'t walk the way I want to go! Let me see: I\'ll give them a new pair of boots every Christmas.\' And she went on planning to herself how she would manage it. \'They must go by the carrier,\' she thought.\r\n\r\n Let me see: I\'ll give them a new pair of boots every Christmas.\' And she went on planning to herself how she would manage it. \'They must go by the carrier,\' she thought. I\'m sure _I_ shan\'t be able! I shall be a great deal too far off to trouble myself about you: you must manage the best way you can;--but I must be kind to them,\' thought Alice, \'or perhaps they won\'t walk the way I want to go! \r\nI\'m sure _I_ shan\'t be able! I shall be a great deal too far off to trouble myself about you: you must manage the best way you can;--but I must be kind to them,\' thought Alice, \'or perhaps they won\'t walk the way I want to go! Let me see: I\'ll give them a new pair of boots every Christmas.\' And she went on planning to herself how she would manage it. \'They must go by the carrier,\' she thought.\r\n\r\n Let me see: I\'ll give them a new pair of boots every Christmas.\' And she went on planning to herself how she would manage it. \'They must go by the carrier,\' she thought. I\'m sure _I_ shan\'t be able! I shall be a great deal too far off to trouble myself about you: you must manage the best way you can;--but I must be kind to them,\' thought Alice, \'or perhaps they won\'t walk the way I want to go!', '2020-05-26 06:22:36', '2020-05-26 15:59:47');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;

-- Dumping structure for table radio.events
DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.events: ~6 rows (approximately)
DELETE FROM `events`;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `name`, `description`, `date`, `time`, `avatar`, `created_at`, `updated_at`) VALUES
	(1, 'Quo at odio minima.', 'After a time she heard a little pattering of footsteps in the distance, and she hastily dried her eyes to see what was coming. It was the White Rabbit returning, splendidly dressed, with a pair of white kid gloves in one hand and a piece of bread-and-butter in the other. \'I beg pardon, your Majesty,\' he began, \'for bringing these in: but I hadn\'t quite finished my tea when I was sent for.\' \'You.', '2008-08-29', '06:45:14', NULL, '2020-05-26 06:36:36', '2020-05-26 06:36:36'),
	(2, 'Eveniet perferendis dolorum.', 'First, she tried to look down and make out what she was coming to, but it was too dark to see anything; then she looked at the sides of the well, and noticed that they were filled with cupboards and book-shelves; here and there she saw maps and pictures hung upon pegs. She took down a jar from one of the shelves as she passed; it was labelled \'ORANGE MARMALADE\', but to her great disappointment.', '1980-09-06', '21:47:03', NULL, '2020-05-26 06:36:36', '2020-05-26 06:36:36'),
	(3, 'Esse maxime ut consequatur.', 'May it won\'t be raving mad--at least not so mad as it was in March.\' As she said this, she looked up, and there was the Cat again, sitting on a branch of a tree. \'Did you say pig, or fig?\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Cat; and this time it vanished quite slowly.', '1996-08-23', '15:25:59', NULL, '2020-05-26 06:36:36', '2020-05-26 06:36:36'),
	(4, 'Hic accusantium aut ipsam.', 'She had just succeeded in curving it down into a graceful zigzag, and was going to dive in among the leaves, which she found to be nothing but the tops of the trees under which she had been wandering, when a sharp hiss made her draw back in a hurry: a large pigeon had flown into her face, and was beating her violently with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said.', '2016-05-08', '00:17:01', NULL, '2020-05-26 06:36:36', '2020-05-26 06:36:36'),
	(5, 'Aut eos.', 'Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'What sort of a dance is it?\' \'Why,\' said the Gryphon, \'you first form into a line along the sea-shore--\' \'Two lines!\' cried the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the jelly-fish out of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'--you advance twice--\' \'Each with a lobster as a.', '1977-11-03', '02:31:11', NULL, '2020-05-26 06:36:36', '2020-05-26 06:36:36'),
	(6, 'Project Firewall', 'asdfghj', '2020-05-14', '15:00:00', NULL, '2020-05-26 16:25:21', '2020-05-26 19:55:23');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.migrations: ~9 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(19, '2014_10_12_000000_create_users_table', 1),
	(20, '2014_10_12_100000_create_password_resets_table', 1),
	(21, '2019_08_19_000000_create_failed_jobs_table', 1),
	(22, '2020_05_18_222816_create_teams_table', 1),
	(23, '2020_05_19_135705_create_schedules_table', 1),
	(24, '2020_05_23_100720_create_events_table', 1),
	(25, '2020_05_23_104209_create_podcasts_table', 1),
	(26, '2020_05_23_104250_create_socials_table', 1),
	(27, '2020_05_23_104313_create_abouts_table', 1);
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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.podcasts: ~10 rows (approximately)
DELETE FROM `podcasts`;
/*!40000 ALTER TABLE `podcasts` DISABLE KEYS */;
INSERT INTO `podcasts` (`id`, `title`, `url`, `owner`, `avatar`, `created_at`, `updated_at`) VALUES
	(1, 'Aut veritatis.', 'http://ullrich.com/sed-et-dolore-et-et-sapiente-minima', 'Wade Bruen', 'https://lorempixel.com/640/480/?54562', '2020-05-26 06:19:33', '2020-05-26 06:19:33'),
	(2, 'Est reprehenderit fuga.', 'http://www.swift.net/modi-at-ut-voluptate', 'Prof. Hershel Funk', 'https://lorempixel.com/640/480/?20437', '2020-05-26 06:19:33', '2020-05-26 06:19:33'),
	(3, 'Dolorem in sunt.', 'http://greenfelder.com/explicabo-fuga-totam-labore-quod-autem-qui', 'Elfrieda Sanford', 'https://lorempixel.com/640/480/?73389', '2020-05-26 06:19:33', '2020-05-26 06:19:33'),
	(4, 'Tempora enim.', 'http://gleason.com/vel-voluptas-ut-vero-est-consequatur-molestias-voluptatibus', 'Miss Malika Weber', 'https://lorempixel.com/640/480/?50815', '2020-05-26 06:19:33', '2020-05-26 06:19:33'),
	(5, 'Non et fuga.', 'http://www.marquardt.com/expedita-exercitationem-iure-aliquam', 'Ms. Bailee Fay I', 'https://lorempixel.com/640/480/?47410', '2020-05-26 06:19:33', '2020-05-26 06:19:33'),
	(6, 'Quod maiores et deserunt.', 'https://www.marks.com/laborum-quia-optio-in-est-et-eaque', 'Ella Powlowski V', 'https://lorempixel.com/640/480/?94541', '2020-05-26 06:26:12', '2020-05-26 06:26:12'),
	(7, 'Illo aut architecto.', 'http://ebert.com/debitis-non-laborum-reprehenderit-quaerat-voluptatem-est.html', 'Dr. August Rowe', 'https://lorempixel.com/640/480/?21558', '2020-05-26 06:26:13', '2020-05-26 06:26:13'),
	(8, 'Repellat nihil reiciendis eius.', 'http://www.graham.com/sunt-quod-voluptate-necessitatibus-saepe-saepe', 'Destinee Kuphal', 'https://lorempixel.com/640/480/?12899', '2020-05-26 06:26:13', '2020-05-26 06:26:13'),
	(9, 'Qui necessitatibus quaerat aperiam nulla.', 'http://stanton.com/magni-qui-quam-sed-doloribus-molestiae-nulla-in', 'Nikko Cruickshank', 'https://lorempixel.com/640/480/?42116', '2020-05-26 06:26:13', '2020-05-26 06:26:13'),
	(10, 'Natus quo impedit.', 'http://olson.org/eveniet-possimus-a-porro-est-asperiores-ducimus-ut', 'Anais Stark V', 'https://lorempixel.com/640/480/?98060', '2020-05-26 06:26:13', '2020-05-26 06:26:13');
/*!40000 ALTER TABLE `podcasts` ENABLE KEYS */;

-- Dumping structure for table radio.schedules
DROP TABLE IF EXISTS `schedules`;
CREATE TABLE IF NOT EXISTS `schedules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anchor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.schedules: ~51 rows (approximately)
DELETE FROM `schedules`;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` (`id`, `day`, `start_time`, `end_time`, `title`, `anchor`, `avatar`, `description`, `priority`, `created_at`, `updated_at`) VALUES
	(1, 'Sunday', '01:15:18', '20:52:57', 'Alice whispered, \'that it\'s done by everybody.', 'Savion Hansen', NULL, 'Mock Turtle. So she sat on, with closed eyes, and half believed herself in Wonderland, though she knew she had but to open them again, and all would change to dull reality--the grass would be only rustling in the wind, and the pool rippling to the waving of the reeds--the rattling teacups would change to tinkling sheep-bells, and the Queen\'s shrill cries to the voice of the shepherd boy--and the.', '0', '2020-05-26 06:03:33', '2020-05-26 06:03:33'),
	(2, 'Monday', '19:18:08', '04:10:33', 'Gryphon. \'Well, I can\'t remember,\' said the.', 'Katheryn Boehm', NULL, 'The Cat seemed to think that there was enough of it now in sight, and no more of it appeared. \'I don\'t think they play at all fairly,\' Alice began, in rather a complaining tone, \'and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea how confusing it is all the things.', '0', '2020-05-26 06:03:33', '2020-05-26 06:03:33'),
	(3, 'Saturday', '05:27:40', '11:53:19', 'Once more she found herself in a tone of great.', 'Darron Mayer', NULL, 'Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how this same little sister of hers would, in the after-time, be herself a grown woman; and how she would keep, through all her riper years, the simple and loving heart of her childhood: and how she would gather about her other little children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the dream of.', '0', '2020-05-26 06:03:33', '2020-05-26 06:03:33'),
	(4, 'Tuesday', '07:34:48', '12:45:45', 'Cat remarked. \'Don\'t be impertinent,\' said the.', 'Julio Schuppe', NULL, 'I wonder?\' Alice guessed in a moment that it was looking for the fan and the pair of white kid gloves, and she very good-naturedly began hunting about for them, but they were nowhere to be seen--everything seemed to have changed since her swim in the pool, and the great hall, with the glass table and the little door, had vanished completely. Very soon the Rabbit noticed Alice, as she went.', '0', '2020-05-26 06:03:33', '2020-05-26 06:03:33'),
	(5, 'Saturday', '08:03:42', '11:53:00', 'Rabbit asked. \'No, I didn\'t,\' said Alice.', 'Madison Bogisich', NULL, 'She had just succeeded in curving it down into a graceful zigzag, and was going to dive in among the leaves, which she found to be nothing but the tops of the trees under which she had been wandering, when a sharp hiss made her draw back in a hurry: a large pigeon had flown into her face, and was beating her violently with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said.', '0', '2020-05-26 06:03:33', '2020-05-26 06:03:33'),
	(6, 'Sunday', '07:09:59', '09:26:51', 'Alice alone with the words all coming different.', 'Earlene Windler Sr.', NULL, 'King eagerly, and he hurried off. Alice thought she might as well wait, as she had nothing else to do, and perhaps after all it might tell her something worth hearing. For some minutes it puffed away without speaking, but at last it unfolded its arms, took the hookah out of its mouth and yawned once or twice, and shook itself. Then it got down off the mushroom, and crawled away in the grass.', '0', '2020-05-26 06:03:33', '2020-05-26 06:03:33'),
	(7, 'Thursday', '15:59:26', '21:18:28', 'Very soon the Rabbit angrily. \'Here! Come and.', 'Paula Daugherty', NULL, 'Queen had ordered. They very soon came upon a Gryphon, lying fast asleep in the sun. (IF you don\'t know what a Gryphon is, look at the picture.) \'Up, lazy thing!\' said the Queen, \'and take this young lady to see the Mock Turtle, and to hear his history. I must go back and see after some executions I have ordered\'; and she walked off, leaving Alice alone with the Gryphon. Alice did not quite like.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(8, 'Saturday', '04:26:17', '00:13:54', 'Five, in a more subdued tone, and added with a.', 'Rogers Gusikowski', NULL, 'I\'d only been the right size to do it! Oh dear! I\'d nearly forgotten that I\'ve got to grow up again! Let me see--how IS it to be managed? I suppose I ought to eat or drink something or other; but the great question is, what?\' The great question certainly was, what? Alice looked all round her at the flowers and the blades of grass, but she did not see anything that looked like the right thing to.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(9, 'Monday', '23:24:24', '04:56:15', 'Duck and a crash of broken glass. \'What a number.', 'Dr. Arlo Bogan', NULL, 'I was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter said, turning to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Hatter. \'Nor I,\' said the March Hare. Alice was silent. The Dormouse had closed its eyes by this time, and was a little startled when she heard her voice close to her ear. \'You\'re thinking about.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(10, 'Wednesday', '05:29:12', '16:51:21', 'I shan\'t! YOU do it!--That I won\'t.', 'Prof. Ali Mann I', NULL, 'Queen, tossing her head impatiently; and, turning to Alice, she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said Alice very politely; but she added, to herself, \'Why, they\'re only a pack of cards, after all. I needn\'t be afraid of them!\' \'And who are THESE?\' said the Queen, pointing to the three gardeners who were lying round the rosetree; for, you see, as.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(11, 'Thursday', '00:27:24', '18:32:22', 'Alice more boldly: \'you know you\'re growing.', 'Annalise Ebert', NULL, 'There was a sound of many footsteps, and Alice looked round, eager to see the Queen. First came ten soldiers carrying clubs; these were all shaped like the three gardeners, oblong and flat, with their hands and feet at the corners: next the ten courtiers; these were ornamented all over with diamonds, and walked two and two, as the soldiers did. After these came the royal children; there were ten.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(12, 'Tuesday', '07:10:38', '03:19:56', 'Alice said very politely, \'if I had to stop and.', 'Prof. Jody Abbott', NULL, 'Alice; not that she wanted much to know, but the Dodo had paused as if it thought that SOMEBODY ought to speak, and no one else seemed inclined to say anything. \'Why,\' said the Dodo, \'the best way to explain it is to do it.\' (And, as you might like to try the thing yourself, some winter day, I will tell you how the Dodo managed it.) First it marked out a race-course, in a sort of circle, (\'the.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(13, 'Tuesday', '19:17:02', '11:37:51', 'Hatter\'s remark seemed to her ear, and whispered.', 'Erick Quigley', NULL, 'Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course not,\' Alice replied very readily: \'but that\'s because it stays the same year for such a long time together.\' \'Which is just the case with MINE,\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to have no sort of meaning in it, and yet it was certainly English. \'I don\'t quite understand you,\' she said, as.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(14, 'Saturday', '12:59:38', '10:40:29', 'Seaography: then Drawling--the Drawling-master.', 'Martine Bode', NULL, 'Mouse, who was trembling down to the end of his tail. \'As if I would talk on such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the name again!\' \'I won\'t indeed!\' said Alice, in a great hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not answer, so Alice went on eagerly: \'There is such a nice little dog near.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(15, 'Saturday', '10:15:26', '06:30:27', 'I think that will be much the most confusing.', 'Mrs. Christelle O\'Reilly PhD', NULL, 'Dodo suddenly called out \'The race is over!\' and they all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo could not answer without a great deal of thought, and it sat for a long time with one finger pressed upon its forehead (the position in which you usually see Shakespeare, in the pictures of him), while the rest waited in silence. At last the Dodo said.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(16, 'Monday', '23:27:36', '03:05:02', 'I\'d only been the right height to be.\' \'It is a.', 'Dr. Roderick Hoppe', NULL, 'Hatter. \'Nor I,\' said the March Hare. Alice was silent. The Dormouse had closed its eyes by this time, and was going off into a doze; but, on being pinched by the Hatter, it woke up again with a little shriek, and went on: \'--that begins with an M, such as mouse-traps, and the moon, and memory, and muchness--you know you say things are "much of a muchness"--did you ever see such a thing as a.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(17, 'Friday', '20:22:12', '07:01:37', 'Be off, or I\'ll kick you down stairs!\' \'That is.', 'Jovanny Stroman Jr.', NULL, 'Alice. \'Come on, then,\' said the Queen, \'and he shall tell you his history,\' As they walked off together, Alice heard the King say in a low voice, to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good thing!\' she said to herself, for she had felt quite unhappy at the number of executions the Queen had ordered. They very soon came upon a Gryphon, lying fast asleep in the sun. (IF.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(18, 'Tuesday', '05:57:28', '05:44:36', 'And welcome little fishes in With gently smiling.', 'Junior Rosenbaum', NULL, 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Rabbit in a low, hurried tone. He looked anxiously over his shoulder as he spoke, and then raised himself upon tiptoe, put his mouth close to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said Alice. \'Did you say "What a pity!"?\' the Rabbit asked. \'No, I didn\'t,\' said Alice: \'I don\'t think it\'s at all a pity. I said.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(19, 'Thursday', '21:19:35', '17:29:12', 'Trims his belt and his friends shared their.', 'Justine Johnson', NULL, 'They are waiting on the shingle--will you come and join the dance? Will you, won\'t you, will you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, won\'t you join the dance?"\' \'Thank you, it\'s a very interesting dance to watch,\' said Alice, feeling very glad that it was over at last: \'and I do so like.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(20, 'Sunday', '20:04:49', '10:47:11', 'Alice in a sulky tone; \'Seven jogged my elbow.\'.', 'Berta O\'Conner', NULL, 'Majesty,\' said the Knave, \'I didn\'t write it, and they can\'t prove I did: there\'s no name signed at the end.\' \'If you didn\'t sign it,\' said the King, \'that saves a world of trouble, you know, as we needn\'t try to find any. And yet I don\'t know,\' he went on, spreading out the verses on his knee, and looking at them with one eye; \'I seem to see some meaning in them, after all. "--SAID I COULD NOT.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(21, 'Friday', '11:32:58', '23:19:45', 'I beg your pardon!\' cried Alice again, in a day.', 'Ed Schuster DDS', NULL, 'There was a table set out under a tree in front of the house, and the March Hare and the Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the other two were using it as a cushion, resting their elbows on it, and talking over its head. \'Very uncomfortable for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose it doesn\'t mind.\' The table was a large.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(22, 'Thursday', '01:45:59', '05:25:59', 'WAISTCOAT-POCKET, and looked at Alice. \'I\'M not.', 'Ivah Hayes MD', NULL, 'I\'ll set Dinah at you!\' There was a dead silence instantly, and Alice thought to herself, \'I don\'t see how he can EVEN finish, if he doesn\'t begin.\' But she waited patiently. \'Once,\' said the Mock Turtle at last, with a deep sigh, \'I was a real Turtle.\' These words were followed by a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Gryphon, and the constant.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(23, 'Saturday', '06:21:14', '19:45:18', 'The first question of course had to stop and.', 'Amani Bashirian', NULL, 'King. On this the White Rabbit blew three blasts on the trumpet, and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts, she made some tarts, All on a summer day: The Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King said to the Hatter. \'It isn\'t mine,\' said the Hatter. \'Stolen!\' the King exclaimed, turning to the.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(24, 'Sunday', '06:23:36', '08:57:51', 'Elsie, Lacie, and Tillie; and they repeated.', 'Dr. Neha Wiza', NULL, 'Alice, \'and why it is you hate--C and D,\' she added in a whisper, half afraid that it would be offended again. \'Mine is a long and a sad tale!\' said the Mouse, turning to Alice, and sighing. \'It IS a long tail, certainly,\' said Alice, looking down with wonder at the Mouse\'s tail; \'but why do you call it sad?\' And she kept on puzzling about it while the Mouse was speaking, so that her idea of the.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(25, 'Friday', '18:23:00', '10:37:33', 'My notion was that you have to beat time when I.', 'Daniela Stokes', NULL, 'Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt so desperate that she was ready to ask help of any one; so, when the Rabbit came near her, she began, in a low, timid voice, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves and the fan, and skurried away into the darkness as hard as he could go. Alice took up the fan and gloves.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(26, 'Tuesday', '00:56:16', '04:19:42', 'Alice remained looking thoughtfully at the.', 'Garret West', NULL, 'Oh, how I wish I could shut up like a telescope! I think I could, if I only knew how to begin.\' For, you see, so many out-of-the-way things had happened lately, that Alice had begun to think that very few things indeed were really impossible. There seemed to be no use in waiting by the little door, so she went back to the table for it, she found she could not possibly reach it: she could see it.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(27, 'Tuesday', '08:42:13', '17:20:58', 'Mock Turtle recovered his voice, and, with tears.', 'Katelin Kirlin', NULL, 'And she kept on puzzling about it while the Mouse was speaking, so that her idea of the tale was something like this:-- \'Fury said to a mouse, That he met in the house, "Let us both go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have a trial: For really this morning I\'ve nothing to do." Said the mouse to the cur, "Such a trial, dear Sir, With no jury or judge, would be.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(28, 'Tuesday', '18:37:09', '04:14:08', 'Gryphon. \'I mean, what makes them sour--and.', 'Monserrat Bins', NULL, 'Quadrille The Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at Alice, and tried to speak, but for a minute or two sobs choked his voice. \'Same as if he had a bone in his throat,\' said the Gryphon: and it set to work shaking him and punching him in the back. At last the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(29, 'Tuesday', '10:52:22', '02:55:09', 'Now, if you could see it written up somewhere.\'.', 'Trycia O\'Kon', NULL, 'Alice, in a great hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not answer, so Alice went on eagerly: \'There is such a nice little dog near our house I should like to show you! A little bright-eyed terrier, you know, with oh, such long curly brown hair! And it\'ll fetch things when you throw them, and it\'ll sit up and beg for its dinner, and all.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(30, 'Friday', '14:00:32', '12:38:23', 'I\'ll tell you what year it is?\' \'Of course not,\'.', 'Carlos Von', NULL, 'Do you think I can listen all day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, timidly; \'some of the words have got altered.\' \'It is wrong from beginning to end,\' said the Caterpillar decidedly, and there was silence for some minutes. The Caterpillar was the first to speak. \'What size do you want.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(31, 'Wednesday', '10:16:06', '20:24:47', 'However, she did not like to go on for some.', 'Miss Golda Altenwerth', NULL, 'I eat one of these cakes,\' she thought, \'it\'s sure to make SOME change in my size; and as it can\'t possibly make me larger, it must make me smaller, I suppose.\' So she swallowed one of the cakes, and was delighted to find that she began shrinking directly. As soon as she was small enough to get through the door, she ran out of the house, and found quite a crowd of little animals and birds.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(32, 'Sunday', '13:30:30', '08:56:30', 'Duchess: \'what a clear way you go,\' said the.', 'Stacy Schulist', NULL, 'Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how this same little sister of hers would, in the after-time, be herself a grown woman; and how she would keep, through all her riper years, the simple and loving heart of her childhood: and how she would gather about her other little children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the dream of.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(33, 'Saturday', '00:08:49', '15:24:13', 'Poor Alice! It was all about, and crept a little.', 'Dr. Gabe Kuhn Sr.', NULL, 'Dormouse, after thinking a minute or two. \'They couldn\'t have done that, you know,\' Alice gently remarked; \'they\'d have been ill.\' \'So they were,\' said the Dormouse; \'VERY ill.\' Alice tried to fancy to herself what such an extraordinary ways of living would be like, but it puzzled her too much, so she went on: \'But why did they live at the bottom of a well?\' \'Take some more tea,\' the March Hare.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(34, 'Wednesday', '00:07:01', '02:12:08', 'Duchess, \'chop off her unfortunate guests to.', 'Robin Vandervort I', NULL, 'King, \'that only makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a general clapping of hands at this: it was the first really clever thing the King had said that day. \'That PROVES his guilt,\' said the Queen. \'It proves nothing of the sort!\' said Alice. \'Why, you don\'t even know what they\'re about!\' \'Read them,\' said.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(35, 'Sunday', '09:23:29', '04:41:37', 'So Bill\'s got to do,\' said the Duchess; \'and.', 'Mae Crist', NULL, 'I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of this rope--Will the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(36, 'Tuesday', '11:17:36', '19:21:43', 'I could not be denied, so she took up the little.', 'Leila Wintheiser', NULL, 'Alice had begun to think that very few things indeed were really impossible. There seemed to be no use in waiting by the little door, so she went back to the table, half hoping she might find another key on it, or at any rate a book of rules for shutting people up like telescopes: this time she found a little bottle on it, (\'which certainly was not here before,\' said Alice,) and round the neck.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(37, 'Sunday', '19:09:39', '04:52:44', 'I must be getting home; the night-air doesn\'t.', 'Lindsay Strosin MD', NULL, 'Alice knew it was the Rabbit coming to look for her, and she trembled till she shook the house, quite forgetting that she was now about a thousand times as large as the Rabbit, and had no reason to be afraid of it. Presently the Rabbit came up to the door, and tried to open it; but, as the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(38, 'Monday', '11:16:34', '13:37:30', 'Knave. The Knave of Hearts, she made it out into.', 'Freida Gulgowski I', NULL, 'VERY wide, but she gained courage as she went on. Her listeners were perfectly quiet till she got to the part about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the Caterpillar, and the words all coming different, and then the Mock Turtle drew a long breath, and said \'That\'s very curious.\' \'It\'s all about as curious as it can be,\' said the Gryphon. \'It all came different!\' the Mock Turtle.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(39, 'Wednesday', '16:49:43', '22:26:43', 'As she said this, she noticed that they had at.', 'Elian Goodwin MD', NULL, 'Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the jelly-fish out of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'--you advance twice--\' \'Each with a lobster as a partner!\' cried the Gryphon. \'Of course,\' the Mock Turtle said: \'advance twice, set to partners--\' \'--change lobsters, and retire in same order,\' continued the Gryphon. \'Then.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(40, 'Sunday', '15:23:37', '14:08:09', 'YOU with us!"\' \'They were learning to draw, you.', 'Richmond Ullrich', NULL, 'Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the right words,\' said poor Alice, and her eyes filled with tears again as she went on, \'I must be Mabel after all, and I shall have to go and live in that poky little house, and have next to no toys to play with, and oh! ever.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(41, 'Friday', '16:19:27', '12:34:26', 'I\'ve offended it again!\' For the Mouse in the.', 'Prof. Delaney Herzog', NULL, 'This time there could be NO mistake about it: it was neither more nor less than a pig, and she felt that it would be quite absurd for her to carry it further. So she set the little creature down, and felt quite relieved to see it trot away quietly into the wood. \'If it had grown up,\' she said to herself, \'it would have made a dreadfully ugly child: but it makes rather a handsome pig, I think.\'.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(42, 'Wednesday', '00:38:46', '08:43:27', 'For he can EVEN finish, if he thought it must.', 'Prof. Cruz Schmitt', NULL, 'However, on the second time round, she came upon a low curtain she had not noticed before, and behind it was a little door about fifteen inches high: she tried the little golden key in the lock, and to her great delight it fitted! Alice opened the door and found that it led into a small passage, not much larger than a rat-hole: she knelt down and looked along the passage into the loveliest.', '0', '2020-05-26 06:03:34', '2020-05-26 06:03:34'),
	(43, 'Tuesday', '02:56:19', '14:52:39', 'Mock Turtle. \'And how do you like the tone of.', 'Guadalupe Schimmel', NULL, 'Alice: he had taken his watch out of his pocket, and was looking at it uneasily, shaking it every now and then, and holding it to his ear. Alice considered a little, and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. \'I told you butter wouldn\'t suit the works!\' he added looking angrily at the March Hare. \'It was the BEST butter,\' the March Hare meekly replied. \'Yes, but some crumbs.', '0', '2020-05-26 06:03:35', '2020-05-26 06:03:35'),
	(44, 'Monday', '19:00:38', '23:05:33', 'Alice. \'Why, there they lay sprawling about.', 'Victor Heller Sr.', NULL, 'Lobster; I heard him declare, "You have baked me too brown, I must sugar my hair." As a duck with its eyelids, so he with his nose Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows When the sands are all dry, he is gay as a lark, And will talk in contemptuous tones of the Shark, But, when the tide rises and sharks are around, His voice has a timid and.', '0', '2020-05-26 06:03:35', '2020-05-26 06:03:35'),
	(45, 'Sunday', '18:06:57', '01:33:23', 'English coast you find a pleasure in all my.', 'Ludwig Wehner PhD', NULL, 'I see"!\' \'You might just as well say,\' added the March Hare, \'that "I like what I get" is the same thing as "I sleep when I breathe"!\' \'It IS the same thing with you,\' said the Hatter, and here the conversation dropped, and the party sat silent for a minute, while Alice thought over all she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was the first to break the.', '0', '2020-05-26 06:03:35', '2020-05-26 06:03:35'),
	(46, 'Monday', '16:49:21', '12:10:38', 'Rabbit\'s little white kid gloves and a large fan.', 'Ms. Penelope Denesik PhD', NULL, 'And beat him when he sneezes: He only does it to annoy, Because he knows it teases.\' CHORUS. (In which the cook and the baby joined):-- \'Wow! wow! wow!\' While the Duchess sang the second verse of the song, she kept tossing the baby violently up and down, and the poor little thing was waving its tail about in a melancholy way, being quite unable to move. She soon got it out again, and put it.', '0', '2020-05-26 06:03:35', '2020-05-26 06:03:35'),
	(47, 'Thursday', '02:47:43', '06:22:44', 'Alice went timidly up to Alice, she went on for.', 'Ms. Name Schneider', NULL, 'King, \'that saves a world of trouble, you know, as we needn\'t try to find any. And yet I don\'t know,\' he went on, spreading out the verses on his knee, and looking at them with one eye; \'I seem to see some meaning in them, after all. "--SAID I COULD NOT SWIM--" you can\'t swim, can you?\' he added, turning to the Knave. The Knave shook his head sadly. \'Do I look like it?\' he said. (Which he.', '0', '2020-05-26 06:03:35', '2020-05-26 06:03:35'),
	(48, 'Monday', '17:29:45', '23:45:31', 'Alice: \'allow me to sell you a couple?\' \'You are.', 'Tremaine Buckridge', NULL, 'But I\'d better take him his fan and gloves--that is, if I can find them.\' As she said this, she looked up, and there was the Cat again, sitting on a branch of a tree. \'Did you say pig, or fig?\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Cat; and this time it vanished quite slowly.', '0', '2020-05-26 06:03:35', '2020-05-26 06:03:35'),
	(49, 'Saturday', '20:56:21', '19:12:53', 'Gryphon. \'We can do no more, whatever happens.', 'Aurelia Gorczany', NULL, 'Hare. Alice sighed wearily. \'I think you might do something better with the time,\' she said, \'than waste it in asking riddles that have no answers.\' \'If you knew Time as well as I do,\' said the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know what you mean,\' said Alice. \'Of course you don\'t!\' the Hatter said, tossing his head contemptuously. \'I dare say you never even spoke.', '0', '2020-05-26 06:03:35', '2020-05-26 06:03:35'),
	(50, 'Tuesday', '08:51:01', '07:26:44', 'Alice heard it say to itself \'Then I\'ll go round.', 'Fernando McDermott', NULL, 'Mouse, who was trembling down to the end of his tail. \'As if I would talk on such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the name again!\' \'I won\'t indeed!\' said Alice, in a great hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not answer, so Alice went on eagerly: \'There is such a nice little dog near.', '0', '2020-05-26 06:03:35', '2020-05-26 06:03:35'),
	(51, 'Sunday', '11:11:00', '11:11:00', 'First title', 'Nature', NULL, 'aSDFGHJKM', NULL, '2020-05-26 20:20:33', '2020-05-26 20:20:33');
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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.teams: ~6 rows (approximately)
DELETE FROM `teams`;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` (`id`, `first_name`, `last_name`, `about`, `email`, `avatar`, `twitter`, `facebook`, `instagram`, `created_at`, `updated_at`) VALUES
	(1, 'Cyrus Green DDS', 'Madisyn Predovic', 'Mollitia quasi rerum est ullam perferendis. Illo quo aut sapiente. Qui facere doloremque nobis odio aut tenetur aliquam. Amet id dolor molestiae fugit minima voluptas adipisci.', 'jasper67@example.com', NULL, NULL, NULL, NULL, '2020-05-26 06:03:43', '2020-05-26 06:03:43'),
	(2, 'Jailyn Bogan', 'Sarina Leuschke DVM', 'Consectetur alias rerum voluptate ut dolor asperiores. Non quo incidunt aperiam id cumque officiis. Porro aut beatae ut aut eligendi consectetur est. Ipsa itaque minima tempora aut nesciunt laboriosam dignissimos. Et magnam id explicabo quam odit odio.', 'romaguera.kyra@example.org', NULL, NULL, NULL, NULL, '2020-05-26 06:03:43', '2020-05-26 06:03:43'),
	(3, 'Katelin Grady DVM', 'Valentin Lueilwitz', 'Accusantium autem quidem est nemo. Distinctio quis esse amet. In fuga velit impedit fuga quia enim id. Ipsam omnis rem similique voluptatem dolores quas.', 'wromaguera@example.com', NULL, NULL, NULL, NULL, '2020-05-26 06:03:43', '2020-05-26 06:03:43'),
	(4, 'Anjali Casper', 'Leanna Fadel', 'Ullam aut cum assumenda consequatur recusandae velit laudantium. Nostrum rem dicta suscipit necessitatibus ad reprehenderit sunt. Esse rerum est qui eum est. Autem eum sed aperiam hic eligendi aliquam qui.', 'corrine.schneider@example.com', NULL, NULL, NULL, NULL, '2020-05-26 06:03:43', '2020-05-26 06:03:43'),
	(5, 'Miss Edna Hamill', 'Maya Pacocha', 'Sit iure earum quis dolore non ut. Necessitatibus voluptatem consectetur autem aliquid. Dolore sequi asperiores ducimus non.', 'zbecker@example.org', NULL, NULL, NULL, NULL, '2020-05-26 06:03:43', '2020-05-26 06:03:43'),
	(9, 'Ogunniyi', 'Jeremiah', 'A short bio ad and bio for the biography', 'jerexbambex@gmail.com', 'https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590525688/radio/avatar.jpg', 'jerexbambex', 'jerexbambex', 'jerexbambex', '2020-05-26 10:07:49', '2020-05-26 20:43:02');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
