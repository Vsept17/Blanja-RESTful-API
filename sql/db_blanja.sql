-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2021 at 01:54 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blanjaAPI_reactJS`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_customer`
--

CREATE TABLE `address_customer` (
  `id_address` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address_customer`
--

INSERT INTO `address_customer` (`id_address`, `fullname`, `address`, `city`, `region`, `zip_code`, `country`, `id_user`) VALUES
(2, 'Faqih', 'Jl. Sumbodro', 'Tegal', 'Jawa Tengah', '35587', 'Indonesia', 4),
(3, 'Cek Debug', 'Jl. Lele Dumbo', 'Pemalang', 'Jawa Tengah', '32178', 'Indonesia', 4),
(5, 'User Gans', 'Jl. Sumbing 7', 'Pemalang', 'Jawa Tengah', '36428', 'Indonesia', 8),
(6, 'Rizal', 'Jl. Kupang 8', 'Tegal', 'Jawa Tengah', '42421', 'Indonesia', 8),
(53, 'Septian ', 'Jl. Belimbing Sayur No. 72', 'Cikarang', 'West Bekasi', '23553', 'England', 14);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_photo` varchar(255) NOT NULL,
  `color_hexa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_categories`, `category_name`, `category_photo`, `color_hexa`) VALUES
(4, 'Short', 'https://res.cloudinary.com/devloops7/image/upload/v1605447841/newBlanja/ShortCategory_czom62.png', '#CC0B04'),
(5, 'Jacket', 'https://res.cloudinary.com/devloops7/image/upload/v1605447840/newBlanja/JacketCategory_jvjeee.png', '#1C3391'),
(9, 'T-Shirt', 'https://res.cloudinary.com/devloops7/image/upload/v1605447841/newBlanja/TshirtCategory_odymmz.png', '#F67B02'),
(13, 'Shoes', 'https://res.cloudinary.com/devloops7/image/upload/v1605447841/newBlanja/ShoesCategory_kd4uah.png', '#E31F51'),
(14, 'Pants', 'https://res.cloudinary.com/devloops7/image/upload/v1605447840/newBlanja/PantsCategory_qz4r9h.png', '#57CD9E');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `buyyer` int(11) NOT NULL,
  `chatroom` varchar(255) NOT NULL,
  `sender` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `seller`, `buyyer`, `chatroom`, `sender`, `message`, `created_at`) VALUES
(13, 13, 14, 'S13B14', 14, 'Haloo', '2021-02-26'),
(14, 13, 14, 'S13B14', 13, 'Iya ada yang bisa saya bantu? ', '2021-02-26'),
(15, 13, 14, 'S13B14', 14, 'Dimana ya? ', '2021-02-26'),
(16, 13, 14, 'S13B14', 14, 'Halo ', '2021-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color_name` varchar(30) NOT NULL,
  `color_hexa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_hexa`) VALUES
