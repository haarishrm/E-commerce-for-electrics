-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2018 at 10:21 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `computer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2017-01-24 21:51:18', '24-05-2018 03:45:35 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(11, 'Graphic Cards', 'Graphic Cards', '2018-05-24 14:34:39', ''),
(12, 'Processors', 'Processors', '2018-05-24 14:35:02', ''),
(13, 'Motherboards', 'Motherboards', '2018-05-24 14:35:06', ''),
(14, 'RAM', 'Motherboards', '2018-05-24 14:35:10', ''),
(15, 'Hard Disk', 'Hard Disk', '2018-05-24 14:35:21', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(10, 5, '63', 1, '2018-05-24 15:42:09', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(7, 10, 'in Process', 'Your Order is Process', '2018-05-24 15:47:17'),
(8, 10, 'Delivered', 'Delivered', '2018-05-24 15:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `productreviews`
--


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productCompany` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productPriceBeforeDiscount` int(11) NOT NULL,
  `productDescription` longtext NOT NULL,
  `productImage1` varchar(255) NOT NULL,
  `productImage2` varchar(255) NOT NULL,
  `productImage3` varchar(255) NOT NULL,
  `shippingCharge` int(11) NOT NULL,
  `productAvailability` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(43, 12, 25, 'AMD RYZEN 5 1600 3.2 GHZ SOCKET AM4 PROCESSOR WITH WRAITH SPIRE 65W COOLER', 'AMD', 14000, 15000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">AMD RYZEN 5 1600 3.2 GHz Socket AM4 Processor with Wraith Spire 65W cooler</span><br>', 'AMD-RYZEN-5-1600-3.4-GHz-Socket-AM4-Processor-with-Wraith-Stealth-65W-cooler.jpg', 'AMD-RYZEN-5-1600-3.4-GHz-Socket-AM4-Processor-with-Wraith-Stealth-65W-cooler.jpg', 'AMD-RYZEN-5-1600-3.4-GHz-Socket-AM4-Processor-with-Wraith-Stealth-65W-cooler.jpg', 0, 'In Stock', '2018-05-24 14:40:18', ''),
(44, 12, 24, 'INTEL G4560 KABY LAKE DUAL CORE 3.5 GHZ DESKTOP PROCESSOR', 'Intel', 4500, 5000, '<span style="box-sizing: border-box; padding: 0px; margin: 0px; font-weight: 700; color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Intel G4560 Kaby Lake Dual Core 3.5 GHz Desktop Processor</span><br>', 'Intel-G4560-Kaby-Lake-Dual-Core-3.5-GHz-Desktop-Processor.jpg', 'Intel-G4560-Kaby-Lake-Dual-Core-3.5-GHz-Desktop-Processor.jpg', 'Intel-G4560-Kaby-Lake-Dual-Core-3.5-GHz-Desktop-Processor.jpg', 0, 'In Stock', '2018-05-24 14:43:26', ''),
(45, 12, 25, 'AMD RYZEN 7 1700 3.0 GHZ (3.7 GHZ TURBO) SOCKET AM4 65W DESKTOP PROCESSOR', 'AMD', 19000, 19500, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">AMD RYZEN 7 1700 3.0 GHz (3.7 GHz Turbo) Socket AM4 65W Desktop Processor</span><br>', 'AMD-RYZEN-7-1700-3.0-GHz-3.7-GHz-Turbo-Socket-AM4-65W-Desktop-Processor.jpg', 'AMD-RYZEN-7-1700-3.0-GHz-3.7-GHz-Turbo-Socket-AM4-65W-Desktop-Processor.jpg', 'AMD-RYZEN-7-1700-3.0-GHz-3.7-GHz-Turbo-Socket-AM4-65W-Desktop-Processor.jpg', 0, 'In Stock', '2018-05-24 14:44:23', ''),
(46, 12, 24, 'INTEL CORE I5-8400 2.80 GHZ COFFEE LAKE-S 8TH GEN PROCESSOR', 'Intel', 13700, 15000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Intel Core I5-8400 2.80 GHz Coffee Lake-S 8TH GEN Processor BX80684I58400</span><br>', 'Core-i5-8400-1.jpg', 'Core-i5-8400-1.jpg', 'Core-i5-8400-1.jpg', 0, 'In Stock', '2018-05-24 14:45:07', ''),
(47, 12, 24, 'INTEL SKYLAKE CORE I3-6100 3.70 GHZ DESKTOP PROCESSOR', 'Intel', 7500, 8000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Intel Skylake Core i3-6100 3.70 GHz Desktop Processor</span><br>', 'Core-i3-6100-1.jpg', 'Core-i3-6100-1.jpg', 'Core-i3-6100-1.jpg', 0, 'In Stock', '2018-05-24 14:45:57', ''),
(48, 12, 24, 'INTEL CORE I7-8700K 3.70 GHZ COFFEE LAKE-S 8TH GEN PROCESSOR', 'Intel', 28000, 30000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Intel Core I7-8700K 3.70 GHz Coffee Lake-S 8TH GEN Processor BX80684I78700K</span><br>', 'Core-i7-8700K-1.jpg', 'Core-i7-8700K-1.jpg', 'Core-i7-8700K-1.jpg', 0, 'In Stock', '2018-05-24 14:46:37', ''),
(49, 11, 26, 'ZOTAC GTX 1060 6GB AMP EDITION GRAPHIC CARD ZT-P10600B-10M', 'Zotac', 14000, 15000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Zotac GTX 1060 AMP Edition Graphic Card ZT-P10600B-10M</span><br>', 'Zotac.jpg', 'Zotac.jpg', 'Zotac.jpg', 0, 'In Stock', '2018-05-24 14:49:57', ''),
(50, 11, 27, 'SAPPHIRE NITRO+ RADEON RX 570 4GD5 GRAPHIC CARD 11266-14-41G', 'Nitro', 13500, 15000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">SAPPHIRE NITRO+ Radeon RX 570 4GD5 Graphic Card 11266-14-41G</span><br>', 'SAPPHIRE.jpg', 'SAPPHIRE1.jpg', 'SAPPHIRE2.jpg', 0, 'In Stock', '2018-05-24 14:51:22', ''),
(51, 11, 26, 'ZOTAC GTX 1060 MINI 6GB GRAPHIC CARD ZT-P10600A-10L', 'Zotac', 26500, 30000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Zotac GTX 1060 Mini 6GB Graphic Card ZT-P10600A-10L</span><br>', 'Zotac.jpg', 'Zotac.jpg', 'Zotac.jpg', 0, 'In Stock', '2018-05-24 14:53:00', ''),
(52, 11, 26, 'ZOTAC GTX 1050 TI OC EDITION 4GB GRAPHIC CARD ZT-P10510B-10L', 'Zotac', 15000, 17000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">ZOTAC GTX 1050 Ti OC Edition Graphic Card ZT-P10510B-10L</span><br>', 'Zotac.jpg', 'Zotac.jpg', '', 0, 'In Stock', '2018-05-24 14:53:45', ''),
(53, 11, 26, 'ZOTAC GTX 1050 TI MINI 4GB GRAPHIC CARD ZT-P10510A-10L', 'Zotac', 15500, 17000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">ZOTAC GTX 1050 Ti Mini 4GB Graphic Card ZT-P10510A-10L</span><br>', 'Zotac.jpg', 'Zotac.jpg', '', 0, 'In Stock', '2018-05-24 14:54:27', ''),
(54, 13, 28, 'ASROCK H81 PRO BTC R2.0 MOTHERBOARD', 'Asrock', 7500, 8500, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Asrock H81 Pro BTC R2.0 Motherboard</span><br>', 'Asrock.jpg', 'Asrock.jpg', '', 0, 'In Stock', '2018-05-24 14:57:26', ''),
(55, 13, 28, 'ASROCK H110 PRO BTC+ 13 PCIE MOTHERBOARD', 'Asrock', 12250, 13000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Asrock H110 Pro BTC+ 13 PCIe Motherboard</span><br>', 'Asrock.jpg', 'Asrock.jpg', '', 0, 'In Stock', '2018-05-24 14:58:18', ''),
(56, 13, 29, 'ASUS PRIME B350-PLUS SOCKET AM4 MOTHERBOARD', 'Asus', 9500, 10000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">ASUS PRIME B350-PLUS Socket AM4 Motherboard</span><br>', 'asus.jpg', 'asus.jpg', '', 0, 'In Stock', '2018-05-24 14:59:23', ''),
(57, 13, 29, 'ASUS ROG STRIX B350-F GAMING AM4 AMD MOTHERBOARD', 'Asus', 11000, 12000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">ASUS ROG STRIX B350-F GAMING AM4 AMD Motherboard</span><br>', 'asus.jpg', 'asus.jpg', '', 0, 'Out of Stock', '2018-05-24 15:00:02', ''),
(58, 13, 29, 'ASUS PRIME B350M-K SOCKET AM4 MOTHERBOARD', 'Asus', 6500, 7500, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">ASUS PRIME B350M-K Socket AM4 Motherboard</span><br>', 'asus.jpg', 'asus.jpg', '', 0, 'In Stock', '2018-05-24 15:00:39', ''),
(59, 14, 30, 'CORSAIR VENGEANCE LPX 8GB DDR4 2400 MHZ MEMORY CMK8GX4M1A2400C16R', 'Corsair', 6500, 7500, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Corsair Vengeance LPX 8GB DDR4 2400 mhz Memory CMK8GX4M1A2400C16R</span><br>', 'CMK8GX4M1A2400C14R1.jpg', 'CMK8GX4M1A2400C14R1.jpg', '', 0, 'In Stock', '2018-05-24 15:04:35', ''),
(60, 14, 31, 'G.SKILL TRIDENT Z RGB 3200MHZ 16 GB DDR4 LED RAM F4-3200C16D-16GTZR', 'G.Skill', 15500, 17000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">G.Skill Trident Z RGB 3200MHz 16 GB DDR4 LED RAM F4-3200C16D-16GTZR</span><br>', 'G.Skill-Trident-Z-RGB-3000MHz-16GB-DDR4-LED-RAM-F4-3000C15D-16GTZR.jpg', 'G.Skill-Trident-Z-RGB-3000MHz-16GB-DDR4-LED-RAM-F4-3000C15D-16GTZR.jpg', '', 0, 'In Stock', '2018-05-24 15:05:43', ''),
(61, 14, 30, 'CORSAIR VENGEANCE LPX 16 GB DDR4 3000MHZ MEMORY CMK16GX4M1B3000C15', 'Corsair', 13000, 15500, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Corsair Vengeance LPX 16GB DDR4 3000Mhz Memory CMK16GX4M1B3000C15</span><br>', 'Corsair-Vengeance-LPX-16GB-DDR4-3000Mhz-Memory-CMK16GX4M1B3000C15-1.jpg', 'Corsair-Vengeance-LPX-16GB-DDR4-3000Mhz-Memory-CMK16GX4M1B3000C15-1.jpg', '', 0, 'Out of Stock', '2018-05-24 15:06:52', ''),
(62, 15, 32, 'WESTERN DIGITAL CAVIAR BLUE 1TB INTERNAL HARD DRIVE WD10EZEX', 'WD', 2900, 3500, '<span style="box-sizing: border-box; padding: 0px; margin: 0px; font-weight: 700; color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Western Digital Caviar Blue 1TB Internal Hard Drive WD10EZEX</span><br>', 'Western-Digital-Caviar-Blue-1TB-Internal-Hard-Drive-WD10EZEX.jpg', 'Western-Digital-Caviar-Blue-1TB-Internal-Hard-Drive-WD10EZEX.jpg', '', 0, 'In Stock', '2018-05-24 15:08:53', ''),
(63, 15, 33, 'SEAGATE BARRACUDA ST1000DM003 1TB DESKTOP INTERNAL HARD DRIVE', 'Seagate', 3500, 4000, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Seagate Barracuda ST1000DM003 1TB Desktop Internal Hard Drive</span><br>', 'ST1000DM0031.jpg', 'ST1000DM0031.jpg', '', 0, 'In Stock', '2018-05-24 15:09:42', ''),
(64, 15, 33, 'SEAGATE BARRACUDA ST2000DM006 2TB HDD', 'Seagate', 4700, 5500, '<span style="color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;; text-align: center;">Seagate BarraCuda ST2000DM006 2TB HDD</span><br>', '41H888-QJdL.jpg', '41H888-QJdL.jpg', '', 0, 'In Stock', '2018-05-24 15:11:07', ''),
(65, 15, 32, 'WESTERN DIGITAL CAVIAR BLUE 2TB WD20EZRZ INTERNAL HARD DRIVE', 'WD', 4400, 4600, '<span style="color: rgb(118, 118, 118); font-family: &quot;Open Sans&quot;, sans-serif;">Western Digital Caviar Blue 2TB WD20EZRZ Internal Hard Drive</span><br>', 'Western-Digital-Caviar-Blue-2TB-WD20EZRZ-Internal-Hard-Drive1.jpg', 'Western-Digital-Caviar-Blue-2TB-WD20EZRZ-Internal-Hard-Drive1.jpg', '', 0, 'In Stock', '2018-05-24 15:12:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 21:54:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 21:59:09', ''),
(4, 4, 'Mobiles', '2017-01-30 22:25:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 09:42:40', ''),
(6, 4, 'Laptops', '2017-02-04 09:43:00', ''),
(7, 4, 'Computers', '2017-02-04 09:43:27', ''),
(8, 3, 'Comics', '2017-02-04 09:43:54', ''),
(9, 5, 'Beds', '2017-02-04 10:06:45', ''),
(10, 5, 'Sofas', '2017-02-04 10:07:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 10:07:51', ''),
(12, 6, 'Men Footwears', '2017-03-11 01:42:59', ''),
(13, 8, 'Art', '2018-02-19 06:14:02', ''),
(14, 8, 'Watercolor Painting', '2018-02-19 06:14:18', '19-02-2018 06:14:32 AM'),
(15, 8, 'Drawing', '2018-02-19 06:14:45', ''),
(16, 8, 'Oil Painting', '2018-02-19 06:14:51', ''),
(17, 9, 'Stone Sculpture', '2018-02-19 06:15:03', ''),
(18, 9, 'Jade Sculpture', '2018-02-19 06:15:09', ''),
(19, 9, 'Wood Sculpture', '2018-02-19 06:15:16', ''),
(20, 9, 'Bronze Sculpture', '2018-02-19 06:15:22', ''),
(21, 10, 'Woodcut', '2018-02-19 06:15:30', ''),
(22, 10, 'Linoleum cut', '2018-02-19 06:15:36', ''),
(23, 10, 'Metal cut', '2018-02-19 06:15:41', ''),
(24, 12, 'Intel', '2018-05-24 14:38:31', ''),
(25, 12, 'AMD', '2018-05-24 14:38:37', ''),
(26, 11, 'ZOTAC', '2018-05-24 14:48:46', ''),
(27, 11, 'NITRO', '2018-05-24 14:49:01', ''),
(28, 13, 'ASROCK', '2018-05-24 14:56:17', ''),
(29, 13, 'ASUS', '2018-05-24 14:56:28', ''),
(30, 14, 'CORSAIR', '2018-05-24 15:03:36', ''),
(31, 14, 'G.SKILL', '2018-05-24 15:04:52', ''),
(32, 15, 'WESTERN DIGITAL', '2018-05-24 15:07:58', ''),
(33, 15, 'SEAGATE', '2018-05-24 15:08:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 'kaja@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-05-24 15:41:29', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `shippingAddress` longtext NOT NULL,
  `shippingState` varchar(255) NOT NULL,
  `shippingCity` varchar(255) NOT NULL,
  `shippingPincode` int(11) NOT NULL,
  `billingAddress` longtext NOT NULL,
  `billingState` varchar(255) NOT NULL,
  `billingCity` varchar(255) NOT NULL,
  `billingPincode` int(11) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'Kaja', 'kaja@gmail.com', 9876541235, '202cb962ac59075b964b07152d234b70', '3/42, Millroad, Erode', 'Tamilnadu', 'Erode', 642236, '3/42, Millroad, Erode', 'Tamilnadu', 'Erode', 642236, '2018-05-24 15:40:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wishlist`
--

