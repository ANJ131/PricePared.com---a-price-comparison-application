-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 05:43 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pricepared`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `c_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `store` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `l_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `c_id`, `name`, `price`, `image`, `quantity`, `store`, `location`, `l_date`) VALUES
(15, 1, 'Organic India White Rice Basmati 1kg', 400, '2.webp', 1, 'Reliance SMART', 'Naroda', '2022-06-29 11:36:56'),
(16, 1, 'Himalayan Natives Premium Basmati Rice 1kg', 350, '4.webp', 1, 'D-mart', 'Motera', '2022-06-29 11:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `PID` int(255) NOT NULL,
  `p_category` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`PID`, `p_category`, `p_name`, `p_img`) VALUES
(2, 'Rice', 'Organic India White Rice Basmati 1kg', '2.webp'),
(3, 'Wheat', 'Ashirvad Aata 1kg', '8.webp'),
(4, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', '4.webp'),
(5, 'Rice', 'India Gate Basmati Super Long Grain Rice 1kg', '5.webp'),
(7, 'Wheat', 'Organic Premium Wheat Atta 1kg', '7.webp'),
(8, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', '8.webp'),
(9, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', '9.webp'),
(10, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', '10.webp'),
(11, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', '11.webp'),
(12, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', '12.webp'),
(13, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', '13.webp'),
(14, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', '14.webp'),
(15, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', '15.webp'),
(16, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', '16.webp'),
(17, 'Ghee', 'Organic Cow Ghee 500 ml', '17.png'),
(18, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', '18.png'),
(19, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', '19.webp'),
(20, 'Ghee', 'Amul Pure Ghee, 500ml', '20.png'),
(21, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', '21.webp'),
(22, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', '22.png'),
(23, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', '23.png'),
(24, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', '24.png'),
(25, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', '25.webp'),
(28, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', '26.png'),
(37, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', '32.webp');

-- --------------------------------------------------------

--
-- Table structure for table `categoryhistory`
--

CREATE TABLE `categoryhistory` (
  `PID` int(255) NOT NULL,
  `p_category` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_img` varchar(255) NOT NULL,
  `last_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoryhistory`
--

