-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2021 at 07:17 AM
-- Server version: 10.3.31-MariaDB-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greengra_houzz`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_table`
--

CREATE TABLE `address_table` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(55) DEFAULT NULL,
  `fname` varchar(35) DEFAULT NULL,
  `lname` varchar(35) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `zip` varchar(55) DEFAULT NULL,
  `country` varchar(155) DEFAULT NULL,
  `state` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address_table`
--

INSERT INTO `address_table` (`pk_id`, `user_id`, `fname`, `lname`, `address`, `city`, `phone`, `zip`, `country`, `state`) VALUES
(1, 3, 'fahad', 'maqsood', 'Lahore', 'Bhopalwala', '34642007334', '54810', 'Pakistan', 'Punjab'),
(2, 6, 'danish', 'siddiqui', 'dha phase 1', 'Burewala', '02154879654', '54000', 'Pakistan', 'Punjab'),
(3, 3, 'fahad', 'maqsood', 'house 17 street 19a sarfraz colony gujjar pura lahore', 'Lahore', '346420073', '2018/07/11', 'Pakistan', 'Punjab');

-- --------------------------------------------------------

--
-- Table structure for table `admin_chats`
--

CREATE TABLE `admin_chats` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(555) DEFAULT NULL,
  `name` varchar(555) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `pk_id` int(11) NOT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `fname` varchar(55) DEFAULT NULL,
  `lname` varchar(55) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `admin_management` int(11) DEFAULT NULL,
  `product_management` int(11) DEFAULT NULL,
  `category_management` int(11) DEFAULT NULL,
  `brand_management` int(11) DEFAULT NULL,
  `order_management` int(11) DEFAULT NULL,
  `reporting` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `promocode` int(11) DEFAULT NULL,
  `vendor_management` int(11) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`pk_id`, `username`, `password`, `fname`, `lname`, `phone`, `address`, `thumbnail`, `admin_management`, `product_management`, `category_management`, `brand_management`, `order_management`, `reporting`, `discount`, `promocode`, `vendor_management`, `bank_name`, `account_no`, `account_type`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Houzz', NULL, '03001234567', 'DHA', '5d442d90b0c8aE03470-1.jpg.jpg', 1, 1, 0, 0, 0, 0, 0, 0, 0, 'HBL', '19367900195932', 'Current Account');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reset_password`
--

CREATE TABLE `admin_reset_password` (
  `pk_id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `pk_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `pk_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(5000) NOT NULL,
  `post` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `SKU` int(11) NOT NULL,
  `brand_name` varchar(30) DEFAULT NULL,
  `thumbnail` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`SKU`, `brand_name`, `thumbnail`, `created_at`) VALUES
(1, 'LumiSource', '', '2020-10-02 10:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(155) NOT NULL,
  `phone` varchar(355) NOT NULL,
  `zip` int(155) NOT NULL,
  `age` int(155) NOT NULL,
  `gender` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`pk_id`, `user_id`, `phone`, `zip`, `age`, `gender`) VALUES
(1, 3, '03001234567', 54000, 26, 'Male'),
(2, 6, '03228495424', 54000, 21, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(555) DEFAULT NULL,
  `name` varchar(555) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_to`, `user_from`, `message`, `file`, `name`, `created_at`) VALUES
