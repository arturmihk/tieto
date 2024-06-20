-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 05:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kohvikud-it22`
--

-- --------------------------------------------------------

--
-- Table structure for table `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `hinnang` int(2) NOT NULL,
  `toidukohad_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentaar`, `hinnang`, `toidukohad_id`) VALUES
(1, 'Adele Wakerley', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 10, 24),
(2, 'Nataniel Feuell', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat ferment', 5, 34),
(3, 'Alva Kittman', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultri', 5, 20),
(4, 'Sylvester Wenger', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\r\n\r\nDuis consequat dui nec nisi volutpat eleifend. ', 1, 81),
(5, 'Luise Whelpton', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 4, 23),
(6, 'Walther Doherty', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspend', 5, 40),
(7, 'Murry Desaur', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo', 7, 85),
(8, 'Rickert Humble', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue', 8, 45),
(9, 'Arty Hargie', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 9, 67),
(10, 'Lucienne Lowmass', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultri', 8, 81),
(11, 'Averil Billie', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 4, 70),
(12, 'Noell Billingsly', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultri', 1, 98),
(13, 'Stafford Leavy', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 9, 34),
(14, 'Stanfield McErlaine', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 10, 98),
(15, 'Addi Dingate', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 7, 43),
(16, 'Lenee Cannavan', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo', 8, 34),
(17, 'Erick Archbould', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 1, 60),
(18, 'Vonnie Housbie', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspend', 5, 98),
(19, 'Hussein Stanway', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1, 80),
(20, 'Sarge Burch', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 9, 16),
(21, 'Osbert Franies', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.', 2, 46),
(22, 'Carlee Elgie', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 4, 9),
(23, 'Selma Perrie', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accum', 6, 85),
(24, 'Agnesse Pirri', 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 6, 9),
(25, 'Ronda Drife', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.', 10, 6),
(26, 'Jyoti Ager', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 2, 29),
(27, 'Dulciana Mammatt', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 1, 3),
(28, 'Guy Rudloff', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibul', 8, 19),
(29, 'Corrie Geraldez', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\r\n\r\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 4, 79),
(30, 'Zacharia Gebhardt', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 6, 98),
(31, 'Salvidor Worcs', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla a', 9, 45),
(32, 'Sorcha Ferraron', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 4, 6),
(33, 'Emilia Cawsby', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.', 6, 16),
(34, 'Desmond Heare', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui v', 5, 27),
(35, 'Jeramey Piggens', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 3, 45),
(36, 'Vite Sambles', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 7, 94),
(37, 'Buckie Blackman', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec ', 8, 84),
(38, 'Judah Ourry', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 4, 95),
(39, 'Emile Balme', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. ', 6, 4),
(40, 'Doll Fancutt', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nul', 5, 12),
(41, 'Raina Blanchet', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 4, 50),
(42, 'Almeta Ramshay', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac e', 1, 29),
(43, 'Astra Crudge', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 1, 86),
(44, 'Kiel Benton', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat ferment', 4, 52),
(45, 'Leela Swait', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 10, 5),
(46, 'Corty Rossiter', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.', 7, 25),
(47, 'Thornie Flahive', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 6, 7),
(48, 'Aurelie Veryard', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 7, 8),
(49, 'Gearard Gerault', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed la', 5, 61),
(50, 'Gwyn Dubery', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultri', 9, 62),
(51, 'Delphine Coats', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat e', 9, 97),
(52, 'Cherilyn Toman', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis pa', 5, 75),
(53, 'Pascale Atcheson', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 10, 100),
(54, 'Cosmo Urquhart', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec ', 3, 21),
(55, 'Cordelie Hinkins', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.', 7, 87),
(56, 'Jennee Simononsky', 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 10, 98),
(57, 'Cynthy Hancorn', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis mol', 1, 49),
(58, 'Elie Kirwood', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis fauc', 7, 95),
(59, 'Jacinthe Espadas', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nulla', 2, 7),
(60, 'Arliene Goodge', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 6, 66),
(61, 'Kimbra Ripping', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 6, 92),
(62, 'Jenilee Strodder', 'In congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 2, 99),
(63, 'Hall Broadwell', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 8, 86),
(64, 'Carlos Camm', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nul', 4, 9),
(65, 'Lenore Sailer', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placera', 4, 36),
(66, 'Aarika Wendover', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 9, 51),
(67, 'Gwenneth Lidyard', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 8, 55),
(68, 'Aldon De Mars', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 3, 30),
(69, 'Audry O\'Kane', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 6, 91),
(70, 'Leonid Kohn', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis mol', 8, 43),
(71, 'Berri Eisak', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis fauc', 6, 79),
(72, 'Shelbi Wilcott', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\r\n\r\nNullam sit amet turpis elementum ligula', 6, 90),
(73, 'Gunner Pulbrook', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 3, 94),
(74, 'Suzy Nyssen', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nEtiam vel augue. Vestibulum rutrum rutrum ne', 5, 29),
(75, 'Lily D\'orsay', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibul', 7, 27),
(76, 'Tanney Tapp', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accum', 10, 96),
(77, 'Avril Newall', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 7, 32),
(78, 'Mata Bertolaccini', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3, 55),
(79, 'Chauncey Cossam', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 6, 43),
(80, 'Padriac Southby', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 3, 58),
(81, 'Jillane Worlidge', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 6, 12),
(82, 'Emmey Pickerell', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 2, 4),
(83, 'Reade Freak', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 5, 14),
(84, 'Aridatha Amer', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultri', 8, 1),
(85, 'Haven Earnshaw', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ul', 8, 47),
(86, 'Erminia Fowles', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 5, 37),
(87, 'Marla Ramshay', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 4, 30),
(88, 'Aurelia Kuna', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\r\n\r\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus s', 1, 38),
(90, 'Emile Rayhill', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec ', 1, 67),
(91, 'Siouxie Couronne', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 7, 87),
(92, 'Mathe Hubbocks', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 8, 46),
(93, 'Easter Coley', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, es', 10, 43),
(94, 'Irwinn Snoxell', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 9, 100),
(95, 'Hazlett Winning', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 7, 94),
(96, 'Alta Arsnell', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\r\n\r\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\r\n\r\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices en', 5, 92),
(98, 'Rancell Rayburn', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\r\n\r\n', 10, 47),
(99, 'Chaim Raffan', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 3, 84),
(100, 'Codi Wenger', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam po', 1, 14),
(103, 'sdfhgdshgf', 'sdfghdsgfh', 7, 2),
(104, 'dshfdshf', 'sdhfdshf', 4, 2),
(105, 'adfgdgf', 'sadfg', 10, 1),
(106, 'asgdf', 'asdg', 10, 1),
(107, 'asdf', 'asdf', 2, 1),
(108, 'asdg', 'asdg', 9, 1),
(109, 'as', 'asd', 3, 1),
(110, '123', '1234', 6, 1),
(111, 'asd', 'asd', 10, 4),
(112, 'asgd', 'asdg', 7, 5),
(113, 'asdg', 'asdg', 9, 6),
(114, 'ash', 'asdg', 10, 8),
(115, 'asdh', 'sadh', 7, 8),
(116, 'asdhas', 'asdhasdh', 7, 8),
(117, 'asdh', 'asdhas', 2, 8),
(118, 'sdfhsdfh', 'sdfh', 8, 8),
(119, '1234', '1234', 4, 9),
(120, '1126', '12345', 5, 9),
(121, 'wejtewtjwejt', 'ry', 3, 10),
(122, 'ewjt', 'wjtte', 6, 10),
(123, 'wetjwetj', 'wjwetj', 7, 11),
(124, 'qhrwqrhqwrh', 'qwrhqwrhqwrhqewrh', 10, 12),
(125, 'qwrhqwrhwqrhw', 'qwrhwqrhqwrh', 5, 13),
(126, 'qrhwqwrhwq', 'hqwrhqwrhwq', 8, 13),
(127, 'qwrhwqrh', 'qwrhqwrhqwrhqwh', 10, 13),
(128, 'qwrhqwrh', 'qfeeqwf', 6, 13),
(129, 'qefh', 'tryu2hqry', 7, 14),
(130, 'asd', 'agsd', 10, 15),
(131, 'asdf', 'asdf', 10, 15),
(132, 'as', 'as', 2, 15),
(133, 'as', 'as', 3, 15),
(134, 'asas', 'asas', 6, 15),
(135, 'asas', 'asassa', 8, 15),
(136, 'asa', 'asasas', 8, 15);

-- --------------------------------------------------------

--
-- Table structure for table `toidukohad`
--

CREATE TABLE `toidukohad` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` double NOT NULL,
  `hinnatud` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toidukohad`
--

INSERT INTO `toidukohad` (`id`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnatud`) VALUES
(4, 'Dr', '11 Hazelcrest Junction', 6, 3),
(5, 'Rev', '2800 Paget Terrace', 8.5, 2),
(6, 'Honorable', '8341 Butterfield Center', 7.67, 3),
(7, 'Mr', '54 Graedel Road', 3.7, 9),
(8, 'Honorable', '9663 Prairie Rose Avenue', 6.83, 6),
(9, 'Rev', '01453 Anhalt Circle', 4.6, 5),
(10, 'Ms', '906 Derek Street', 4.5, 2),
(11, 'Dr', '7 Onsgard Road', 7, 1),
(12, 'Mrs', '3380 Boyd Avenue', 7, 3),
(13, 'Mrs', '2 Bobwhite Avenue', 7.25, 4),
(14, 'Ms', '245 Elgar Court', 4.33, 3),
(15, 'Mrs', '526 Lien Alley', 6.71, 7),
(16, 'Mr', '53359 Grayhawk Crossing', 1.4, 30),
(17, 'Honorable', '6 Ludington Lane', 6.1, 22),
(18, 'Mr', '4 Mendota Way', 6.5, 92),
(19, 'Dr', '9 Texas Trail', 7, 59),
(20, 'Rev', '620 Donald Alley', 9.1, 21),
(21, 'Dr', '57 Maryland Way', 3.5, 77),
(22, 'Mrs', '7 Grasskamp Court', 2.8, 71),
(23, 'Honorable', '2432 Dixon Lane', 9.8, 69),
(24, 'Honorable', '36607 Loftsgordon Avenue', 3.2, 10),
(25, 'Dr', '823 Sunfield Street', 5, 93),
(26, 'Honorable', '023 Erie Street', 3.5, 12),
(27, 'Ms', '13161 Red Cloud Junction', 5, 8),
(28, 'Mrs', '9793 Fulton Lane', 9.2, 41),
(29, 'Honorable', '6053 Oriole Crossing', 1.5, 37),
(30, 'Mrs', '16 Spaight Road', 6.2, 40),
(31, 'Dr', '2 Hanson Drive', 5.4, 69),
(32, 'Honorable', '67873 Hovde Avenue', 4, 83),
(33, 'Mrs', '14 8th Way', 5.6, 18),
(34, 'Mrs', '92466 Killdeer Trail', 6.7, 98),
(35, 'Honorable', '989 Dottie Way', 8, 99),
(36, 'Mrs', '00 Warbler Lane', 9.9, 90),
(37, 'Dr', '43451 Fairfield Circle', 8.2, 21),
(38, 'Mrs', '49 Spohn Plaza', 1.3, 65),
(39, 'Mr', '0453 Oxford Street', 1, 6),
(40, 'Mrs', '0637 Butternut Park', 3.8, 29),
(41, 'Honorable', '9 Ridgeway Terrace', 2.6, 48),
(42, 'Dr', '7408 Bayside Lane', 7.8, 32),
(43, 'Mr', '744 Mcbride Way', 3.5, 86),
(44, 'Dr', '46 Ridgeview Street', 8, 50),
(45, 'Mrs', '04406 Magdeline Alley', 1.1, 58),
(46, 'Ms', '4053 Hudson Road', 2.2, 39),
(47, 'Dr', '5203 Susan Parkway', 6.9, 19),
(48, 'Mrs', '4 International Point', 8, 60),
(49, 'Honorable', '200 Redwing Parkway', 9.1, 5),
(50, 'Ms', '997 Michigan Park', 7.7, 3),
(51, 'Dr', '61 Carberry Crossing', 4.7, 97),
(52, 'Rev', '31994 Vera Hill', 9.3, 3),
(53, 'Mr', '91 Village Green Court', 9.9, 64),
(54, 'Mr', '07 Old Gate Street', 3.2, 57),
(55, 'Rev', '1578 Jenifer Drive', 5.2, 5),
(56, 'Ms', '882 Old Shore Circle', 7, 35),
(57, 'Honorable', '19454 Schurz Street', 2, 47),
(58, 'Ms', '4895 Marcy Center', 9.3, 51),
(59, 'Honorable', '60097 Straubel Road', 3.4, 11),
(60, 'Mrs', '984 5th Park', 7.7, 30),
(61, 'Rev', '23 Golf Parkway', 8, 75),
(62, 'Mr', '6 Sachs Junction', 5, 49),
(63, 'Honorable', '84646 Dennis Center', 7.2, 61),
(64, 'Dr', '702 Dahle Court', 4.8, 99),
(65, 'Honorable', '473 Morning Avenue', 2.7, 9),
(66, 'Ms', '17 Brickson Park Way', 4.2, 55),
(67, 'Dr', '94 Longview Point', 5.5, 74),
(68, 'Mrs', '8 Comanche Crossing', 7.9, 45),
(69, 'Honorable', '15 Riverside Junction', 9.9, 58),
(70, 'Honorable', '58240 Hallows Street', 3.1, 51),
(71, 'Honorable', '1289 Michigan Plaza', 5.8, 72),
(72, 'Honorable', '53 Heffernan Point', 1, 93),
(73, 'Honorable', '47933 Main Park', 7.9, 3),
(74, 'Ms', '487 Lakewood Alley', 3, 58),
(75, 'Honorable', '2864 Kennedy Junction', 5.5, 11),
(76, 'Rev', '4 Delaware Alley', 6.1, 47),
(77, 'Mrs', '8545 Granby Drive', 9.4, 88),
(78, 'Rev', '801 Sachs Point', 6, 45),
(79, 'Ms', '592 Maple Wood Drive', 1.4, 90),
(80, 'Ms', '14673 Del Mar Place', 6.9, 29),
(81, 'Honorable', '6 5th Plaza', 7.8, 36),
(82, 'Mrs', '23 Bultman Plaza', 3.3, 98),
(83, 'Mrs', '1662 Lakeland Street', 9, 33),
(84, 'Mr', '699 Myrtle Street', 3.2, 19),
(85, 'Ms', '878 Kipling Alley', 9.5, 15),
(86, 'Ms', '28584 Golf Plaza', 5.1, 92),
(87, 'Mrs', '07 High Crossing Alley', 4.2, 49),
(88, 'Rev', '23795 Onsgard Crossing', 4, 29),
(89, 'Mr', '440 Mifflin Point', 8.6, 49),
(90, 'Rev', '647 Hagan Point', 8.8, 34),
(91, 'Ms', '81 High Crossing Terrace', 7.4, 40),
(92, 'Dr', '8 Village Green Drive', 9.1, 39),
(93, 'Ms', '14 School Alley', 5.3, 40),
(94, 'Honorable', '17070 Messerschmidt Place', 6.5, 42),
(95, 'Mrs', '50 Atwood Avenue', 9.5, 91),
(96, 'Ms', '71 Esker Lane', 7.7, 33),
(97, 'Honorable', '919 Barby Lane', 5.6, 56),
(98, 'Dr', '181 Porter Road', 1, 24),
(99, 'Mrs', '24 Sutteridge Crossing', 4.5, 9),
(100, 'Mr', '36195 Warbler Street', 9.4, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toidukohad`
--
ALTER TABLE `toidukohad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `toidukohad`
--
ALTER TABLE `toidukohad`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
