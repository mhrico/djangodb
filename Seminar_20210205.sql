-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: seminar
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add department',7,'add_department'),(26,'Can change department',7,'change_department'),(27,'Can delete department',7,'delete_department'),(28,'Can view department',7,'view_department'),(29,'Can add student',8,'add_student'),(30,'Can change student',8,'change_student'),(31,'Can delete student',8,'delete_student'),(32,'Can view student',8,'view_student'),(33,'Can add books',9,'add_books'),(34,'Can change books',9,'change_books'),(35,'Can delete books',9,'delete_books'),(36,'Can view books',9,'view_books'),(37,'Can add issued books',10,'add_issuedbooks'),(38,'Can change issued books',10,'change_issuedbooks'),(39,'Can delete issued books',10,'delete_issuedbooks'),(40,'Can view issued books',10,'view_issuedbooks'),(41,'Can add auth group',12,'add_authgroup'),(42,'Can change auth group',12,'change_authgroup'),(43,'Can delete auth group',12,'delete_authgroup'),(44,'Can view auth group',12,'view_authgroup'),(45,'Can add auth group permissions',13,'add_authgrouppermissions'),(46,'Can change auth group permissions',13,'change_authgrouppermissions'),(47,'Can delete auth group permissions',13,'delete_authgrouppermissions'),(48,'Can view auth group permissions',13,'view_authgrouppermissions'),(49,'Can add auth permission',14,'add_authpermission'),(50,'Can change auth permission',14,'change_authpermission'),(51,'Can delete auth permission',14,'delete_authpermission'),(52,'Can view auth permission',14,'view_authpermission'),(53,'Can add auth user',15,'add_authuser'),(54,'Can change auth user',15,'change_authuser'),(55,'Can delete auth user',15,'delete_authuser'),(56,'Can view auth user',15,'view_authuser'),(57,'Can add auth user groups',16,'add_authusergroups'),(58,'Can change auth user groups',16,'change_authusergroups'),(59,'Can delete auth user groups',16,'delete_authusergroups'),(60,'Can view auth user groups',16,'view_authusergroups'),(61,'Can add auth user user permissions',17,'add_authuseruserpermissions'),(62,'Can change auth user user permissions',17,'change_authuseruserpermissions'),(63,'Can delete auth user user permissions',17,'delete_authuseruserpermissions'),(64,'Can view auth user user permissions',17,'view_authuseruserpermissions'),(65,'Can add django admin log',18,'add_djangoadminlog'),(66,'Can change django admin log',18,'change_djangoadminlog'),(67,'Can delete django admin log',18,'delete_djangoadminlog'),(68,'Can view django admin log',18,'view_djangoadminlog'),(69,'Can add django content type',19,'add_djangocontenttype'),(70,'Can change django content type',19,'change_djangocontenttype'),(71,'Can delete django content type',19,'delete_djangocontenttype'),(72,'Can view django content type',19,'view_djangocontenttype'),(73,'Can add django migrations',20,'add_djangomigrations'),(74,'Can change django migrations',20,'change_djangomigrations'),(75,'Can delete django migrations',20,'delete_djangomigrations'),(76,'Can view django migrations',20,'view_djangomigrations'),(77,'Can add django session',21,'add_djangosession'),(78,'Can change django session',21,'change_djangosession'),(79,'Can delete django session',21,'delete_djangosession'),(80,'Can view django session',21,'view_djangosession'),(81,'Can add requested books',11,'add_requestedbooks'),(82,'Can change requested books',11,'change_requestedbooks'),(83,'Can delete requested books',11,'delete_requestedbooks'),(84,'Can view requested books',11,'view_requestedbooks');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$Vyekzspv1lZK$EP+N15yqM8715IgysD+k3edQVJkCu2tX6vPE51wUSXg=','2021-02-04 17:24:51.691072',1,'admin','','','',1,1,'2021-02-04 17:24:38.286207');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `Book_Serial` int NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Authors` varchar(500) NOT NULL,
  `Department_Code` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Book_Serial`),
  KEY `Department_Code` (`Department_Code`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Department_Code`) REFERENCES `department` (`Department_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'A Practical English Grammar, Oxford University Press','A. J. Thomson & A. V. Martinet',76,10),(2,'Technical Writing, Scott Foresman & Co.','John M. Lannon',76,10),(3,'Oxford Handbook of Commercial Correspondence, Oxford University Press','A. Ashley',76,10),(4,'Writing Scientific English, Cengage Learning Australia','John Swales',76,10),(5,'Complete Course in English, Prentice Hall','Robert J. Dixson',76,10),(6,'Essentials of Business Communications, Sultan Chand & Sons','Rajendra Pal & J. S. Korlahalli',76,10),(7,'Higher Algebra, MacMillan Publications, Arihant Publishers','H. S. Hall and S. R. Knight',76,10),(8,'Higher Trigonometry, U. N. Dhur and Sons','B. C. Das and B. N. Mukherjee',76,10),(9,'Vector Analysis and An Introduction to TensorAnalysis, McGraw-Hill','M. R. Spiegel, S.Lipschutz, and D.Spellman',76,10),(10,'Theory of Equations, Nabu Press','W. S. Burnside and A. W. Panton',76,10),(11,'Higher Algebra, MacMillan Publications, Arihant Publishers','Samuel Barnard and James M. Child',76,10),(12,'Modern Inorganic Chemistry, S. Chand Publishers','R. D. Madan',76,10),(13,'Principles of Physical Chemistry, Nawab Publications','M. M. Haque and M. A. Nawab',76,10),(14,'Fundamental Concepts in Inorganic Chemistry, McGraw-Hill','Esmarch S. Gilreath',76,10),(15,'Physical Chemistry, McGraw-Hill','G. M. Barrow',76,10),(16,'Physical Chemistry, Orient Blackswan Pvt Ltd.','W. J. Moore ',76,10),(17,'Physical Chemistry, Houghton MifflinCompany','Keith J. Laidler, John H. Meiser',76,10),(18,'Elementary Physical Chemistry, BookSyndicate Pvt. Ltd.','S. R. Palit',76,10),(19,'Modern Inorganic Chemistry, FriendsInternational.','S. Z. Haider',76,10),(20,'Chemical Bonding, McGraw-Hill','Audrey L. Companion',76,10),(21,'Basic Inorganic Chemistry, Wiley','F. Albert Cotton,Geoffrey Wilkinson, Paul L. Gaus',76,10),(22,'Electronic Structure and Chemical Bonding,Wiley','Donald K. Sebera',76,10),(23,'Electronic Devices and Circuits, McGraw-Hill Inc.','Jacob Millman and Christos C. Halkias',76,10),(24,'Modern Electronics Instrumentation and Measurement Techniques, Prentice Hall','Albert D. Helfrick and William David Cooper',76,10),(25,'A Course in Electrical and Electronic Measurements and Instrumentation , Dhanpat Rai and Co.','A.K. Sowhney :',76,10),(26,'Electronic Principles, Career Education','Albert Paul Malvino',76,10),(27,'Networks, Lines and Fields, Prentice Hall','John D. Ryder',76,10),(28,'Introduction to Computer, McGraw-hill Publishers','Peter Norton',76,10),(29,'Computer Systems, Jones & Bartlett Publishers','J. Stanley Warford',76,10),(30,'Inside the PC, Sam Publishers','P. Norton :',76,10),(31,'Hardware Bible, Braddy Publishing, Indianapolis','L. Rosch',76,10),(32,'Introduction to Computers, Mcgraw-hill Inc.','Subramanian :',76,10),(33,'Switching Theory and Digital Electronics, Khanna Publishers','V. K. Jain',76,10),(34,'The C Programming Language, Prentice Hall','Kernighan and Ritchie',76,10),(35,'Programming with C, Schaum\'s Outline Series, Tata McGraw Hill','Gotfreid',76,10),(36,'The Art of Computer Programming, AddisonWesley Professional','D.E. Knuth',76,10),(37,'Programming with ANSI C, Tata McGraw Hill','E. Balagurusamy',76,10),(38,'Teach yourself C, McGraw-Hill Publishers','H. Schildt',76,10),(39,'Modern Economic Theory, S. Chand Publishers','K. K. Dewett',76,10),(40,'Advanced Economic Theory, S. Chand Publishers','H.L Ahuja',76,10),(41,'An Introduction To Economic Theory: Microeconomics, Oxford University Press','A. Asimakopulos :',76,10),(42,'Modern Microeconomics, Palgrave Macmillan','A. Koutsoyiannis :',76,10),(43,'Interpreting Data. Chapman and Hall, London','A. J. B. Anderson',76,10),(44,'The Elements of Probability Theory. Wiley, N. Y','H. Cramer',76,10),(45,'Introductory Statistics, Wiley and Sons, N. Y','P. Hoel',76,10),(46,'Introduction to Probability and Statistics. Vol-1 C. U. P. London','D. V. Lindley',76,10),(47,'Probability, McGraw-Hill, N. Y','S. Lipschutz',76,10),(48,'Probability With Statistical Applications, Addison- Wesley','Mosteller, Rourke and Thomas :',76,10),(49,'Elements of Probability and Statistics, McGraw-Hill, N. Y.','F. L. Wolf',76,10),(50,'Introductory Statistics, Wiley and Sons. N. Y','T. H. Wonnacot and R. J. Wonnacot',76,10),(51,'An Introduction to the Theory of Statistics, Charles Griffin, London','G. U. Yule, and M. G. Kendall',76,10),(52,'Differential Calculus, U. N. Dhur & Sons','B. C. Das and B.N.Mukherjee',76,10),(53,'Integral Calculus, U. N. Dhur & Sons','B. C. Das and B.N.Mukherjee',76,10),(54,'Calculas (Schaum’s Outline Series), McGraw-Hill','F. Ayres and Elliot Mendelson',76,10),(55,'Differential Calculas, Kessinger Publishing','Joseph Edwards',76,10),(56,'Differential Calculus, Chandaapure, Chittagong','Md. Abdul Latif and S. Bhattacharjee',76,10),(57,'Differential Calculus, Chandaapure, Chittagong','Md. Abdul Latif and S. Bhattacharjee',76,10),(58,'Principles of Electricity, D Van Nosrand Co.','Leigh Page and Norman Ilsley Adams',76,10),(59,'Physics (Part-I & II), Wiley','David Halliday, Robert Resnick and Kenneth S. Krane',76,10),(60,'Fundamentals of Electricity and Magnetism, McGraw-Hill Inc.','Arthur Frederic Kip',76,10),(61,'Concepts of Electricity and Magnetism, Students’ Publications','M. S. Huq',76,10),(62,'Digital Systems: Principles and Applications, Prentice Hall','Ronald J. Tocci',76,10),(63,'An Introduction to Switching Theory and Digital Electronics, Khanna Publishers, New Delhi','V. K. Jain',76,10),(64,'Digital Logic and Computer Design, Prentice Hall','M. Morris Mano',76,10),(65,'Digital Electronics, Prentice Hall','William H. Gothmann',76,10),(66,'Electronic Devices and Circuits: An Introduction, Goodyear Pub','A. Mottershead',76,10),(67,'Principles of Electronics, S. Chand Group','Mehta, Rohit, V K Mehta',76,10),(68,'Java How To Program, Prentice Hall','Deitel & Deitel',76,10),(69,'The Sun Microsystems Press Java Series, Prentice Hall','Cay Horstmann and Gary Cornell',76,10),(70,'Beginning Java 2: JDK, John Wiley & Sons','Ivor Horton',76,10),(71,'Java 2: Complete Reference, McGraw-Hill','H. Schildt',76,10),(72,'Business Organization and Management, S. Chand Publisher','M. C. Shukla',76,10),(73,'Management, Tata McGraw-Hill','Harold Koontz and Heinz Weihrich :',76,10),(74,'Operation Management,Addison-Wesley PublishingCompany','Krajewski and Ritzman',76,10),(75,'Human Resource Management, John Wiley & Sons publisher','David A. Decenzo and Stephen P. Robbins',76,10),(76,'Accounting Principles, Business Publications','Hermanson Etar',76,10),(77,'Managerial Accounting, Irwin Professional Publishing','Ray H. Garrison',76,10),(78,'Statistical Theory in Research, McGraw-Hill N. Y. Banctoft, T.','R. L. Anderson, T. A. Bancroft',76,10),(79,'Intermediate Mathematical Statistics, Chapman and Hill, London','G. Beaumont',76,10),(80,'Introductory Engineering Statistics, John Wiley and Sons.','Gutman, Wilks and Hunter',76,10),(81,'Introduction to Mathematical Statistics, John Wiley and Sons, N. Y','P. G. Hoel',76,10),(82,'Introduction to Mathematical Statistics, Collier Macmilan, N. LY','R. V. Hogg. and A. T. Graig',76,10),(83,'The Advanced Theory of Statistics Vol. 1, Charles Griffin and Co. London.','M. G. Kendall and A. Stuart A',76,10),(84,'Statistical Theory, Collier-Macmillan Co; N. Y','B. W. Lindgren',76,10),(85,'Introduction to the Theory of Statistics, McGraw-Hill, N. Y','Mood, Graybill and Boes',76,10),(86,'Intermediate Statistics Methods, Chapman and Hall, London','G. B. Weatheril',76,10),(87,'Matrices, Jai Prakash Nath and Co.','M. L. Khanna',76,10),(88,'Introduction to Ordinary Differential Equations, Wiley.','Shepley L. Ross',76,10),(89,'Theory and Problems of Matrices, Schaum’s Outline Series, McGraw-Hill','Jr. Frank Ayres',76,10),(90,'Differential Equations, McGraw-Hill','Frank Ayres',76,10),(91,'Differential Equations, Kedar Nath Ram Nath.','B. D. Sharma',76,10),(92,'Applied Mathematics for Engineers and Physicist, McGraw-Hill','Louis Albert Pipes',76,10),(93,'Mathematics of Physics and Modern Engineering, McGraw-Hill.','Ivar Stephen Sokolnikoff and Raymond M. Redheffer',76,10),(94,'Digital Systems: Principles and Applications, Prentice Hall','Ronald J. Tocci',76,10),(95,'An Introduction to Switching Theory and Digital Electronics, Khanna Publishers, New Delhi','V. K. Jain',76,10),(96,'Digital Logic and Computer Design, Prentice Hall','M. Morris Mano',76,10),(97,'Digital Electronics, Prentice Hall','William H. Gothmann',76,10),(98,'Electronic Devices and Circuits: An Introduction, Goodyear Pub','A. Mottershead',76,10),(99,'Principles of Electronics, S. Chand Group','Mehta, Rohit, V K Mehta',76,10),(100,'Fundamentals of Data Structures, Galgotia.','E. Horowitz and S. Sahni',76,10),(101,'Data Structures, Addison Wesley Publishers','Edward M. Reingold &Wilfred J. Hansen',76,10),(102,'Algorithms + Data Structures = Programs, Prentice Hall','Niklaus Wirth',76,10),(103,'Data Structures and Program Design, Prentice Hall','Robert L. Kruse',76,10),(104,'Data Structures (Schaum\'s Outline Series), Tata McGraw-Hill','Seymour Lipshultz :',76,10),(105,'Computer Algorithms, Galgotia.','E. Horowitz and S. Sahni',76,10),(106,'Introduction to Design and Analysis of Algorithms, McGraw-Hill.','Seymour E. Goodman & S. T. Hedetniemi',76,10),(107,'Discrete Mathematics and Its Applications, McGraw-Hill.','Kenneth H. Rosen :',76,10),(108,'Discrete Mathematics structures with applications to Computer Science, Mc-Graw Hill','J. P. Tremblay and R. Manohar',76,10),(109,'Elements of Discrete Mathematics, McGraw-Hill.','C.L. Liu',76,10),(110,'Theory and Problems of Discrete Mathematics, Schaum\'s Outline Series, McGraw-Hill','Seymour Lipschutz',76,10),(111,'Discrete Mathematical Structures, Prentice Hall','Bernard Kolman, Robert Busby, Sharon C. Ross',76,10),(112,'Cyber Law Simplified, Tata McGraw Hill Publications.','Vivck Sood',76,10),(113,'Information Technology & Cyber Laws, Commonwealth Publishers','V. D. Dudej',76,10),(114,'Universal Copyright Convention: An Analysis and Commentary, Bowker','Arpad Bogsch',76,10),(115,'Copyright in Industrial Designs, Sweet and M.','Alan Daubeny Russell Clarke',76,10),(116,'Numerical Methods for Engineers, McGraw-Hill','Steven C.Chapra, Raymond P. Canale',76,10),(117,'Computer Applications of Numerical Methods, Addison-Wesley','S. S. Kuo',76,10),(118,'Introductory Methods of Numerical Analysis, Prentice-Hall of India Pvt. Ltd','S. S. Sastry',76,10),(119,'Modern Mathematical Methods for Physicists and Engineers, Cambridge University Press.','Cantrell',76,10),(120,'Numerical Recipes in C: The Art of Scientific Computing, Cambridge University Press.','Press, Teukolsky, Vetterling and Flannery',76,10),(121,'Linear Algebra, Schaum’s Outline Series, McGraw-Hill','Seymour Lipschutz, Marc Lipson',76,10),(122,'Topics in Algebra, Wiley','I. N. Herstein',76,10),(123,'Introduction to Languages and The Theory of Computation. McGraw Hill 2011.','John C. Martin',76,10),(124,'Computational Complexity: A Modern Approach','Sanjeev Arora and Boaz Barak',76,10),(125,'Complexity of Algorithms - A Conceptual Perspective','Oded Goldreich',76,10),(126,'Complexity Algorithms','Peter Gacs and Laszlo Lovasz',76,10),(127,'Introduction to Algorithms, The MIT Press','Thomas H. Kormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein',76,10),(128,'The Art of Computer Programming, Vol. 1, 2, 3, Addison-Wesley','D. E. Knuth',76,10),(129,'Fundamentals of Computer Algorithms, Galgotia Publications','Ellis Horowitz, Sartaj Sahni and Sanguthevar Rajasekaran',76,10),(130,'Computer Architecture and Organization, McGraw-Hill.','John P. Hayes',76,10),(131,'Computer Organization, McGrawHill','Carl Hamacher, Zvonko Vranesic and Safwat Zaky',76,10),(132,'Computer Architecture and Parallel Processing, McGraw-Hill.','Kai Hwang and Faye A. Briggs',76,10),(133,'Computer Organization and Architecture: Designing for Performance, Prentice Hall.','William Stallings',76,10),(134,'System Analysis and Design, Galgotia Publication Ltd','E.M. Awad',76,10),(135,'System Analysis & Design, McGraw-Hill','P. Edwards',76,10),(136,'Information Systems: Theory and Practice, John Wiley & Sons','J.G. Burch Jr., F.R. Strater and G. Grundnitski',76,10),(137,'Principles of Management Information Systems, McGraw-Hill','G. Scott.',76,10),(138,'Basic System Analysis, Galgottia','A. Daniels and D. Yeates',76,10),(139,'Database System Concepts, Mcgraw-Hill','A. Silberschatz',76,10),(140,'Database Management System, McGraw-Hill Higher Education','Raghu Ramakrishnan, Johannes Gehrke',76,10),(141,'Principles of Database Management, Prentice-hall Of India Pvt Ltd','James Martin',76,10),(142,'Database Management systems, Prentice-Hall Publication.','Ullman',76,10),(143,'Oracle 8i a Beginners Guide, McGraw Hill','Abey',76,10),(144,'Digital Signal Processing, Prentice-hall Of India','J. G. Prokis',76,10),(145,'Digital Signal Processing, Wiley India Pvt Ltd','Defatta',76,10),(146,'Understanding Digital Signal Processing, Orling Kindersley India','R. G. Lyon',76,10),(147,'Digital Signal Processing, Scitech Publication..','P. R. Babu',76,10),(148,'Principles of Compiler Design, Addison-Wesley Publication','Alfred V. Aho and Jeffrey D. Ullman',76,10),(149,'Compiler design in C, Prentice-Hall of India','A.J. Holub',76,10),(150,'Theory and Practices of Compiler Writing, McGraw-Hill computer science series.','Trembly and Sorensen',76,10),(151,'Introduction to Automata Theory, Languages and Computation, University of Toronto','Hopcroft and Ulman',76,10),(152,'Automata and Algebra, Kluwer Academic Publishers Norwell, MA, USA.','Adamek',76,10),(153,'TCP/IP Protocol Suite, McGraw-Hill','Behrouz A. Forouzan',76,10),(154,'Computer Networks, Prentice Hall','Andrew S. Tanenbaum',76,10),(155,'Data and Computer Communications, Prentice Hall','William Stallings',76,10),(156,'Data Communications and Networking, McGraw-Hill','Behrouz A. Forouzan',76,10),(157,'Software Engineering, A practitioner\'s Approach, McGraw-Hill','Roger S. Pressman',76,10),(158,'Software Engineering, Pearson Education.','Ian Sommerville',76,10),(159,'Software Engineering Concepts, McGraw-Hill.','Richard Fairley',76,10),(160,'Software Engineering Environments, McGraw-Hill','Robert N. Charette',76,10),(161,'Software Engineering Theory and Practice, Pearson Education.','S. L. Pfleeger and J.M. Atlee',76,10),(162,'Computer Graphics, Prentice Hall','Donald Hearn and M. Pauline Baker',76,10),(163,'Computer Graphics: A Programming Approach, McGraw-Hill College.','Steven Harrington',76,10),(164,'Fundamentals of Computer Graphics, Prentice Hall','F. S. Hill',76,10),(165,'Computer Graphics, Mcgraw-hill','Plastock and Kalley',76,10),(166,'Computer Graphics, Mcgraw-hill.','Zhigang Xiang & Roy Plastock',76,10),(167,'Assembly Language Programming and Organization of the IBM PC, McGraw-Hill','Ytha Yu and Charlers Marut',76,10),(168,'Microprocessor and Microcomputer based System Design, Crc Press Publication','Rafiquzzaman',76,10),(169,'Microprocessors and Interfacing, McGraw-Hill','D. V. Hall',76,10),(170,'Microcomputer Systems: 8086/8088 Family, Prentice-Hall','Y. Liu and G. A. Gibson',76,10),(171,'Microcomputer Interfacing, Prentice-Hall series.','Artwick',76,10),(172,'Microcomputer Interfacing, McGraw-Hill','Ramesh Goanker',76,10),(173,'Operating Systems Concepts, Wiley Publisher.','Abraham Silberschatz and Peter Baer Galvin',76,10),(174,'Operating Systems, Prentice-Hall','Tanenbaum',76,10),(175,'Operating systems, McGraw-Hill','Madnick and J. Donovon',76,10),(176,'Operating System Principles, Prentice-Hall of India','B. Hausen',76,10),(177,'Systems Programming, McGraw-Hill.','Donovan',76,10),(178,'The design of the Unix operating system, Prentice-Hall.','Maurice. J. Bach',76,10),(179,'Operating System Concept and Design, Tata McGraw Hill.','M. MilenKovic',76,10),(180,'Unix System Programming in C++, Prentice Hall Publication','Terrence',76,10),(181,'Data Communications and Networking, Tata McGraw-Hill Edition','Behrouz A. Forouzan',76,10),(182,'Data and Computer Communications, Prentice Hall International, Inc.','William Stallings',76,10),(183,'Optical Fiber Communications , Prentice-Hall of India Pvt Ltd','John M. Senior',76,10),(184,'Data Communication, Computer Network and open systems, Addison Wesly','F. Halsall',76,10),(185,'Computer Networks, Prentice Hall of India Pvt. Ltd','Andrew S. Tanenbaum :',76,10),(186,'Advanced Computer Architecture Parallelism, Scalability, Programmability, McGraw Hill.','Kai Hwang (Senior Consulting Edition)',76,10),(187,'Computer Architecture and Parallel Processing, McGraw Hill','Kai Hwang, Faye A. Briggs',76,10),(188,'Communication Architecture for distributed system, Addison-Wesley.','R. J. Cypser',76,10),(189,'Design and Strategy for distributed data processing, Prentice Hall.','James Martin',76,10),(190,'Distributed Systems: Principles and Paradigms. Prentice Hall.','Tanenbaum and Van Steen.',76,10),(191,'Distributed Systems: Concepts and Design, Addison-Wesley','George Coulouris, Jean Dollimore, and Tim Kindberg,',76,10),(192,'Java How To Program, Prentice Hall','Deitel & Deitel',76,10),(193,'Java in a nutshell : a desktop quick reference','Flanagan',76,10),(194,'Java 2: Complete Reference','H. Schildt',76,10),(195,'Code complete: a practical handbook of software construction','McConnell',76,10),(196,'Design Patterns: Elements of Reusable OO Software','E. Gamma',76,10),(197,'Design Patterns Explained','Allan Shallway',76,10),(198,'UML distilled','Fowler',76,10),(199,'Applying UML and Patterns: An Introduction to Object-Oriented Analysis and Design and Iterative Development','Craig Larman',76,10),(200,'Computer Aided Modelling & Simulation, Academic Press, Inc. Orlando, FL, USA.','J. A. Spriet',76,10),(201,'Computer Simulation and Modeling, Lawrence Erlbaum Associates Publishers','Richard Lehman',76,10),(202,'System Simulation, Prentice Hall','G. Cordon',76,10),(203,'Computer Graphics, Addison-Wesley.','James D. Foley Andries van Dam',76,10),(204,'Microprocessor and Microcomputer based System Design, CRC-Press','Rafiquzzaman',76,10),(205,'Microprocessors and Interfacing, McGraw-Hill','D. V. Hall',76,10),(206,'Microcomputer Systems: 8086/8088 Family, Prentice-Hall','Y. Liu and G. A. Gibson',76,10),(207,'Microcomputer Interfacing, Prentice Hall','Artwick',76,10),(208,'Designing User Interfaces, Microtrend Books San Marcos, CA, USA','James E. Powell',76,10),(209,'Basic VLSI design: System & Circuit, Prentice-Hall','K. Eshraghian & D. A. Pucknell',76,10),(210,'Logic Minimization Algorithms for VLSI Synthesis, Kluwer Academic PublishersNorwell, MA, USA.','R. K. Brayton',76,10),(211,'Testing and Diagnosable Design of VLSI and ULSI, Springer.','F. Lombardi and M. G. Sami',76,10),(212,'Introduction to VLSI Systems, AddisonWesley.','C. A. Mead and L. A. Conway',76,10),(213,'Management Information Systems, Tata McGraw-Hill','W.S. Jawadekar',76,10),(214,'Electronic Commerce: A Managerial Perspective, Prentice Hall','Efraim Turban, Jae Kuy Lee, Jae Kyu Lee, Michael Chung',76,10),(215,'Management Information Systems, McGraw-Hill','James A. O\'Brien, George M. Marakas',76,10),(216,'Computational Geometry: Algorithms and Applications, Springer.','M. d. Berg, O. Schwarzkopf, M. v. Kreveld and M. Overmars',76,10),(217,'Computational Geometry: An Introduction, Springer.','F. P. Preparata and M. I. Shamos',76,10),(218,'Computational Geometry in C, Cambridge University Press.','J. O. Rourke',76,10),(219,'Digital Image Processing, Prentice-Hall Publication','Rafeal C. Gonzalez & Richard E. Woods',76,10),(220,'Fundamentals of Digital Image Processing, Academic Press.','A. K. Jain',76,10),(221,'Feature Extraction and Image Processing, Academic Press','Mark S. Nixon & Albert S. Aguado',76,10),(222,'Digital Image Processing, Wiley-Interscience,','William K. Pratt',76,10),(223,'Artificial Intelligence, Tata McGraw-Hill','Elaine Rich, Kevin Knight and Shivashankar B.Nair',76,10),(224,'Artificial Intelligence: A modern Approach, Pearson Education Asia','Staurt J. Russel and Peter Norvig',76,10),(225,'Introduction to Artificial Intelligence and Expert System, Prentice-Hall of India','D. W. Patterson',76,10),(226,'Artificial intelligence, Pearson Education Inc.','Patrick Henry Winston',76,10),(227,'Artificial Intelligence and Intelligent System, Oxford University Press','N. P. Padhy',76,10),(228,'Introduction to Turbo Prolog, Sybex Inc.','Carl Townsend',76,10),(229,'Prolog Programming for Artificial Intelligence, Addison Wesley.','Bratko, I',76,10),(230,'Programming in Prolog: Using the ISO Standard, Springer.','Clocksin, W.F. and Mellish, C.S.',76,10),(231,'Web Engineering, Tata McGraw Hill Edition, 2008','Roger Pressman and David Lowe',76,10),(232,'Programming Microsoft ASP.NET 2.0, Microsoft Press, 2005','Dino Esposito',76,10),(233,'ASP.NET and VB.NET web programming , Pearson, 1st Edition, 2002','Matt J. Crouch',76,10),(234,'Professional PHP Programming , Wrox Publications, 1999','Jesus Castagnetto,Harish Rawat, Sascha Schumann, Chris Scollo and Deepak Veliath',76,10),(235,'Core PHP Programming, Prentice HallProfessional, 2004','Leon Atkinson',76,10),(236,'Cryptography and Network Security Principles and Practice, Prentice Hall.','W. Stallings',76,10),(237,'Cryptography and Network Security, McGraw-Hill','Behrouz Forouzan',76,10),(238,'Applied Cryptography, John Wiley & Sons.','Bruce Schneier',76,10),(239,'Computer Security, John Wiley and Son.','Dieter Gollmann',76,10),(240,'Fundamentals of Computer Security Technology, Prentice Hall.','Edward Amoroso',76,10),(241,'Differential Crypt Analysis of the Data Encryption Standard, Springer Verlag','E. Biham and A. Shamir',76,10),(242,'Cryptography and Data Security, Addison Wesley.','D. Denning',76,10),(243,'A Course on Number Theory and Cryptography, Springer Verlag.','N. Kobliz',76,10),(244,'Wireless Communications and Networks, Prentice Hall','William Stallings',76,10),(245,'Wireless Communications, Pearson Education','Theodore S. Rappaport',76,10),(246,'Digital Communications, McGraw-Hill International','John G. Proakis',76,10),(247,'Mobile Cellular Telecommunication, McGraw Hill','W.C.Y.Lee;',76,10),(248,'Mobile Communications, Pearson','Jochen Schille',76,10),(249,'Fundamentals of Multimedia, Pearson','Ze-Nian Li and Mark S. Drew',76,10),(250,'Multimedia: An Introduction, Prentice Hall India.','John Villamil-Casanova and Louis Molina',76,10),(251,'Multimedia: Making It Work, McGrawHill','Tay Vaughan',76,10),(252,'Multimedia: Graphics, Prentice Hall India','John Villamil-Casanova and Leony Fernandez-Elias',76,10),(253,'Multimedia Sound and Video, Prentice Hall India.','Jose Lozano, Louis Molina and John Willif',76,10),(254,'Principles of Distributed Database Systems, Pearson.','M.T. Ozsu and P. Valduriez',76,10),(255,'Distributed Databases principles and systems, Tata McGraw Hill','S. Ceri and G. Pelagatti',76,10),(256,'Distributed Database, Pearson.','Andrew S. Tanenbaum',76,10);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `Department_Code` int NOT NULL,
  PRIMARY KEY (`Department_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (76);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-02-04 17:28:53.168760','1','RequestedBooks object (1)',1,'[{\"added\": {}}]',11,1),(2,'2021-02-04 17:57:14.118796','1','RequestedBooks object (1)',1,'[{\"added\": {}}]',11,1),(3,'2021-02-04 18:55:34.140157','1','IssuedBooks object (1)',1,'[{\"added\": {}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'seminar','authgroup'),(13,'seminar','authgrouppermissions'),(14,'seminar','authpermission'),(15,'seminar','authuser'),(16,'seminar','authusergroups'),(17,'seminar','authuseruserpermissions'),(9,'seminar','books'),(7,'seminar','department'),(18,'seminar','djangoadminlog'),(19,'seminar','djangocontenttype'),(20,'seminar','djangomigrations'),(21,'seminar','djangosession'),(10,'seminar','issuedbooks'),(11,'seminar','requestedbooks'),(8,'seminar','student'),(22,'seminar','test'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-02-04 17:23:44.412061'),(2,'auth','0001_initial','2021-02-04 17:23:44.626519'),(3,'admin','0001_initial','2021-02-04 17:23:45.315180'),(4,'admin','0002_logentry_remove_auto_add','2021-02-04 17:23:45.458108'),(5,'admin','0003_logentry_add_action_flag_choices','2021-02-04 17:23:45.469078'),(6,'contenttypes','0002_remove_content_type_name','2021-02-04 17:23:45.649596'),(7,'auth','0002_alter_permission_name_max_length','2021-02-04 17:23:45.739356'),(8,'auth','0003_alter_user_email_max_length','2021-02-04 17:23:45.777288'),(9,'auth','0004_alter_user_username_opts','2021-02-04 17:23:45.787252'),(10,'auth','0005_alter_user_last_login_null','2021-02-04 17:23:45.867041'),(11,'auth','0006_require_contenttypes_0002','2021-02-04 17:23:45.871004'),(12,'auth','0007_alter_validators_add_error_messages','2021-02-04 17:23:45.881011'),(13,'auth','0008_alter_user_username_max_length','2021-02-04 17:23:45.977719'),(14,'auth','0009_alter_user_last_name_max_length','2021-02-04 17:23:46.083435'),(15,'auth','0010_alter_group_name_max_length','2021-02-04 17:23:46.106406'),(16,'auth','0011_update_proxy_permissions','2021-02-04 17:23:46.118341'),(17,'auth','0012_alter_user_first_name_max_length','2021-02-04 17:23:46.195136'),(18,'sessions','0001_initial','2021-02-04 17:23:46.231040');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('98f876u4lcz2wv7vsweiiqa43fs9mply','.eJxVjEEOwiAQRe_C2pABSgGX7j0DmWFAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xYnEWSpx-N8L0yG0HfMd2m2Wa27pMJHdFHrTL68z5eTncv4OKvX5r1KCzMp7ZqeACaAILulhrBgxISilvGXygos0AMOqA3qUC5FMwPBrx_gCxRTah:1l7iN9:-tfsXHuFyo9_w54eB4vx2BMwy8GZBE0m0HvFHoKKDOo','2021-02-18 17:24:51.695912');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issued_books`
--

DROP TABLE IF EXISTS `issued_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issued_books` (
  `Serial` int NOT NULL AUTO_INCREMENT,
  `Requested_Serial` int NOT NULL,
  `Date_Taken` date DEFAULT NULL,
  `Date_Returned` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Serial`),
  KEY `Requested_Serial` (`Requested_Serial`),
  CONSTRAINT `issued_books_ibfk_1` FOREIGN KEY (`Requested_Serial`) REFERENCES `requested_books` (`Serial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issued_books`
--

LOCK TABLES `issued_books` WRITE;
/*!40000 ALTER TABLE `issued_books` DISABLE KEYS */;
INSERT INTO `issued_books` VALUES (1,1,'2021-02-04','2021-02-04','ok');
/*!40000 ALTER TABLE `issued_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requested_books`
--

DROP TABLE IF EXISTS `requested_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requested_books` (
  `Serial` int NOT NULL AUTO_INCREMENT,
  `Roll` varchar(12) NOT NULL,
  `Book_Serial` int NOT NULL,
  PRIMARY KEY (`Serial`),
  KEY `Roll` (`Roll`),
  KEY `Book_Serial` (`Book_Serial`),
  CONSTRAINT `requested_books_ibfk_1` FOREIGN KEY (`Roll`) REFERENCES `student` (`Roll`),
  CONSTRAINT `requested_books_ibfk_2` FOREIGN KEY (`Book_Serial`) REFERENCES `books` (`Book_Serial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requested_books`
--

LOCK TABLES `requested_books` WRITE;
/*!40000 ALTER TABLE `requested_books` DISABLE KEYS */;
INSERT INTO `requested_books` VALUES (1,'1611176112',4);
/*!40000 ALTER TABLE `requested_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Roll` varchar(12) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Number` varchar(14) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Session` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`Roll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('','Hassan Shahriar','','','2016-17'),('1611176112','Bappi Kumar','+8801774275615','bappikumarcseru@gmail.com','2015-16'),('1710276115','Mahbubur Rahman Taj','+8801710089902','mahburrahman30@gmail.com','2016-17'),('1710276139','Md. Nahid Hassan','+8801521416132','nahid.cseru@gmail.com','2016-17'),('1710476105','Md. Julfiker Ali','','julfikercseru@gmail.com','2016-17'),('1710576131','Minhajul Abeden','+8801766211372','minhajulabeden9097@gmail.com','2016-17'),('1710776108','Devit Chandra Roy','+8801762739522','devitroy15@gmail.com','2016-17'),('1710876122','Asif Himu','+8801835921753','asifbinkabircse@gmail.com','2016-17'),('1810176102','Zaki MD. Raihan','+8801952772817','zakizmr426@gmail.com','2017-18'),('1810276103','MD. Meem Mursalin Chowdhury','+8801787829148','mchowdhury244@gmail.com','2017-18'),('1810276116','MD. Jewel Rana','+8801703613322','mdjewelrana26278@gmail.com','2017-18'),('1810276128','Zahirul Isalm joy','+8801733850321','zahiruljoy275@gmail.com','2017-18'),('1810276140','Humayun Ahmad Rajib','+8801796742200','humayun.ahmad.rajib@gmail.com','2017-18'),('1810376106','MD. Ashifujjaman Rafi','+8801764877601','ashifujjman@gmail.com','2017-18'),('1810376132','Roni Roy','+8801764763446','ronirucse1718@gmail.com','2017-18'),('1810476110','Jahid Hasan','+8801705594771','jahidcseru1998@gmail.com','2017-18'),('1810476122','Molla Mohammad Ibrahim','+8801767603856','mmibrahim.cseru@gmail.com','2017-18'),('1810476137','MD. Aminul Islam','+8801719119148','m.aminulislambulbul@gmail.com','2017-18'),('1810476144','Monirul Islam','+8801537405102','shanto4045@gmail.com','2017-18'),('1810576105','Sahruzzaman Reyad','+8801952989737','sahruzzaman01@gmail.com','2017-18'),('1810576118','MD.Abdulla Al Mamun','+8801890999769','mamun.cseian@gmail.com','2017-18'),('1810576130','Al-amin Kawsar','+8801724116729','alaminkawsar8643@gmail.com','2017-18'),('1810576141','Abdur Rahim Sheikh','+8801778112915','abdur6552@gmail.com','2017-18'),('1810676109','MD. Sayem Abedin Sikto','+8801992526955','sayemabedin.bd@gmail.com','2017-18'),('1810676121','MD.Al Shahria','+8801737119925','shahriarcse26@gmail.com','2017-18'),('1810676124','Mohammad Hasibul Hasan','+8801720646828','hasibulfor@gmail.com','2017-18'),('1810676134','Shahadat Hossain','+8801862792908','mdshahadathossain5453@gmail.com','2017-18'),('1810776113','MD.Harun Or Rashid','+8801790362665','harunru71@gmail.com','2017-18'),('1810776125','Fahim Faysal Nirob','+8801792357458','fahimn56@gmail.com','2017-18'),('1810876111','Rakibul Islam','+8801796443896','rakibul221b@gmail.com','2017-18'),('1810876123','MD. Shojib mia','+8801883799528','shojibcse528@gmail.com','2017-18'),('1810876139','MD. Farhad Hosen Rony','+8801703508257','farhadrony228@gmail.com','2017-18'),('1810876145','Jahirul Islam','+8801952074169','mdjahirul495@gmail.com','2017-18'),('1810876146','MD. Rana Miah','+8801634895788','rana.cse333@gmail.com','2017-18'),('1810976101','Syed Rafiul Kabir','+8801959776747','rafiulKabir01.rucse@gmail.com','2017-18'),('1810976114','MD. Mehedi Hasan','+8801795003798','mehedi.rucse@gmail.com','2017-18'),('1810976126','MD. Shahriar Rahman Shaon','+8801717214430','shaon463@gmail.com','2017-18'),('1811076104','Sajeeb Chakraborty','+8801824072334','sajeebchakraborty.cse2000@gmail.com','2017-18'),('1811076117','MD.Asibul Hasan Shanto','+8801767191651','asibulhasan.rucse.18@gmail.com','2017-18'),('1811076129','Pijush Barai','+8801786584287','pijushbarai1@gmail.com','2017-18'),('1811176107','Golam Mostafa Shuvo','+8801843177051','gm.shuvo.ru.cse@gmail.com','2017-18'),('1811176120','MD. Rifat Hosen','+8801969068228','rifathosan01@gmail.com','2017-18'),('1811176133','MD. Al-amin','+8801792945973','alamin.cse.ru2018@gmail.com','2017-18'),('1811176143','Khairul Bashar','+8801774243462','khairulbashar24853@gmail.com','2017-18'),('1811176149','Mehedi Hasan Rico','+8801521119827','mhrico2@gmail.com','2017-18'),('1812076108','Umme Habiba Rea','+8801780193923','rea.ru18@gmail.com','2017-18'),('1812076138','Prithu Rani Roy','+8801722344330','prithuroy999@gmail.com','2017-18'),('1812176135','Farhin Mashiat Mayabee','+8801737017820','f.m.maya833@gmail.com','2017-18'),('1812476136','Umme Farhana','+8801798947524','ummefarhana7246@gmail.com','2017-18'),('1812576131','Bobita Rani Biswas','+8801927167005','bobibiswas06@gmail.com','2017-18'),('1812576142','Umme Salma Rumi','+8801701565609','salmarumi06@gmail.com','2017-18');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-05  1:05:26
