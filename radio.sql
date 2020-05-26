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


-- Dumping database structure for radio
CREATE DATABASE IF NOT EXISTS `radio` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `radio`;

-- Dumping structure for table radio.failed_jobs
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
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table radio.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '2014_10_12_000000_create_users_table', 1),
	(5, '2014_10_12_100000_create_password_resets_table', 1),
	(6, '2019_08_19_000000_create_failed_jobs_table', 1),
	(8, '2020_05_18_222816_create_teams_table', 2),
	(10, '2020_05_19_135705_create_schedules_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table radio.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table radio.schedules
CREATE TABLE IF NOT EXISTS `schedules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anchor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.schedules: ~50 rows (approximately)
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
REPLACE INTO `schedules` (`id`, `day`, `start_time`, `end_time`, `title`, `anchor`, `avatar`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Sunday', '02:31:07', '09:23:09', 'Down, down, down. There was a paper label, with.', 'Alysa Cartwright', NULL, 'VERY wide, but she gained courage as she went on. Her listeners were perfectly quiet till she got to the part about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the Caterpillar, and the words all coming different, and then the Mock Turtle drew a long breath, and said \'That\'s very curious.\' \'It\'s all about as curious as it can be,\' said the Gryphon. \'It all came different!\' the Mock Turtle.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(2, 'Sunday', '17:10:26', '17:02:24', 'They had a bone in his note-book, cackled out.', 'Prof. Garrick Fritsch Jr.', NULL, 'Queen was in a furious passion, and went stamping about, and shouting \'Off with his head!\' or \'Off with her head!\' about once in a minute. Alice began to feel very uneasy: to be sure, she had not as yet had any dispute with the Queen, but she knew that it might happen any minute, \'and then,\' thought she, \'what would become of me? They\'re dreadfully fond of beheading people here; the great wonder.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(3, 'Tuesday', '22:40:12', '10:52:23', 'I gave her answer. \'They\'re done with a pair of.', 'Nicolette Boyer III', NULL, 'Mock Turtle. Alice was very nearly getting up and saying, \'Thank you, sir, for your interesting story,\' but she could not help thinking there MUST be more to come, so she sat still and said nothing. \'When we were little,\' the Mock Turtle went on at last, more calmly, though still sobbing a little now and then, \'we went to school in the sea, though you mayn\'t believe it--\' \'I never said I.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(4, 'Saturday', '14:03:15', '20:16:06', 'Said his father; \'don\'t give yourself airs! Do.', 'Bret Yost', NULL, 'The Dormouse shook its head impatiently, and said, without opening its eyes, \'Of course, of course; just what I was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter said, turning to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Hatter. \'Nor I,\' said the March Hare. Alice was silent. The Dormouse had closed its.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(5, 'Tuesday', '20:43:55', '11:43:47', 'Hatter, and here the conversation dropped, and.', 'Henry Jenkins', NULL, 'She was close behind it when she turned the corner, but the Rabbit was no longer to be seen: she found herself in a long, low hall, which was lit up by a row of lamps hanging from the roof. There were doors all round the hall, but they were all locked; and when Alice had been all the way down one side and up the other, trying every door, she walked sadly down the middle, wondering how she was.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(6, 'Friday', '21:23:10', '01:27:39', 'Alice like the right size again; and the three.', 'Addie Lindgren', NULL, 'Alice alone with the Gryphon. Alice did not quite like the look of the creature, but on the whole she thought it would be quite as safe to stay with it as to go after that savage Queen: so she waited. The Gryphon sat up and rubbed its eyes: then it watched the Queen till she was out of sight: then it chuckled. \'What fun!\' said the Gryphon, half to itself, half to Alice. \'What IS the fun?\' said.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(7, 'Monday', '09:28:52', '00:05:09', 'Footman continued in the court!\' and the little.', 'Adriel Fadel Sr.', NULL, 'Alice for protection. \'You shan\'t be beheaded!\' said Alice, and she put them into a large flower-pot that stood near. The three soldiers wandered about for a minute or two, looking for them, and then quietly marched off after the others. \'Are their heads off?\' shouted the Queen. \'Their heads are gone, if it please your Majesty!\' the soldiers shouted in reply. \'That\'s right!\' shouted the Queen.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(8, 'Monday', '07:47:43', '16:35:59', 'Caterpillar contemptuously. \'Who are YOU?\' said.', 'Ms. Palma Hane MD', NULL, 'Duchess. An invitation from the Queen to play croquet.\' The Frog-Footman repeated, in the same solemn tone, only changing the order of the words a little, \'From the Queen. An invitation for the Duchess to play croquet.\' Then they both bowed low, and their curls got entangled together. Alice laughed so much at this, that she had to run back into the wood for fear of their hearing her; and when.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(9, 'Saturday', '19:03:39', '19:44:34', 'And how odd the directions will look! ALICE\'S.', 'Trevion Mitchell', NULL, 'I\'d only been the right size to do it! Oh dear! I\'d nearly forgotten that I\'ve got to grow up again! Let me see--how IS it to be managed? I suppose I ought to eat or drink something or other; but the great question is, what?\' The great question certainly was, what? Alice looked all round her at the flowers and the blades of grass, but she did not see anything that looked like the right thing to.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(10, 'Tuesday', '18:38:06', '08:56:45', 'I ought to have changed since her swim in the.', 'Terence O\'Kon II', NULL, 'And yet you incessantly stand on your head-- Do you think, at your age, it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might injure the brain; But, now that I\'m perfectly sure I have none, Why, I do it again and again.\' \'You are old,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a back-somersault in at the door-- Pray.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(11, 'Tuesday', '22:58:26', '23:33:37', 'I didn\'t!\' interrupted Alice. \'You are,\' said.', 'Miss Aimee Smith', NULL, 'Caterpillar. Alice folded her hands, and began:-- \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your head-- Do you think, at your age, it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might injure the brain; But, now that I\'m perfectly sure I have none, Why, I do it again and again.\' \'You are.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(12, 'Wednesday', '01:53:31', '19:01:30', 'Alice would not give all else for two reasons.', 'Euna Larkin', NULL, 'I\'ll try if I know all the things I used to know. Let me see: four times five is twelve, and four times six is thirteen, and four times seven is--oh dear! I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the capital of Paris, and Paris is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(13, 'Monday', '18:40:55', '07:06:33', 'Alice quietly said, just as the Lory hastily. \'I.', 'Prof. Jo Rath', NULL, 'Alice was not a bit hurt, and she jumped up on to her feet in a moment: she looked up, but it was all dark overhead; before her was another long passage, and the White Rabbit was still in sight, hurrying down it. There was not a moment to be lost: away went Alice like the wind, and was just in time to see it pop down a large rabbit-hole under the hedge. In another moment down went Alice after.', '2020-05-20 13:09:26', '2020-05-20 13:09:26'),
	(14, 'Sunday', '18:05:46', '09:04:50', 'In another minute the whole thing very absurd.', 'Dorris Welch', NULL, 'I can creep under the door; so either way I\'ll get into the garden, and I don\'t care which happens!\' She ate a little bit, and said anxiously to herself, \'Which way? Which way?\', holding her hand on the top of her head to feel which way it was growing, and she was quite surprised to find that she remained the same size: to be sure, this generally happens when one eats cake, but Alice had got so.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(15, 'Tuesday', '19:52:15', '01:07:38', 'Alice did not like the wind, and was going on.', 'Cathy White', NULL, 'Cheshire Cat sitting on a bough of a tree a few yards off. The Cat only grinned when it saw Alice. It looked good-natured, she thought: still it had VERY long claws and a great many teeth, so she felt that it ought to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, as she did not at all know whether it would like the name: however, it only grinned a little wider. \'Come, it\'s.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(16, 'Thursday', '12:07:24', '04:11:53', 'Dinah my dear! I shall never get to the voice of.', 'Don Berge', NULL, 'Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'all I know is, it would feel very queer to ME.\' \'You!\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the beginning of the conversation. Alice felt a little irritated at the Caterpillar\'s making such VERY short remarks, and she drew herself up and said, very gravely, \'I think, you.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(17, 'Tuesday', '01:13:32', '10:11:57', 'Seaography: then Drawling--the Drawling-master.', 'Earnestine Shanahan', NULL, 'After a minute or two, they began moving about again, and Alice heard the Rabbit say, \'A barrowful will do, to begin with.\' \'A barrowful of WHAT?\' thought Alice; but she had not long to doubt, for the next moment a shower of little pebbles came rattling in at the window, and some of them hit her in the face. \'I\'ll put a stop to this,\' she said to herself, and began by taking the little golden.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(18, 'Wednesday', '00:31:26', '04:14:22', 'King. \'It began with the Mouse was swimming away.', 'Carol Schmeler', NULL, 'EVEN finish, if he doesn\'t begin.\' But she waited patiently. \'Once,\' said the Mock Turtle at last, with a deep sigh, \'I was a real Turtle.\' These words were followed by a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Gryphon, and the constant heavy sobbing of the Mock Turtle. Alice was very nearly getting up and saying, \'Thank you, sir, for your interesting.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(19, 'Thursday', '22:48:04', '23:52:02', 'YOUR adventures.\' \'I could tell you how it was.', 'Dr. Nathanael Harris', NULL, 'I think--\' (for, you see, Alice had learnt several things of this sort in her lessons in the schoolroom, and though this was not a VERY good opportunity for showing off her knowledge, as there was no one to listen to her, still it was good practice to say it over) \'--yes, that\'s about the right distance--but then I wonder what Latitude or Longitude I\'ve got to?\' (Alice had no idea what Latitude.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(20, 'Wednesday', '15:05:12', '08:02:14', 'EVER happen in a sorrowful tone, \'I\'m afraid I.', 'Prof. Georgette Romaguera', NULL, 'Duchess; \'and most of \'em do.\' \'I don\'t know of any that do,\' Alice said very politely, feeling quite pleased to have got into a conversation. \'You don\'t know much,\' said the Duchess; \'and that\'s a fact.\' Alice did not at all like the tone of this remark, and thought it would be as well to introduce some other subject of conversation. While she was trying to fix on one, the cook took the.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(21, 'Tuesday', '02:35:55', '16:54:46', 'Mabel after all, and I had not long to doubt.', 'Jalon Bednar PhD', NULL, 'M--\' \'Why with an M?\' said Alice. \'Why not?\' said the March Hare. Alice sighed wearily. \'I think you might do something better with the time,\' she said, \'than waste it in asking riddles that have no answers.\' \'If you knew Time as well as I do,\' said the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know what you mean,\' said Alice. \'Of course you don\'t!\' the Hatter said.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(22, 'Sunday', '07:36:45', '03:28:54', 'Gryphon never learnt it.\' \'Hadn\'t time,\' said.', 'Dr. Tyrel McClure', NULL, 'DON\'T know,\' said the Caterpillar. Alice said nothing: she had never been so much contradicted in her life before, and she felt that she was losing her temper. \'Are you content now?\' said the Caterpillar. \'Well, I should like to be a LITTLE larger, sir, if you wouldn\'t mind,\' said Alice: \'three inches is such a wretched height to be.\' \'It is a very good height indeed!\' said the Caterpillar.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(23, 'Monday', '06:33:24', '08:11:27', 'I can\'t understand it myself to begin at HIS.', 'Ima Nicolas', NULL, 'Hatter. \'I deny it!\' said the March Hare. \'He denies it,\' said the King: \'leave out that part.\' \'Well, at any rate, the Dormouse said--\' the Hatter went on, looking anxiously round to see if he would deny it too: but the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, \'I cut some more bread-and-butter--\' \'But what did the Dormouse say?\' one of the jury asked.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(24, 'Tuesday', '15:11:52', '12:49:30', 'Let me see: that would be very likely it can.', 'Cleta Runolfsdottir', NULL, 'I suppose?\' said Alice. \'Exactly so,\' said the Hatter: \'as the things get used up.\' \'But what happens when you come to the beginning again?\' Alice ventured to ask. \'Suppose we change the subject,\' the March Hare interrupted, yawning. \'I\'m getting tired of this. I vote the young lady tells us a story.\' \'I\'m afraid I don\'t know one,\' said Alice, rather alarmed at the proposal. \'Then the Dormouse.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(25, 'Tuesday', '16:14:32', '06:37:06', 'Dodo could not even room for YOU, and no more to.', 'Rachelle Stanton', NULL, 'WILLIAM,\' to the Caterpillar, and the words all coming different, and then the Mock Turtle drew a long breath, and said \'That\'s very curious.\' \'It\'s all about as curious as it can be,\' said the Gryphon. \'It all came different!\' the Mock Turtle repeated thoughtfully. \'I should like to hear her try and repeat something now. Tell her to begin.\' He looked at the Gryphon as if he thought it had some.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(26, 'Sunday', '20:04:49', '01:24:51', 'I THINK; or is it directed to?\' said one of them.', 'Christa Nader', NULL, 'So she stood still where she was, and waited. When the procession came opposite to Alice, they all stopped and looked at her, and the Queen said severely \'Who is this?\' She said it to the Knave of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the Queen, tossing her head impatiently; and, turning to Alice, she went on, \'What\'s your name, child?\' \'My name is Alice, so please your.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(27, 'Wednesday', '18:22:41', '09:16:56', 'Next came the royal children; there were a Duck.', 'Miss Vivien Kuhn', NULL, 'Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and the Mock Turtle had just begun to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the distance. \'Come on!\' cried the Gryphon, and, taking Alice by the hand, it hurried off, without waiting for the end of the song. \'What trial is it?\' Alice panted as.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(28, 'Tuesday', '04:26:34', '15:06:11', 'Queen till she had hurt the poor little Lizard.', 'Armando Willms PhD', NULL, 'Gryphon, sighing in his turn; and both creatures hid their faces in their paws. \'And how many hours a day did you do lessons?\' said Alice, in a hurry to change the subject. \'Ten hours the first day,\' said the Mock Turtle: \'nine the next, and so on.\' \'What a curious plan!\' exclaimed Alice. \'That\'s the reason they\'re called lessons,\' the Gryphon remarked: \'because they lessen from day to day.\'.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(29, 'Monday', '09:04:02', '11:56:11', 'That he met in the window?\' \'Sure, it\'s an arm.', 'Keyshawn Denesik', NULL, 'Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should think very likely it can talk: at any rate, there\'s no harm in trying.\' So she began: \'O Mouse, do you know the way out of this pool? I am very tired of swimming about here, O Mouse!\' (Alice thought this must be the right way of speaking to a mouse: she had never done such a thing before, but she remembered.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(30, 'Thursday', '03:38:49', '17:05:39', 'Queen, who was trembling down to nine inches.', 'Nakia Quigley', NULL, 'Will you, won\'t you, will you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, won\'t you join the dance?"\' \'Thank you, it\'s a very interesting dance to watch,\' said Alice, feeling very glad that it was over at last: \'and I do so like that curious song about the whiting!\' \'Oh, as to the whiting,\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(31, 'Tuesday', '10:47:53', '03:23:29', 'I only wish people knew that: then they both.', 'Nia Welch', NULL, 'I should understand that better,\' Alice said very politely, \'if I had it written down: but I can\'t quite follow it as you say it.\' \'That\'s nothing to what I could say if I chose,\' the Duchess replied, in a pleased tone. \'Pray don\'t trouble yourself to say it any longer than that,\' said Alice. \'Oh, don\'t talk about trouble!\' said the Duchess. \'I make you a present of everything I\'ve said as yet.\'.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(32, 'Thursday', '21:54:07', '18:15:29', 'I know!\' exclaimed Alice, who always took a.', 'Alvera Buckridge', NULL, 'I don\'t like it, yer honour, at all, at all!\' \'Do as I tell you, you coward!\' and at last she spread out her hand again, and made another snatch in the air. This time there were TWO little shrieks, and more sounds of broken glass. \'What a number of cucumber-frames there must be!\' thought Alice. \'I wonder what they\'ll do next! As for pulling me out of the window, I only wish they COULD! I\'m sure.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(33, 'Wednesday', '12:19:04', '09:18:25', 'King, the Queen, and in another minute there was.', 'Brianne Bosco', NULL, 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice. \'I\'M not a mile high,\' said Alice. \'You are,\' said the King. \'Nearly two miles high,\' added the Queen. \'Well, I shan\'t go, at any rate,\' said Alice: \'besides, that\'s not a regular rule: you invented it just now.\' \'It\'s the oldest rule in the book,\' said the King. \'Then it ought to be Number One,\' said.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(34, 'Saturday', '18:47:40', '17:20:21', 'Majesty,\' said Alice a good many little girls.', 'Rasheed Kilback', NULL, 'Gryphon; and then they both sat silent and looked at poor Alice, who felt ready to sink into the earth. At last the Gryphon said to the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' and he went on in these words: \'Yes, we went to school in the sea, though you mayn\'t believe it--\' \'I never said I didn\'t!\' interrupted Alice. \'You did,\' said the Mock Turtle. \'Hold your tongue!\'.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(35, 'Sunday', '21:47:05', '23:04:03', 'I suppose.\' So she stood looking at it again.', 'Lon Haley I', NULL, 'WHAT?\' said the Duck. \'Found IT,\' the Mouse replied rather crossly: \'of course you know what "it" means.\' \'I know what "it" means well enough, when I find a thing,\' said the Duck: \'it\'s generally a frog or a worm. The question is, what did the archbishop find?\' The Mouse did not notice this question, but hurriedly went on, \'"--found it advisable to go with Edgar Atheling to meet William and.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(36, 'Wednesday', '19:17:00', '10:57:27', 'Dormouse, and repeated her question. \'Why did.', 'Delfina Feil I', NULL, 'Eaglet, and several other curious creatures. Alice led the way, and the whole party swam to the shore. CHAPTER III. A Caucus-Race and a Long Tale They were indeed a queer-looking party that assembled on the bank--the birds with draggled feathers, the animals with their fur clinging close to them, and all dripping wet, cross, and uncomfortable. The first question of course was, how to get dry.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(37, 'Sunday', '11:27:51', '14:51:46', 'When the procession moved on, three of the.', 'Jennyfer Carter', NULL, 'Five, who had been anxiously looking across the garden, called out \'The Queen! The Queen!\' and the three gardeners instantly threw themselves flat upon their faces. There was a sound of many footsteps, and Alice looked round, eager to see the Queen. First came ten soldiers carrying clubs; these were all shaped like the three gardeners, oblong and flat, with their hands and feet at the corners.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(38, 'Friday', '11:27:35', '06:22:49', 'And so it was the same size: to be afraid of.', 'Max Adams', NULL, 'CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am to see you again, you dear old thing!\' said the Duchess, as she tucked her arm affectionately into Alice\'s, and they walked off together. Alice was very glad to find her in such a pleasant temper, and thought to herself that perhaps it was only the pepper that had made her so savage when they met in the kitchen. \'When I\'M a.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(39, 'Friday', '07:20:58', '14:59:58', 'King said, with a little bottle on it, for she.', 'Mrs. Dahlia Reinger', NULL, 'Hatter trembled so, that he shook both his shoes off. \'Give your evidence,\' the King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter began, in a trembling voice, \'--and I hadn\'t begun my tea--not above a week or so--and what with the bread-and-butter getting so thin--and the twinkling of the tea--\' \'The twinkling of the.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(40, 'Wednesday', '00:17:47', '17:36:28', 'Dinah, tell me who YOU are, first.\' \'Why?\' said.', 'Dr. Rodolfo Jones', NULL, 'Nobody moved. \'Who cares for you?\' said Alice, (she had grown so large in the last few minutes that she wasn\'t a bit afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it,\' but none of them attempted to explain the paper. \'If there\'s no meaning in it,\' said the King, \'that only makes the matter worse. You MUST have meant some mischief, or else.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(41, 'Thursday', '02:44:11', '00:34:44', 'YOU are, first.\' \'Why?\' said the Mock Turtle to.', 'Jo Reinger', NULL, 'I do hope it\'ll make me grow large again, for really I\'m quite tired of being such a tiny little thing!\' It did so indeed, and much sooner than she had expected: before she had drunk half the bottle, she found her head pressing against the ceiling, and had to stoop to save her neck from being broken. She hastily put down the bottle, saying to herself \'That\'s quite enough--I hope I shan\'t grow.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(42, 'Tuesday', '17:02:36', '05:18:15', 'YOU sing,\' said the King. \'Nothing whatever,\'.', 'Prof. Christopher Legros', NULL, 'Pigeon. \'I\'m NOT a serpent!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a more subdued tone, and added with a kind of sob, \'I\'ve tried every way, and nothing seems to suit them!\' \'I haven\'t the least idea what you\'re talking about,\' said Alice. \'I\'ve tried the roots of trees, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon went on.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(43, 'Wednesday', '11:29:23', '19:24:24', 'French mouse, come over with diamonds, and.', 'Miss Rae Fritsch', NULL, 'Queen of Hearts, she made some tarts, All on a summer day: The Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King said to the jury. \'Not yet, not yet!\' the Rabbit hastily interrupted. \'There\'s a great deal to come before that!\' \'Call the first witness,\' said the King; and the White Rabbit blew three blasts on the trumpet, and then unrolled the.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(44, 'Tuesday', '20:53:31', '06:47:22', 'Very soon the Rabbit noticed Alice, as she left.', 'Modesta Denesik', NULL, 'Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, \'I cut some more bread-and-butter--\' \'But what did the Dormouse say?\' one of the jury asked. \'That I can\'t remember,\' said the Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went down on one knee. \'I\'m a poor man, your.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(45, 'Friday', '22:08:38', '18:02:47', 'Mock Turtle. \'She can\'t explain it,\' said the.', 'Emelia Maggio', NULL, 'Dormouse,\' the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of court! Suppress him! Pinch him! Off with his whiskers!\' For some minutes the whole court was in confusion, getting the Dormouse turned out, and, by the time they had settled down again, the cook had disappeared. \'Never mind!\' said the King, with an air of great relief. \'Call the next witness.\' And he added in an.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(46, 'Friday', '18:30:19', '16:51:12', 'There was a sound of a well?\' \'Take some more of.', 'Sydnee Prohaska', NULL, 'She was a good deal frightened by this very sudden change, but she felt that there was no time to be lost, as she was shrinking rapidly; so she set to work at once to eat some of the other bit. Her chin was pressed so closely against her foot, that there was hardly room to open her mouth; but she did it at last, and managed to swallow a morsel of the lefthand bit. * * * * * * * * * * \'Come, my.', '2020-05-20 13:09:27', '2020-05-20 13:09:27'),
	(47, 'Monday', '22:44:33', '17:21:24', 'Lobster Quadrille?\' the Gryphon went on to.', 'Leon Collier', NULL, 'THE. I am very tired of swimming about here, O Mouse!\' (Alice thought this must be the right way of speaking to a mouse: she had never done such a thing before, but she remembered. I am very tired of swimming about here, O Mouse!\' (Alice thought this must be the right way of speaking to a mouse: she had never done such a thing before, but she remembered.', '2020-05-20 13:09:28', '2020-05-20 13:09:28'),
	(48, 'Sunday', '05:13:00', '16:48:54', 'The three soldiers wandered about in the sky.', 'Kristina Wyman', NULL, 'Hare,) \'--it was at the great concert given by the Queen of Hearts, and I had to sing "Twinkle, twinkle, little bat! How I wonder what you\'re at!" You know the song, perhaps?\' \'I\'ve heard something like it,\' said Alice. \'It goes on, you know,\' the Hatter continued, \'in this way:-- "Up above the world you fly, Like a tea-tray in the sky. Twinkle, twinkle--"\' Here the Dormouse shook itself, and.', '2020-05-20 13:09:28', '2020-05-20 13:09:28'),
	(49, 'Sunday', '06:11:50', '14:47:09', 'Caterpillar. \'I\'m afraid I am, sir,\' said Alice.', 'Prof. Aryanna Bradtke', NULL, 'Alice. \'Come, let\'s try the first figure!\' said the Mock Turtle to the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Gryphon. \'I\'ve forgotten the words.\' So they began solemnly dancing round and round Alice, every now and then treading on her toes when they passed too close, and waving their forepaws to mark the time, while the Mock Turtle sang this.', '2020-05-20 13:09:28', '2020-05-20 13:09:28'),
	(50, 'Wednesday', '15:36:41', '18:24:52', 'March Hare. \'I didn\'t know it to the waving of.', 'Prof. Orval Yundt PhD', NULL, 'There was nothing so VERY remarkable in that; nor did Alice think it so VERY much out of the way to hear the Rabbit say to itself, \'Oh dear! Oh dear! I shall be late!\' (when she thought it over afterwards, it occurred to her that she might as well look and see what was on the top of it. She stretched herself up on tiptoe, and peeped over the edge of the mushroom, and her eyes immediately met.', '2020-05-20 13:09:28', '2020-05-20 13:09:28');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;

-- Dumping structure for table radio.teams
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.teams: ~8 rows (approximately)
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
REPLACE INTO `teams` (`id`, `first_name`, `last_name`, `about`, `email`, `avatar`, `twitter`, `facebook`, `instagram`, `created_at`, `updated_at`) VALUES
	(11, 'Ogunniyi', 'Jeremiah', 'A very good boy with a lot of empathy.', 'jerexbambex@gmail.com', NULL, 'jerexbambex', 'jerexbambex', 'jerexbambex', '2020-05-19 13:35:15', '2020-05-19 22:03:19'),
	(14, 'Prof. Lyric Eichmann IV', 'Adolf Lindgren', 'Dolor eum suscipit unde accusantium rerum. Illo temporibus dolorem vero. Odit illo quo quaerat quo similique magnam.', 'stanford98@example.org', NULL, 'proflyrically', 'proflyrically', 'proflyrically', '2020-05-19 14:36:36', '2020-05-20 12:11:23'),
	(15, 'Amanda Dooley', 'Jonathan Von', 'Voluptate est suscipit est ea laborum. Minus amet totam eum corrupti. Fugiat quam at animi.', 'tillman.alexzander@example.com', NULL, NULL, NULL, NULL, '2020-05-19 14:36:36', '2020-05-19 14:36:36'),
	(16, 'Shea Schoen', 'Taryn Jacobs', 'Minima necessitatibus vel est sed eaque. Modi consectetur aliquid a nobis sed est.', 'nienow.emma@example.net', NULL, NULL, NULL, NULL, '2020-05-19 14:36:36', '2020-05-19 14:36:36'),
	(17, 'Lucio Kshlerin', 'Prof. Brad Mann', 'Explicabo consectetur voluptate animi sapiente. Distinctio laboriosam sapiente sint quo inventore et. Temporibus qui assumenda tenetur et magnam. Vel voluptates nihil qui autem qui.', 'clinton.pouros@example.com', NULL, NULL, NULL, NULL, '2020-05-19 14:36:36', '2020-05-19 14:36:36'),
	(18, 'Jacinthe Wyman IV', 'Adelia Morissette', 'Magni minima corporis velit hic placeat consequatur omnis excepturi. Neque dolorem et eos et et accusamus error.', 'paucek.hermina@example.org', NULL, NULL, NULL, NULL, '2020-05-19 14:36:36', '2020-05-19 14:36:36'),
	(19, 'Ogunniyi', 'Jeremiah', 'A gentle soul look for God\'s direction.', 'oluwatosin.ogunniyi@gmail.com', NULL, 'Jerezy', 'No information added yet', 'No information added yet', '2020-05-19 22:42:25', '2020-05-19 22:43:19'),
	(20, 'Babalola', 'Ebenezer', 'A likes angela A likes angela A likes angela A likes angela vA likes angela A likes angela A likes angela A likes angela', 'beto@gmail.com', '', NULL, NULL, NULL, '2020-05-21 14:04:39', '2020-05-21 14:04:39');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

-- Dumping structure for table radio.users
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table radio.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Oluwatosin', 'Jeremiah', 'jerexbambex@gmail.com', NULL, '$2y$10$UVqALbFxlKac5J7Dd1ua1ug1.H68pYRnIwDMV3q9kzWlW0RF2GEtC', 'admin', 'XFosHUH9wh9f15kka1mCG5h75LNq5FzW7BiVr31jD3WUVIQ8V3UbhnLPwDxJ', '2020-05-18 21:08:54', '2020-05-18 21:08:54'),
	(2, 'Babalola', 'Ebenezer', 'beto@gmail.com', NULL, '$2y$10$wni35H1DtRJvKPP.HrEjAuVBhBNY1Z3FaOnaIBuCrfhbkzlF/uKL.', 'admin', NULL, '2020-05-21 15:20:34', '2020-05-21 15:20:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
