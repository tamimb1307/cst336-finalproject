
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admins` (
  `adm_username` varchar(25) DEFAULT NULL,
  `adm_email` varchar(45) DEFAULT NULL,
  `adm_pword` varchar(45) DEFAULT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `admins` (`adm_username`, `adm_email`, `adm_pword`, `fname`, `lname`) VALUES
('admin', 'default@email.com', 'password', 'John', 'Smith');



CREATE TABLE `authors` (
  `authors_id` int(11) NOT NULL,
  `auth_name` varchar(45) DEFAULT NULL,
  `auth_description` varchar(500) DEFAULT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `authors` (`authors_id`, `auth_name`, `auth_description`, `books_id`) VALUES
(1, 'Maggie Sefton', 'generic description', 1),
(2, 'Orson Scott Card', 'generic description', 2),
(3, 'Kate Morton', 'generic description', 3),
(4, 'Joyce Moss', 'generic description', 4),
(5, 'Yaacov Lozowick', 'generic description', 5),
(6, 'Rory O\'Connor', 'generic description', 6),
(7, 'Judith Lessow-Hurley', 'generic description', 7),
(8, 'Myer Kutz', 'generic description', 8),
(9, 'John Birmingham', 'generic description', 9),
(10, 'Herman Melville', 'generic description', 10),
(11, 'Wendy Hunter', 'generic description', 11),
(12, 'Nancy E. Krulik', 'generic description', 12),
(13, 'Fred Marchant', 'generic description', 13),
(14, 'Peter T. Furst', 'generic description', 14),
(15, 'G. Reid Lyon', 'generic description', 15),
(16, 'Antoine Le Hardy De Beaulieu', 'generic description', 16),
(17, 'National Research Council (US)', 'generic description', 17),
(18, 'Scott Ball', 'generic description', 18),
(19, 'John Grisham', 'generic description', 19),
(20, 'Roger Duvoisin', 'generic description', 20);



CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `imageUrl` varchar(250) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `books` (`id`, `isbn`, `imageUrl`, `title`, `stock`, `price`) VALUES
(1, '9780425241141', 'http://covers.openlibrary.org/b/isbn/9780425241141-M.jpg', 'Unraveled', 20, 5.99),
(2, '9780812533552', 'https://covers.openlibrary.org/b/id/8303020-M.jpg', 'Ender\'s Game', 15, 7.99),
(3, '9781416550549', 'https://covers.openlibrary.org/b/id/6280113-M.jpg', 'The forgotten garden', 20, 9.99),
(4, '9780787637293', 'https://covers.openlibrary.org/b/id/1480766-M.jpg', 'World Literature and Its Times', 2, 6.99),
(5, '9780385509053', 'https://covers.openlibrary.org/b/id/242505-M.jpg', 'Right To Exist', 6, 6.99),
(6, '9780872865563', 'https://covers.openlibrary.org/b/id/8288965-M.jpg', 'Friends, Followers and the Future', 20, 6.99),
(7, '9781416601081', 'https://covers.openlibrary.org/b/id/6411497-M.jpg', 'Meeting the Needs of Second Language Learners', 7, 6.99),
(8, '9780471793694', 'https://covers.openlibrary.org/b/id/2426271-M.jpg', 'Environmentally Conscious Transportation', 20, 6.99),
(9, '9780345502902', 'https://covers.openlibrary.org/b/id/6298942-M.jpg', 'Without Warning', 20, 6.99),
(10, '9780706420968', 'https://covers.openlibrary.org/b/id/8757095-M.jpg', 'Moby Dick / Billy Bud', 20, 9.99),
(11, '0807823112', 'https://covers.openlibrary.org/b/id/1528312-M.jpg', 'Eroding Military Influence in Brazil', 20, 9.99),
(12, '9780448480947', 'https://covers.openlibrary.org/b/id/8163281-M.jpg', 'Go fetch!', 20, 9.99),
(13, '9781555973117', 'https://covers.openlibrary.org/b/id/1873475-M.jpg', 'Full Moon Boat', 20, 9.99),
(14, '087754767X', 'https://covers.openlibrary.org/b/id/7153029-M.jpg', 'Mushrooms, psychedelic fungi', 20, 9.99),
(15, '9781557662569', 'https://covers.openlibrary.org/b/id/780920-M.jpg', 'Neuroimaging', 20, 7.99),
(16, '9780881926019', 'https://covers.openlibrary.org/b/id/1638251-M.jpg', 'An Illustrated Guide to Maples', 20, 7.99),
(17, '9780309040280', 'https://covers.openlibrary.org/b/id/2361118-M.jpg', 'High-School Biology Today and Tomorrow', 20, 7.99),
(18, '9780470641927', 'https://covers.openlibrary.org/b/id/9307391-M.jpg', 'Livable communities for an aging population', 20, 9.99),
(19, '9780440244714', 'https://covers.openlibrary.org/b/id/6614766-M.jpg', 'Playing for pizza', 20, 9.99),
(20, '0394832981', 'https://covers.openlibrary.org/b/id/7139711-M.jpg', 'Periwinkle', 20, 9.99);



CREATE TABLE `descriptors` (
  `genre` varchar(20) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `subtitle` varchar(45) DEFAULT NULL,
  `book_description` varchar(500) DEFAULT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `shopping_cart` (
  `id` int(11) NOT NULL DEFAULT 1,
  `bookID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `authors`
  ADD PRIMARY KEY (`authors_id`,`books_id`),
  ADD KEY `fk_authors_books1_idx` (`books_id`);


ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);


ALTER TABLE `descriptors`
  ADD PRIMARY KEY (`books_id`),
  ADD KEY `fk_descriptors_books_idx` (`books_id`);


ALTER TABLE `authors`
  MODIFY `authors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;


ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;


ALTER TABLE `descriptors`
  ADD CONSTRAINT `descriptors_ibfk_1` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