(1, 'Blue', '#0000FF'),
(2, 'Red', '#FF0000'),
(3, 'Green', '#42D86C'),
(4, 'Black', '#1A1A1A');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` int(11) NOT NULL,
  `conditions` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `conditions`) VALUES
(1, 'New'),
(2, 'Second');

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level`) VALUES
(1, 'customer'),
(2, 'seller');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `id_address` int(11) NOT NULL,
  `status_order` set('On Process','Delivery','Delivered') NOT NULL DEFAULT 'On Process',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_code`, `total`, `user_id`, `seller_id`, `id_address`, `status_order`, `created_at`, `updated_at`) VALUES
(22, 7707, 21000, 4, NULL, 1, 'Delivery', '2021-01-17 04:12:24', '2021-01-28 01:28:19'),
(23, 9007, 80000, 4, NULL, 1, 'On Process', '2021-01-17 04:27:57', '2021-01-26 03:18:43'),
(24, 7777, 50000, 4, NULL, 1, 'On Process', '2021-01-17 21:53:57', '2021-01-26 03:18:43'),
(25, 39627, 550000, 4, NULL, 1, 'On Process', '2021-01-18 01:28:21', '2021-01-26 03:18:43'),
(26, 787, 400000, 4, NULL, 1, 'On Process', '2021-01-20 23:47:49', '2021-01-26 03:18:43'),
(27, 50800, 360000, 4, NULL, 1, 'On Process', '2021-01-20 23:50:40', '2021-01-26 03:18:43'),
(28, 16600, 150000, 4, NULL, 1, 'On Process', '2021-01-20 23:52:12', '2021-01-26 03:18:43'),
(29, 16600, 150000, 4, NULL, 1, 'On Process', '2021-01-20 23:52:34', '2021-01-26 03:18:43'),
(30, 16600, 150000, 4, NULL, 1, 'On Process', '2021-01-20 23:58:59', '2021-01-26 03:18:43'),
(31, 16600, 150000, 4, NULL, 1, 'On Process', '2021-01-20 23:59:57', '2021-01-26 03:18:43'),
(32, 74026, 100000, 4, NULL, 1, 'On Process', '2021-01-21 00:01:39', '2021-01-26 03:18:43'),
(33, 52815, 240000, 4, NULL, 1, 'On Process', '2021-01-21 01:04:25', '2021-01-26 03:18:43'),
(34, 13207, 600000, 4, NULL, 1, 'On Process', '2021-01-21 01:09:01', '2021-01-26 03:18:43'),
(35, 6072, 450000, 4, NULL, 1, 'On Process', '2021-01-21 01:16:11', '2021-01-26 03:18:43'),
(36, 42502, 80000, 4, NULL, 1, 'On Process', '2021-01-21 01:20:13', '2021-01-26 03:18:43'),
(37, 64165, 80000, 4, NULL, 1, 'On Process', '2021-01-21 01:26:45', '2021-01-26 03:18:43'),
(38, 90739, 20000, 4, NULL, 1, 'On Process', '2021-01-21 01:29:44', '2021-01-26 03:18:43'),
(39, 29247, 160000, 4, NULL, 1, 'On Process', '2021-01-21 01:42:13', '2021-01-26 03:18:43'),
(40, 26289, 80000, 4, NULL, 1, 'On Process', '2021-01-21 01:43:21', '2021-01-26 03:18:43'),
(41, 78107, 80000, 4, NULL, 1, 'On Process', '2021-01-21 01:44:12', '2021-01-26 03:18:43'),
(42, 67011, 240000, 4, NULL, 1, 'On Process', '2021-01-21 08:42:12', '2021-01-26 03:18:43'),
(43, 85013, 180000, 4, NULL, 1, 'On Process', '2021-01-21 08:43:14', '2021-01-26 03:18:43'),
(44, 88249, 180000, 4, NULL, 1, 'On Process', '2021-01-21 08:50:39', '2021-01-26 03:18:43'),
(45, 4577, 400000, 4, NULL, 1, 'On Process', '2021-01-21 09:17:24', '2021-01-26 03:18:43'),
(46, 12794, 540000, 4, NULL, 1, 'On Process', '2021-01-21 09:23:03', '2021-01-26 03:18:43'),
(47, 508, 450000, 4, NULL, 1, 'On Process', '2021-01-21 09:37:13', '2021-01-26 03:18:43'),
(48, 43908, 160000, 4, NULL, 1, 'On Process', '2021-01-21 09:37:32', '2021-01-26 03:18:43'),
(49, 60017, 460000, 4, NULL, 1, 'On Process', '2021-01-21 10:42:24', '2021-01-26 03:18:43'),
(50, 57133, 760000, 4, NULL, 1, 'On Process', '2021-01-21 14:53:49', '2021-01-26 03:18:43'),
(51, 89420, 340000, 4, NULL, 1, 'On Process', '2021-01-21 15:57:26', '2021-01-26 03:18:43'),
(52, 43566, 840000, 4, NULL, 1, 'On Process', '2021-01-21 19:39:32', '2021-01-26 03:18:43'),
(53, 27509, 1350000, 4, NULL, 1, 'On Process', '2021-01-21 20:39:56', '2021-01-26 03:18:43'),
(54, 14092, 1350000, 8, NULL, 0, 'On Process', '2021-01-24 05:20:18', '2021-01-24 05:20:18'),
(55, 70454, 120000, 8, NULL, 0, 'On Process', '2021-01-24 07:18:51', '2021-01-24 07:18:51'),
(56, 55129, 240000, 8, NULL, 0, 'On Process', '2021-01-24 22:39:12', '2021-01-24 22:39:12'),
(57, 7707, 21000, 9, NULL, 2, 'On Process', '2021-01-26 03:23:38', '2021-01-26 03:23:38'),
(58, 7707, 21000, 9, NULL, 2, 'On Process', '2021-01-26 03:47:34', '2021-01-26 03:47:34'),
(59, 28018, 480000, 8, NULL, 5, 'On Process', '2021-01-27 10:28:10', '2021-01-27 10:28:10'),
(60, 23821, 80000, 8, NULL, 5, 'On Process', '2021-01-27 12:30:26', '2021-01-27 12:30:26'),
(61, 59486, 1160000, 8, NULL, 5, 'On Process', '2021-01-27 14:00:22', '2021-01-27 14:00:22'),
(62, 15989, 360000, 8, NULL, 5, 'Delivered', '2021-01-27 23:02:07', '2021-01-28 01:34:51'),
(65, 2601, 21000, 9, 7, 2, 'Delivered', '2021-01-28 01:07:27', '2021-01-28 01:29:13'),
(66, 2801, 21000, 9, 7, 2, 'On Process', '2021-01-28 02:17:36', '2021-01-28 02:17:36'),
(67, 36692, 320000, 9, NULL, 8, 'On Process', '2021-01-28 14:07:39', '2021-01-28 14:07:39'),
(68, 22416, 240000, 12, NULL, 9, 'On Process', '2021-01-28 17:10:36', '2021-01-28 17:10:36'),
(69, 45381, 120000, 12, NULL, 9, 'On Process', '2021-01-28 17:25:28', '2021-01-28 17:25:28'),
(70, 70991, 1000000, 8, NULL, 5, 'On Process', '2021-01-29 08:57:00', '2021-01-29 08:57:00'),
(71, 55388, 330000, 14, 13, 11, 'On Process', '2021-02-13 16:31:27', '2021-02-13 16:31:27'),
(72, 3336, 1828000, 14, 13, 16, 'On Process', '2021-02-13 17:48:39', '2021-02-13 17:48:39'),
(73, 2267, 145000, 14, 13, 17, 'On Process', '2021-02-13 18:03:12', '2021-02-13 18:03:12'),
(74, 51797, 65000, 14, 13, 48, 'On Process', '2021-02-18 01:58:03', '2021-02-18 01:58:03'),
(75, 73554, 820000, 14, NULL, 48, 'On Process', '2021-02-18 01:59:15', '2021-02-18 01:59:15'),
(76, 73907, 125000, 14, NULL, 50, 'On Process', '2021-02-19 16:13:02', '2021-02-19 16:13:02'),
(77, 34841, 375000, 14, NULL, 50, 'On Process', '2021-02-20 15:36:02', '2021-02-20 15:36:02'),
(78, 91921, 2420000, 14, NULL, 50, 'On Process', '2021-02-20 15:45:52', '2021-02-20 15:45:52'),
(79, 83730, 1210000, 14, NULL, 50, 'On Process', '2021-02-20 17:04:38', '2021-02-20 17:04:38'),
(80, 81359, 500000, 14, NULL, 50, 'On Process', '2021-02-21 00:41:05', '2021-02-21 00:41:05'),
(81, 92859, 1740000, 14, NULL, 50, 'On Process', '2021-02-22 00:49:39', '2021-02-22 00:49:39'),
(82, 68928, 820000, 14, 13, 53, 'On Process', '2021-02-22 20:29:47', '2021-02-22 20:29:47'),
(83, 88638, 240000, 14, 13, 54, 'On Process', '2021-02-23 00:27:32', '2021-02-23 00:27:32'),
(84, 1717, 130000, 14, 13, 53, 'Delivery', '2021-02-26 13:19:48', '2021-02-26 13:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `sub_total_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `product_qty`, `sub_total_item`) VALUES
(22, 1, 2, 6000),
(22, 2, 3, 15000),
(23, 7, 5, 35000),
(23, 2, 3, 15000),
(23, 10, 3, 30000),
(24, 9, 5, 35000),
(24, 2, 3, 15000),
(25, 44, 1, 550000),
(26, 36, 5, 400000),
(27, 33, 2, 360000),
(28, 30, 1, 150000),
(29, 30, 1, 150000),
(30, 30, 1, 150000),
(31, 30, 1, 150000),
(32, 32, 5, 100000),
(33, 36, 3, 240000),
(34, 36, 3, 240000),
(34, 33, 2, 360000),
(35, 30, 3, 450000),
(36, 36, 1, 80000),
(37, 36, 1, 80000),
(38, 32, 1, 20000),
(39, 36, 2, 160000),
(40, 37, 1, 80000),
(41, 35, 1, 80000),
(42, 31, 2, 240000),
(43, 33, 1, 180000),
(44, 33, 1, 180000),
(45, 42, 4, 400000),
(46, 33, 3, 540000),
(47, 30, 3, 450000),
(48, 35, 2, 160000),
(49, 30, 2, 300000),
(49, 35, 2, 160000),
(50, 43, 2, 400000),
(50, 33, 2, 360000),
(51, 32, 5, 100000),
(51, 35, 3, 240000),
(52, 30, 2, 300000),
(52, 33, 3, 540000),
(53, 44, 3, 1350000),
(54, 33, 5, 900000),
(54, 30, 3, 450000),
(55, 31, 1, 120000),
(56, 36, 3, 240000),
(57, 31, 2, 6000),
(57, 32, 3, 15000),
(58, 31, 2, 6000),
(58, 32, 3, 15000),
(59, 31, 2, 240000),
(59, 37, 3, 240000),
(60, 37, 1, 80000),
(61, 31, 5, 600000),
(61, 37, 3, 240000),
(61, 38, 4, 320000),
(62, 31, 3, 360000),
(63, 1, 2, 6000),
(63, 2, 3, 15000),
(64, 1, 2, 6000),
(64, 2, 3, 15000),
(65, 31, 2, 6000),
(65, 32, 3, 15000),
(66, 31, 2, 6000),
(66, 32, 3, 15000),
(67, 68, 2, 200000),
(67, 31, 1, 120000),
(68, 31, 2, 240000),
(69, 31, 1, 120000),
(70, 70, 1, 1000000),
(71, 75, 1, 75000),
(71, 81, 1, 255000),
(72, 80, 1, 993000),
(72, 74, 1, 835000),
(73, 77, 1, 145000),
(74, 88, 1, 65000),
(75, 89, 2, 820000),
(76, 76, 1, 125000),
(77, 86, 1, 375000),
(78, 87, 2, 2420000),
(79, 87, 1, 1210000),
(80, 86, 1, 375000),
(80, 85, 1, 125000),
(81, 96, 2, 1740000),
(82, 89, 2, 820000),
(83, 97, 2, 240000),
(84, 88, 2, 130000);

