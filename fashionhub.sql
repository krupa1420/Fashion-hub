-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 07:23 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashionhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 4, 2, '2021-07-14 08:30:26', '2021-07-14 08:30:26'),
(11, 2, 5, '2021-08-20 10:55:01', '2021-08-20 10:55:01'),
(12, 3, 5, '2021-08-20 10:55:06', '2021-08-20 10:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_07_13_074830_create_users_table', 1),
(2, '2021_07_13_122738_create_products_table', 2),
(3, '2021_07_13_162229_create_cart_table', 3),
(4, '2021_07_15_094704_create_orders_table', 4),
(5, '2021_07_15_095136_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'pending', 'cash', 'pending', 'india', NULL, NULL),
(2, 3, 1, 'pending', 'cash', 'pending', 'india', NULL, NULL),
(3, 2, 1, 'pending', 'cash', 'pending', 'india', NULL, NULL),
(4, 1, 3, 'pending', 'cash', 'pending', 'Usa', NULL, NULL),
(5, 4, 3, 'pending', 'cash', 'pending', 'Usa', NULL, NULL),
(6, 1, 4, 'pending', 'cash', 'pending', 'Anand', NULL, NULL),
(7, 2, 4, 'pending', 'cash', 'pending', 'Anand', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `gallery`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kurti', '300', 'Simple Kurti', 'https://www.shoutlo.com/uploads/articles/header-img-cotton-kurtis-in-chandigarh-for-summers.jpg', 'Stylish Kurti For Ladies ', NULL, NULL),
(2, 'Top', '400', 'Top', 'https://www.outstandingdef.com/image/catalog/bannerCategory.jpg', 'Stylish Crop Tops For Ladies ', NULL, NULL),
(3, 'Saree', '500', 'Saree', 'https://cdn.shopify.com/s/files/1/1105/1322/products/Dark_Green_Black_Designer_Embroidered_Silk_Party_Wear_Saree_-_Saira_s_Boutique.png?v=1577768991', 'Party wear Saree For Ladies ', NULL, NULL),
(4, 'Jeans', '600', 'Jeans', 'https://s4.thingpic.com/images/7i/n4rsXPHx7THt1GVmiq3U6KgX.jpeg', 'Fancy Jeans', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'abc@gmail.com', '$2y$10$Ywu8WVgsxSRGILeeB2MNee4fmkRynj0jWRrdA512RXLK/elFpbDdS', NULL, NULL),
(2, 'xyz', 'xyz@gmail.com', '$2y$10$t0ClXTBiUlgdPnscn1/Zg.QQUhdXLuogld9JLOzyZtv93T8RkYnZG', NULL, NULL),
(3, 'pitter', 'pitter@gmail.com', '$2y$10$YiH70xvQ1eM6WgeIv45OXugtZnLx5VWY907ctWkBmQ3QbF3RE8v4i', '2021-07-16 05:14:20', '2021-07-16 05:14:20'),
(4, 'Prachi', 'prachiv30@gmail.com', '$2y$10$nYlzXb0VPyiP4weHhZEvbuHMli0OtaAqu7XQzoRwJXXpdQBfg74A6', '2021-08-20 10:41:46', '2021-08-20 10:41:46'),
(5, 'krupa', 'krupa0910@gmail.com', '$2y$10$odRRZwnlDf18h.ieKKdUueiCXkwOWZl9HkEMBU8gErKfz/nQ23bPG', '2021-08-20 10:53:18', '2021-08-20 10:53:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