(1, 4, 3, 'hi', 'https://general.greengrapez.com/houzz/public/storage/images/\'', '\'', '2021-08-13 09:44:21'),
(2, 3, 4, 'helo', 'https://general.greengrapez.com/houzz/public/storage/images/\'', '\'', '2021-08-13 09:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `client_details`
--

CREATE TABLE `client_details` (
  `pk_id` int(11) NOT NULL,
  `fname` varchar(55) DEFAULT NULL,
  `lname` varchar(55) DEFAULT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(120) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `customer_type` varchar(155) NOT NULL,
  `promostatus` int(55) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_details`
--

INSERT INTO `client_details` (`pk_id`, `fname`, `lname`, `username`, `password`, `country`, `customer_type`, `promostatus`) VALUES
(1, 'fahad 1', 'maqsood', 'fahad.appiteck@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Pakistan', 'seller', 0),
(2, 'danish', 'siddiqui', 'danishsiddiqui336@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Pakistan', 'seller', 0),
(3, 'ali', 'haider', 'alihaider12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'buyer', 0),
(4, 'ibrahim', 'anwar', 'ibrahim1@greengrapez.com', 'e10adc3949ba59abbe56e057f20f883e', 'Pakistan', 'seller', 0),
(6, 'danish', 'siddiqui', 'danisiddiqui36@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'buyer', 0),
(7, 'fahad', 'maqsood', 'ch.fahad241@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'Pakistan', 'seller', 0);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `collection_name` varchar(255) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `thumbnail` varchar(355) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collection_set`
--

CREATE TABLE `collection_set` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `collection_id` int(255) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `products` varchar(355) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custom_package`
--

CREATE TABLE `custom_package` (
  `pk_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `package_price` int(155) DEFAULT NULL,
  `online_inventory` int(11) DEFAULT NULL,
  `offline_inventory` int(11) DEFAULT NULL,
  `promotion` int(11) DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `payment_report` int(11) DEFAULT NULL,
  `client` int(11) DEFAULT NULL,
  `message_box` int(11) DEFAULT NULL,
  `chat_box` int(11) DEFAULT NULL,
  `featured_seller` int(11) DEFAULT NULL,
  `featured_product` int(11) DEFAULT NULL,
  `hot_product` int(11) DEFAULT NULL,
  `no_of_product` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_package`
--

INSERT INTO `custom_package` (`pk_id`, `package_name`, `package_price`, `online_inventory`, `offline_inventory`, `promotion`, `invoice`, `payment_report`, `client`, `message_box`, `chat_box`, `featured_seller`, `featured_product`, `hot_product`, `no_of_product`, `status`, `created_at`) VALUES
(1, 'testing', 200, 1, 1, 1, 1, 0, 0, 0, 0, 0, 5, 5, 10, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_table`
--

CREATE TABLE `detail_table` (
  `pk_id` int(11) NOT NULL,
  `product_id` int(55) NOT NULL,
  `order_id` int(11) NOT NULL,
  `sku` varchar(55) NOT NULL,
  `product_name` varchar(155) NOT NULL,
  `quantity` int(55) NOT NULL,
  `price` int(55) NOT NULL,
  `discount_price` int(55) DEFAULT NULL,
  `percentage` int(55) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `vendor_id` varchar(155) DEFAULT 'admin',
  `v_order_status` int(11) DEFAULT NULL,
  `v_payment_status` int(11) DEFAULT NULL COMMENT '0 for unpaid, 1 for paid',
  `seller_subscription` varchar(255) DEFAULT NULL,
  `delivery_charges` int(11) DEFAULT NULL,
  `delivery_time` varchar(155) DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `time` varchar(255) DEFAULT NULL,
  `timeafter` varchar(255) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_table`
--

INSERT INTO `detail_table` (`pk_id`, `product_id`, `order_id`, `sku`, `product_name`, `quantity`, `price`, `discount_price`, `percentage`, `size`, `vendor_id`, `v_order_status`, `v_payment_status`, `seller_subscription`, `delivery_charges`, `delivery_time`, `created_at`, `time`, `timeafter`, `return_date`, `return_status`) VALUES
(1, 5, 1, '5', 'Hot Dog Bun', 1, 2200, NULL, NULL, 'small', NULL, 0, 0, 'NONE', 0, '40', '2021-09-30', '16:44:28', '19:44:28', NULL, NULL),
(2, 3, 2, '3', 'Blood Diamond OG', 1, 2200, NULL, NULL, '15*15', NULL, 2, 0, 'NONE', 0, '40', '2021-09-30', '17:06:00', '20:06:00', '2021-10-07', NULL),
(3, 7, 3, '123', 'Tiles', 1, 555, NULL, NULL, '1', '4', 0, 0, 'COMMISSION', 0, '10', '2021-09-30', '17:39:35', '20:39:35', NULL, NULL),
(4, 1, 4, '1', 'Leather Bags', 1, 2500, NULL, NULL, 'hand bag', NULL, 0, 0, 'NONE', 0, '60', '2021-09-30', '21:28:35', '00:28:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discount_table`
--

CREATE TABLE `discount_table` (
  `pk_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `percentage` int(55) NOT NULL,
  `main_category` varchar(100) DEFAULT NULL,
  `sub_category` varchar(100) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount_table`
--

INSERT INTO `discount_table` (`pk_id`, `sku`, `start_date`, `end_date`, `percentage`, `main_category`, `sub_category`, `vendor_id`) VALUES
(12, 'ta12', '2021-05-22', '2021-05-31', 10, 'testing', 'testing', NULL),
(13, '253246275', '2021-05-26', '2021-05-31', 10, 'Bedroom', 'Nightstands and Bedside Tables', NULL),
(14, '1234565', '2021-05-26', '2021-05-30', 10, 'Bedroom', 'Nightstands and Bedside Tables', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forum_category`
--

CREATE TABLE `forum_category` (
  `pk_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_post`
--

CREATE TABLE `forum_post` (
  `pk_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

CREATE TABLE `forum_topic` (
  `pk_id` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houzz_earning`
--

CREATE TABLE `houzz_earning` (
  `pk_id` int(11) NOT NULL,
  `houzz_earning` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houzz_earning`
--

INSERT INTO `houzz_earning` (`pk_id`, `houzz_earning`) VALUES
(1, 360);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `pk_id` int(11) NOT NULL,
  `order_id` int(155) NOT NULL,
  `bill_from` varchar(255) NOT NULL,
  `bill_to` varchar(255) NOT NULL,
  `shipment_address` varchar(355) NOT NULL,
  `amount` int(155) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `pk_id` int(11) NOT NULL,
  `order_id` int(155) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(355) NOT NULL,
  `quantity` int(155) NOT NULL,
  `price` int(155) NOT NULL,
  `size` varchar(155) NOT NULL,
  `discount` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `SKU` int(11) NOT NULL,
  `main_category` varchar(35) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `commission` int(11) NOT NULL DEFAULT 0,
  `username` varchar(55) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`SKU`, `main_category`, `thumbnail`, `commission`, `username`, `created_at`) VALUES
(1, 'Living', NULL, 0, 'admin', '2020-10-02 10:23:06'),
(2, 'Bedroom', '60a39892ae24f6013d376a2ef1banner5.jpg.jpg.jpg', 0, 'admin', '2020-10-02 10:23:12'),
(3, 'Home Decor', '60a39892ae24f6013d376a2ef1banner5.jpg.jpg.jpg', 5, 'admin', '2020-10-02 10:23:17'),
(4, 'Lighting', NULL, 0, 'admin', '2020-10-02 10:23:26'),
(5, 'Kitchen and Dining', NULL, 0, 'admin', '2020-10-02 10:24:12'),
(6, 'Bath', NULL, 0, 'admin', '2020-10-02 10:24:22'),
(7, 'Outdoor', NULL, 0, 'admin', '2020-10-02 10:24:45'),
(8, 'Furniture', NULL, 5, 'admin', '2020-10-02 10:25:17'),
(16, 'testing', '60a8c870b11779.jpg.jpg', 0, 'admin', '2021-05-22 09:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `pk_id` int(11) NOT NULL,
  `material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`pk_id`, `material`) VALUES
(1, 'Metal PU Foam');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `pk_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `reply` varchar(1000) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`pk_id`, `customer_name`, `seller_name`, `message`, `reply`, `date`) VALUES
(1, '3', '2', 'hi testing', NULL, NULL),
(2, '3', '1', 'testing from seller list', NULL, NULL),
(3, '3', '1', 'testing from compose message', NULL, NULL),
(4, '3', '1', 'test again from seller list', NULL, NULL),
(5, '3', '2', 'test from danish list seller', NULL, NULL),
(6, '3', '1', 'test from detail seller', NULL, NULL),
(7, '3', '1', 'testing again', NULL, NULL),
(8, '3', '1', 'ghlksahglkdaj', NULL, NULL),
(9, '3', '1', 'vfd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `pk_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`pk_id`, `vendor_id`, `product_id`, `type`, `status`, `created_at`) VALUES
(1, 1, NULL, 'new vendor created', 'unread', '2021-01-29 14:20:54'),
(2, 1, NULL, 'COMMISSION', 'unread', '2021-01-29 14:37:20'),
(3, 1, NULL, 'new product created', 'unread', '2021-03-04 14:21:55'),
(4, 1, NULL, 'new product created', 'unread', '2021-03-04 14:23:47'),
(5, 1, NULL, 'new product created', 'unread', '2021-03-04 14:24:52'),
(6, 1, NULL, 'new product created', 'unread', '2021-03-04 14:26:09'),
(7, 2, NULL, 'new vendor created', 'unread', '2021-03-09 15:45:10'),
(8, 2, NULL, 'SUBSCRIPTION', 'unread', '2021-03-09 15:48:47'),
(9, 4, NULL, 'new vendor created', 'unread', '2021-06-18 03:46:35'),
(10, 4, NULL, 'COMMISSION', 'unread', '2021-06-18 04:55:57'),
(11, 4, NULL, 'new product created', 'unread', '2021-06-18 05:04:49'),
(12, 7, NULL, 'new vendor created', 'unread', '2021-08-24 03:49:27'),
(13, 7, NULL, 'COMMISSION', 'unread', '2021-08-24 03:56:46'),
(14, 7, NULL, 'new product created', 'unread', '2021-08-24 05:29:59'),
(15, 7, NULL, 'new product created', 'unread', '2021-08-24 06:39:09'),
(16, 7, NULL, 'new product created', 'unread', '2021-08-24 06:45:19'),
(17, 7, NULL, 'new product created', 'unread', '2021-09-15 05:41:53'),
(18, 4, NULL, 'new product created', 'unread', '2021-09-30 08:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `offline_client`
--

CREATE TABLE `offline_client` (
  `pk_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(355) DEFAULT NULL,
  `phone` varchar(155) DEFAULT NULL,
  `country` varchar(155) DEFAULT NULL,
  `state` varchar(155) DEFAULT NULL,
  `city` varchar(155) DEFAULT NULL,
  `zip` varchar(55) DEFAULT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `pk_id` int(11) NOT NULL,
  `tracking_id` varchar(255) NOT NULL,
  `user_id` int(55) DEFAULT NULL,
  `promo_amount` int(55) DEFAULT NULL,
  `amount` int(55) NOT NULL,
  `shipment_address_id` varchar(255) DEFAULT NULL,
  `placed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expire_at` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `username` varchar(55) DEFAULT NULL,
  `fname` varchar(35) DEFAULT NULL,
  `lname` varchar(35) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `phone` varchar(155) DEFAULT NULL,
  `zipcode` varchar(55) DEFAULT NULL,
  `country` varchar(155) DEFAULT NULL,
  `state` varchar(155) DEFAULT NULL,
  `v_payment_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`pk_id`, `tracking_id`, `user_id`, `promo_amount`, `amount`, `shipment_address_id`, `placed_at`, `expire_at`, `status`, `username`, `fname`, `lname`, `address`, `city`, `phone`, `zipcode`, `country`, `state`, `v_payment_status`) VALUES
(1, '736477643', 3, NULL, 2200, '1', '2021-09-30 11:44:28', NULL, 0, 'alihaider12@gmail.com', 'fahad', 'maqsood', 'Lahore', 'Bhopalwala', '34642007334', '54810', 'Pakistan', 'Punjab', 0),
(2, '1909025386', 3, NULL, 2200, '3', '2021-09-30 12:06:00', '2021-10-07', 2, 'alihaider12@gmail.com', 'fahad', 'maqsood', 'house 17 street 19a sarfraz colony gujjar pura lahore', 'Lahore', '346420073', '2018/07/11', 'Pakistan', 'Punjab', 0),
(3, '114352043', 3, NULL, 555, '3', '2021-09-30 12:39:35', NULL, 0, 'alihaider12@gmail.com', 'fahad', 'maqsood', 'house 17 street 19a sarfraz colony gujjar pura lahore', 'Lahore', '346420073', '2018/07/11', 'Pakistan', 'Punjab', 0),
(4, '780760315', 3, NULL, 2500, '1', '2021-09-30 16:28:35', NULL, 0, 'alihaider12@gmail.com', 'fahad', 'maqsood', 'Lahore', 'Bhopalwala', '34642007334', '54810', 'Pakistan', 'Punjab', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `thumbnail` varchar(355) DEFAULT NULL,
  `payee` varchar(255) DEFAULT NULL,
  `payer` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` int(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_invoice`
--

CREATE TABLE `payment_invoice` (
  `pk_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `thumbnail` varchar(355) DEFAULT NULL,
  `package_name` varchar(155) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `subscription` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photo_category`
--

CREATE TABLE `photo_category` (
  `SKU` int(11) NOT NULL,
  `photo_category` varchar(255) NOT NULL,
  `username` varchar(155) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photo_idea`
--

CREATE TABLE `photo_idea` (
  `pk_id` int(11) NOT NULL,
  `photo_category` varchar(255) NOT NULL,
  `photo_sub_category` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumbnail` varchar(355) NOT NULL,
  `thumbnail2` varchar(355) NOT NULL,
  `thumbnail3` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photo_sub_category`
--

CREATE TABLE `photo_sub_category` (
  `SKU` int(11) NOT NULL,
  `photo_category` varchar(255) NOT NULL,
  `photo_sub_category` varchar(255) NOT NULL,
  `username` varchar(155) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pricing_detail`
--

CREATE TABLE `pricing_detail` (
  `pk_id` int(11) NOT NULL,
  `product_sku` varchar(255) NOT NULL,
  `quantity` varchar(155) NOT NULL,
  `price` varchar(155) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pk_id` int(11) NOT NULL,
  `sku` varchar(155) DEFAULT NULL,
  `name` varchar(155) DEFAULT NULL,
  `price` varchar(35) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `color` varchar(35) DEFAULT NULL,
  `category` varchar(35) DEFAULT NULL,
  `sub_category` varchar(35) DEFAULT NULL,
  `brand_name` varchar(35) DEFAULT NULL,
  `tags` varchar(355) DEFAULT NULL,
  `material` varchar(1000) NOT NULL,
  `style` varchar(1000) NOT NULL,
  `product_type` varchar(35) DEFAULT NULL,
  `thumbnail` varchar(150) DEFAULT NULL,
  `thumbnail2` varchar(150) DEFAULT NULL,
  `thumbnail3` varchar(150) DEFAULT NULL,
  `thumbnail4` varchar(500) DEFAULT NULL,
  `thumbnail5` varchar(500) DEFAULT NULL,
  `thumbnail6` varchar(500) DEFAULT NULL,
  `thumbnail7` varchar(500) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1 for active, 0 for inactive',
  `size` varchar(255) DEFAULT NULL,
  `unit` varchar(55) DEFAULT NULL,
  `quantity_on_hand` int(11) DEFAULT 0,
  `v_product_status` varchar(55) DEFAULT NULL COMMENT '1 for pending, 2 for approved, 3 for cancel',
  `vendor_id` varchar(155) DEFAULT NULL,
  `account_t` varchar(255) DEFAULT NULL,
  `vendor_cat` varchar(255) DEFAULT NULL,
  `urgent_charges` int(11) DEFAULT NULL,
  `urgent_time` varchar(155) DEFAULT NULL,
  `express_charges` int(11) DEFAULT NULL,
  `express_time` varchar(155) DEFAULT NULL,
  `normal_charges` int(11) DEFAULT NULL,
  `normal_time` varchar(155) DEFAULT NULL,
  `free_delivery` varchar(155) DEFAULT NULL,
  `return_policy` varchar(5000) DEFAULT NULL,
  `discount_status` int(11) NOT NULL DEFAULT 0,
  `hot_product` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pk_id`, `sku`, `name`, `price`, `commission`, `color`, `category`, `sub_category`, `brand_name`, `tags`, `material`, `style`, `product_type`, `thumbnail`, `thumbnail2`, `thumbnail3`, `thumbnail4`, `thumbnail5`, `thumbnail6`, `thumbnail7`, `description`, `status`, `size`, `unit`, `quantity_on_hand`, `v_product_status`, `vendor_id`, `account_t`, `vendor_cat`, `urgent_charges`, `urgent_time`, `express_charges`, `express_time`, `normal_charges`, `normal_time`, `free_delivery`, `return_policy`, `discount_status`, `hot_product`, `created_at`) VALUES
(1, '1', 'Leather Bags', '2500', 5, '#07c9be', 'Home Decor', 'Decorative Accents', 'LumiSource', 'bags', 'Metal PU Foam', 'Midcentury', 'Stool', '61559b63401faproduct1.jpg.jpg', '61559b6347babproduct2.jpg.jpg', '61559b6347cd8product3.jpg.jpg', '61559b6347e18product4.jpg.jpg', '61559b6347f44product5.jpg.jpg', '61559b6348071product6.jpg.jpg', '61559b6348195product7.jpg.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, 'Feet', 0, '0', NULL, NULL, NULL, 10, '1000', 15, '750', 30, '500', '60', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, 0, '2021-09-30 11:11:31'),
(2, '2', 'Plain Croissant', '1500', 5, '#352a01', 'Home Decor', 'Decorative Accents', 'LumiSource', 'bags', 'Metal PU Foam', 'Midcentury', 'Stool', '61559bf337da1product24.jpg.jpg', '61559bf33a031product23.jpg.jpg', '61559bf33a115product22.jpg.jpg', '61559bf33a1dbproduct21.jpg.jpg', '61559bf33a2a2product20.jpg.jpg', '61559bf33a377product19.jpg.jpg', '61559bf33a449product18.jpg.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, 'Feet', 0, '0', NULL, NULL, NULL, 1000, '10', 750, '15', 500, '30', '40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, 0, '2021-09-30 11:13:55'),
(3, '3', 'Blood Diamond OG', '2200', 5, '#07c9bd', 'Home Decor', 'Decorative Accents', 'LumiSource', 'bags', 'Metal PU Foam', 'Midcentury', 'Stool', '61559c61edddaproduct16.jpg.jpg', '61559c61ee269product15.jpg.jpg', '61559c61ee35aproduct14.jpg.jpg', '61559c61ee42cproduct13.jpg.jpg', '61559c61ee510product12.jpg.jpg', '61559c61ee5f9product11.jpg.jpg', '61559c61ee6deproduct10.jpg.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, 'Feet', 0, '0', NULL, NULL, NULL, 1000, '10', 750, '15', 500, '30', '40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, 0, '2021-09-30 11:15:45'),
(4, '4', 'T Shirt', '1250', 5, '#000000', 'Home Decor', 'Decorative Accents', 'LumiSource', 'TEST', 'Metal PU Foam', 'Midcentury', 'Stool', '61559d7d8d488Instagram-Img-4_360x.jpg.jpg', '61559d7d8f2ceInstagram-Img-1_360x.jpg.jpg', '61559d7d8f417Instagram-Img-7_360x.jpg.jpg', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, 'Feet', 0, '0', NULL, NULL, NULL, 300, '10', 200, '15', 150, '30', '40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, 0, '2021-09-30 11:20:29'),
(5, '5', 'Hot Dog Bun', '2200', 5, '#07c9bc', 'Home Decor', 'Decorative Accents', 'LumiSource', 'TAGS', 'Metal PU Foam', 'Midcentury', 'Stool', '61559fd85e96f2016-Fashion-Bags-Trendy-Ladies-Dubai-Young.png.png', '61559fd860cfbbags.jpg.jpg', '61559fd860f26bag1.png.png', '61559fd8614a8bag2.png.png', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, 'Feet', 0, '0', NULL, NULL, NULL, 1000, '10', 750, '15', 500, '30', '40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, 0, '2021-09-30 11:30:32'),
(6, '6', 'Girls Glaases Girl T-shirt', '1260', 5, '#352a01', 'Home Decor', 'Decorative Accents', 'LumiSource', 'tags', 'Metal PU Foam', 'Midcentury', 'Stool', '6155a21559698shoe.jpg.jpg', '6155a2155b2c5adidasoriginalscampus._CB1512587610_.jpg.jpg', '6155a2155b3bcshoes1.png.png', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, 'Feet', 0, '0', NULL, NULL, NULL, 1000, '10', 750, '15', 500, '30', '40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, 0, '2021-09-30 11:40:05'),
(7, '123', 'Tiles', '555', 5, '#8d3535', 'Home Decor', 'Decorative Accents', 'LumiSource', 'tiles', 'Metal PU Foam', 'Midcentury', 'Stool', '6155af7ae594fGG logo.png.png', '6155af7ae8198GG logo.png.png', '6155af7ae82cfGG logo.png.png', '', '', '', '', 'sadsa', 1, NULL, 'Feet', 0, '2', '4', 'Individual', 'none', 55, '2', 55, '5', 55, '5', '10', NULL, 0, 0, '2021-09-30 12:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pk_id` int(11) NOT NULL,
  `product_type` varchar(55) DEFAULT NULL,
  `main_category` varchar(35) DEFAULT NULL,
  `sub_category` varchar(35) DEFAULT NULL,
  `username` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`pk_id`, `product_type`, `main_category`, `sub_category`, `username`) VALUES
(1, 'Side and End Tables', 'Bedroom', 'Nightstands and Bedside Tables', 'admin'),
(2, 'Stool', 'Home Decor', 'Decorative Accents', 'admin'),
(3, 'testing', 'testing', 'testing', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rent` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `plots` int(11) DEFAULT NULL,
  `commercial` int(11) DEFAULT NULL,
  `land` int(11) DEFAULT NULL,
  `flats` int(11) DEFAULT NULL,
  `offices` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `property_title` varchar(255) DEFAULT NULL,
  `description` varchar(455) DEFAULT NULL,
  `document_file` varchar(255) DEFAULT NULL,
  `payment_plan_image` varchar(255) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(155) DEFAULT NULL,
  `thumbnail` varchar(355) DEFAULT NULL,
  `property_type` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `pk_id` int(11) NOT NULL,
  `promo_code` varchar(500) DEFAULT NULL,
  `use_time` int(11) DEFAULT 1,
  `discount_type` varchar(500) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_total` int(255) DEFAULT NULL,
  `max_total` int(255) DEFAULT NULL,
  `discount_forr` varchar(55) DEFAULT NULL,
  `discount_category` varchar(255) DEFAULT '0',
  `status` int(11) DEFAULT NULL COMMENT '0 for active, 1 for inactive',
  `discount_amount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo_for`
--

CREATE TABLE `promo_for` (
  `pk_id` int(11) NOT NULL,
  `promo_id` int(11) DEFAULT NULL,
  `discount_for` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rent` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `plots` int(11) DEFAULT NULL,
  `commercial` int(11) DEFAULT NULL,
  `land` int(11) DEFAULT NULL,
  `flats` int(11) DEFAULT NULL,
  `offices` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` int(155) DEFAULT NULL,
  `property_title` varchar(255) DEFAULT NULL,
  `description` varchar(455) DEFAULT NULL,
  `document_file` varchar(255) DEFAULT NULL,
  `payment_plan_image` varchar(255) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(155) DEFAULT NULL,
  `thumbnail` varchar(355) DEFAULT NULL,
  `property_type` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `realtor_signin`
--

CREATE TABLE `realtor_signin` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deal_city` varchar(255) DEFAULT NULL,
  `agency_name` varchar(255) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `agency_phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `address` varchar(355) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `pk_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return_reason`
--

CREATE TABLE `return_reason` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(12) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_reason`
--

INSERT INTO `return_reason` (`pk_id`, `user_id`, `product_id`, `size`, `quantity`, `price`, `order_id`, `reason`, `date`) VALUES
(8, 3, '23', ' large', '2', '5000', '2', 'test', '2021-09-22');

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` varchar(355) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `size_detail`
--

CREATE TABLE `size_detail` (
  `pk_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `size` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size_detail`
--

INSERT INTO `size_detail` (`pk_id`, `product_id`, `quantity`, `size`) VALUES
(1, 1, '0', 'hand bag'),
(2, 2, '1', 'small'),
(3, 3, '0', '15*15'),
(4, 4, '0', 'medium'),
(5, 4, '2', 'large'),
(6, 4, '3', 'small'),
(7, 5, '0', 'small'),
(8, 6, '1', 'small'),
(9, 6, '2', 'large'),
(10, 7, '0', '54');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `pk_id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail1` varchar(255) NOT NULL,
  `thumbnail2` varchar(255) NOT NULL,
  `thumbnail3` varchar(255) NOT NULL,
  `thumbnail5` varchar(500) DEFAULT NULL,
  `thumbnail6` varchar(500) DEFAULT NULL,
  `thumbnail7` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`pk_id`, `thumbnail`, `thumbnail1`, `thumbnail2`, `thumbnail3`, `thumbnail5`, `thumbnail6`, `thumbnail7`, `created_at`) VALUES
(2, '60222e2b553fa2.jpg.jpg', '60222e2b5a56e3.jpg.jpg', '60222e2b5ca3bapple-royal-gala.jpg.jpg', '60222e2b5ebeaBanyan Moon Nursery Blue Dream.jpg.jpg', '60222e2b659ccCalypso.png.png', '60222e2b67e23Chocolate Mint OG.jpg.jpg', '60222ed175487wedding-cake.jpg.jpg', '2021-02-09 06:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `style`
--

CREATE TABLE `style` (
  `pk_id` int(11) NOT NULL,
  `style` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `style`
--

INSERT INTO `style` (`pk_id`, `style`) VALUES
(1, 'Midcentury');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `pk_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `package_name` varchar(155) DEFAULT NULL,
  `subscription` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `p_status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`pk_id`, `vendor_id`, `package_name`, `subscription`, `amount`, `status`, `p_status`, `created_at`) VALUES
(1, 1, 'BASIC', 'COMMISSION', 0, 'approved', 0, '2021-01-29 14:37:33'),
(2, 2, 'testing', 'SUBSCRIPTION', 200, 'waiting', 0, '2021-03-09 15:48:47'),
(3, 4, 'BASIC', 'COMMISSION', 0, 'approved', 0, '2021-06-18 04:56:40'),
(4, 7, 'BASIC', 'COMMISSION', 0, 'approved', 0, '2021-08-24 03:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `SKU` int(11) NOT NULL,
  `main_category` varchar(35) DEFAULT NULL,
  `sub_category` varchar(35) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `commission` int(11) NOT NULL DEFAULT 0,
  `username` varchar(155) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`SKU`, `main_category`, `sub_category`, `thumbnail`, `commission`, `username`, `created_at`) VALUES
(1, 'Furniture', 'Living Room Furniture', NULL, 0, 'admin', '2020-10-02 10:25:38'),
(2, 'Furniture', 'Kitchen and Dining Furniture', NULL, 0, 'admin', '2020-10-02 10:25:51'),
(3, 'Furniture', 'Bedroom Furniture', NULL, 0, 'admin', '2020-10-02 10:25:59'),
(4, 'Furniture', 'Home Office Furniture', NULL, 0, 'admin', '2020-10-02 10:26:07'),
(5, 'Furniture', 'Outdoor Furniture', NULL, 0, 'admin', '2020-10-02 10:26:16'),
(6, 'Furniture', 'Bathroom Storage and Vanities', NULL, 0, 'admin', '2020-10-02 10:26:31'),
(7, 'Furniture', 'Chair', NULL, 0, 'admin', '2020-10-02 10:28:40'),
(8, 'Kitchen and Dining', 'Kitchen and Dining Furniture', NULL, 0, 'admin', '2020-10-02 10:28:53'),
(9, 'Kitchen and Dining', 'Kitchen Fixtures', NULL, 0, 'admin', '2020-10-02 10:29:03'),
(10, 'Kitchen and Dining', 'Tile', NULL, 0, 'admin', '2020-10-02 10:29:11'),
(11, 'Kitchen and Dining', 'Kitchen Storage and Organization', NULL, 0, 'admin', '2020-10-02 10:29:30'),
(12, 'Kitchen and Dining', 'Tabletop', NULL, 0, 'admin', '2020-10-02 10:29:40'),
(13, 'Kitchen and Dining', 'Cookware and Bakeware', NULL, 0, 'admin', '2020-10-02 10:29:50'),
(14, 'Kitchen and Dining', 'Dining Table', NULL, 0, 'admin', '2020-10-02 10:30:33'),
(15, 'Kitchen and Dining', 'dining Chairs', NULL, 0, 'admin', '2020-10-02 10:30:43'),
(16, 'Bath', 'Bathroom Vanities', NULL, 0, 'admin', '2020-10-02 10:34:06'),
(17, 'Bath', 'Bathroom Vanity Lighting', NULL, 0, 'admin', '2020-10-02 10:34:14'),
(18, 'Bath', 'Tile', NULL, 0, 'admin', '2020-10-02 10:34:28'),
(19, 'Bath', 'Showers', NULL, 0, 'admin', '2020-10-02 10:34:41'),
(20, 'Bath', 'Bathtubs', NULL, 0, 'admin', '2020-10-02 10:34:50'),
(21, 'Bath', 'Bathroom Faucets', NULL, 0, 'admin', '2020-10-02 10:35:03'),
(22, 'Bath', 'Bathroom Sinks', NULL, 0, 'admin', '2020-10-02 10:35:54'),
(23, 'Bath', 'Bath Linens', NULL, 0, 'admin', '2020-10-02 10:36:09'),
(24, 'Lighting', 'Chandeliers', NULL, 0, 'admin', '2020-10-02 10:36:31'),
(25, 'Lighting', 'Pendant Lighting', NULL, 0, 'admin', '2020-10-02 10:36:38'),
(26, 'Lighting', 'Bathroom Vanity Lighting', NULL, 0, 'admin', '2020-10-02 10:36:58'),
(27, 'Lighting', 'Wall Sconces', NULL, 0, 'admin', '2020-10-02 10:37:05'),
(28, 'Lighting', 'Kitchen and Cabinet Lighting', NULL, 0, 'admin', '2020-10-02 10:37:32'),
(29, 'Lighting', 'Outdoor Lighting', NULL, 0, 'admin', '2020-10-02 10:37:46'),
(30, 'Living', 'Sofas and Sectionals', NULL, 0, 'admin', '2020-10-02 10:38:32'),
(31, 'Living', 'Armchairs and Accent Chairs', NULL, 0, 'admin', '2020-10-02 10:38:43'),
(32, 'Living', 'Coffee and Accent Tables', NULL, 0, 'admin', '2020-10-02 10:38:53'),
(33, 'Living', 'Rugs', NULL, 0, 'admin', '2020-10-02 10:39:02'),
(34, 'Living', 'Home Decor', NULL, 0, 'admin', '2020-10-02 10:39:12'),
(35, 'Living', 'Media Storage', NULL, 0, 'admin', '2020-10-02 10:39:19'),
(36, 'Bedroom', 'Beds and Headboards', NULL, 0, 'admin', '2020-10-02 10:39:32'),
(38, 'Bedroom', 'Lamps', NULL, 0, 'admin', '2020-10-02 10:39:58'),
(39, 'Bedroom', 'Dressers', NULL, 0, 'admin', '2020-10-02 10:40:07'),
(40, 'Home Decor', 'Rugs', NULL, 0, 'admin', '2020-10-02 10:40:53'),
(41, 'Bedroom', 'Bedroom Decor', NULL, 0, 'admin', '2020-10-02 10:41:04'),
(42, 'Bedroom', 'Nightstands and Bedside Tables', NULL, 0, 'admin', '2020-10-02 10:41:15'),
(47, 'Home Decor', 'Pillows and Throws', NULL, 0, 'admin', '2020-10-02 10:44:51'),
(48, 'Home Decor', 'Decorative Accents', NULL, 0, 'admin', '2020-10-02 10:46:05'),
(49, 'Home Decor', 'Mirrors', NULL, 0, 'admin', '2020-10-02 10:46:13'),
(50, 'Home Decor', 'Wall Decor', NULL, 0, 'admin', '2020-10-02 10:46:23'),
(51, 'Home Decor', 'Artwork', NULL, 0, 'admin', '2020-10-02 10:46:33'),
(52, 'Outdoor', 'Outdoor Furniture', NULL, 0, 'admin', '2020-10-02 10:47:00'),
(53, 'Outdoor', 'Outdoor Lighting', NULL, 0, 'admin', '2020-10-02 10:47:09'),
(54, 'Outdoor', 'Outdoor Decor', NULL, 0, 'admin', '2020-10-02 10:47:18'),
(55, 'Outdoor', 'Lawn and Garden', NULL, 0, 'admin', '2020-10-02 10:47:32'),
(56, 'Outdoor', 'Pool and Spa', NULL, 0, 'admin', '2020-10-02 10:47:47'),
(57, 'Outdoor', 'Outdoor Structures', NULL, 1, 'admin', '2020-10-02 10:47:57'),
(58, 'Bath', 'testing', NULL, 3, 'admin', '2020-12-03 11:37:15'),
(60, 'testing', 'testing', '60a8c89fbf0489.jpg.jpg', 10, 'admin', '2021-05-22 09:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_t` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_cat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `federal_tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_hourz` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_address` varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_country` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_state` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_city` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_zip` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_phone` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_country` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_state` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_city` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide2` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide3` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_status` int(11) DEFAULT 2,
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_duration` int(11) NOT NULL DEFAULT 0,
  `s_created` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `business_name`, `intro`, `account_t`, `cnic`, `vendor_cat`, `certificate`, `p_package`, `address`, `country`, `state`, `city`, `zip`, `phone`, `fax`, `url`, `thumbnail`, `federal_tax`, `primary_contact`, `payee`, `phone1`, `fax1`, `email1`, `support_hourz`, `return_address`, `return_country`, `return_state`, `return_city`, `return_zip`, `return_phone`, `return_fax`, `notification_email`, `bank_name`, `account_no`, `account_type`, `routing_no`, `cheque`, `warehouse_address`, `warehouse_country`, `warehouse_state`, `warehouse_city`, `slide`, `slide2`, `slide3`, `vendor_status`, `subscription`, `payment_duration`, `s_created`, `created_at`) VALUES
(1, 1, 'green grapez', NULL, 'Individual', '3520332010790', NULL, '', 'Subscription package', 'Lahore', 'Pakistan', 'Punjab', 'Lahore', '54810', '34642007334', '545454', 'https://yoc.com.pk/', '6013d3258e1eeslip.png.png', '54541254', 'fahad maqsood', 'fahad maqsood', '34642007334', '54564', 'fahad.appiteck@gmail.com', '12', 'Lahore', NULL, NULL, NULL, '54810', '34642007334', '54125', 'fahad.appiteck@gmail.com', 'HBL', '2154120', 'CURRENT', '542', '6013d3769b44bslip.png.png', 'Lahore', 'Pakistan', 'Punjab', 'Lahore', '6013d376a0f56banner4.jpg.jpg', '6013d376a2ef1banner5.jpg.jpg', '6013d376a555eshop-banner-1.jpg.jpg', 0, NULL, 0, NULL, '2021-01-29 09:33:38'),
(2, 2, 'green grapez', NULL, 'Individual', '3520332010790', NULL, '', 'Subscription package', 'Lahore', 'Pakistan', 'Punjab', 'Alipur', '54810', '34642007367', '545454', 'https://fashionfactory.world/', '60475183055cfcart.png.png', '4512', 'Danish siddiqui', 'Danish siddiqui', '03001234567', '54564', 'danishsiddiqui36@yahoo.com', '12', 'lahore', NULL, NULL, NULL, '54000', '03001234567', '54125', 'danishsiddiqui36@yahoo.com', 'HBL', '2154120', 'CURRENT', '542', '604751b691551checkout.png.png', 'lahore', 'Pakistan', 'Punjab', 'Lahore', '604751b6a59facart.png.png', '604751b6add53checkout.png.png', '604751b6b401ediscount.png.png', 0, NULL, 0, NULL, '2021-04-08 08:26:37'),
(3, 4, 'green grapez', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Individual', '3520332010790', NULL, '', 'Commission Package', 'Lahore', 'Pakistan', 'Punjab', 'Lahore', '54810', '34642007334', '545454', 'https://greengrapez.com/', '60cc4aac0ee8bgreengrapez.png.png', '4512', 'fahad maqsood', 'fahad maqsood', '34642007334', '54564', 'fahad.appiteck@gmail.com', '12', 'street 19a house 17  K block DHA lahore', NULL, NULL, NULL, '54000', '03001234567', '54125', 'alihaider12@gmail.com', 'HBL', '2154120', 'CURRENT', '233', '60cc4f5bb39f21600424081485.png.png', 'Lahore', 'Pakistan', 'Punjab', 'Lahore', '60cc4f5bb560abanner4.jpg.jpg', '60cc4f5bb56bfbanner5.jpg.jpg', '60cc4f5bb578ebanner4.jpg.jpg', 0, NULL, 0, NULL, '2021-06-25 06:48:26'),
(4, 7, 'HARF BY FRIENDS', 'HARF makes sure that the products you get are of high quality, delivered by brands, who are highly professional in making their products so that you can enjoy the style, design and quality that you so innately desire with a very competitive price.', 'Business', NULL, 'Retailer', '6124a3c0179a7build_img_new.png.png', 'Commission Package', 'lahore', 'Pakistan', 'Punjab', 'Lahore', '54810', '34642007334', '5412', 'https://fashionfactory.world/', '6124a3c015626WhatsApp Image 2021-08-09 at 4.24.25 PM.jpeg.jpeg', '09890', 'fahad maqsood', 'fahad maqsood', '03064737502', '54564', 'ch.fahad241@gmail.com', '12', 'lahore', NULL, NULL, NULL, '54000', '03064737502', '54125', 'ch.fahad241@gmail.com', 'HBL', '2154120', 'CURRENT', '364', '6124a4878eefcbuild_img_new.png.png', 'lahore', 'Pakistan', 'Punjab', 'lahore', '6124a48790b2daditya-chinchure-499383-unsplash.jpg.jpg', '6124a48790d2eangelina-litvin-32201-unsplash.jpg.jpg', '6124a48790ff8dan-gold-544435-unsplash.jpg.jpg', 0, 'COMMISSION', 15, NULL, '2021-09-04 08:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payments`
--

CREATE TABLE `vendor_payments` (
  `payment_id` int(11) NOT NULL,
  `vendor_id` varchar(155) NOT NULL,
  `payment` int(11) DEFAULT NULL,
  `total_earned` int(11) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_reset_password`
--

CREATE TABLE `vendor_reset_password` (
  `pk_id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `pk_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `product_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_table`
--
ALTER TABLE `address_table`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `admin_chats`
--
ALTER TABLE `admin_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `admin_reset_password`
--
ALTER TABLE `admin_reset_password`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_details`
--
ALTER TABLE `client_details`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `collection_set`
--
ALTER TABLE `collection_set`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `custom_package`
--
ALTER TABLE `custom_package`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_table`
--
ALTER TABLE `detail_table`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `discount_table`
--
ALTER TABLE `discount_table`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `forum_category`
--
ALTER TABLE `forum_category`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `forum_post`
--
ALTER TABLE `forum_post`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `houzz_earning`
--
ALTER TABLE `houzz_earning`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `offline_client`
--
ALTER TABLE `offline_client`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `payment_invoice`
--
ALTER TABLE `payment_invoice`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `photo_category`
--
ALTER TABLE `photo_category`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `photo_idea`
--
ALTER TABLE `photo_idea`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `photo_sub_category`
--
ALTER TABLE `photo_sub_category`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `pricing_detail`
--
ALTER TABLE `pricing_detail`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `promo_for`
--
ALTER TABLE `promo_for`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `realtor_signin`
--
ALTER TABLE `realtor_signin`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `return_reason`
--
ALTER TABLE `return_reason`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `size_detail`
--
ALTER TABLE `size_detail`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_payments`
--
ALTER TABLE `vendor_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `vendor_reset_password`
--
ALTER TABLE `vendor_reset_password`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_table`
--
ALTER TABLE `address_table`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_chats`
--
ALTER TABLE `admin_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_reset_password`
--
ALTER TABLE `admin_reset_password`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_details`
--
ALTER TABLE `client_details`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection_set`
--
ALTER TABLE `collection_set`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_package`
--
ALTER TABLE `custom_package`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_table`
--
ALTER TABLE `detail_table`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discount_table`
--
ALTER TABLE `discount_table`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forum_category`
--
ALTER TABLE `forum_category`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_post`
--
ALTER TABLE `forum_post`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houzz_earning`
--
ALTER TABLE `houzz_earning`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `offline_client`
--
ALTER TABLE `offline_client`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_invoice`
--
ALTER TABLE `payment_invoice`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_category`
--
ALTER TABLE `photo_category`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_idea`
--
ALTER TABLE `photo_idea`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_sub_category`
--
ALTER TABLE `photo_sub_category`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricing_detail`
--
ALTER TABLE `pricing_detail`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promo_for`
--
ALTER TABLE `promo_for`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `realtor_signin`
--
ALTER TABLE `realtor_signin`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_reason`
--
ALTER TABLE `return_reason`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `size_detail`
--
ALTER TABLE `size_detail`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `style`
--
ALTER TABLE `style`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendor_payments`
--
ALTER TABLE `vendor_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_reset_password`
--
ALTER TABLE `vendor_reset_password`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