-- --------------------------------------------------------

--
-- Table structure for table `otp_reset`
--

CREATE TABLE `otp_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `condition_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_photo` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `condition_id`, `product_price`, `product_qty`, `product_desc`, `product_photo`, `user_id`, `status_product_id`, `created_at`, `updated_at`) VALUES
(76, 'Jacket Boomber', 5, 1, 125000, 27, 'Rasanya Bomber Jacket bukan menjadi trend lagi tetapi sudah menjadi sebuah kultur yang tidak akan mati dimakan zaman, seperti kaos polos yang dapat dipakai di tahun berapapun namun masih terlihat trendy, bukan sesuatu yang HYPE sesaat.', '[\"/image/1613113228180-image.webp \",\"/image/1613113228188-image.webp \",\"/image/1613113228192-image.webp \",\"image/1613113228196-image.webp \"]', 13, 1, '2021-02-12 14:00:28', '2021-02-16 23:29:13'),
(77, 'Adidas Campus Black', 13, 1, 755000, 30, 'Adidas Campus dibuat oleh Adidas dengan bahan berkualitas premium cocok untuk pemakaian sehari-hari kapan pun dimana punn', '[\"/image/1613375804628-image.webp \"]', 13, 3, '2021-02-15 14:56:44', '2021-02-18 20:09:24'),
(80, 'T-shirt Chiangi', 9, 1, 140000, 30, 'Kalau kamu membutuhkan kemeja yang adem, nyerap keringat, tidak panas, stretch/lentur, berarti Ciangi V2 SS ini cocok buat kamu. Selain kerahnya yang kita buat dengan tipe kerah tegak, cuttingan-nya yang slim juga membuat badan kamu lebih ramping & keren loh!\n\nPokoknya kami jamin, ketika kamu sudah merasakan kemeja Ciangi V2 SS dari Livehaf pasti tidak akan beli kemeja merk lain lagi.', '[\"/image/1613377559266-image.webp \",\"/image/1613377559270-image.webp \",\"/image/1613377559272-image.webp \"]', 13, 1, '2021-02-15 15:25:59', '2021-02-16 23:29:13'),
(81, 'Adidas Gazelle', 13, 1, 139000, 60, 'Adidas Gazelle dibuat oleh Adidas dengan bahan berkualitas premium cocok untuk pemakaian sehari-hari kapan pun dimana pun', '[\"/image/1613394890322-image.jpg \",\"/image/1613394890325-image.webp \",\"/image/1613394890348-image.webp \"]', 13, 3, '2021-02-15 20:14:50', '2021-02-16 23:29:13'),
(82, 'Jacket Waze Denim', 5, 2, 175000, 15, 'Tampil seperti rockstar dengan Denim Jacket terbaru dari Livehaf, pembuatannya ini memperlukan waktu yang sangat panjang, karena banyak tehnik lilitan jahit dan juga bahan denim yang berbeda seperti bahan kaos. Belum lagi proses tambahan washing yang menciptakan warna-warna unik seperti ini. Saran kami pakai dengan kancing dilepas biar terlihat COOL!', '[\"/image/1613395221305-image.webp \",\"/image/1613395221309-image.webp \",\"/image/1613395221313-image.webp \"]', 13, 3, '2021-02-15 20:20:21', '2021-02-16 23:29:13'),
(83, 'Pants Levis Blue', 14, 1, 230000, 25, 'Ketika waktu kemarin permintaan warna hitam sangat tinggi dan orang-orang sudah mulai bosan, kami mengeluarkan warna lain yaitu gray.. dibalut dengan bahan yang stretch tentu sangat nyaman sekali buat yang memakainya.', '[\"/image/1613395396293-image.jpg \",\"/image/1613395396299-image.jpg \",\"/image/1613395396302-image.jpg \"]', 13, 3, '2021-02-15 20:23:16', '2021-02-18 20:15:14'),
(85, 'Long Tshirt Chiangi', 9, 1, 125000, 80, 'Kenapa kita masih menjual kaos polos yang sebenarnya anda bisa dapatkan dipasaran? Jangan salah, kaos polos dari Livehaf ini bahan nya bener-bener mahal dan premium, akibatnya kuatlitasnya sangat lembut banget dan soft abis, jika kalian sudah merasakan adem & lembutnya kaos polos dari Livehaf, pasti tidak mau memakai kaos polos brand lain lagi.', '[\"/image/1613395733105-image.webp \",\"/image/1613395733109-image.webp \",\"/image/1613395733113-image.webp \"]', 13, 3, '2021-02-15 20:28:53', '2021-02-16 23:29:13'),
(86, 'Puma Suede Black', 13, 1, 375000, 120, 'Sepatu Puma Suede Black dengan perpaduan list putih cocok untuk kamu hangout kemana saja, dengan sole yang empuk bikin kaki kamu ngga pegel', '[\"/image/1613395902351-image.jpeg \",\"/image/1613395902358-image.jpg \",\"/image/1613395902360-image.webp \"]', 13, 3, '2021-02-15 20:31:42', '2021-02-16 23:29:13'),
(87, 'Puma RX', 13, 1, 1210000, 10, 'Sepatu Puma RX  cocok untuk kamu hangout dan untuk lari kemana saja, dengan sole yang empuk bikin kaki kamu ngga pegel', '[\"/image/1613396061783-image.jpg \",\"/image/1613396061788-image.jpg \",\"/image/1613396061789-image.webp \"]', 13, 3, '2021-02-15 20:34:21', '2021-02-16 23:29:13'),
(88, 'Tshirt Plain Slevee', 9, 1, 65000, 100, 'Ketika kaos yang terlalu polos sudah biasa, menjadi berbedalah ketika ada motif garis abstrak tetapi masih sangat bagus dilihat.', '[\"/image/1613396279344-image.webp \",\"/image/1613396279349-image.webp \",\"/image/1613396279351-image.webp \"]', 13, 3, '2021-02-15 20:37:59', '2021-02-16 23:29:13'),
(89, 'Coach Jacket Army', 13, 1, 410000, 100, 'Jacket Bomber yang fenomenal di Livehaf kini kembali lagi. Fuzy Terry Bomber Jacket akan membuat kamu adem, tapi juga gak bikin kedinginan. Bahannya lembut dan tidak berbulu karena terbuat dari katun Terry. Cocok banget dipakai untuk bergaya atau melindungi diri ketika naik motor.', '[\"/image/1613573009912-image.webp\",\"/image/1613573009919-image.webp\",\"/image/1613573009930-image.webp\"]', 13, 3, '2021-02-15 20:40:16', '2021-02-17 21:43:29'),
(95, 'Short Chiangi LX', 0, 1, 97000, 70, 'Short Chiangi LX nyaman diapakai sekarang', '[\"/image/1613892829101-image.webp\",\"/image/1613892829104-image.webp\",\"/image/1613892829106-image.jpg\"]', 13, 2, '2021-02-21 14:33:49', '2021-02-21 14:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`) VALUES
(1, 31, 1),
(2, 31, 2),
(4, 37, 1),
(5, 38, 1),
(6, 39, 1),
(7, 39, 2),
(8, 44, 1),
(9, 44, 2),
(10, 46, 1),
(11, 46, 2),
(12, 50, 1),
(13, 50, 2),
(14, 68, 1),
(15, 68, 2),
(16, 70, 1),
(17, 70, 2),
(18, 71, 1),
(19, 71, 2),
(20, 72, 1),
(21, 72, 2),
(22, 73, 1),
(23, 73, 2),
(26, 76, 1),
(27, 76, 3),
(37, 80, 4),
(38, 80, 3),
(39, 80, 2),
(40, 81, 1),
(41, 81, 2),
(42, 81, 3),
(43, 82, 1),
(44, 82, 4),
(51, 85, 1),
(52, 85, 4),
(53, 86, 4),
(54, 87, 1),
(55, 87, 2),
(56, 87, 3),
(57, 87, 4),
(58, 88, 1),
(59, 88, 2),
(60, 88, 3),
(82, 89, 3),
(83, 89, 4),
(84, 77, 1),
(85, 77, 3),
(86, 77, 4),
(87, 83, 1),
(88, 83, 2),
(89, 83, 4),
(105, 95, 2),
(106, 95, 3),
(107, 95, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`) VALUES
(1, 31, 3),
(2, 31, 4),
(4, 37, 4),
(5, 39, 1),
(6, 39, 2),
(7, 38, 2),
(8, 44, 1),
(9, 44, 2),
(10, 46, 1),
(11, 46, 2),
(12, 50, 1),
(13, 50, 2),
(14, 68, 2),
(15, 68, 3),
(16, 68, 4),
(17, 68, 5),
(18, 70, 6),
(19, 70, 7),
(20, 71, 1),
(21, 71, 4),
(22, 71, 5),
(23, 72, 5),
(24, 72, 6),
(25, 73, 1),
(26, 73, 2),
(29, 76, 2),
(30, 76, 4),
(40, 80, 2),
(41, 80, 3),
(42, 80, 4),
(43, 81, 10),
(44, 81, 11),
(45, 81, 12),
(46, 82, 3),
(47, 82, 4),
(48, 82, 5),
(55, 85, 2),
(56, 85, 4),
(57, 85, 6),
(58, 86, 11),
(59, 86, 12),
(60, 87, 10),
(61, 87, 12),
(62, 88, 1),
(63, 88, 2),
(64, 88, 3),
(88, 89, 3),
(89, 89, 4),
(90, 77, 10),
(91, 77, 11),
(92, 77, 12),
(93, 83, 3),
(94, 83, 4),
(95, 83, 5),
(114, 95, 2),
(115, 95, 3),
(116, 95, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `rating`) VALUES
(85, 75, 2),
(86, 76, 4),
(87, 77, 5),
(88, 80, 3),
(89, 81, 4),
(90, 82, 5),
(91, 83, 2),
(92, 84, 1),
(93, 85, 3),
(94, 86, 2),
(95, 87, 5),
(96, 88, 3),
(97, 88, 5),
(98, 89, 4),
(99, 90, 5),
(100, 91, 2),
(101, 92, 2),
(102, 93, 4),
(103, 87, 4),
(104, 79, 4),
(105, 85, 4),
(106, 86, 4),
(107, 76, 4),
(108, 96, 5),
(109, 97, 3),
(110, 88, 4),
(111, 89, 4);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `review`) VALUES
(1, 30, 8, 'Barangnya bagus,, sesuai pesanan'),
(2, 30, 4, 'Barangnya keren, sesuai pesanan'),
(3, 34, 9, 'Barangnya keren, sesuai pesanan'),
(4, 32, 9, 'Barangnya keren, sesuai pesanan'),
(5, 31, 9, 'Barangnya keren, sesuai pesanan'),
(6, 35, 9, 'Barangnya keren, sesuai pesanan'),
(7, 72, 9, 'Barangnya keren, sesuai pesanan'),
(8, 71, 9, 'Barangnya keren, sesuai pesanan'),
(9, 87, 14, 'Emang mantap sepatu Puma RX nya, bisa lari dari kenyataan juga y=ternyata'),
(10, 79, 14, 'Mantap jiwa sepatu ini, i like it'),
(11, 85, 14, 'Keren bajunya gan, bikin makin ganteng.. '),
(12, 86, 14, ''),
(13, 76, 14, 'Jackets nya nyaman dipakai.. '),
(14, 96, 14, 'Wow, insole sepatunya empuk. Keren abiis.. '),
(15, 97, 14, 'Lumayan lah rasanya mintnya.. '),
(16, 88, 14, 'Keren'),
(17, 89, 14, 'Good jacket');

-- --------------------------------------------------------

--
-- Table structure for table `seller_detail`
--

CREATE TABLE `seller_detail` (
  `id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `store_desc` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, 'XXXL'),
