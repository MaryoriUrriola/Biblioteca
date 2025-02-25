--CREACION DE BASE DE DATOS
DROP DATABASE IF EXISTS pruebaplatzi;

CREATE DATABASE pruebaplatzi;
USE pruebaplatzi;

--CREACION DE TABLA AUTHORS
CREATE TABLE authors (
  author_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  nationality varchar(100) DEFAULT NULL,
  PRIMARY KEY (author_id),
  UNIQUE KEY uniq_author (name)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

-- INGRESAR DATOS A LA TABLA AUTHORS
INSERT INTO authors VALUES (1,'Sam Altman','USA'),
(2,'Freddy Vega','COL'),
(3,'Arthur Conan Doyle','GBR'),
(4,'Chuck Palahniuk','USA'),
(5,'Juan Rulfo','MEX'),
(6,'Henning Mankel','SWE'),
(7,'Jaideva Goswami','USA'),
(8,'John Foreman','USA'),
(9,'Stephen Hawking','USA'),
(10,'Stephen Dubner','USA'),
(11,'Edward Said','USA'),
(12,'Vladimir Vapnik','RUS'),
(13,'V P Menon','IND'),
(14,'Leonard Mlodinow','USA'),
(15,'Frank Shih','JAP'),
(16,'Maria Konnikova','RUS'),
(17,'Sebastian Gutierrez','ESP'),
(18,'Kurt Vonnegut','USA'),
(19,'Cedric Villani','FRA'),
(20,'Gerald Sussman','USA'),
(21,'Abraham Eraly','IND'),
(22,'Frank Kafka','AUT'),
(23,'John Pratt','USA'),
(24,'Robert Nisbet','USA'),
(25,'H. G. Wells',"ENG"),
(26,'Werner Heisenberg','DEU'),
(27,'Andy Oram',NULL),
(28,'Terence Tao',"AUS"),
(29,'Drew Conway',"USA"),
(30,'Nate Silver',"USA"),
(31,'Wes McKinney',"USA"),
(32,'Thomas Cormen', "USA"),
(33,'Siddhartha Deb',"IND"),
(34,'Albert Camus',"FRA"),
(37,'Adam Smith',"ENG"),
(38,'Ken Follett',"ENG"),
(39,'Fritjof Capra',"AUT"),
(40,'Richard Feynman',"USA"),
(41,'Ernest Hemingway',"USA"),
(42,'Frederick Forsyth',"ENG"),
(43,'Jeffery Archer',"ENG"),
(44,'Randy Pausch',"USA"),
(45,'Ayn Rand',"RUS"),
(46,'Michael Crichton',"USA"),
(47,'John Steinbeck',"USA"),
(48,'Edgar Allen Poe',"USA"),
(51,'Will Durant',NULL),
(52,'P L Deshpande',NULL),
(56,'John Grisham',"USA"),
(57,'V. S. Naipaul',NULL),
(58,'Joseph Heller',NULL),
(59,'BBC',NULL),
(60,'Bob Dylan',"USA"),
(61,'Madan Gupta',"IND"),
(62,'Alfred Stonier',NULL),
(63,'W. H. Greene',NULL),
(64,'Gary Bradsky',NULL),
(65,'Andrew Tanenbaum',NULL),
(66,'David Forsyth',NULL),
(67,'Schilling Taub',NULL),
(68,'Yashwant Kanetkar',NULL),
(69,'Jonathan Stroud',NULL),
(70,'Fyodor Dostoevsky',"RUS"),
(71,'Dan Brown',"USA"),
(72,'Amartya Sen',NULL),
(73,'Amitav Ghosh',NULL),
(75,'Lorraine Hansberry',NULL),
(76,'Bob Woodward',NULL),
(78,'Kuldip Nayar',NULL),
(79,'Sunita Deshpande',NULL),
(80,'William Dalrymple',NULL),
(81,'Various',NULL),
(85,'Sanjay Garg',NULL),
(86,'V P Kale',NULL),
(87,'Shashi Tharoor',"IND"),
(89,'Dominique Lapierre',NULL),
(93,'Bertrand Russell',"ENG"),
(94,'Sam Harris',NULL),
(96,'Earle Stanley Gardner',NULL),
(98,'Peter Drucker',NULL),
(99,'David Bodanis',NULL),
(100,'Victor Hugo',"FRA"),
(103,'Richard Gordon',NULL),
(104,'George Orwell',NULL),
(107,'Lee Iacoca',"USA"),
(108,'William S Maugham',NULL),
(111,'Robert Pirsig',NULL),
(112,'Robert Fisk',NULL),
(114,'Amir Aczel',NULL),
(117,'Samuel Huntington',NULL),
(119,'Richard Bach',NULL),
(120,'Braithwaite',NULL),
(121,'V S Naipaul',NULL),
(122,'Jawaharlal Nehru',NULL),
(128,'Gerald Durrell',NULL),
(133,'Simon Singh',"ENG"),
(134,'Hart Duda',NULL),
(135,'Thomas Friedman',NULL),
(138,'Keith Devlin',NULL),
(140,'James Gleick',NULL),
(141,'Joy Thomas',NULL),
(142,'Muhammad Rashid',NULL),
(143,'Ned Mohan',NULL),
(144,'Simon Haykin',NULL),
(148,'Alex Rutherford',NULL),
(153,'Michael Baz-Zohar',NULL),
(154,'Jim Corbett',NULL),
(155,'Jules Verne',NULL),
(156,'Deshpande P L',NULL),
(160,'Eric Raymond',NULL),
(161,'Sergio Franco',NULL),
(162,'Allen Downey',NULL),
(163,'Morris West',NULL),
(166,'Phillip Janert',NULL),
(167,'Carl Sagan',"USA"),
(168,'E T Bell',NULL),
(169,'Richard Dawkins',NULL),
(170,'Sudhanshu Ranjan',"IND"),
(171,'Kautiyla',NULL),
(172,'Palkhivala',NULL),
(174,'Sorabjee',NULL),
(175,'Hussain Zaidi',NULL),
(176,'Peter Ackroyd',NULL),
(178,'Nariman',NULL),
(179,'Jean Sassoon',NULL),
(180,'Peter Dickinson',NULL),
(182,'Machiavelli',NULL),
(183,'Aldous Huxley',"ENG"),
(184,'J K Rowling',"ENG"),
(185,'Steig Larsson',"SWE"),
(189,'Steve Eddins', NULL),
(192,'Charles Dickens',"ENG");

-- CREACION DE TABLA LIBROS
CREATE TABLE books (
  book_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  author_id int(10) unsigned DEFAULT NULL,
  title varchar(100) NOT NULL,
  year int(11) NOT NULL DEFAULT '1900',
  language varchar(2) NOT NULL COMMENT 'ISO 639-1 Language code (2 chars)',
  cover_url varchar(500) DEFAULT NULL,
  price double(6,2) DEFAULT NULL,
  sellable tinyint(1) NOT NULL DEFAULT '0',
  copies int(11) NOT NULL DEFAULT '1',
  description text,
  PRIMARY KEY (book_id),
  UNIQUE KEY book_language (title,language)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

-- INSERTAR DATOS A LA TABLA LIBROS
INSERT INTO books VALUES (1,1,'The Startup Playbook',2013,'en',NULL,10.00,1,5,'Advice from the experts'),
(2,1,'The Startup Playbook',2014,'es',NULL,10.00,1,5,'Consejo de los expertos, traducido por Platzi'),
(3,3,'Estudio en escarlata',1887,'es',NULL,5.00,1,10,'La primera novela de Sherlock Holmes'),
(4,6,'Wallander: Asesinos sin rostro',1991,'es',NULL,15.00,1,3,''),
(5,6,'Wallander: Los perros de Riga',1992,'es',NULL,15.00,1,3,''),
(6,6,'Wallander: La leona blanca',1993,'es',NULL,15.00,1,3,''),
(7,6,'Wallander: El hombre sonriente',1994,'es',NULL,15.00,1,3,''),
(8,6,'Wallander: La falsa pista',1995,'es',NULL,15.00,1,3,''),
(9,6,'Wallander: La quinta mujer',1996,'es',NULL,15.00,1,3,''),
(10,6,'Wallander: Pisando los talones',1997,'es',NULL,15.00,1,3,''),
(11,6,'Wallander: Cortafuegos',1998,'es',NULL,15.00,1,3,''),
(12,5,'El llano en llamas',1953,'es',NULL,10.00,0,1,'Cuentos mexicanos'),
(13,7,'Fundamentals of Wavelets',1900,'en',NULL,NULL,1,4,NULL),
(14,8,'Data Smart',1900,'en',NULL,NULL,1,4,NULL),
(15,9,'God Created the Integers',1900,'en',NULL,NULL,1,4,NULL),
(16,10,'Superfreakonomics',1900,'en',NULL,NULL,1,4,NULL),
(17,11,'Orientalism',1900,'en',NULL,NULL,1,4,NULL),
(18,12,'The Nature of Statistical Learning Theory',1900,'en',NULL,NULL,1,4,NULL),
(19,13,'Integration of the Indian States',1900,'en',NULL,NULL,1,4,NULL),
(20,14,'The Drunkards Walk',1900,'en',NULL,NULL,1,4,NULL),
(21,15,'Image Processing & Mathematical Morphology',1900,'en',NULL,NULL,1,4,NULL),
(22,16,'How to Think Like Sherlock Holmes',1900,'en',NULL,NULL,1,4,NULL),
(23,17,'Data Scientists at Work',1900,'en',NULL,NULL,1,4,NULL),
(24,18,'Slaughterhouse Five',1900,'en',NULL,NULL,1,4,NULL),
(25,19,'Birth of a Theorem',1900,'en',NULL,NULL,1,4,NULL),
(26,20,'Structure & Interpretation of Computer Programs',1900,'en',NULL,NULL,1,4,NULL),
(27,21,'The Age of Wrath',1900,'en',NULL,NULL,1,4,NULL),
(28,22,'The Trial',1900,'en',NULL,NULL,1,4,NULL),
(29,23,'Statistical Decision Theory',1900,'en',NULL,NULL,1,4,NULL),
(30,24,'Data Mining Handbook',1900,'en',NULL,NULL,1,4,NULL),
(31,25,'The New Machiavelli',1900,'en',NULL,NULL,1,4,NULL),
(32,26,'Physics & Philosophy',1900,'en',NULL,NULL,1,4,NULL),
(33,27,'Making Software',1900,'en',NULL,NULL,1,4,NULL),
(34,28,'Vol I Analysis',1900,'en',NULL,NULL,1,4,NULL),
(35,29,'Machine Learning for Hackers',1900,'en',NULL,NULL,1,4,NULL),
(36,30,'The Signal and the Noise',1900,'en',NULL,NULL,1,4,NULL),
(37,31,'Python for Data Analysis',1900,'en',NULL,NULL,1,4,NULL),
(38,32,'Introduction to Algorithms',1900,'en',NULL,NULL,1,4,NULL),
(39,33,'The Beautiful and the Damned',1900,'en',NULL,NULL,1,4,NULL),
(40,34,'The Outsider',1900,'en',NULL,NULL,1,4,NULL),
(41,3,'The - Vol I Complete Sherlock Holmes',1900,'en',NULL,NULL,1,4,NULL),
(42,3,'The - Vol II Complete Sherlock Holmes',1900,'en',NULL,NULL,1,4,NULL),
(43,37,'The Wealth of Nations',1900,'en',NULL,NULL,1,4,NULL),
(44,38,'The Pillars of the Earth',1900,'en',NULL,NULL,1,4,NULL),
(45,39,'The Tao of Physics',1900,'en',NULL,NULL,1,4,NULL),
(46,40,'Surely Yous re Joking Mr Feynman',1900,'en',NULL,NULL,1,4,NULL),
(47,41,'A Farewell to Arms',1900,'en',NULL,NULL,1,4,NULL),
(48,42,'The Veteran',1900,'en',NULL,NULL,1,4,NULL),
(49,43,'False Impressions',1900,'en',NULL,NULL,1,4,NULL),
(50,44,'The Last Lecture',1900,'en',NULL,NULL,1,4,NULL),
(51,45,'Return of the Primitive',1900,'en',NULL,NULL,1,4,NULL),
(52,46,'Jurassic Park',1900,'en',NULL,NULL,1,4,NULL),
(53,47,'A Russian Journal',1900,'en',NULL,NULL,1,4,NULL),
(54,48,'Tales of Mystery and Imagination',1900,'en',NULL,NULL,1,4,NULL),
(55,10,'Freakonomics',1900,'en',NULL,NULL,1,4,NULL),
(56,39,'The Hidden Connections',1900,'en',NULL,NULL,1,4,NULL),
(57,51,'The Story of Philosophy',1900,'en',NULL,NULL,1,4,NULL),
(58,52,'Asami Asami',1900,'en',NULL,NULL,1,4,NULL),
(59,47,'Journal of a Novel',1900,'en',NULL,NULL,1,4,NULL),
(60,47,'Once There Was a War',1900,'en',NULL,NULL,1,4,NULL),
(61,47,'The Moon is Down',1900,'en',NULL,NULL,1,4,NULL),
(62,56,'The Brethren',1900,'en',NULL,NULL,1,4,NULL),
(63,57,'In a Free State',1900,'en',NULL,NULL,1,4,NULL),
(64,58,'Catch 22',1900,'en',NULL,NULL,1,4,NULL),
(65,59,'The Complete Mastermind',1900,'en',NULL,NULL,1,4,NULL),
(66,60,'Dylan on Dylan',1900,'en',NULL,NULL,1,4,NULL),
(67,61,'Soft Computing & Intelligent Systems',1900,'en',NULL,NULL,1,4,NULL),
(68,62,'Textbook of Economic Theory',1900,'en',NULL,NULL,1,4,NULL),
(69,63,'Econometric Analysis',1900,'en',NULL,NULL,1,4,NULL),
(70,64,'Learning OpenCV',1900,'en',NULL,NULL,1,4,NULL),
(71,65,'Data Structures Using C & C++',1900,'en',NULL,NULL,1,4,NULL),
(72,66,'A Modern Approach Computer Vision',1900,'en',NULL,NULL,1,4,NULL),
(73,67,'Principles of Communication Systems',1900,'en',NULL,NULL,1,4,NULL),
(74,68,'Let Us C',1900,'en',NULL,NULL,1,4,NULL),
(75,69,'The Amulet of Samarkand',1900,'en',NULL,NULL,1,4,NULL),
(76,70,'Crime and Punishment',1900,'en',NULL,NULL,1,4,NULL),
(77,71,'Angels & Demons',1900,'en',NULL,NULL,1,4,NULL),
(78,72,'The Argumentative Indian',1900,'en',NULL,NULL,1,4,NULL),
(79,73,'Sea of Poppies',1900,'en',NULL,NULL,1,4,NULL),
(80,72,'The Idea of Justice',1900,'en',NULL,NULL,1,4,NULL),
(81,75,'A Raisin in the Sun',1900,'en',NULL,NULL,1,4,NULL),
(82,76,'All the Presidents Men',1900,'en',NULL,NULL,1,4,NULL),
(83,43,'A Prisoner of Birth',1900,'en',NULL,NULL,1,4,NULL),
(84,78,'Scoop!',1900,'en',NULL,NULL,1,4,NULL),
(85,79,'Ahe Manohar Tari',1900,'en',NULL,NULL,1,4,NULL),
(86,80,'The Last Mughal',1900,'en',NULL,NULL,1,4,NULL),
(87,81,'Vol 39 No. 1 Social Choice & Welfare',1900,'en',NULL,NULL,1,4,NULL),
(88,52,'Radiowaril Bhashane & Shrutika',1900,'en',NULL,NULL,1,4,NULL),
(89,52,'Gun Gayin Awadi',1900,'en',NULL,NULL,1,4,NULL),
(90,52,'Aghal Paghal',1900,'en',NULL,NULL,1,4,NULL),
(91,85,'Maqta-e-Ghalib',1900,'en',NULL,NULL,1,4,NULL),
(92,86,'Manasa',1900,'en',NULL,NULL,1,4,NULL),
(93,87,'India from Midnight to Milennium',1900,'en',NULL,NULL,1,4,NULL),
(94,87,'The Great Indian Novel',1900,'en',NULL,NULL,1,4,NULL),
(95,89,'O Jerusalem!',1900,'en',NULL,NULL,1,4,NULL),
(96,89,'The City of Joy',1900,'en',NULL,NULL,1,4,NULL),
(97,89,'Freedom at Midnight',1900,'en',NULL,NULL,1,4,NULL),
(98,47,'The Winter of Our Discontent',1900,'en',NULL,NULL,1,4,NULL),
(99,93,'On Education',1900,'en',NULL,NULL,1,4,NULL),
(100,94,'Free Will',1900,'en',NULL,NULL,1,4,NULL),
(101,87,'Bookless in Baghdad',1900,'en',NULL,NULL,1,4,NULL),
(102,96,'The Case of the Lame Canary',1900,'en',NULL,NULL,1,4,NULL),
(103,9,'The Theory of Everything',1900,'en',NULL,NULL,1,4,NULL),
(104,98,'New Markets & Other Essays',1900,'en',NULL,NULL,1,4,NULL),
(105,99,'Electric Universe',1900,'en',NULL,NULL,1,4,NULL),
(106,100,'The Hunchback of Notre Dame',1900,'en',NULL,NULL,1,4,NULL),
(107,47,'Burning Bright',1900,'en',NULL,NULL,1,4,NULL),
(108,98,'The Age of Discontuinity',1900,'en',NULL,NULL,1,4,NULL),
(109,103,'Doctor in the Nude',1900,'en',NULL,NULL,1,4,NULL),
(110,104,'Down and Out in Paris & London',1900,'en',NULL,NULL,1,4,NULL),
(111,72,'Identity & Violence',1900,'en',NULL,NULL,1,4,NULL),
(112,80,'Beyond the Three Seas',1900,'en',NULL,NULL,1,4,NULL),
(113,107,'Talking Straight',1900,'en',NULL,NULL,1,4,NULL),
(114,108,'Vol 3 Maughams Collected Short Stories',1900,'en',NULL,NULL,1,4,NULL),
(115,42,'The Phantom of Manhattan',1900,'en',NULL,NULL,1,4,NULL),
(116,108,'Ashenden of The British Agent',1900,'en',NULL,NULL,1,4,NULL),
(117,111,'Zen & The Art of Motorcycle Maintenance',1900,'en',NULL,NULL,1,4,NULL),
(118,112,'The Great War for Civilization',1900,'en',NULL,NULL,1,4,NULL),
(119,45,'We the Living',1900,'en',NULL,NULL,1,4,NULL),
(120,114,'The Artist and the Mathematician',1900,'en',NULL,NULL,1,4,NULL),
(121,93,'History of Western Philosophy',1900,'en',NULL,NULL,1,4,NULL),
(122,72,'Rationality & Freedom',1900,'en',NULL,NULL,1,4,NULL),
(123,117,'Clash of Civilizations and Remaking of the World Order',1900,'en',NULL,NULL,1,4,NULL),
(124,39,'Uncommon Wisdom',1900,'en',NULL,NULL,1,4,NULL),
(125,119,'One',1900,'en',NULL,NULL,1,4,NULL),
(126,120,'To Sir With Love',1900,'en',NULL,NULL,1,4,NULL),
(127,121,'Half A Life',1900,'en',NULL,NULL,1,4,NULL),
(128,122,'The Discovery of India',1900,'en',NULL,NULL,1,4,NULL),
(129,52,'Apulki',1900,'en',NULL,NULL,1,4,NULL),
(130,93,'Unpopular Essays',1900,'en',NULL,NULL,1,4,NULL),
(131,42,'The Deceiver',1900,'en',NULL,NULL,1,4,NULL),
(132,76,'Veil: Secret Wars of the CIA',1900,'en',NULL,NULL,1,4,NULL),
(133,52,'Char Shabda',1900,'en',NULL,NULL,1,4,NULL),
(134,128,'Rosy is My Relative',1900,'en',NULL,NULL,1,4,NULL),
(135,108,'The Moon and Sixpence',1900,'en',NULL,NULL,1,4,NULL),
(136,130,'A Short History of the World',1900,'en',NULL,NULL,1,4,NULL),
(137,108,'The Trembling of a Leaf',1900,'en',NULL,NULL,1,4,NULL),
(138,103,'Doctor on the Brain',1900,'en',NULL,NULL,1,4,NULL),
(139,133,'Simpsons & Their Mathematical Secrets',1900,'en',NULL,NULL,1,4,NULL),
(140,134,'Pattern Classification',1900,'en',NULL,NULL,1,4,NULL),
(141,135,'From Beirut to Jerusalem',1900,'en',NULL,NULL,1,4,NULL),
(142,133,'The Code Book',1900,'en',NULL,NULL,1,4,NULL),
(143,112,'The Age of the Warrior',1900,'en',NULL,NULL,1,4,NULL),
(144,138,'The Numbers Behind Numb3rs',1900,'en',NULL,NULL,1,4,NULL),
(145,47,'A Life in Letters',1900,'en',NULL,NULL,1,4,NULL),
(146,140,'The Information',1900,'en',NULL,NULL,1,4,NULL),
(147,141,'Elements of Information Theory',1900,'en',NULL,NULL,1,4,NULL),
(148,142,'Power Electronics - Rashid',1900,'en',NULL,NULL,1,4,NULL),
(149,143,'Power Electronics - Mohan',1900,'en',NULL,NULL,1,4,NULL),
(150,144,'Neural Networks',1900,'en',NULL,NULL,1,4,NULL),
(151,47,'The Grapes of Wrath',1900,'en',NULL,NULL,1,4,NULL),
(152,52,'Vyakti ani Valli',1900,'en',NULL,NULL,1,4,NULL),
(153,12,'Statistical Learning Theory',1900,'en',NULL,NULL,1,4,NULL),
(154,148,'Empire of the Mughal - The Tainted Throne',1900,'en',NULL,NULL,1,4,NULL),
(155,148,'Empire of the Mughal - Brothers at War',1900,'en',NULL,NULL,1,4,NULL),
(156,148,'Empire of the Mughal - Ruler of the World',1900,'en',NULL,NULL,1,4,NULL),
(157,148,'Empire of the Mughal - The Serpent\s Tooth',1900,'en',NULL,NULL,1,4,NULL),
(158,148,'Empire of the Mughal - Raiders from the North',1900,'en',NULL,NULL,1,4,NULL),
(159,153,'Mossad',1900,'en',NULL,NULL,1,4,NULL),
(160,154,'Jim Corbett Omnibus',1900,'en',NULL,NULL,1,4,NULL),
(161,155,'20000 Leagues Under the Sea',1900,'en',NULL,NULL,1,4,NULL),
(162,156,'Batatyachi Chal',1900,'en',NULL,NULL,1,4,NULL),
(163,156,'Hafasavnuk',1900,'en',NULL,NULL,1,4,NULL),
(164,156,'Urlasurla',1900,'en',NULL,NULL,1,4,NULL),
(165,68,'Pointers in C',1900,'en',NULL,NULL,1,4,NULL),
(166,160,'The Cathedral and the Bazaar',1900,'en',NULL,NULL,1,4,NULL),
(167,161,'Design with OpAmps',1900,'en',NULL,NULL,1,4,NULL),
(168,162,'Think Complexity',1900,'en',NULL,NULL,1,4,NULL),
(169,163,'The Devils Advocate',1900,'en',NULL,NULL,1,4,NULL),
(170,45,'Ayn Rand Answers',1900,'en',NULL,NULL,1,4,NULL),
(171,45,'Philosophy: Who Needs It',1900,'en',NULL,NULL,1,4,NULL),
(172,166,'Data Analysis with Open Source Tools',1900,'en',NULL,NULL,1,4,NULL),
(173,167,'Brocas Brain',1900,'en',NULL,NULL,1,4,NULL),
(174,168,'Men of Mathematics',1900,'en',NULL,NULL,1,4,NULL),
(175,169,'Oxford book of Modern Science Writing',1900,'en',NULL,NULL,1,4,NULL),
(176,170,'Judiciary and Democracy Justice',1900,'en',NULL,NULL,1,4,NULL),
(177,171,'The Arthashastra',1900,'en',NULL,NULL,1,4,NULL),
(178,172,'We the People',1900,'en',NULL,NULL,1,4,NULL),
(179,172,'We the Nation',1900,'en',NULL,NULL,1,4,NULL),
(180,174,'The Courtroom Genius',1900,'en',NULL,NULL,1,4,NULL),
(181,175,'Dongri to Dubai',1900,'en',NULL,NULL,1,4,NULL),
(182,176,'Foundation History of England',1900,'en',NULL,NULL,1,4,NULL),
(183,80,'City of Djinns',1900,'en',NULL,NULL,1,4,NULL),
(184,178,'Indias Legal System',1900,'en',NULL,NULL,1,4,NULL),
(185,179,'More Tears to Cry',1900,'en',NULL,NULL,1,4,NULL),
(186,180,'The Ropemaker',1900,'en',NULL,NULL,1,4,NULL),
(188,182,'The Prince',1900,'en',NULL,NULL,1,4,NULL),
(189,183,'Eyeless in Gaza',1900,'en',NULL,NULL,1,4,NULL),
(190,184,'Tales of Beedle the Bard',1900,'en',NULL,NULL,1,4,NULL),
(191,185,'Girl with the Dragon Tattoo',1900,'en',NULL,NULL,1,4,NULL),
(192,185,'Girl who kicked the Hornets Nest',1900,'en',NULL,NULL,1,4,NULL),
(193,185,'Girl who played with Fire',1900,'en',NULL,NULL,1,4,NULL),
(194,28,'Structure and Randomness',1900,'en',NULL,NULL,1,4,NULL),
(195,189,'Image Processing with MATLAB',1900,'en',NULL,NULL,1,4,NULL),
(196,104,'Animal Farm',1900,'en',NULL,NULL,1,4,NULL),
(197,70,'The Idiot',1900,'en',NULL,NULL,1,4,NULL),
(198,192,'A Christmas Carol',1900,'en',NULL,NULL,1,4,NULL);

--CREACION DE LA TABLA CLIENTES
CREATE TABLE clients (
  client_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(50) DEFAULT NULL,
  email varchar(100) NOT NULL,
  birthdate date DEFAULT NULL,
  gender enum('M','F') DEFAULT NULL,
  active tinyint(1) NOT NULL DEFAULT '1',
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (client_id),
  UNIQUE KEY email (email)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--INSERTAR DATOS A LA TABLA CLIENTES
INSERT INTO clients VALUES (1,'Maria Dolores Gomez','Maria Dolores.95983222J@random.names', '1971-06-06','F',1,'2018-04-09 16:51:30'),
(2,'Adrian Fernandez','Adrian.55818851J@random.names','1970-04-09','M',1,'2018-04-09 16:51:30'),
(3,'Maria Luisa Marin','Maria Luisa.83726282A@random.names','1957-07-30','F',1,'2018-04-09 16:51:30'),
(4,'Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M',1,'2018-04-09 16:51:30'),
(5,'Pablo Saavedra','Pablo.93733268B@random.names','1960-07-21','M',1,'2018-04-09 16:51:30'),
(6,'Marta Carrillo','Marta.55741882W@random.names','1981-06-15','F',1,'2018-04-09 16:51:30'),
(7,'Javier Barrio','Javier.54966248C@random.names','1971-04-24','M',1,'2018-04-09 16:51:30'),
(8,'Milagros Garcia','Milagros.90074144A@random.names','1964-12-05','F',1,'2018-04-09 16:51:30'),
(9,'Carlos Quiros','Carlos.63291957M@random.names','1954-08-28','M',1,'2018-04-09 16:51:30'),
(10,'Carmen De la Torre','Carmen.57408761W@random.names','1966-05-14','F',1,'2018-04-09 16:51:30'),
(11,'Laura Moron','Laura.57774589S@random.names','1954-03-02','F',1,'2018-04-09 16:51:30'),
(12,'Maria Dolores Larrea','Maria Dolores.71788005Z@random.names','1990-09-04','F',1,'2018-04-09 16:51:30'),
(13,'Maria Dolores Sanz','Maria Dolores.30948169J@random.names','2001-08-30','F',1,'2018-04-09 16:51:30'),
(14,'Jose Maria Bermudez','Jose Maria.24963969E@random.names','1998-05-23','M',1,'2018-04-09 16:51:30'),
(15,'Carlos Blanco','Carlos.94783133H@random.names','1952-08-07','M',1,'2018-04-09 16:51:30'),
(16,'Juan Carlos Jurado','Juan Carlos.71650477A@random.names','1990-12-12','M',1,'2018-04-09 16:51:30'),
(17,'David Gonzalez','David.54332034P@random.names','1976-05-03','M',1,'2018-04-09 16:51:30'),
(18,'Antonia Aranda','Antonia.91560262E@random.names','1979-10-25','F',1,'2018-04-09 16:51:30'),
(19,'Maria Moreno','Maria.58935447V@random.names','1997-01-12','F',1,'2018-04-09 16:51:30'),
(20,'David Casals','David.06746883V@random.names','1999-07-13','M',1,'2018-04-09 16:51:30'),
(21,'Mario Romero','Mario.46091382A@random.names','1985-03-29','M',1,'2018-04-09 16:51:30'),
(22,'Maria angeles Alba','Maria angeles.91808919A@random.names','1959-09-14','F',1,'2018-04-09 16:51:30'),
(23,'Rafael Espinola','Rafael.67605541P@random.names','1998-10-11','M',1,'2018-04-09 16:51:30'),
(24,'Montserrat alvarez','Montserrat.31114289G@random.names','1994-11-06','F',1,'2018-04-09 16:51:30'),
(25,'Maria Carmen Gomez','Maria Carmen.64351051H@random.names','1968-06-30','F',1,'2018-04-09 16:51:30'),
(26,'Maria Cruz Morillas','Maria Cruz.81385695B@random.names','1978-10-29','F',1,'2018-04-09 16:51:30'),
(27,'Josefa Roldan','Josefa.51417560W@random.names','1993-08-09','F',1,'2018-04-09 16:51:30'),
(28,'Monica Pla','Monica.18992324M@random.names','1972-06-08','F',1,'2018-04-09 16:51:30'),
(29,'Juana Maria Lopez','Juana Maria.51072683X@random.names','1990-07-15','F',1,'2018-04-09 16:51:30'),
(30,'Maria Carmen Ponce','Maria Carmen.41619980P@random.names','1984-07-26','F',1,'2018-04-09 16:51:30'),
(31,'Juan Carlos Rios','Juan Carlos.45673504N@random.names','1967-05-04','M',1,'2018-04-09 16:51:30'),
(32,'Isabel Alfaro','Isabel.77316882J@random.names','1980-07-25','F',1,'2018-04-09 16:51:30'),
(33,'Maria Isabel Armas','Maria Isabel.42010289F@random.names','1950-11-21','F',1,'2018-04-09 16:51:30'),
(34,'Maria Teresa Castillo','Maria Teresa.91228389Q@random.names','2002-11-08','F',1,'2018-04-09 16:51:30'),
(35,'Andres Planells','Andres.09981449R@random.names','1992-06-19','M',1,'2018-04-09 16:51:30'),
(36,'Silvia Perez','Silvia.91812407H@random.names','1969-02-15','F',1,'2018-04-09 16:51:30'),
(37,'Pablo Gonzalez','Pablo.11605676Z@random.names','2000-10-11','M',1,'2018-04-09 16:51:30'),
(38,'Maria Antonia Jimenez','Maria Antonia.98071058R@random.names','1998-06-23','F',1,'2018-04-09 16:51:31'),
(39,'Jesus Rodriguez','Jesus.86679475L@random.names','1961-01-17','M',1,'2018-04-09 16:51:31'),
(40,'Carmen Rodriguez','Carmen.81799536J@random.names','1973-02-17','F',1,'2018-04-09 16:51:31'),
(41,'Maria Dolores Rodriguez','Maria Dolores.75444599E@random.names','1962-08-14','F',1,'2018-04-09 16:51:31'),
(42,'Jordi Campos','Jordi.76000917Q@random.names','1956-09-23','M',1,'2018-04-09 16:51:31'),
(43,'Carlos Caceres','Carlos.97628163V@random.names','1993-05-16','M',1,'2018-04-09 16:51:31'),
(44,'Carmen Robles','Carmen.29258188A@random.names','1955-06-19','F',1,'2018-04-09 16:51:31'),
(45,'Sara Rodriguez','Sara.16181250Z@random.names','2001-06-07','F',1,'2018-04-09 16:51:31'),
(46,'Maria Carmen Rivera','Maria Carmen.59955426S@random.names','2000-05-27','F',1,'2018-04-09 16:51:31'),
(47,'Alberto Cabanas','Alberto.40633755T@random.names','1991-10-27','M',1,'2018-04-09 16:51:31'),
(48,'Jose Sanchez','Jose.52243847Z@random.names','1976-12-06','M',1,'2018-04-09 16:51:31'),
(49,'Isabel Martinez','Isabel.90843261T@random.names','1962-07-01','F',1,'2018-04-09 16:51:31'),
(50,'David Sanchez','David.14910073R@random.names','1975-05-18','M',1,'2018-04-09 16:51:31'),
(51,'Sergio Sebastian','Sergio.09345984A@random.names','1959-08-30','M',1,'2018-04-09 16:51:31'),
(52,'Manuel Cabrera','Manuel.38738750B@random.names','1993-08-23','M',1,'2018-04-09 16:51:31'),
(53,'Marina Gabaldon','Marina.12101665P@random.names','1959-03-25','F',1,'2018-04-09 16:51:31'),
(54,'Rafael Galvez','Rafael.87947175M@random.names','1988-09-02','M',1,'2018-04-09 16:51:31'),
(55,'Francisco Villar','Francisco.13922268T@random.names','1952-04-25','M',1,'2018-04-09 16:51:31'),
(56,'Francisco Garcia','Francisco.34242509V@random.names','1989-01-22','M',1,'2018-04-09 16:51:31'),
(57,'Esther Pina','Esther.36300729J@random.names','1977-11-07','F',1,'2018-04-09 16:51:31'),
(58,'Maria Jesus Noya','Maria Jesus.95839533M@random.names','1996-08-07','F',1,'2018-04-09 16:51:31'),
(59,'Paula Ropero','Paula.53630073F@random.names','1998-09-04','F',1,'2018-04-09 16:51:31'),
(60,'Maria Carmen Iglesias','Maria Carmen.24044144J@random.names','1977-06-12','F',1,'2018-04-09 16:51:31'),
(61,'Albert Galvez','Albert.10067957Y@random.names','1971-05-17','M',1,'2018-04-09 16:51:31'),
(62,'Carmen Lopez','Carmen.09399409E@random.names','1987-03-07','F',1,'2018-04-09 16:51:31'),
(63,'Francisco Jose Leon','Francisco Jose.07598657D@random.names','1965-12-11','M',1,'2018-04-09 16:51:31'),
(64,'Francisca Gonzalez','Francisca.19675393C@random.names','1957-12-23','F',1,'2018-04-09 16:51:31'),
(65,'Daniel Garcia','Daniel.01386486T@random.names','1979-05-29','M',1,'2018-04-09 16:51:31'),
(66,'Ana Maria Martinez','Ana Maria.91340418N@random.names','1980-09-14','F',1,'2018-04-09 16:51:31'),
(67,'Maria Aguilar','Maria.41749884P@random.names','2000-07-31','F',1,'2018-04-09 16:51:31'),
(68,'oscar Penas','oscar.31681177B@random.names','1981-10-02','M',1,'2018-04-09 16:51:31'),
(69,'Adrian Vela','Adrian.66561884E@random.names','1978-12-10','M',1,'2018-04-09 16:51:31'),
(70,'Francisco Alcalde','Francisco.52899588W@random.names','1967-03-11','M',1,'2018-04-09 16:51:31'),
(71,'Maria Dolores Perez','Maria Dolores.47800073R@random.names','2003-11-10','F',1,'2018-04-09 16:51:31'),
(72,'Juan Jose Tejada','Juan Jose.30429668R@random.names','1990-06-15','M',1,'2018-04-09 16:51:31'),
(73,'Cristobal Nogues','Cristobal.01001763K@random.names','2003-10-01','M',1,'2018-04-09 16:51:31'),
(74,'Maria Luisa Sanchez','Maria Luisa.91748033K@random.names','2000-02-03','F',1,'2018-04-09 16:51:31'),
(75,'Adrian Orta','Adrian.11458937S@random.names','1952-03-20','M',1,'2018-04-09 16:51:31'),
(76,'Maria Pilar Martin','Maria Pilar.93607154Y@random.names','1996-08-29','F',1,'2018-04-09 16:51:31'),
(77,'Jesus Perez','Jesus.91931655B@random.names','1954-06-01','M',1,'2018-04-09 16:51:31'),
(78,'Jesus Perez','Jesus.15757299E@random.names','1956-08-29','M',1,'2018-04-09 16:51:31'),
(79,'Esther Capdevila','Esther.96440550D@random.names','1970-10-12','F',1,'2018-04-09 16:51:31'),
(80,'David Nieves','David.40697907M@random.names','1965-04-02','M',1,'2018-04-09 16:51:31'),
(81,'Antonia Giron','Antonia.32080105G@random.names','1983-01-22','F',1,'2018-04-09 16:51:31'),
(82,'Juan Casero','Juan.94063877H@random.names','1974-06-29','M',1,'2018-04-09 16:51:31'),
(83,'Manuel De Pablo','Manuel.01279669H@random.names','1973-03-23','M',1,'2018-04-09 16:51:31'),
(84,'angel Palomo','angel.28890315S@random.names','1991-07-04','M',1,'2018-04-09 16:51:31'),
(85,'Laura Herrera','Laura.98555932N@random.names','1966-12-12','F',1,'2018-04-09 16:51:31'),
(86,'Maria Josefa Benitez','Maria Josefa.36743977M@random.names','1987-04-17','F',1,'2018-04-09 16:51:31'),
(87,'Luis Saez','Luis.08103734Y@random.names','1983-03-28','M',1,'2018-04-09 16:51:31'),
(88,'Susana Nevado','Susana.09442372K@random.names','1961-12-26','F',1,'2018-04-09 16:51:31'),
(89,'Miguel Gomez','Miguel.01631964E@random.names','1965-05-16','M',1,'2018-04-09 16:51:31'),
(90,'Julio Mayordomo','Julio.77582185B@random.names','1968-06-05','M',1,'2018-04-09 16:51:31'),
(91,'Sonia Mari','Sonia.06246888L@random.names','1994-10-13','F',1,'2018-04-09 16:51:31'),
(92,'Antonia Beltran','Antonia.96371304Q@random.names','1967-11-17','F',1,'2018-04-09 16:51:31'),
(93,'Mercedes Perez','Mercedes.80944345P@random.names','1958-11-05','F',1,'2018-04-09 16:51:31'),
(94,'Concepcion Velez','Concepcion.56896097P@random.names','1964-04-05','F',1,'2018-04-09 16:51:31'),
(95,'Diego Correa','Diego.44862413Q@random.names','1999-09-15','M',1,'2018-04-09 16:51:31'),
(96,'Juan Antonio Galan','Juan Antonio.95710220K@random.names','1982-11-20','M',1,'2018-04-09 16:51:31'),
(97,'Manuel Cerezo','Manuel.25853412D@random.names','1991-03-12','M',1,'2018-04-09 16:51:31'),
(98,'Rosa Maria Singh','Rosa Maria.41642169W@random.names','1956-12-31','F',1,'2018-04-09 16:51:31'),
(99,'angeles Mena','angeles.88859550Q@random.names','1987-09-22','F',1,'2018-04-09 16:51:31'),
(100,'Jose Hidalgo','Jose.05903641R@random.names','1973-08-13','M',1,'2018-04-09 16:51:31');

--CREAR TABLA TRANSACCIONES
CREATE TABLE transactions (
  transaction_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  book_id int(10) unsigned NOT NULL,
  client_id int(10) unsigned NOT NULL,
  type enum('lend','sell') NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  finished tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (transaction_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- INSERTAR DATOS A LA TABLA TRANSACCIONES
INSERT INTO transactions(transaction_id, book_id, client_id, type, finished) VALUES(NULL, 3, 7, 'lend', 0);
INSERT INTO transactions(transaction_id, book_id, client_id, type, finished) VALUES(NULL, 4, 8, 'sell', 0);
INSERT INTO transactions(transaction_id, book_id, client_id, type, finished) VALUES(NULL, 6, 3, 'sell', 1);
INSERT INTO transactions(transaction_id, book_id, client_id, type, finished) VALUES(NULL, 5, 2, 'lend', 1);
INSERT INTO transactions(transaction_id, book_id, client_id, type, finished) VALUES(NULL, 10, 4, 'lend', 0);
INSERT INTO transactions(transaction_id, book_id, client_id, type, finished) VALUES(NULL, 12, 9, 'sell', 1);

--CONOZCAMOS Y JUGUEMOS A SELECT
SELECT name, email, gender 
FROM clients 
WHERE gender = 'F'
LIMIT 10;

SELECT YEAR(birthdate) 
FROM clients;

SELECT NOW();

SELECT name, YEAR(NOW()) - YEAR(birthdate) 
FROM clients limit 10;

SELECT * FROM clients WHERE name LIKE '%Saave%';

SELECT name, email, YEAR(NOW()) - YEAR(birthdate) AS edad, gender 
FROM clients 
WHERE gender = 'F'
AND name LIKE '%Lop%';

SELECT COUNT(*) FROM books;

SELECT COUNT(*) FROM authors;

SELECT * FROM authors WHERE author_id > 0 and <= 5;

SELECT book_id, author_id, title FROM books WHERE author_id BETWEEN en 1 and 5,

-- TE PRESENTO A LOS JOINS 
SELECT b.book_id, a.name, a.author_id, b.title
FROM books as b
JOIN authors as a 
  on a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 and 5;

-- LOS JOINS CONECTAN LAS DIFERENTES TABLAS
SELECT c.name, b.title, a.name AS author, t.type
FROM transactions as t 
JOIN books AS b 
  ON t.book_id = b.book_id
JOIN clients AS c 
  ON t.client_id = c.client_id
JOIN authors AS a 
  ON b.author_id = a.author_id
WHERE c.gender = 'F'
  and t.type = 'sell';

-- HAZ DIFERENTES PRUEBAS JUGANDO CON LAS CONDICIONES
SELECT c.name, b.title, a.name AS author, t.type
FROM transactions as t 
JOIN books AS b 
  ON t.book_id = b.book_id
JOIN clients AS c 
  ON t.client_id = c.client_id
JOIN authors AS a 
  ON b.author_id = a.author_id
WHERE c.gender = 'M'
  and t.type IN ('sell', 'lend');

-- ESTO ES UN JOIN IMPLICITO, NO ES LO IDEAL PERO FUNCIONA
SELECT b.title, a.name AS author
FROM authors AS a, books AS b
WHERE a.author_id = b.author_id
LIMIT 10;

-- ESTO ES UN JOIN EXPLICITO, ESTE TIENE MEJOR ESTRUCTURA Y PERMITE MEJOR LECTURA
SELECT b.title, a.name AS author
from books AS b 
INNER JOIN authors AS a 
  ON a.author_id = b.author_id
LIMIT 10;

-- JOIN O INNER JOIN MUESTRA UNICAMENTE LOS DATOS QUE COINCIDEN EN AMBAS TABLAS
SELECT a.author_id, a.name AS author, a.nationality, b.title
FROM authors AS a 
JOIN books AS b 
  ON a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 AND 5
ORDER BY a.name DESC;

-- LEFT JOIN MUESTRA TODOS LOS DATOS DE LA TABLA PRIMARIA AUNQUE EN LA TABLA SECUNDARIA ESTE VACIA
SELECT a.author_id, a.name AS author, a.nationality, b.title
FROM authors AS a 
LEFT JOIN books AS b 
  ON a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 AND 5
ORDER BY a.author_id DESC;

-- EXPLORA EJEMPLO AQUI AÑADIMOS UN CONTEO AGRUPADO PARA CONOCER LA CANTIDAD DE LIBROS DISPONIBLES POR AUTHOR
SELECT a.author_id, a.name AS author, a.nationality, COUNT(b.book_id) AS 'libros disponibles'
FROM authors AS a 
LEFT JOIN books AS b 
  ON a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 AND 5
GROUP BY a.author_id
ORDER BY a.author_id;

--CASOS DE NEGOCIO
--1. QUE NACIONALIDADES HAY?
SELECT nationality FROM authors;
SELECT DISTINCT nationality from authors ORDER by nationality;

--2. CUANTOS ESCRITORES HAY DE CADA NACIONALIDAD?
SELECT nationality, COUNT(author_id) AS N_Autores 
FROM authors 
WHERE nationality IS NOT NULL
GROUP BY nationality 
ORDER BY N_Autores DESC, nationality ASC;

--3. CUANTOS LIBROS HAY DE CADA NACIONALIDAD?
SELECT a.nationality, COUNT(b.book_id) AS N_Libros 
FROM authors AS a
JOIN books AS b 
  ON a.author_id = b.author_id
GROUP BY a.nationality 
ORDER BY N_Libros;

--4. CUAL ES EL PROMEDIO/DESVIACION STANDART DEL PRECIO POR LIBRO?
SELECT nationality, 
  COUNT(book_id) AS Libros,
  AVG(price) AS Prom, 
  STDDEV(price) AS Std 
FROM books AS b 
JOIN authors AS a 
  ON a.author_id = b.book_id
WHERE price IS NOT NULL
GROUP BY nationality
ORDER BY Libros DESC;

SELECT nationality, 
  COUNT(book_id) AS Libros,
  AVG(price) AS Prom, 
  STDDEV(price) AS Std 
FROM books AS b 
JOIN authors AS a 
  ON a.author_id = b.book_id
GROUP BY nationality
ORDER BY Std DESC;

--5. CUAL ES EL PRECIO MAX Y MINIMO DE UN LIBRO?
SELECT MAX(price), MIN(price) FROM books;

SELECT a.nationality, MAX(price) AS Max, MIN(price) AS Min
FROM books AS b 
JOIN authors AS a 
  ON b.author_id = a.author_id
GROUP BY nationality
ORDER BY Max DESC;

--6. COMO QUEDARIA EL REPORTE DE PRESTAMOS?
SELECT b.book_id, b.title, CONCAT(a.name, "(", a.nationality, ")") AS autor, 
  b.price, t.type, c.client_id, c.name AS Client, t.created_at AS Fecha_Prestamo,
  TO_DAYS(NOW()) - TO_DAYS(T.created_at) AS Dias_Prestamo
FROM transactions AS t 
JOIN books AS b 
  ON t.book_id = b.book_id
JOIN clients AS c 
  ON t.client_id = c.client_id
JOIN authors AS a 
  ON b.author_id = a.author_id
WHERE type = 'lend';

-- MODIFICANDO LAS TABLAS

-- ELIMINAR DATOS (UN DATO PUNTUAL)
DELETE FROM authors WHERE author_id = 51 LIMIT 1;

-- VER CLIENTES ACTIVOS E INACTIVAR (se selecciona el cliente 80 David Nieve)
SELECT CLIENT_ID, active, NAME FROM CLIENTS order by rand() limit 10;

-- ACTUALIZAR DATOS
UPDATE clients 
SET active = 0
WHERE client_id = 80
LIMIT 1;

UPDATE clients 
SET email = 'antonia@random.names'
WHERE client_id = 81
LIMIT 1;

SELECT DISTINCT nationality FROM authors;

UPDATE authors SET nationality = 'GBR' WHERE nationality = 'ENG';

-- VACIAR UNA TABLA (Elimina todo los datos de una tabla)
TRUNCATE transactions;