INSERT INTO `categoryhistory` (`PID`, `p_category`, `p_name`, `p_img`, `last_date`, `status`) VALUES
(13, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', '13.webp', '2022-06-28 05:36:48', 0),
(15, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', '15.webp', '2022-06-28 05:36:48', 0),
(14, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', '14.webp', '2022-06-28 05:36:48', 0),
(12, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', '12.webp', '2022-06-28 05:36:48', 0),
(11, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', '11.webp', '2022-06-28 05:36:48', 0),
(18, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', '18.png', '2022-06-28 05:36:48', 0),
(20, 'Ghee', 'Amul Pure Ghee, 500ml', '20.png', '2022-06-28 05:36:48', 0),
(16, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', '16.webp', '2022-06-28 05:36:48', 0),
(19, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', '19.webp', '2022-06-28 05:36:48', 0),
(17, 'Ghee', 'Organic Cow Ghee 500 ml', '17.png', '2022-06-28 05:36:48', 0),
(25, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', '25.webp', '2022-06-28 05:36:48', 0),
(23, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', '23.png', '2022-06-28 05:36:48', 0),
(24, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', '24.png', '2022-06-28 05:36:48', 0),
(32, 'Oils', 'Mature Harvest Olive oil', '28.jpg', '2022-06-28 05:36:48', 0),
(33, 'Oils', 'Mature Harvest Olive oil 1L', '28.jpg', '2022-06-28 05:57:31', 1),
(28, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', '26.png', '2022-06-28 05:36:48', 0),
(22, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', '22.png', '2022-06-28 05:36:48', 0),
(31, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', '27.webp', '2022-06-28 05:36:48', 0),
(21, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', '21.webp', '2022-06-28 05:36:48', 0),
(4, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', '4.webp', '2022-06-28 05:36:48', 0),
(5, 'Rice', 'India Gate Basmati Super Long Grain Rice 1kg', '5.webp', '2022-06-28 05:36:48', 0),
(2, 'Rice', 'Organic India White Rice Basmati 1kg', '2.webp', '2022-06-28 05:36:48', 0),
(36, 'Salt', 'Patanjali Namak, 1 kg', '31.webp', '2022-06-28 06:18:00', 0),
(9, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', '9.webp', '2022-06-28 05:36:48', 0),
(8, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', '8.webp', '2022-06-28 05:36:48', 0),
(3, 'Wheat', 'Ashirvad Aata 1kg', '8.webp', '2022-06-28 05:36:48', 0),
(10, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', '10.webp', '2022-06-28 05:36:48', 0),
(6, 'Wheat', 'India Gate Basmati Super Long Grain Rice 1kg', '6.webp', '2022-06-28 05:36:48', 0),
(7, 'Wheat', 'Organic Premium Whole Wheat Atta 1kg', '7.webp', '2022-06-28 05:36:48', 0),
(7, 'Wheat', 'Organic Premium Wheat Atta 1kg', '7.webp', '2022-06-28 06:25:42', 1),
(6, 'Wheat', 'India Gate Basmati Super Long Grain Rice 1kg', '6.webp', '2022-06-28 06:33:21', 2),
(37, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', '32.webp', '2022-06-29 12:09:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `current`
--

CREATE TABLE `current` (
  `mall_id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `last_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current`
--

INSERT INTO `current` (`mall_id`, `category`, `product_name`, `price`, `last_date`) VALUES
(1, 'Rice', 'Organic India White Rice Basmati 1kg', 130, '2022-06-28 16:38:54'),
(1, 'Wheat', 'Ashirvad Aata 1kg', 300, '2022-06-28 16:39:04'),
(1, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 350, '2022-06-28 16:39:57'),
(1, 'Wheat', 'Organic Premium Wheat Atta 1kg', 375, '2022-06-28 16:40:09'),
(1, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(1, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 400, '2022-06-28 16:40:37'),
(1, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 450, '2022-06-28 16:40:46'),
(1, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(1, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(1, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(1, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(1, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(1, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(1, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(1, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(1, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(1, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(1, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(1, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(1, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(1, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(1, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(1, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(2, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-06-26 06:41:19'),
(2, 'Wheat', 'Ashirvad Aata 1kg', 0, '2022-06-26 06:41:19'),
(2, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-06-26 06:41:19'),
(2, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(2, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(2, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(2, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(2, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(2, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(3, 'Rice', 'Organic India White Rice Basmati 1kg', 400, '2022-06-28 16:44:15'),
(3, 'Wheat', 'Ashirvad Aata 1kg', 350, '2022-06-28 16:44:23'),
(3, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 500, '2022-06-28 16:44:32'),
(3, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(3, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 457, '2022-06-28 16:44:42'),
(3, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 500, '2022-06-28 16:44:59'),
(3, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 560, '2022-06-28 16:45:10'),
(3, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(3, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(3, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(4, 'Rice', 'Organic India White Rice Basmati 1kg', 100, '2022-06-30 16:21:36'),
(4, 'Wheat', 'Ashirvad Aata 1kg', 200, '2022-06-30 16:22:00'),
(4, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 300, '2022-06-30 16:22:55'),
(4, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(4, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 450, '2022-06-30 16:23:06'),
(4, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(4, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(4, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(4, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(5, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-06-26 06:41:19'),
(5, 'Wheat', 'Ashirvad Aata 1kg', 0, '2022-06-26 06:41:19'),
(5, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-06-26 06:41:19'),
(5, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(5, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(5, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(5, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(5, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(5, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(6, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-06-26 06:41:19'),
(6, 'Wheat', 'Ashirvad Aata 1kg', 0, '2022-06-26 06:41:19'),
(6, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-06-26 06:41:19'),
(6, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(6, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(6, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(6, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(6, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(6, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(10, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-06-26 06:41:19'),
(10, 'Wheat', 'Ashirvad Aata 1kg', 0, '2022-06-26 06:41:19'),
(10, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-06-26 06:41:19'),
(10, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(10, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(10, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(10, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(10, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(10, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(11, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-06-26 06:41:19'),
(11, 'Wheat', 'Ashirvad Aata 1kg', 0, '2022-06-26 06:41:19'),
(11, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-06-26 06:41:19'),
(11, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(11, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(11, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(11, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(11, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(11, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(11, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(11, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(11, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(11, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(11, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(12, 'Rice', 'Organic India White Rice Basmati 1kg', 120, '2022-06-27 16:42:45'),
(12, 'Wheat', 'Ashirvad Aata 1kg', 200, '2022-06-26 07:00:15'),
(12, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 300, '2022-06-28 05:11:31'),
(12, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(12, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(12, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(12, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(12, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(12, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(12, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(12, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(12, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(12, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(12, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(12, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(12, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(12, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(12, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(12, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(12, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(12, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(12, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(12, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(1, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(3, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(4, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(5, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(6, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(10, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(11, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(12, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `No` int(255) NOT NULL,
  `mall_id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`No`, `mall_id`, `category`, `product_name`, `price`, `date`) VALUES
(4, 12, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 300, '2022-06-28 05:12:12'),
(5, 1, 'Rice', 'Organic India White Rice Basmati 1kg', 130, '2022-06-28 16:38:54'),
(6, 1, 'Wheat', 'Ashirvad Aata 1kg', 300, '2022-06-28 16:39:04'),
(7, 1, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 350, '2022-06-28 16:39:57'),
(8, 1, 'Wheat', 'Organic Premium Wheat Atta 1kg', 375, '2022-06-28 16:40:09'),
(9, 1, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 400, '2022-06-28 16:40:37'),
(10, 1, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 450, '2022-06-28 16:40:46'),
(11, 3, 'Rice', 'Organic India White Rice Basmati 1kg', 400, '2022-06-28 16:44:15'),
(12, 3, 'Wheat', 'Ashirvad Aata 1kg', 350, '2022-06-28 16:44:23'),
(13, 3, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 500, '2022-06-28 16:44:32'),
(14, 3, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 457, '2022-06-28 16:44:42'),
(15, 3, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 500, '2022-06-28 16:44:59'),
(16, 3, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 560, '2022-06-28 16:45:10'),
(17, 4, 'Rice', 'Organic India White Rice Basmati 1kg', 100, '2022-06-30 16:21:36'),
(18, 4, 'Wheat', 'Ashirvad Aata 1kg', 200, '2022-06-30 16:22:00'),
(19, 4, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 300, '2022-06-30 16:22:55'),
(20, 4, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 450, '2022-06-30 16:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `onlycategory`
--

CREATE TABLE `onlycategory` (
  `index` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onlycategory`
--

INSERT INTO `onlycategory` (`index`, `category`) VALUES
(1, 'Rice'),
(2, 'Wheat'),
(3, 'Dal'),
(4, 'Ghee'),
(5, 'Oils'),
(6, 'Salt');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `c_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total` int(255) NOT NULL,
  `store` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `o_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(255) NOT NULL,
  `feedback` int(255) NOT NULL,
  `token` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `c_id`, `name`, `total`, `store`, `location`, `o_date`, `status`, `feedback`, `token`) VALUES
(23, 4, 'Organic India White Rice Basmati 1kg (1) ', 130, 'D-mart', 'Motera', '2022-07-01 04:35:55', 0, 0, 83939),
(24, 4, 'Himalayan Natives Premium Basmati Rice 1kg (1) ', 500, 'Reliance SMART', 'Naroda', '2022-07-01 04:35:55', 0, 0, 90033),
(25, 4, 'Ashirvad Aata 1kg (2) ', 400, 'Reliance SMART', 'Ring Road', '2022-07-01 04:35:55', 0, 0, 46036),
(26, 4, 'Himalayan Natives Premium Basmati Rice 1kg (2) ', 700, 'D-mart', 'Motera', '2022-07-04 14:05:04', 0, 0, 83574),
(27, 4, 'Ashirvad Aata 1kg (1) ', 350, 'Reliance SMART', 'Naroda', '2022-07-04 14:05:04', 0, 0, 89590);

-- --------------------------------------------------------

--
-- Table structure for table `order_pick`
--

CREATE TABLE `order_pick` (
  `c_id` int(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `total` int(255) NOT NULL,
  `store` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `o_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(255) NOT NULL,
  `feedback` int(255) NOT NULL,
  `token` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_pick`
--

INSERT INTO `order_pick` (`c_id`, `c_name`, `total`, `store`, `location`, `o_date`, `status`, `feedback`, `token`) VALUES
(4, '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch (2) ', 800, 'D-mart', 'Motera', '2022-07-07 14:07:22', 1, 0, 17834),
(4, 'Organic India White Rice Basmati 1kg (1) , Himalayan Natives Premium Basmati Rice 1kg (1) ', 480, 'D-mart', 'Motera', '2022-07-07 14:10:30', 1, 0, 20384),
(4, 'Himalayan Natives Premium Basmati Rice 1kg (1) ', 500, 'Reliance SMART', 'Naroda', '2022-07-04 19:10:26', 1, 0, 31181),
(4, 'Organic India White Rice Basmati 1kg (1) ', 130, 'D-mart', 'Motera', '2022-07-07 14:11:17', 1, 0, 39530),
(4, 'Organic India White Rice Basmati 1kg (1) , Himalayan Natives Premium Basmati Rice 1kg (1) ', 480, 'D-mart', 'Motera', '2022-07-07 14:08:37', 1, 0, 43647),
(4, 'Himalayan Natives Premium Basmati Rice 1kg (1) ', 500, 'Reliance SMART', 'Naroda', '2022-07-07 13:35:07', 1, 0, 61384),
(4, 'Organic India White Rice Basmati 1kg (3) ', 390, 'D-mart', 'Motera', '2022-07-02 14:06:54', 0, 0, 85288),
(4, 'Organic India White Rice Basmati 1kg (3) , Ashirvad Aata 1kg (2) , 24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch (1) ', 2400, 'Reliance SMART', 'Naroda', '2022-07-04 18:06:34', 1, 0, 96082);

-- --------------------------------------------------------

--
-- Table structure for table `storetable`
--

CREATE TABLE `storetable` (
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storetable`
--

INSERT INTO `storetable` (`city`, `location`, `store_name`, `id`) VALUES
('Ahmedabad', 'Motera', 'D-mart', 1),
('Ahmedabad', 'Naroda', 'Reliance SMART', 3),
('Ahmedabad', 'Ring Road', 'Reliance SMART', 4),
('Ahmedabad', 'Motera', 'Big-Bazaar', 5),
('Ahmedabad', 'Ring Road', 'Big-Bazaar', 6),
('Mumbai', 'Bandra', 'D-mart', 10),
('Mumbai', 'Mira Road', 'D-mart', 11),
('Mumbai', 'Mira Road', 'Reliance SMART', 12);

-- --------------------------------------------------------

--
-- Table structure for table `umtable`
--

CREATE TABLE `umtable` (
  `umid` int(10) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_age` int(255) NOT NULL,
  `u_contact` int(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `umtable`
--

INSERT INTO `umtable` (`umid`, `u_name`, `u_age`, `u_contact`, `u_email`, `u_password`) VALUES
(1, 'Anjali Prajapati', 30, 4566667, 'xyz111patel@gmail.com', 'madhvi11@122'),
(3, 'Parita', 45, 4556, 'apjt2001@gmail.com', '123'),
(4, 'Hir', 34, 5677, '201901118@daiict.ac.in', '1234'),
(5, 'Parita2', 37, 244555, '201901236@daiict.ac.in', '123'),
(6, 'Richa-Madhvi', 30, 456788, '201901190@daiict.ac.in', 'Richa@123'),
(10, 'Anju2', 45, 456677, 'thekppatel@gmaill.com', '12@kp3'),
(11, 'Dheeraj', 38, 354656, 'madhvi111patel@gmail.com', 'madhvi@123'),
(12, 'Madhvi', 30, 2147483647, '201901171@daiict.ac.in', '123');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `No` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`No`, `name`, `email`, `password`, `contact`, `address`, `code`, `status`) VALUES
(1, 'Madhvi', 'madhvi111patel@gmail.com', '123', '09327099411', 'RAJKOT', 0, 'verified'),
(2, 'Anjali', 'abc@gmail.com', '123', '345677', 'abcdfgrtt', 135312, 'notverified'),
(3, 'Anjali', 'thekppatel30@gmail.com', '1234@anjali', '34555', 'vadodara, gujarat', 0, 'verified'),
(4, 'Madhvi', '201901171@daiict.ac.in', '123', '09825998951', 'RAJKOT', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `onlycategory`
--
ALTER TABLE `onlycategory`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_pick`
--
ALTER TABLE `order_pick`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `storetable`
--
ALTER TABLE `storetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umtable`
--
ALTER TABLE `umtable`
  ADD PRIMARY KEY (`umid`),
  ADD UNIQUE KEY `u_email` (`u_email`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`No`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `PID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `No` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `onlycategory`
--
ALTER TABLE `onlycategory`
  MODIFY `index` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `storetable`
--
ALTER TABLE `storetable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `No` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