(8, '28'),
(9, '29'),
(10, '30'),
(11, '31'),
(12, '32');

-- --------------------------------------------------------

--
-- Table structure for table `status_history`
--

CREATE TABLE `status_history` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_history`
--

INSERT INTO `status_history` (`id`, `name`) VALUES
(1, 'On Process'),
(2, 'Delivery'),
(3, 'Finish');

-- --------------------------------------------------------

--
-- Table structure for table `status_product`
--

CREATE TABLE `status_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_product`
--

INSERT INTO `status_product` (`id`, `name`) VALUES
(1, 'sold out'),
(2, 'archived'),
(3, 'ready');

-- --------------------------------------------------------

--
-- Table structure for table `token_whitelist`
--

CREATE TABLE `token_whitelist` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token_whitelist`
--

INSERT INTO `token_whitelist` (`id`, `token`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjksImVtYWlsIjoidGhpbmtwYWRAZ21haWwuY29tIiwiaWF0IjoxNjExNjAxOTQ3fQ.QkIwr7zWNA4ppjDPuSHBBsWNTv5Fq1M1u1jDpPheE_k'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjcsImVtYWlsIjoicGVuanVhbEBnbWFpbC5jb20iLCJpYXQiOjE2MTE2MDM4NjZ9.XyDvxcj41llps3x83HEl9SleRQZER2XaufgmVwVB4FM'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjksImVtYWlsIjoidGhpbmtwYWRAZ21haWwuY29tIiwiaWF0IjoxNjExNjA1OTY4fQ.uV_6rS8N1sFTYfg8_mGpTl01v0D4eX9M6BqZSXkt4LY'),
(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNjA5ODM3fQ.3q6kl9pNfMPgRA_SAdB3wTT_kTsasHPYybfl_5yXUCw'),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxMTYwOTg3Mn0.7QUKcPJEDWxAJs7L3AnB_EdPuhrxQpE0P-PuCp_-gLE'),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzEzNDIzfQ.QfXA7rdT-sLW3KKwNTkKW6pBwmIPu9rv5ujE1k1ectk'),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzE5NzA3fQ.iUw9SHyaFNeQiZ9rVdQ-nPPkOzzHgQsnO4eG6hin_6k'),
(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMTc3MjQ3M30.-7yor0w2ZE7gRlXsbtU_4iTLTLhqHp0V12NHS_psNwQ'),
(21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzg3MTgzfQ.1tkWYzAevCs2IwIj09uuInznpqToLTGPg9G3nc84XQg'),
(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzk5MjA5fQ.EYUJKvs-KMeK2EkJzzq2y6wgCZPNqirBNDYJdkZvkW0'),
(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzk5NTg2fQ.FoIW8qp_Ye9Id4Uj4BETJzocfaUK47mioVwt-jgpnOA'),
(26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjcsImVtYWlsIjoicGVuanVhbEBnbWFpbC5jb20iLCJpYXQiOjE2MTE4MDA1NDh9.V1JnlT3ZR9BYVUeJFUCd8jsSiAyS74XtcyI9lYYQAFE'),
(27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjExLCJlbWFpbCI6ImFya2FkZW15QGdtYWlsLmNvbSIsImlhdCI6MTYxMTgxMzY0NX0.TBXW1hA23afqxO9EXGZHYAbEyuaq5ejwiKSKleZaFrY'),
(32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjcsImVtYWlsIjoicGVuanVhbEBnbWFpbC5jb20iLCJpYXQiOjE2MTE4MTczMjJ9.MCLmeduww2iPHx8OGdGExA1nBzZ0FmLPvebvH-BzA8U'),
(45, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxMTg5OTY2NH0.RaER1uxrr8GAl7ECJUkVMzPIfuw_no47QpylFWrb5s4'),
(46, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjcsImVtYWlsIjoicGVuanVhbEBnbWFpbC5jb20iLCJpYXQiOjE2MTE5MzEwMjZ9.8bJsT09KRvDTv2jb7IUFpA0NFw85-ch9aWNEYoGh2Z8'),
(47, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNjcwMjU4fQ.gD4qM3a24vfOL-bQrWLR4CMTX2mKZs1Z5FN0J83rf7k'),
(48, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNjcwMzA2fQ.gz567FD9otZHQsB-MJnTUPPZXAE3kkZejCoBpa1Ex7I'),
(49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNjcxMzczfQ.12Gtdyc8lWffYKlsHLsffiisIypmTpLg4OTbnY9yFqI'),
(50, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNjc5ODQ4fQ.YuylNTR5dukNEnHwF5JN9zSUDaVtc9MV0Q2R0SGOxTM'),
(51, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNjgwOTM2fQ.GlLKt9_FQv4XjHprhBTyxxj4e8J90ZyeMW-iac1XdO4'),
(52, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNzAyNzI2fQ.zcY82Z3yqXRpVy5Kwq7MeY5kvEjO7mEqNjeOmlQO8pI'),
(53, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNzAzMDU2fQ.UQdh4rEWB3WJoP49lw_I_YuPPr6uQTJ9DMQNAdWtGnk'),
(54, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNzA2Mzc0fQ.MyoUcxYO7P0IP1a2gt4E48f8PXjxb_krPQWFst8IX8M'),
(55, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNzEwMjMwfQ.M1knm_-aE7c_SvM5YmHmjSq-svSCiC3vXQz-RpQ5qVI'),
(56, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNzEwNjIxfQ.laG6Hs73WkZLl9KSy7-8jEJBzonDrdaSQ6YWvsY2MtM'),
(63, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEyNzEzMzM2fQ.iQDCv3QC-y3PkNJaZQ0JmipQAQ8BHBeD7YQ5OU0F4jw'),
(71, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzMTQzMjA2fQ.Xd9xc7vyVNhsZv7L2M8dsiLmsx5YZDkJObUy8E3h6qc'),
(73, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzMjA0ODAxfQ.YBx-Q-I5ZkziW72GhvEgIE2juuK7ce2qltdA-yT9JM0'),
(83, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzMzI0NDU1fQ.c1T4Nt870fJIHqoUabZKyamg_Po08s-7ZDcPAfmXF44'),
(84, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEzMzI0NTM5fQ.G0Kpe9bZIpp43hmXqLS42-bhJRze0vuktGL2UnDwJp0'),
(86, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEzMzc0NDQ1fQ.x-ruNCIxhqlawH25MEy5c0s8SjH4WneMp9WLN9lTMRo'),
(88, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzMzc1NjM2fQ.koM0xP4XNs7FE1_UWrLLRJHy3L1x5aATAnVuj5Cs_2A'),
(99, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEzNDU3OTg1fQ.avKd6iteu1-vqD0DFOzP9ePJiftv6GYnW9CcXH-o--c'),
(104, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEzNTY2NTgzfQ.7AVUUmTMpo1QmBN_RolINmPZoJOL1vFbZsE1Op2rpoo'),
(107, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzNTg3OTI2fQ.UdwapgkWU4C9Kwu9BOvOktmH4UDoOc2b5ri6Y4sVqUw'),
(108, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjEzNjUzNTUwfQ.RKzbhvGagSNLeoHak7VvSYTJ-98KwPDQ0OjsgQGH0hc'),
(109, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzNzI1NTg0fQ.qWHpj10pJDY8VHpIlaQGoMDe0XZp1Cx2PaInXt5IkLU'),
(116, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzODQwNzM4fQ.wgmPkf7lX3XlrnQ5H-UHUMJyMaZq6gKNKRwJhbFEDnU'),
(117, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzODQ1MzE0fQ.pFE9rqmwKjwzF1V8TKFDG57gNwmbMRwzlyl6ia61Zgw'),
(118, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjEzOTI3OTAyfQ.R2XbHI68W_94picCVDnbbkLOTg3KtA4Hp_9Hl0EMVt8'),
(132, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjE0MDIyNDY3fQ.vvDXLyjvCAzf4zsTPC_maz_ITapOsxaGYniwcAgw7B0'),
(133, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjE0MDIyODg5fQ.8C_G_ed4iY9YSpB97HRC_fxBRbd_Qowv-fVcr7N204Y'),
(134, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjE0MTY0Nzc5fQ.uR8uTzk0r6xQXsCovfdzh0n3wc3Wr2OipEvvheoEbJQ'),
(142, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjEzLCJlbWFpbCI6Im1udXJzZXB0aWFuMjVAZ21haWwuY29tIiwiaWF0IjoxNjE0MjkxODEzfQ.CikCA0vlgqv4XGSlFRuqhNSBGuxR-8oH1NiYNpk3P_M'),
(147, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6InZzZXB0MTdAZ21haWwuY29tIiwiaWF0IjoxNjE0MzIxMzI2fQ.sV9Z36WQFLj5thruHCieOwZ92U6-MwEb7DxxaP1Waow');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `password`, `level_id`) VALUES
(13, 'sept_seller', 'Septian', 'mnurseptian25@gmail.com', '$2b$10$TbZUzF9UxsT1AtPIejmeJuMMSLKP.Y9P3eCe41rlTampsKxfDD4tK', 2),
(14, 'Bambank', 'Bambank Khan', 'vsept17@gmail.com', '$2b$05$PY1thVY0LDctRWaV2zoA5O6dMN4gdkrofVDo1dkfMUENwmXTFLqu2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_customer`
--
ALTER TABLE `address_customer`
  ADD PRIMARY KEY (`id_address`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_detail`
--
ALTER TABLE `customer_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_reset`
--
ALTER TABLE `otp_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_detail`
--
ALTER TABLE `seller_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_history`
--
ALTER TABLE `status_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_product`
--
ALTER TABLE `status_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_whitelist`
--
ALTER TABLE `token_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_customer`
--
ALTER TABLE `address_customer`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_detail`
--
ALTER TABLE `customer_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `otp_reset`
--
ALTER TABLE `otp_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `seller_detail`
--
ALTER TABLE `seller_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `status_history`
--
ALTER TABLE `status_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `status_product`
--
ALTER TABLE `status_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `token_whitelist`
--
ALTER TABLE `token_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
