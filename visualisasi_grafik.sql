-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2025 at 10:35 AM
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
-- Database: `visualisasi_grafik`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Budi Santoso', 'budi@email.com', '081234567890', NULL, 'Jakarta', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(2, 'Siti Nurhaliza', 'siti@email.com', '081234567891', NULL, 'Bandung', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(3, 'Agus Wijaya', 'agus@email.com', '081234567892', NULL, 'Surabaya', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(4, 'Dewi Lestari', 'dewi@email.com', '081234567893', NULL, 'Yogyakarta', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(5, 'Rudi Hermawan', 'rudi@email.com', '081234567894', NULL, 'Semarang', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(6, 'Maya Sari', 'maya@email.com', '081234567895', NULL, 'Medan', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(7, 'Andi Pratama', 'andi@email.com', '081234567896', NULL, 'Makassar', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(8, 'Linda Wijayanti', 'linda@email.com', '081234567897', NULL, 'Palembang', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(9, 'Eko Suryanto', 'eko@email.com', '081234567898', NULL, 'Bogor', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(10, 'Nina Kusuma', 'nina@email.com', '081234567899', NULL, 'Depok', '2025-12-11 02:13:31', '2025-12-11 02:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_01_000001_create_transactions_table', 1),
(5, '2025_01_01_000002_create_products_table', 1),
(6, '2025_01_01_000003_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `stock`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laptop ASUS ROG', 'Electronics', 15000000.00, 10, 'Gaming laptop', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(2, 'iPhone 15 Pro', 'Electronics', 18000000.00, 15, 'Smartphone', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(3, 'Samsung Galaxy S24', 'Electronics', 12000000.00, 20, 'Smartphone', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(4, 'Kemeja Batik', 'Fashion', 250000.00, 50, 'Batik modern', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(5, 'Sepatu Nike', 'Fashion', 1500000.00, 30, 'Sepatu olahraga', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(6, 'Tas Ransel', 'Fashion', 350000.00, 40, 'Tas sekolah', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(7, 'Buku Programming', 'Books', 150000.00, 100, 'Buku pemrograman', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(8, 'Novel Fiksi', 'Books', 85000.00, 80, 'Novel best seller', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(9, 'Lego Set', 'Toys', 500000.00, 25, 'Mainan edukatif', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(10, 'Raket Badminton', 'Sports', 450000.00, 35, 'Raket profesional', '2025-12-11 02:13:31', '2025-12-11 02:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('TxkNnQyPe40bWBnWtfIIf6H5OaMT4veW8PPqjOMb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzM5blo3cXpvbFpFWU9RQkFZYWFsbHpWWWV3OUJQMllKWVRIQmRIUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Nzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2hhcnQtZGF0YT9lbmRfZGF0ZT0yMDI1LTEyLTExJnN0YXJ0X2RhdGU9MjAyNS0wNi0xMSI7czo1OiJyb3V0ZSI7czoxMDoiY2hhcnQuZGF0YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765445464);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_code` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'completed',
  `payment_method` varchar(255) NOT NULL,
  `transaction_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_code`, `customer_name`, `product_name`, `category`, `amount`, `quantity`, `total`, `status`, `payment_method`, `transaction_date`, `created_at`, `updated_at`) VALUES
(1, 'TRX-TTD1MYAIIU', 'Nina Kusuma', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'Cash', '2025-10-22', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(2, 'TRX-V9JNOBQJHJ', 'Linda Wijayanti', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'cancelled', 'Cash', '2025-11-14', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(3, 'TRX-SNVBFOKBJQ', 'Nina Kusuma', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'completed', 'Credit Card', '2025-11-25', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(4, 'TRX-WA4FZ9TCNE', 'Andi Pratama', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'completed', 'E-Wallet', '2025-06-20', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(5, 'TRX-77DZEM4RHM', 'Linda Wijayanti', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'completed', 'Bank Transfer', '2025-08-05', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(6, 'TRX-FGFICXZF0J', 'Budi Santoso', 'Tas Ransel', 'Fashion', 350000.00, 5, 1750000.00, 'completed', 'Cash', '2025-11-22', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(7, 'TRX-BHUNFOSPVO', 'Maya Sari', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'completed', 'Debit Card', '2025-08-28', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(8, 'TRX-CGASHCBCSQ', 'Rudi Hermawan', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'E-Wallet', '2025-07-07', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(9, 'TRX-KZEXIO8TSV', 'Maya Sari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'completed', 'Cash', '2025-10-31', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(10, 'TRX-Q5DIO5TZLU', 'Eko Suryanto', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'completed', 'Credit Card', '2025-06-14', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(11, 'TRX-JUP8QWK2HR', 'Andi Pratama', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'E-Wallet', '2025-09-25', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(12, 'TRX-KDLMUAOOLT', 'Rudi Hermawan', 'Sepatu Nike', 'Fashion', 1500000.00, 2, 3000000.00, 'completed', 'Debit Card', '2025-09-20', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(13, 'TRX-Q6RXGCHMLF', 'Dewi Lestari', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'cancelled', 'Cash', '2025-09-04', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(14, 'TRX-SEICW7BKWM', 'Linda Wijayanti', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Bank Transfer', '2025-09-17', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(15, 'TRX-71QTLQ0RMH', 'Dewi Lestari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'completed', 'Debit Card', '2025-11-01', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(16, 'TRX-TDTDG9LLIH', 'Eko Suryanto', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'E-Wallet', '2025-06-17', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(17, 'TRX-8CFEC2U6LA', 'Dewi Lestari', 'Novel Fiksi', 'Books', 85000.00, 1, 85000.00, 'completed', 'Debit Card', '2025-10-03', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(18, 'TRX-R0RUNQWYHF', 'Eko Suryanto', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'Credit Card', '2025-09-01', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(19, 'TRX-GEVGQVYZTE', 'Linda Wijayanti', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Credit Card', '2025-09-25', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(20, 'TRX-AG26TFM8RM', 'Maya Sari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'pending', 'Cash', '2025-09-06', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(21, 'TRX-EOIH5ESU8W', 'Eko Suryanto', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'Bank Transfer', '2025-07-26', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(22, 'TRX-Y4JTCGY8VP', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 5, 1750000.00, 'completed', 'Debit Card', '2025-11-23', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(23, 'TRX-7QL29FUUFR', 'Eko Suryanto', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 2, 30000000.00, 'completed', 'Cash', '2025-09-11', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(24, 'TRX-AIW41JSKLT', 'Rudi Hermawan', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'completed', 'Debit Card', '2025-10-31', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(25, 'TRX-MSZ4WOCNTL', 'Eko Suryanto', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'Cash', '2025-11-04', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(26, 'TRX-RI4MAIPT0E', 'Dewi Lestari', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'cancelled', 'Cash', '2025-12-01', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(27, 'TRX-A8QNRTMUW7', 'Nina Kusuma', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Credit Card', '2025-07-17', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(28, 'TRX-JN25CJ0D9Y', 'Andi Pratama', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'completed', 'Bank Transfer', '2025-12-08', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(29, 'TRX-UJLYHAGFLB', 'Eko Suryanto', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'completed', 'Bank Transfer', '2025-07-05', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(30, 'TRX-DSONHB6OZM', 'Eko Suryanto', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Credit Card', '2025-09-20', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(31, 'TRX-QVOKLHKI3O', 'Nina Kusuma', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'pending', 'Debit Card', '2025-06-28', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(32, 'TRX-IIR2ZSQRST', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'cancelled', 'Debit Card', '2025-07-06', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(33, 'TRX-WCVWXPCUN7', 'Siti Nurhaliza', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 2, 30000000.00, 'completed', 'Bank Transfer', '2025-11-24', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(34, 'TRX-GBEDVCAIXK', 'Nina Kusuma', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'completed', 'Cash', '2025-10-22', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(35, 'TRX-70TP7HXZ2P', 'Rudi Hermawan', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'E-Wallet', '2025-09-16', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(36, 'TRX-1UHKM4ADPW', 'Siti Nurhaliza', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'completed', 'Credit Card', '2025-08-05', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(37, 'TRX-BGWIN9IOWB', 'Siti Nurhaliza', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'completed', 'E-Wallet', '2025-11-26', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(38, 'TRX-0JSGM2N2VM', 'Dewi Lestari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'Credit Card', '2025-09-22', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(39, 'TRX-KGSTOMY8PO', 'Nina Kusuma', 'Raket Badminton', 'Sports', 450000.00, 4, 1800000.00, 'completed', 'Cash', '2025-07-14', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(40, 'TRX-TJB91QGMBW', 'Budi Santoso', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'completed', 'Debit Card', '2025-08-13', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(41, 'TRX-PTZCQLAOAD', 'Rudi Hermawan', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'pending', 'Debit Card', '2025-11-02', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(42, 'TRX-R8EYWBUWT7', 'Dewi Lestari', 'Sepatu Nike', 'Fashion', 1500000.00, 2, 3000000.00, 'completed', 'Debit Card', '2025-08-10', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(43, 'TRX-BBKCRYMGM4', 'Siti Nurhaliza', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'completed', 'Bank Transfer', '2025-11-11', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(44, 'TRX-XBUS4BREQE', 'Agus Wijaya', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'completed', 'E-Wallet', '2025-10-12', '2025-12-11 02:13:31', '2025-12-11 02:13:31'),
(45, 'TRX-CDFGZ77ZN3', 'Rudi Hermawan', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'pending', 'Bank Transfer', '2025-11-25', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(46, 'TRX-WJYBYWSDMF', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'E-Wallet', '2025-07-22', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(47, 'TRX-SAISKKUUA2', 'Budi Santoso', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'cancelled', 'Bank Transfer', '2025-11-12', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(48, 'TRX-KFZVCLMUFV', 'Siti Nurhaliza', 'Tas Ransel', 'Fashion', 350000.00, 5, 1750000.00, 'completed', 'Debit Card', '2025-10-07', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(49, 'TRX-0OY98IYUBK', 'Andi Pratama', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'cancelled', 'Bank Transfer', '2025-11-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(50, 'TRX-QDRXQ5VPXD', 'Maya Sari', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'Bank Transfer', '2025-10-15', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(51, 'TRX-EZTOUDBCMM', 'Eko Suryanto', 'Kemeja Batik', 'Fashion', 250000.00, 5, 1250000.00, 'cancelled', 'Bank Transfer', '2025-09-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(52, 'TRX-WABB7RZOD7', 'Andi Pratama', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 4, 60000000.00, 'completed', 'Cash', '2025-12-09', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(53, 'TRX-PSBVLEDGTP', 'Andi Pratama', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'Credit Card', '2025-10-02', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(54, 'TRX-3IQWBKJBEZ', 'Maya Sari', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'pending', 'Cash', '2025-11-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(55, 'TRX-0AHWX3W0MK', 'Maya Sari', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'completed', 'Debit Card', '2025-10-03', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(56, 'TRX-3S2OD3FBOV', 'Eko Suryanto', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'Debit Card', '2025-08-12', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(57, 'TRX-QXW9YYVCSG', 'Dewi Lestari', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'completed', 'E-Wallet', '2025-06-22', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(58, 'TRX-JPIIMYZBTT', 'Dewi Lestari', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'Bank Transfer', '2025-11-23', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(59, 'TRX-ASLOMTPH4N', 'Siti Nurhaliza', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'pending', 'Credit Card', '2025-06-21', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(60, 'TRX-6YYXJKCBAJ', 'Dewi Lestari', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'pending', 'Credit Card', '2025-07-12', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(61, 'TRX-9ACWCHT2YO', 'Budi Santoso', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'pending', 'E-Wallet', '2025-09-16', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(62, 'TRX-NZBLW2TICC', 'Budi Santoso', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'pending', 'Credit Card', '2025-09-10', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(63, 'TRX-DL5LNK5VUL', 'Dewi Lestari', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Credit Card', '2025-07-09', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(64, 'TRX-UTDTZVC8ZP', 'Linda Wijayanti', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'pending', 'Cash', '2025-08-06', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(65, 'TRX-7A42BPSJKW', 'Linda Wijayanti', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'completed', 'Debit Card', '2025-09-02', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(66, 'TRX-TTOXTUYUXL', 'Andi Pratama', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'cancelled', 'E-Wallet', '2025-07-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(67, 'TRX-KBCH7ZMPIM', 'Linda Wijayanti', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'E-Wallet', '2025-09-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(68, 'TRX-YG0XQCD5NX', 'Linda Wijayanti', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'E-Wallet', '2025-11-03', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(69, 'TRX-CFHM6OFVVL', 'Rudi Hermawan', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'cancelled', 'E-Wallet', '2025-09-24', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(70, 'TRX-4STMZMPYMR', 'Eko Suryanto', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Debit Card', '2025-11-09', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(71, 'TRX-EE4LVUWMJX', 'Siti Nurhaliza', 'Sepatu Nike', 'Fashion', 1500000.00, 2, 3000000.00, 'cancelled', 'Credit Card', '2025-12-07', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(72, 'TRX-WJGJC5Z9BE', 'Maya Sari', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'pending', 'Cash', '2025-11-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(73, 'TRX-A7HZTVQ3CQ', 'Linda Wijayanti', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'completed', 'Bank Transfer', '2025-07-13', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(74, 'TRX-KO726SQSIS', 'Eko Suryanto', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'pending', 'Cash', '2025-07-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(75, 'TRX-CQDKR6PBDD', 'Rudi Hermawan', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'completed', 'Credit Card', '2025-11-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(76, 'TRX-BVT4GEUICA', 'Nina Kusuma', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'pending', 'Cash', '2025-12-04', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(77, 'TRX-CFPXFMNFYQ', 'Budi Santoso', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'E-Wallet', '2025-09-15', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(78, 'TRX-JRMCHF40IK', 'Dewi Lestari', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 5, 75000000.00, 'completed', 'Bank Transfer', '2025-09-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(79, 'TRX-2E2B3XTSRC', 'Budi Santoso', 'Sepatu Nike', 'Fashion', 1500000.00, 4, 6000000.00, 'pending', 'E-Wallet', '2025-09-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(80, 'TRX-FOWEBCS1DP', 'Budi Santoso', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'Bank Transfer', '2025-11-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(81, 'TRX-4D7PV6MSGY', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 2, 700000.00, 'completed', 'Debit Card', '2025-11-01', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(82, 'TRX-GPDHACIUMF', 'Dewi Lestari', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'Credit Card', '2025-12-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(83, 'TRX-LXPDMMWBMP', 'Rudi Hermawan', 'iPhone 15 Pro', 'Electronics', 18000000.00, 5, 90000000.00, 'completed', 'Bank Transfer', '2025-11-25', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(84, 'TRX-RVQSJRBGDQ', 'Linda Wijayanti', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 5, 75000000.00, 'pending', 'Debit Card', '2025-09-13', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(85, 'TRX-OMP3MFJGAY', 'Linda Wijayanti', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'Bank Transfer', '2025-06-24', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(86, 'TRX-YX8L2V40RC', 'Dewi Lestari', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'pending', 'E-Wallet', '2025-11-04', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(87, 'TRX-I0JYBWOOH0', 'Maya Sari', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'completed', 'Cash', '2025-09-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(88, 'TRX-KCKZIBJDXI', 'Linda Wijayanti', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'Cash', '2025-06-21', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(89, 'TRX-CA3XHEWAX1', 'Budi Santoso', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'pending', 'Bank Transfer', '2025-07-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(90, 'TRX-NIFFSYGSZG', 'Linda Wijayanti', 'Novel Fiksi', 'Books', 85000.00, 1, 85000.00, 'pending', 'Bank Transfer', '2025-10-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(91, 'TRX-ZTCSIE0B2Y', 'Budi Santoso', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'pending', 'Cash', '2025-12-11', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(92, 'TRX-VAO4VDF5S5', 'Rudi Hermawan', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'pending', 'E-Wallet', '2025-06-23', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(93, 'TRX-WSVY7GOBZ7', 'Nina Kusuma', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'cancelled', 'Cash', '2025-07-04', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(94, 'TRX-ETPE9GYKK8', 'Andi Pratama', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 2, 30000000.00, 'completed', 'Debit Card', '2025-06-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(95, 'TRX-SQ2M6XCQ7X', 'Nina Kusuma', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'completed', 'E-Wallet', '2025-07-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(96, 'TRX-POFGFOYOZV', 'Rudi Hermawan', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'completed', 'Bank Transfer', '2025-08-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(97, 'TRX-AR4UHVQB1O', 'Rudi Hermawan', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Cash', '2025-08-03', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(98, 'TRX-A89XPD7BKJ', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'E-Wallet', '2025-09-29', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(99, 'TRX-6XO3CJNPM2', 'Andi Pratama', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'completed', 'Debit Card', '2025-11-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(100, 'TRX-JG629SOOD5', 'Maya Sari', 'Novel Fiksi', 'Books', 85000.00, 1, 85000.00, 'completed', 'Debit Card', '2025-07-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(101, 'TRX-TBPHVTPEZY', 'Maya Sari', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'completed', 'Credit Card', '2025-10-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(102, 'TRX-PUOOIDMWYJ', 'Agus Wijaya', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'completed', 'Debit Card', '2025-07-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(103, 'TRX-BE4JKOLRHN', 'Agus Wijaya', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'cancelled', 'Bank Transfer', '2025-08-11', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(104, 'TRX-EFNUHKMAPK', 'Eko Suryanto', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Cash', '2025-07-15', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(105, 'TRX-UCZ2DNLROP', 'Siti Nurhaliza', 'iPhone 15 Pro', 'Electronics', 18000000.00, 5, 90000000.00, 'completed', 'Bank Transfer', '2025-11-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(106, 'TRX-UUB1PZSQPI', 'Eko Suryanto', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'pending', 'Cash', '2025-08-13', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(107, 'TRX-2MANXKCBXF', 'Budi Santoso', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'E-Wallet', '2025-07-23', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(108, 'TRX-U98EPX3AFF', 'Andi Pratama', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'Bank Transfer', '2025-07-04', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(109, 'TRX-CFZAWPKRBQ', 'Siti Nurhaliza', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'E-Wallet', '2025-09-03', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(110, 'TRX-STZ8GDIIHK', 'Nina Kusuma', 'Lego Set', 'Toys', 500000.00, 2, 1000000.00, 'completed', 'E-Wallet', '2025-11-10', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(111, 'TRX-KRB2O4JAK5', 'Nina Kusuma', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'E-Wallet', '2025-12-01', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(112, 'TRX-XQT00O405X', 'Budi Santoso', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'pending', 'Credit Card', '2025-08-20', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(113, 'TRX-WIKL0OY3OT', 'Agus Wijaya', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'cancelled', 'Debit Card', '2025-12-06', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(114, 'TRX-EGR1FSHHQC', 'Eko Suryanto', 'Raket Badminton', 'Sports', 450000.00, 2, 900000.00, 'completed', 'E-Wallet', '2025-09-06', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(115, 'TRX-MF1JUBRLBA', 'Andi Pratama', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'completed', 'E-Wallet', '2025-11-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(116, 'TRX-Y7RJ0BKYO2', 'Linda Wijayanti', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'pending', 'E-Wallet', '2025-09-18', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(117, 'TRX-KF8SGZXAYB', 'Eko Suryanto', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'E-Wallet', '2025-06-22', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(118, 'TRX-OL2REQB2WH', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 2, 900000.00, 'pending', 'Credit Card', '2025-08-04', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(119, 'TRX-SWILVXVBD6', 'Siti Nurhaliza', 'iPhone 15 Pro', 'Electronics', 18000000.00, 5, 90000000.00, 'completed', 'E-Wallet', '2025-10-11', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(120, 'TRX-Q7D7KUXEXY', 'Andi Pratama', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 5, 60000000.00, 'completed', 'Cash', '2025-10-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(121, 'TRX-NSS0AHUEZG', 'Siti Nurhaliza', 'Lego Set', 'Toys', 500000.00, 2, 1000000.00, 'cancelled', 'Debit Card', '2025-09-03', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(122, 'TRX-AWZAA0CVV8', 'Budi Santoso', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'completed', 'Bank Transfer', '2025-11-18', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(123, 'TRX-DMSCI6LRXN', 'Andi Pratama', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'completed', 'Cash', '2025-11-09', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(124, 'TRX-DIGCPBXXGV', 'Maya Sari', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'E-Wallet', '2025-09-16', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(125, 'TRX-AXUM1AQCYO', 'Dewi Lestari', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'cancelled', 'Debit Card', '2025-08-27', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(126, 'TRX-J3YM18OSKP', 'Linda Wijayanti', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'completed', 'Credit Card', '2025-06-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(127, 'TRX-O0BMZYMBCE', 'Dewi Lestari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 5, 90000000.00, 'cancelled', 'Credit Card', '2025-10-24', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(128, 'TRX-TJZBOX8DTZ', 'Linda Wijayanti', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'Bank Transfer', '2025-06-16', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(129, 'TRX-Z4MHN1LJ1E', 'Dewi Lestari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'cancelled', 'Cash', '2025-09-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(130, 'TRX-KDHFXWYVGO', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Bank Transfer', '2025-08-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(131, 'TRX-TZAZ4ZPLVW', 'Maya Sari', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'pending', 'Bank Transfer', '2025-12-06', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(132, 'TRX-RDEPYQJB4U', 'Agus Wijaya', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'cancelled', 'Cash', '2025-09-20', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(133, 'TRX-ATNUXRNFTY', 'Agus Wijaya', 'iPhone 15 Pro', 'Electronics', 18000000.00, 5, 90000000.00, 'completed', 'Bank Transfer', '2025-10-04', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(134, 'TRX-ADJCCCXTFX', 'Agus Wijaya', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'Debit Card', '2025-10-25', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(135, 'TRX-DCAMMP75LO', 'Budi Santoso', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'E-Wallet', '2025-12-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(136, 'TRX-NII1A4GN33', 'Nina Kusuma', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'Bank Transfer', '2025-12-01', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(137, 'TRX-WVIB2LJ1RT', 'Agus Wijaya', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'completed', 'Cash', '2025-09-25', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(138, 'TRX-RLPUDO4HHN', 'Andi Pratama', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'pending', 'Cash', '2025-09-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(139, 'TRX-SWEQ5M6SNA', 'Agus Wijaya', 'Sepatu Nike', 'Fashion', 1500000.00, 2, 3000000.00, 'completed', 'Credit Card', '2025-08-27', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(140, 'TRX-HAAXTLYSS5', 'Dewi Lestari', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'cancelled', 'Debit Card', '2025-09-27', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(141, 'TRX-BW2G9PTS7L', 'Eko Suryanto', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'pending', 'E-Wallet', '2025-08-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(142, 'TRX-GXLGEZNW7G', 'Andi Pratama', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'pending', 'Debit Card', '2025-11-09', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(143, 'TRX-ZE0HX8RJFL', 'Siti Nurhaliza', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'completed', 'Credit Card', '2025-11-24', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(144, 'TRX-TJY2EJE48P', 'Maya Sari', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'cancelled', 'Cash', '2025-11-01', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(145, 'TRX-UYZ6BP5556', 'Andi Pratama', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'cancelled', 'Debit Card', '2025-07-11', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(146, 'TRX-ZZXE5FT906', 'Dewi Lestari', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'E-Wallet', '2025-08-29', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(147, 'TRX-PDJFEUPFUI', 'Maya Sari', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'Cash', '2025-10-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(148, 'TRX-JGTT0OAOCZ', 'Andi Pratama', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'pending', 'Bank Transfer', '2025-10-13', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(149, 'TRX-0V7WOAOUOF', 'Budi Santoso', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Bank Transfer', '2025-09-21', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(150, 'TRX-HS4U0FJPKR', 'Andi Pratama', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'cancelled', 'Bank Transfer', '2025-07-25', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(151, 'TRX-FMY2QVJEKP', 'Siti Nurhaliza', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'Debit Card', '2025-10-12', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(152, 'TRX-CPV3LVHIBF', 'Agus Wijaya', 'Tas Ransel', 'Fashion', 350000.00, 5, 1750000.00, 'completed', 'E-Wallet', '2025-08-16', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(153, 'TRX-2TJLFHONAD', 'Budi Santoso', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'E-Wallet', '2025-10-29', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(154, 'TRX-4LA8LJTFZR', 'Maya Sari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'completed', 'E-Wallet', '2025-09-04', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(155, 'TRX-QDI73IEXLD', 'Siti Nurhaliza', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'cancelled', 'Debit Card', '2025-10-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(156, 'TRX-IVAWO5NRYY', 'Andi Pratama', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'pending', 'Cash', '2025-10-22', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(157, 'TRX-HXKFYGYRTW', 'Eko Suryanto', 'Lego Set', 'Toys', 500000.00, 2, 1000000.00, 'completed', 'Bank Transfer', '2025-06-23', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(158, 'TRX-KJXBPPLSDI', 'Eko Suryanto', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'cancelled', 'Credit Card', '2025-11-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(159, 'TRX-XY3XYY7O6J', 'Maya Sari', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Debit Card', '2025-08-18', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(160, 'TRX-JFQEIEYVSF', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Cash', '2025-10-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(161, 'TRX-IYSTJ9UF2Z', 'Eko Suryanto', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'pending', 'E-Wallet', '2025-07-15', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(162, 'TRX-RRRQLYK6TL', 'Rudi Hermawan', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'completed', 'Credit Card', '2025-09-13', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(163, 'TRX-JZYAK37LBD', 'Rudi Hermawan', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'E-Wallet', '2025-12-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(164, 'TRX-C3B4URTAKJ', 'Andi Pratama', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'Cash', '2025-07-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(165, 'TRX-BXYUJ8UXWH', 'Siti Nurhaliza', 'Raket Badminton', 'Sports', 450000.00, 2, 900000.00, 'completed', 'E-Wallet', '2025-10-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(166, 'TRX-FWINLBBUZU', 'Nina Kusuma', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'Credit Card', '2025-07-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(167, 'TRX-X1ZPRFKW93', 'Maya Sari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'pending', 'E-Wallet', '2025-08-02', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(168, 'TRX-FAJNET0ISE', 'Linda Wijayanti', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'completed', 'Debit Card', '2025-07-11', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(169, 'TRX-JHVCCZDU9T', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'E-Wallet', '2025-06-29', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(170, 'TRX-4K8UQJLQGT', 'Andi Pratama', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'cancelled', 'Credit Card', '2025-08-19', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(171, 'TRX-5JNWT1889G', 'Nina Kusuma', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'completed', 'Bank Transfer', '2025-09-21', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(172, 'TRX-DPJVCDIQFY', 'Rudi Hermawan', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'completed', 'Bank Transfer', '2025-09-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(173, 'TRX-P5HUJDLUPF', 'Budi Santoso', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Debit Card', '2025-09-15', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(174, 'TRX-RD6BDQWCUD', 'Andi Pratama', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'cancelled', 'Credit Card', '2025-08-27', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(175, 'TRX-X3B4HAINN7', 'Budi Santoso', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'completed', 'Debit Card', '2025-12-09', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(176, 'TRX-WZQ2Z1GJHO', 'Linda Wijayanti', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'pending', 'Bank Transfer', '2025-10-21', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(177, 'TRX-7PKXPABEFR', 'Linda Wijayanti', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'cancelled', 'Credit Card', '2025-08-20', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(178, 'TRX-XAGVSSKTV8', 'Linda Wijayanti', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'cancelled', 'Debit Card', '2025-09-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(179, 'TRX-KEILE5ENT9', 'Maya Sari', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'E-Wallet', '2025-12-09', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(180, 'TRX-XEJNVAZEJ8', 'Agus Wijaya', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 5, 75000000.00, 'completed', 'E-Wallet', '2025-08-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(181, 'TRX-Q1RKXCMLKM', 'Eko Suryanto', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'completed', 'Debit Card', '2025-09-23', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(182, 'TRX-SEEEZ0GSCI', 'Siti Nurhaliza', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'pending', 'Bank Transfer', '2025-06-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(183, 'TRX-X0KUPH7B8Z', 'Agus Wijaya', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'cancelled', 'Cash', '2025-09-16', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(184, 'TRX-GP12RI0DGU', 'Budi Santoso', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'cancelled', 'Credit Card', '2025-07-24', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(185, 'TRX-YNTN4RMRQE', 'Maya Sari', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'Cash', '2025-09-18', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(186, 'TRX-GWSWDPXHQQ', 'Dewi Lestari', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'completed', 'Credit Card', '2025-07-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(187, 'TRX-K1YSJFKXDK', 'Eko Suryanto', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'cancelled', 'Cash', '2025-12-03', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(188, 'TRX-PLQZBAJJXA', 'Andi Pratama', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'Debit Card', '2025-11-19', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(189, 'TRX-SH2JHUMEDZ', 'Linda Wijayanti', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'Credit Card', '2025-11-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(190, 'TRX-AWKUPEEMLR', 'Budi Santoso', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 5, 75000000.00, 'completed', 'Cash', '2025-09-12', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(191, 'TRX-9BIQBMMGUN', 'Budi Santoso', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'E-Wallet', '2025-08-06', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(192, 'TRX-JDB5WTY8ET', 'Budi Santoso', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'cancelled', 'Credit Card', '2025-09-10', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(193, 'TRX-QOJ3IYLOPQ', 'Rudi Hermawan', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'Bank Transfer', '2025-07-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(194, 'TRX-SG2T6BK2KM', 'Eko Suryanto', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'cancelled', 'Bank Transfer', '2025-12-07', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(195, 'TRX-DJLQVJJB8C', 'Rudi Hermawan', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'completed', 'E-Wallet', '2025-09-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(196, 'TRX-UQ0NXQNCWP', 'Siti Nurhaliza', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'completed', 'E-Wallet', '2025-07-20', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(197, 'TRX-E4LNSTEBOR', 'Rudi Hermawan', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'pending', 'Credit Card', '2025-11-29', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(198, 'TRX-EZFGHYDOO5', 'Eko Suryanto', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'completed', 'Credit Card', '2025-11-12', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(199, 'TRX-39ZS3XXNDD', 'Dewi Lestari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'completed', 'Cash', '2025-07-01', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(200, 'TRX-HNTH7FXSWW', 'Siti Nurhaliza', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Cash', '2025-09-15', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(201, 'TRX-KZPDZQNAX2', 'Rudi Hermawan', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'completed', 'Cash', '2025-07-22', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(202, 'TRX-MVKDWMV3LV', 'Nina Kusuma', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'completed', 'Credit Card', '2025-09-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(203, 'TRX-NEAYRSWTH2', 'Maya Sari', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 5, 75000000.00, 'completed', 'Debit Card', '2025-11-06', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(204, 'TRX-YUMIH0W9F7', 'Agus Wijaya', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'cancelled', 'E-Wallet', '2025-08-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(205, 'TRX-FKAFYGP9RZ', 'Dewi Lestari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'pending', 'Credit Card', '2025-10-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(206, 'TRX-U4PWNDBNFQ', 'Eko Suryanto', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'completed', 'E-Wallet', '2025-10-25', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(207, 'TRX-6HINETAHE0', 'Eko Suryanto', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 4, 60000000.00, 'completed', 'Debit Card', '2025-08-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(208, 'TRX-ETZVURKJJO', 'Dewi Lestari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'Debit Card', '2025-08-12', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(209, 'TRX-YIFEYAXUOC', 'Budi Santoso', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'E-Wallet', '2025-10-31', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(210, 'TRX-GVURB890IT', 'Rudi Hermawan', 'Buku Programming', 'Books', 150000.00, 5, 750000.00, 'completed', 'Debit Card', '2025-11-12', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(211, 'TRX-CFQWFUCVDK', 'Agus Wijaya', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'completed', 'E-Wallet', '2025-07-03', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(212, 'TRX-B714EDUEZQ', 'Agus Wijaya', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'Credit Card', '2025-07-10', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(213, 'TRX-HQPQCA1JGG', 'Dewi Lestari', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'cancelled', 'Bank Transfer', '2025-08-13', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(214, 'TRX-HFATARPWNV', 'Budi Santoso', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'completed', 'Debit Card', '2025-09-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(215, 'TRX-KCXT0JLDKE', 'Dewi Lestari', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'E-Wallet', '2025-08-23', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(216, 'TRX-34HQSNOZWO', 'Andi Pratama', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'completed', 'Cash', '2025-06-17', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(217, 'TRX-SBRAGECT1N', 'Eko Suryanto', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'E-Wallet', '2025-09-22', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(218, 'TRX-7J7NXRQZJO', 'Eko Suryanto', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'completed', 'Debit Card', '2025-10-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(219, 'TRX-U6BD6RWPXT', 'Maya Sari', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'cancelled', 'Bank Transfer', '2025-07-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(220, 'TRX-UEN5RNGZFH', 'Eko Suryanto', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'cancelled', 'Bank Transfer', '2025-11-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(221, 'TRX-SSI2LPSHBS', 'Budi Santoso', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'Credit Card', '2025-07-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(222, 'TRX-RO7XYUCEBJ', 'Linda Wijayanti', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'pending', 'E-Wallet', '2025-08-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(223, 'TRX-4ZVTDU6LCG', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 4, 1800000.00, 'completed', 'Credit Card', '2025-11-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(224, 'TRX-YTHBJKCWNP', 'Budi Santoso', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'completed', 'Cash', '2025-11-02', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(225, 'TRX-XCB86PROUV', 'Agus Wijaya', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 5, 75000000.00, 'pending', 'Cash', '2025-07-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(226, 'TRX-NGRJIURPVW', 'Budi Santoso', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'cancelled', 'E-Wallet', '2025-11-13', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(227, 'TRX-PC65ZDVJFI', 'Linda Wijayanti', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'pending', 'Credit Card', '2025-11-23', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(228, 'TRX-V7VMLMDJII', 'Dewi Lestari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'Credit Card', '2025-08-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(229, 'TRX-YYFKCNBMGD', 'Budi Santoso', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'E-Wallet', '2025-10-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(230, 'TRX-JN4ZDYNNJ2', 'Budi Santoso', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'completed', 'Bank Transfer', '2025-07-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(231, 'TRX-FXI2HNJUUY', 'Maya Sari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'E-Wallet', '2025-08-27', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(232, 'TRX-CG08DXZ2UW', 'Andi Pratama', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'pending', 'Cash', '2025-07-16', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(233, 'TRX-ECT2CVXAAL', 'Rudi Hermawan', 'Buku Programming', 'Books', 150000.00, 5, 750000.00, 'completed', 'E-Wallet', '2025-07-01', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(234, 'TRX-FTV10AOVT0', 'Andi Pratama', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'completed', 'E-Wallet', '2025-09-11', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(235, 'TRX-TM07TGLEXJ', 'Andi Pratama', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'completed', 'Debit Card', '2025-11-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(236, 'TRX-1RCSF9KPYB', 'Agus Wijaya', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'completed', 'Debit Card', '2025-10-20', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(237, 'TRX-L3UKAHDEIO', 'Eko Suryanto', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'pending', 'Cash', '2025-11-26', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(238, 'TRX-EVYRMGM1AV', 'Linda Wijayanti', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'completed', 'Debit Card', '2025-10-14', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(239, 'TRX-HNAJQCGQXV', 'Maya Sari', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'E-Wallet', '2025-10-02', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(240, 'TRX-SQSYRFZXYU', 'Budi Santoso', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'pending', 'Bank Transfer', '2025-08-25', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(241, 'TRX-V9LMGUQ9NF', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'E-Wallet', '2025-10-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(242, 'TRX-ULU5WGOCMM', 'Siti Nurhaliza', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'completed', 'Debit Card', '2025-08-29', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(243, 'TRX-U3PMHWWLKK', 'Nina Kusuma', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'cancelled', 'Debit Card', '2025-11-25', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(244, 'TRX-86QIEDI8GX', 'Nina Kusuma', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'pending', 'Bank Transfer', '2025-08-30', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(245, 'TRX-W3R90DFLIL', 'Linda Wijayanti', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'Cash', '2025-11-05', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(246, 'TRX-FFH03AWDIN', 'Andi Pratama', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'completed', 'Debit Card', '2025-10-18', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(247, 'TRX-8EW309LV8D', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'E-Wallet', '2025-07-07', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(248, 'TRX-TZN9XKBTXQ', 'Budi Santoso', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'completed', 'Debit Card', '2025-12-07', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(249, 'TRX-EGCU5TIP25', 'Agus Wijaya', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'completed', 'Bank Transfer', '2025-09-18', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(250, 'TRX-XCDSHG7AAD', 'Budi Santoso', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'completed', 'Cash', '2025-11-06', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(251, 'TRX-SOPUWP0EPM', 'Agus Wijaya', 'Tas Ransel', 'Fashion', 350000.00, 2, 700000.00, 'completed', 'Cash', '2025-08-06', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(252, 'TRX-DTXGP9HZH2', 'Nina Kusuma', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'cancelled', 'E-Wallet', '2025-07-02', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(253, 'TRX-NCQIGIDR16', 'Dewi Lestari', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'completed', 'Credit Card', '2025-07-10', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(254, 'TRX-TAMCNMNTDT', 'Linda Wijayanti', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Cash', '2025-08-23', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(255, 'TRX-TFYG8PCJLH', 'Agus Wijaya', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'pending', 'Debit Card', '2025-09-18', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(256, 'TRX-V6KALEMC5I', 'Agus Wijaya', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'Bank Transfer', '2025-11-08', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(257, 'TRX-NFXSJMGEJ0', 'Linda Wijayanti', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 4, 60000000.00, 'completed', 'Debit Card', '2025-08-02', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(258, 'TRX-QYUR2DQCME', 'Siti Nurhaliza', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'Debit Card', '2025-10-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(259, 'TRX-HNMS4FIAH5', 'Rudi Hermawan', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'Credit Card', '2025-09-29', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(260, 'TRX-3JUKKQKOXC', 'Linda Wijayanti', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 5, 60000000.00, 'completed', 'Cash', '2025-11-27', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(261, 'TRX-UFRJNTSIAN', 'Maya Sari', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'Cash', '2025-07-22', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(262, 'TRX-X8AVKUCACQ', 'Agus Wijaya', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Bank Transfer', '2025-08-21', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(263, 'TRX-3CKDTBC9U6', 'Rudi Hermawan', 'Sepatu Nike', 'Fashion', 1500000.00, 4, 6000000.00, 'completed', 'Credit Card', '2025-08-28', '2025-12-11 02:13:32', '2025-12-11 02:13:32'),
(264, 'TRX-RYAKO0SPKJ', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'Cash', '2025-10-16', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(265, 'TRX-KHNBGTNKVS', 'Agus Wijaya', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Cash', '2025-07-23', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(266, 'TRX-BLD72ZI1NF', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'Debit Card', '2025-12-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(267, 'TRX-OWEYWFIWGY', 'Maya Sari', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'completed', 'Debit Card', '2025-09-22', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(268, 'TRX-GX814XJAQW', 'Budi Santoso', 'Raket Badminton', 'Sports', 450000.00, 4, 1800000.00, 'pending', 'Debit Card', '2025-06-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(269, 'TRX-IKGPXADXUC', 'Andi Pratama', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'completed', 'Bank Transfer', '2025-09-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(270, 'TRX-RJYSMPG5XG', 'Nina Kusuma', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 2, 30000000.00, 'cancelled', 'Bank Transfer', '2025-09-08', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(271, 'TRX-Z21SGJWA0M', 'Budi Santoso', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 5, 60000000.00, 'pending', 'Cash', '2025-08-16', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(272, 'TRX-IFUJ885ZE4', 'Maya Sari', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 4, 60000000.00, 'pending', 'Bank Transfer', '2025-11-09', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(273, 'TRX-4MTVT5J0PZ', 'Budi Santoso', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'Credit Card', '2025-11-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(274, 'TRX-ME1QCM2ZFT', 'Rudi Hermawan', 'Buku Programming', 'Books', 150000.00, 5, 750000.00, 'completed', 'Bank Transfer', '2025-12-05', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(275, 'TRX-KNXFBMD36U', 'Linda Wijayanti', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'completed', 'Credit Card', '2025-09-11', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(276, 'TRX-X8QOZQIDOY', 'Budi Santoso', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'E-Wallet', '2025-12-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(277, 'TRX-KX0ENUL1KX', 'Eko Suryanto', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'Debit Card', '2025-08-14', '2025-12-11 02:13:33', '2025-12-11 02:13:33');
INSERT INTO `transactions` (`id`, `transaction_code`, `customer_name`, `product_name`, `category`, `amount`, `quantity`, `total`, `status`, `payment_method`, `transaction_date`, `created_at`, `updated_at`) VALUES
(278, 'TRX-XASCSMNZIN', 'Nina Kusuma', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'E-Wallet', '2025-09-26', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(279, 'TRX-K2EMVI985J', 'Eko Suryanto', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'E-Wallet', '2025-10-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(280, 'TRX-ELVFKJFWST', 'Maya Sari', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'cancelled', 'Credit Card', '2025-11-05', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(281, 'TRX-44R1ADVZCC', 'Maya Sari', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'completed', 'Cash', '2025-11-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(282, 'TRX-45A4OMVXDW', 'Nina Kusuma', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'completed', 'Bank Transfer', '2025-07-08', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(283, 'TRX-EDJCFNN9FK', 'Maya Sari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'Debit Card', '2025-11-03', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(284, 'TRX-E1LBUTXMS6', 'Dewi Lestari', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Cash', '2025-11-21', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(285, 'TRX-W2SJKB2EZZ', 'Agus Wijaya', 'Sepatu Nike', 'Fashion', 1500000.00, 4, 6000000.00, 'cancelled', 'E-Wallet', '2025-11-01', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(286, 'TRX-HYKOP0PP0W', 'Agus Wijaya', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'cancelled', 'Credit Card', '2025-07-28', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(287, 'TRX-JPEUVWHMPQ', 'Eko Suryanto', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'Credit Card', '2025-10-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(288, 'TRX-1R7Z5MNZU5', 'Rudi Hermawan', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'cancelled', 'Debit Card', '2025-07-16', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(289, 'TRX-K0E4DZ10J1', 'Dewi Lestari', 'Lego Set', 'Toys', 500000.00, 2, 1000000.00, 'completed', 'Debit Card', '2025-08-05', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(290, 'TRX-BUTSFRZGYC', 'Nina Kusuma', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'Bank Transfer', '2025-08-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(291, 'TRX-2VES5Z6MJD', 'Eko Suryanto', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'completed', 'Credit Card', '2025-08-28', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(292, 'TRX-MAXQLIYJRF', 'Rudi Hermawan', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'completed', 'Debit Card', '2025-09-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(293, 'TRX-CR3IB0UTEY', 'Dewi Lestari', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'Debit Card', '2025-11-09', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(294, 'TRX-TEVVC7JJQT', 'Dewi Lestari', 'Kemeja Batik', 'Fashion', 250000.00, 5, 1250000.00, 'pending', 'E-Wallet', '2025-07-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(295, 'TRX-SX9OREBUA0', 'Agus Wijaya', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'completed', 'E-Wallet', '2025-07-25', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(296, 'TRX-PDW0TJXHWQ', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'completed', 'Debit Card', '2025-11-08', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(297, 'TRX-NEVCOTES2I', 'Siti Nurhaliza', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'cancelled', 'Credit Card', '2025-09-21', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(298, 'TRX-OHPZCN7VVW', 'Eko Suryanto', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'pending', 'Credit Card', '2025-06-30', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(299, 'TRX-GGPXDPBDKB', 'Linda Wijayanti', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'pending', 'Credit Card', '2025-07-31', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(300, 'TRX-L4EET1BJ6B', 'Linda Wijayanti', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'pending', 'Debit Card', '2025-10-22', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(301, 'TRX-T0UGCOK4QE', 'Andi Pratama', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'completed', 'Credit Card', '2025-08-27', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(302, 'TRX-HTQ78WT9MV', 'Maya Sari', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'cancelled', 'Credit Card', '2025-10-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(303, 'TRX-IDQQFOCKB4', 'Nina Kusuma', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'completed', 'Cash', '2025-11-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(304, 'TRX-2TVJOMNL4K', 'Nina Kusuma', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'pending', 'Bank Transfer', '2025-08-04', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(305, 'TRX-OT1SD1AKQD', 'Siti Nurhaliza', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Credit Card', '2025-11-13', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(306, 'TRX-62KZXYALKI', 'Eko Suryanto', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'cancelled', 'Bank Transfer', '2025-10-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(307, 'TRX-KWPGOI0OV1', 'Maya Sari', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'pending', 'Bank Transfer', '2025-06-28', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(308, 'TRX-NZ7J9FBB91', 'Maya Sari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'Bank Transfer', '2025-08-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(309, 'TRX-CXRTYBFKPE', 'Rudi Hermawan', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'completed', 'Bank Transfer', '2025-07-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(310, 'TRX-CJ8UIO4QPW', 'Budi Santoso', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'Cash', '2025-12-05', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(311, 'TRX-MXIYB5KJ1E', 'Siti Nurhaliza', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'cancelled', 'Credit Card', '2025-09-09', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(312, 'TRX-7SSGXUEUPY', 'Budi Santoso', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'pending', 'E-Wallet', '2025-08-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(313, 'TRX-VBRYLZKDCQ', 'Andi Pratama', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Debit Card', '2025-11-27', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(314, 'TRX-P0EFK1F2IV', 'Budi Santoso', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 2, 30000000.00, 'cancelled', 'E-Wallet', '2025-11-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(315, 'TRX-XZHVYUWGZ9', 'Linda Wijayanti', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'cancelled', 'E-Wallet', '2025-06-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(316, 'TRX-UAUGIF3NNK', 'Linda Wijayanti', 'Raket Badminton', 'Sports', 450000.00, 2, 900000.00, 'cancelled', 'Bank Transfer', '2025-11-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(317, 'TRX-I1B5CRTVZB', 'Linda Wijayanti', 'Kemeja Batik', 'Fashion', 250000.00, 5, 1250000.00, 'pending', 'Credit Card', '2025-11-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(318, 'TRX-92VAUWISBX', 'Eko Suryanto', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'completed', 'Credit Card', '2025-07-26', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(319, 'TRX-5H4EUY5UKU', 'Dewi Lestari', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'pending', 'Credit Card', '2025-10-09', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(320, 'TRX-S0CTR5VPHY', 'Rudi Hermawan', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'completed', 'Debit Card', '2025-08-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(321, 'TRX-VRSCR9HJCY', 'Linda Wijayanti', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Debit Card', '2025-10-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(322, 'TRX-B1CJDOXR04', 'Nina Kusuma', 'Raket Badminton', 'Sports', 450000.00, 4, 1800000.00, 'completed', 'Cash', '2025-07-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(323, 'TRX-ZUPVBEWWVT', 'Siti Nurhaliza', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'E-Wallet', '2025-08-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(324, 'TRX-EJ86KMZIR0', 'Dewi Lestari', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'E-Wallet', '2025-11-20', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(325, 'TRX-8TJFGFWUEL', 'Budi Santoso', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'completed', 'Bank Transfer', '2025-07-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(326, 'TRX-2PAWU7EQ3E', 'Budi Santoso', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'E-Wallet', '2025-08-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(327, 'TRX-ML3IYXRPUX', 'Andi Pratama', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'Bank Transfer', '2025-06-28', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(328, 'TRX-HZVQJUDRL9', 'Agus Wijaya', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'Cash', '2025-07-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(329, 'TRX-463RBFTXDI', 'Andi Pratama', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'completed', 'Cash', '2025-06-21', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(330, 'TRX-AP1ZAOGDAB', 'Agus Wijaya', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'cancelled', 'Credit Card', '2025-07-11', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(331, 'TRX-1MRKOID54Y', 'Rudi Hermawan', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'completed', 'Credit Card', '2025-07-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(332, 'TRX-0FUIT0ZBQE', 'Maya Sari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 5, 90000000.00, 'completed', 'Bank Transfer', '2025-06-24', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(333, 'TRX-JCY5YKHYC7', 'Dewi Lestari', 'Kemeja Batik', 'Fashion', 250000.00, 5, 1250000.00, 'completed', 'Cash', '2025-06-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(334, 'TRX-SGWJOBNLVR', 'Eko Suryanto', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'Cash', '2025-10-20', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(335, 'TRX-EE49HJPL0I', 'Dewi Lestari', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'Bank Transfer', '2025-11-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(336, 'TRX-Y1SCMLPBKM', 'Rudi Hermawan', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'cancelled', 'E-Wallet', '2025-07-03', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(337, 'TRX-L72JTPN4FC', 'Andi Pratama', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'cancelled', 'Bank Transfer', '2025-09-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(338, 'TRX-ONYT69EUUO', 'Dewi Lestari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'cancelled', 'Debit Card', '2025-06-21', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(339, 'TRX-YO53EZVXLS', 'Linda Wijayanti', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'cancelled', 'Debit Card', '2025-07-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(340, 'TRX-XQIQONFPCE', 'Rudi Hermawan', 'Lego Set', 'Toys', 500000.00, 2, 1000000.00, 'completed', 'Credit Card', '2025-11-27', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(341, 'TRX-NY8MKVJKHW', 'Rudi Hermawan', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'completed', 'E-Wallet', '2025-08-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(342, 'TRX-FZ9YVT3Y9Y', 'Maya Sari', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'E-Wallet', '2025-08-14', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(343, 'TRX-G1TW6FPHZC', 'Andi Pratama', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'cancelled', 'Credit Card', '2025-06-21', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(344, 'TRX-O54DXXLGXS', 'Andi Pratama', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'cancelled', 'Bank Transfer', '2025-10-28', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(345, 'TRX-5PJJRVP9BE', 'Andi Pratama', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'pending', 'Bank Transfer', '2025-06-24', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(346, 'TRX-HEBVADSYEC', 'Maya Sari', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'E-Wallet', '2025-09-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(347, 'TRX-BYQUWNNK1S', 'Maya Sari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'completed', 'Debit Card', '2025-07-27', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(348, 'TRX-MGBHDIXIED', 'Budi Santoso', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'completed', 'Bank Transfer', '2025-09-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(349, 'TRX-LSYYKCHL8D', 'Budi Santoso', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'completed', 'Debit Card', '2025-11-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(350, 'TRX-PDITVK9UQK', 'Eko Suryanto', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'completed', 'Bank Transfer', '2025-10-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(351, 'TRX-RLT0ANW3ZY', 'Eko Suryanto', 'Kemeja Batik', 'Fashion', 250000.00, 5, 1250000.00, 'completed', 'Cash', '2025-10-31', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(352, 'TRX-I8A5OJC02B', 'Maya Sari', 'Raket Badminton', 'Sports', 450000.00, 4, 1800000.00, 'cancelled', 'Bank Transfer', '2025-10-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(353, 'TRX-CB7RYFP5UD', 'Linda Wijayanti', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Cash', '2025-09-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(354, 'TRX-MWWH0I7H9Q', 'Linda Wijayanti', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'pending', 'Cash', '2025-06-20', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(355, 'TRX-RWQLXS5N1H', 'Budi Santoso', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'cancelled', 'Debit Card', '2025-10-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(356, 'TRX-GNQ8ZKI7DK', 'Eko Suryanto', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'pending', 'E-Wallet', '2025-11-30', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(357, 'TRX-M5VMHA8QIB', 'Linda Wijayanti', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Bank Transfer', '2025-08-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(358, 'TRX-TSPQHIO5IU', 'Agus Wijaya', 'Buku Programming', 'Books', 150000.00, 5, 750000.00, 'completed', 'Cash', '2025-07-05', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(359, 'TRX-OVBEX09FAD', 'Andi Pratama', 'Kemeja Batik', 'Fashion', 250000.00, 5, 1250000.00, 'completed', 'Cash', '2025-08-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(360, 'TRX-MPL1HVC1EQ', 'Dewi Lestari', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'completed', 'Bank Transfer', '2025-08-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(361, 'TRX-2ASNHSOYX7', 'Siti Nurhaliza', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'Cash', '2025-07-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(362, 'TRX-0YXMNEFK91', 'Rudi Hermawan', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'E-Wallet', '2025-11-04', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(363, 'TRX-FKQHGCQCXS', 'Andi Pratama', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'pending', 'E-Wallet', '2025-10-26', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(364, 'TRX-NH3KVRCYFD', 'Nina Kusuma', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'pending', 'Debit Card', '2025-11-04', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(365, 'TRX-PDKFMEWSN9', 'Maya Sari', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'completed', 'Credit Card', '2025-10-20', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(366, 'TRX-HQX7IJD5RP', 'Linda Wijayanti', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'Debit Card', '2025-09-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(367, 'TRX-49BV8JBILJ', 'Dewi Lestari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'cancelled', 'Credit Card', '2025-12-11', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(368, 'TRX-U5NU6ZXROZ', 'Agus Wijaya', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'completed', 'Cash', '2025-10-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(369, 'TRX-UG2UHKSBKZ', 'Andi Pratama', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'cancelled', 'E-Wallet', '2025-08-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(370, 'TRX-4T3T7FPTYX', 'Andi Pratama', 'Buku Programming', 'Books', 150000.00, 5, 750000.00, 'completed', 'Debit Card', '2025-07-22', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(371, 'TRX-XSUFJ99VTW', 'Rudi Hermawan', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'completed', 'E-Wallet', '2025-07-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(372, 'TRX-DVXHKILL55', 'Siti Nurhaliza', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'completed', 'Bank Transfer', '2025-06-27', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(373, 'TRX-NAKPZRVD8A', 'Eko Suryanto', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'cancelled', 'Debit Card', '2025-09-26', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(374, 'TRX-5TDMC5LS9R', 'Agus Wijaya', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'completed', 'E-Wallet', '2025-08-22', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(375, 'TRX-W2CJPQXCIP', 'Rudi Hermawan', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 5, 75000000.00, 'completed', 'E-Wallet', '2025-12-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(376, 'TRX-N8NHEKSCQW', 'Dewi Lestari', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'pending', 'Debit Card', '2025-09-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(377, 'TRX-JVAUZM91WE', 'Maya Sari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'Credit Card', '2025-09-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(378, 'TRX-YIMWFGMDDU', 'Eko Suryanto', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'Debit Card', '2025-11-24', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(379, 'TRX-NERGWTTUOM', 'Nina Kusuma', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'completed', 'Debit Card', '2025-08-30', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(380, 'TRX-I1D1TG5DPC', 'Rudi Hermawan', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'completed', 'E-Wallet', '2025-10-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(381, 'TRX-RHVJ5HUDCU', 'Siti Nurhaliza', 'Buku Programming', 'Books', 150000.00, 5, 750000.00, 'cancelled', 'Debit Card', '2025-10-31', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(382, 'TRX-VS43BWSL7F', 'Eko Suryanto', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'pending', 'Credit Card', '2025-08-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(383, 'TRX-LIVGSJ6TOH', 'Nina Kusuma', 'Novel Fiksi', 'Books', 85000.00, 3, 255000.00, 'completed', 'Cash', '2025-07-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(384, 'TRX-1DSV574KJK', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Credit Card', '2025-11-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(385, 'TRX-NF1KMAVXXJ', 'Andi Pratama', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 5, 60000000.00, 'completed', 'Credit Card', '2025-11-09', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(386, 'TRX-DXXDJ32G9A', 'Budi Santoso', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'completed', 'Bank Transfer', '2025-12-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(387, 'TRX-GXWJRL6EG1', 'Dewi Lestari', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'completed', 'Bank Transfer', '2025-10-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(388, 'TRX-GWUGWCL86N', 'Dewi Lestari', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'pending', 'Bank Transfer', '2025-08-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(389, 'TRX-BKJKD3GRB0', 'Maya Sari', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'pending', 'Cash', '2025-08-30', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(390, 'TRX-QO6OACHPVW', 'Eko Suryanto', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'completed', 'Bank Transfer', '2025-08-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(391, 'TRX-ZBCKCYHLCD', 'Rudi Hermawan', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'pending', 'Bank Transfer', '2025-06-30', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(392, 'TRX-N78IMW6W0L', 'Maya Sari', 'Sepatu Nike', 'Fashion', 1500000.00, 2, 3000000.00, 'completed', 'Bank Transfer', '2025-11-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(393, 'TRX-K0HLQWMFQS', 'Andi Pratama', 'Kemeja Batik', 'Fashion', 250000.00, 4, 1000000.00, 'completed', 'Bank Transfer', '2025-11-13', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(394, 'TRX-JZCNLVJKNQ', 'Eko Suryanto', 'iPhone 15 Pro', 'Electronics', 18000000.00, 5, 90000000.00, 'completed', 'Bank Transfer', '2025-07-22', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(395, 'TRX-XDBBA85UQT', 'Andi Pratama', 'Sepatu Nike', 'Fashion', 1500000.00, 2, 3000000.00, 'completed', 'Credit Card', '2025-10-30', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(396, 'TRX-C2NUWOUBA2', 'Dewi Lestari', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'pending', 'E-Wallet', '2025-07-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(397, 'TRX-WBUF5WMJ0P', 'Andi Pratama', 'Tas Ransel', 'Fashion', 350000.00, 5, 1750000.00, 'completed', 'Cash', '2025-08-08', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(398, 'TRX-ZAHTROVIWG', 'Rudi Hermawan', 'Raket Badminton', 'Sports', 450000.00, 4, 1800000.00, 'completed', 'E-Wallet', '2025-08-11', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(399, 'TRX-PJOBRYFGF4', 'Andi Pratama', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'Debit Card', '2025-10-28', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(400, 'TRX-IRGIOKHI6Z', 'Budi Santoso', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'Debit Card', '2025-10-14', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(401, 'TRX-4I5ESMN1DV', 'Linda Wijayanti', 'Sepatu Nike', 'Fashion', 1500000.00, 4, 6000000.00, 'pending', 'Bank Transfer', '2025-06-21', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(402, 'TRX-XBG6HO9R7W', 'Rudi Hermawan', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'cancelled', 'Debit Card', '2025-12-09', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(403, 'TRX-VE7LGBQG2Z', 'Maya Sari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 5, 60000000.00, 'completed', 'Debit Card', '2025-08-20', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(404, 'TRX-8YMCLLCWTI', 'Andi Pratama', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'Cash', '2025-07-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(405, 'TRX-B9JPLNNQXC', 'Budi Santoso', 'Novel Fiksi', 'Books', 85000.00, 1, 85000.00, 'completed', 'Cash', '2025-10-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(406, 'TRX-7CAXOXMGXK', 'Nina Kusuma', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'completed', 'Cash', '2025-09-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(407, 'TRX-SYTNFOAYIK', 'Linda Wijayanti', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'completed', 'E-Wallet', '2025-11-16', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(408, 'TRX-GZNQ05BXZB', 'Maya Sari', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'completed', 'Bank Transfer', '2025-12-05', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(409, 'TRX-0VDDBBBQEB', 'Andi Pratama', 'Tas Ransel', 'Fashion', 350000.00, 2, 700000.00, 'completed', 'Cash', '2025-07-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(410, 'TRX-M1GN1J6NEX', 'Andi Pratama', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'Debit Card', '2025-07-03', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(411, 'TRX-BDHH0VYDOG', 'Dewi Lestari', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'cancelled', 'Bank Transfer', '2025-09-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(412, 'TRX-KXLADGL9MK', 'Eko Suryanto', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'completed', 'E-Wallet', '2025-08-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(413, 'TRX-CNAIMIRBXG', 'Eko Suryanto', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'completed', 'Credit Card', '2025-08-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(414, 'TRX-VIAE43NNZ5', 'Nina Kusuma', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'completed', 'Debit Card', '2025-12-11', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(415, 'TRX-C6LV2AI4Q8', 'Rudi Hermawan', 'iPhone 15 Pro', 'Electronics', 18000000.00, 5, 90000000.00, 'completed', 'Debit Card', '2025-12-09', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(416, 'TRX-JPEQ2OL4QC', 'Eko Suryanto', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Bank Transfer', '2025-07-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(417, 'TRX-1WCF3VYQWN', 'Budi Santoso', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'completed', 'E-Wallet', '2025-10-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(418, 'TRX-ZAHAMHZLLP', 'Budi Santoso', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'completed', 'Cash', '2025-07-21', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(419, 'TRX-206VFIK6ET', 'Siti Nurhaliza', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'pending', 'Credit Card', '2025-08-30', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(420, 'TRX-IQ3EKZISTS', 'Rudi Hermawan', 'Tas Ransel', 'Fashion', 350000.00, 4, 1400000.00, 'cancelled', 'Cash', '2025-10-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(421, 'TRX-RPV7SXIDCF', 'Andi Pratama', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 4, 60000000.00, 'completed', 'Bank Transfer', '2025-10-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(422, 'TRX-X1XNO2LAIK', 'Andi Pratama', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'completed', 'Bank Transfer', '2025-11-25', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(423, 'TRX-U6KBNCOHQF', 'Dewi Lestari', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'pending', 'Debit Card', '2025-11-25', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(424, 'TRX-6CXRBLD7O1', 'Maya Sari', 'Lego Set', 'Toys', 500000.00, 5, 2500000.00, 'completed', 'E-Wallet', '2025-10-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(425, 'TRX-OMOYV4PTYA', 'Siti Nurhaliza', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 4, 60000000.00, 'completed', 'Bank Transfer', '2025-09-16', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(426, 'TRX-EA0PDUBCT9', 'Agus Wijaya', 'Lego Set', 'Toys', 500000.00, 2, 1000000.00, 'completed', 'Bank Transfer', '2025-11-20', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(427, 'TRX-T2NNN3SAXB', 'Eko Suryanto', 'Raket Badminton', 'Sports', 450000.00, 2, 900000.00, 'pending', 'Credit Card', '2025-11-25', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(428, 'TRX-JSMDWGBZ1F', 'Andi Pratama', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'completed', 'Debit Card', '2025-06-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(429, 'TRX-YY2MFMDDWD', 'Budi Santoso', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'pending', 'Bank Transfer', '2025-10-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(430, 'TRX-NBRFZKU7PY', 'Agus Wijaya', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'completed', 'Debit Card', '2025-08-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(431, 'TRX-SWIT9AXRKE', 'Siti Nurhaliza', 'Novel Fiksi', 'Books', 85000.00, 4, 340000.00, 'completed', 'Bank Transfer', '2025-07-06', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(432, 'TRX-TENEJ9CBV0', 'Rudi Hermawan', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'Credit Card', '2025-09-22', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(433, 'TRX-92S60PHKB1', 'Agus Wijaya', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'completed', 'Cash', '2025-11-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(434, 'TRX-ZCX7UISQCG', 'Eko Suryanto', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'completed', 'Credit Card', '2025-11-20', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(435, 'TRX-TEJLBPMDRF', 'Eko Suryanto', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'Debit Card', '2025-09-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(436, 'TRX-MNXIPF4CEY', 'Agus Wijaya', 'Kemeja Batik', 'Fashion', 250000.00, 2, 500000.00, 'completed', 'Cash', '2025-10-02', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(437, 'TRX-YPOSGU1ULB', 'Dewi Lestari', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'Cash', '2025-06-27', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(438, 'TRX-IIYKIWLCW0', 'Maya Sari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 4, 72000000.00, 'completed', 'Cash', '2025-11-23', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(439, 'TRX-SXQK5N7Q3O', 'Eko Suryanto', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'completed', 'Bank Transfer', '2025-11-08', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(440, 'TRX-JFFKETZYS8', 'Dewi Lestari', 'Buku Programming', 'Books', 150000.00, 4, 600000.00, 'completed', 'E-Wallet', '2025-10-26', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(441, 'TRX-U8RS7NPKS0', 'Nina Kusuma', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'completed', 'Cash', '2025-06-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(442, 'TRX-ONC8WMUILV', 'Linda Wijayanti', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'Debit Card', '2025-09-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(443, 'TRX-RY91MDOMTS', 'Dewi Lestari', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'Debit Card', '2025-10-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(444, 'TRX-EHM3GSPWQE', 'Andi Pratama', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'completed', 'Debit Card', '2025-11-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(445, 'TRX-TDQBLRVTF0', 'Linda Wijayanti', 'Tas Ransel', 'Fashion', 350000.00, 2, 700000.00, 'completed', 'Debit Card', '2025-08-20', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(446, 'TRX-AOWTCRMSZ3', 'Budi Santoso', 'Sepatu Nike', 'Fashion', 1500000.00, 2, 3000000.00, 'pending', 'E-Wallet', '2025-10-01', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(447, 'TRX-SR27J0Z9NU', 'Maya Sari', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'completed', 'Debit Card', '2025-09-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(448, 'TRX-LZIRKJ8KCR', 'Agus Wijaya', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'cancelled', 'E-Wallet', '2025-12-04', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(449, 'TRX-JCE0QO1BGA', 'Budi Santoso', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'completed', 'Credit Card', '2025-11-18', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(450, 'TRX-9TJYQWPLB5', 'Agus Wijaya', 'Lego Set', 'Toys', 500000.00, 1, 500000.00, 'completed', 'E-Wallet', '2025-09-04', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(451, 'TRX-G7CESGGW1H', 'Budi Santoso', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 2, 30000000.00, 'completed', 'Cash', '2025-08-13', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(452, 'TRX-9FGEB4V21X', 'Budi Santoso', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'completed', 'Debit Card', '2025-11-12', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(453, 'TRX-0YIYAT9GM1', 'Agus Wijaya', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'completed', 'Debit Card', '2025-06-23', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(454, 'TRX-CSPUMWWRLQ', 'Linda Wijayanti', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'pending', 'E-Wallet', '2025-12-11', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(455, 'TRX-MTP4WNTBFI', 'Budi Santoso', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'completed', 'Debit Card', '2025-11-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(456, 'TRX-F6JME0OIN1', 'Andi Pratama', 'Sepatu Nike', 'Fashion', 1500000.00, 2, 3000000.00, 'completed', 'Credit Card', '2025-12-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(457, 'TRX-X0LMMXMDWU', 'Andi Pratama', 'iPhone 15 Pro', 'Electronics', 18000000.00, 2, 36000000.00, 'completed', 'Bank Transfer', '2025-08-09', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(458, 'TRX-EG2DIQEWAZ', 'Agus Wijaya', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'cancelled', 'Debit Card', '2025-07-28', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(459, 'TRX-QVBQFAJYSO', 'Rudi Hermawan', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 1, 15000000.00, 'cancelled', 'Bank Transfer', '2025-08-22', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(460, 'TRX-5JSNERVU2G', 'Dewi Lestari', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'E-Wallet', '2025-07-24', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(461, 'TRX-EHZDMNWPMC', 'Maya Sari', 'Novel Fiksi', 'Books', 85000.00, 1, 85000.00, 'completed', 'Bank Transfer', '2025-10-11', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(462, 'TRX-PNDQRVRNOC', 'Agus Wijaya', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'Cash', '2025-08-31', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(463, 'TRX-PUPOCRZSZN', 'Budi Santoso', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'Cash', '2025-08-22', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(464, 'TRX-VXSEJPLBTD', 'Dewi Lestari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 1, 18000000.00, 'completed', 'Credit Card', '2025-08-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(465, 'TRX-QNDLYPT5N0', 'Siti Nurhaliza', 'Lego Set', 'Toys', 500000.00, 3, 1500000.00, 'completed', 'Credit Card', '2025-10-31', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(466, 'TRX-2NLSI3SEVF', 'Eko Suryanto', 'Novel Fiksi', 'Books', 85000.00, 2, 170000.00, 'completed', 'Cash', '2025-09-11', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(467, 'TRX-EEE33QRS94', 'Budi Santoso', 'Tas Ransel', 'Fashion', 350000.00, 2, 700000.00, 'cancelled', 'Credit Card', '2025-09-24', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(468, 'TRX-I1KLAUF7BC', 'Agus Wijaya', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'completed', 'E-Wallet', '2025-08-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(469, 'TRX-RTSYAOVOD0', 'Eko Suryanto', 'Tas Ransel', 'Fashion', 350000.00, 2, 700000.00, 'completed', 'Credit Card', '2025-06-14', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(470, 'TRX-ZCEF6TOGFT', 'Agus Wijaya', 'Laptop ASUS ROG', 'Electronics', 15000000.00, 3, 45000000.00, 'completed', 'Bank Transfer', '2025-11-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(471, 'TRX-L6S2DA7YXM', 'Dewi Lestari', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 3, 36000000.00, 'completed', 'Credit Card', '2025-10-21', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(472, 'TRX-VBE9IM2AVM', 'Agus Wijaya', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 4, 48000000.00, 'completed', 'Debit Card', '2025-08-31', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(473, 'TRX-DDWF3LMTAA', 'Dewi Lestari', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'cancelled', 'E-Wallet', '2025-09-05', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(474, 'TRX-ANGZCWES7O', 'Nina Kusuma', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'completed', 'Cash', '2025-07-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(475, 'TRX-CUKNPWAQZJ', 'Agus Wijaya', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 5, 60000000.00, 'completed', 'Credit Card', '2025-07-24', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(476, 'TRX-ED7VDMMKGL', 'Dewi Lestari', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'cancelled', 'E-Wallet', '2025-10-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(477, 'TRX-FM1A6XZNRP', 'Dewi Lestari', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'cancelled', 'E-Wallet', '2025-12-10', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(478, 'TRX-NECRRAOD7Y', 'Dewi Lestari', 'iPhone 15 Pro', 'Electronics', 18000000.00, 3, 54000000.00, 'pending', 'Cash', '2025-08-14', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(479, 'TRX-ELNL3PBDCA', 'Linda Wijayanti', 'Kemeja Batik', 'Fashion', 250000.00, 1, 250000.00, 'completed', 'Cash', '2025-07-25', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(480, 'TRX-RHGAC7EMMR', 'Siti Nurhaliza', 'Lego Set', 'Toys', 500000.00, 4, 2000000.00, 'pending', 'Cash', '2025-06-15', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(481, 'TRX-QAKKJMM6AG', 'Siti Nurhaliza', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'completed', 'Bank Transfer', '2025-07-29', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(482, 'TRX-WOWYY7OKJI', 'Maya Sari', 'Sepatu Nike', 'Fashion', 1500000.00, 3, 4500000.00, 'cancelled', 'Bank Transfer', '2025-08-24', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(483, 'TRX-USKVXYOFT8', 'Nina Kusuma', 'Kemeja Batik', 'Fashion', 250000.00, 3, 750000.00, 'completed', 'Credit Card', '2025-07-27', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(484, 'TRX-PIIMJXDCFO', 'Rudi Hermawan', 'Sepatu Nike', 'Fashion', 1500000.00, 5, 7500000.00, 'pending', 'Credit Card', '2025-10-25', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(485, 'TRX-TP6PZKJ35S', 'Eko Suryanto', 'Buku Programming', 'Books', 150000.00, 1, 150000.00, 'completed', 'Bank Transfer', '2025-11-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(486, 'TRX-Z48MUV7FIN', 'Andi Pratama', 'Novel Fiksi', 'Books', 85000.00, 5, 425000.00, 'completed', 'Cash', '2025-12-04', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(487, 'TRX-EP1O7ZECCL', 'Rudi Hermawan', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 1, 12000000.00, 'pending', 'Credit Card', '2025-09-07', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(488, 'TRX-XQ5YVJGUDN', 'Siti Nurhaliza', 'Tas Ransel', 'Fashion', 350000.00, 1, 350000.00, 'completed', 'E-Wallet', '2025-11-16', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(489, 'TRX-JIZWBW9QXT', 'Agus Wijaya', 'Sepatu Nike', 'Fashion', 1500000.00, 1, 1500000.00, 'completed', 'Debit Card', '2025-07-01', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(490, 'TRX-AH2ZLP9RTF', 'Eko Suryanto', 'Raket Badminton', 'Sports', 450000.00, 5, 2250000.00, 'completed', 'Bank Transfer', '2025-10-04', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(491, 'TRX-CMCTCKOO1N', 'Eko Suryanto', 'Sepatu Nike', 'Fashion', 1500000.00, 4, 6000000.00, 'completed', 'Cash', '2025-06-17', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(492, 'TRX-GARWUHVCSW', 'Maya Sari', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'completed', 'Bank Transfer', '2025-10-04', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(493, 'TRX-V5RMS7ENGS', 'Rudi Hermawan', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 2, 24000000.00, 'pending', 'E-Wallet', '2025-08-19', '2025-12-11 02:13:33', '2025-12-11 02:13:33'),
(494, 'TRX-SWVY6JZDPM', 'Agus Wijaya', 'Buku Programming', 'Books', 150000.00, 2, 300000.00, 'completed', 'E-Wallet', '2025-11-20', '2025-12-11 02:13:34', '2025-12-11 02:13:34'),
(495, 'TRX-O8833KPZIT', 'Dewi Lestari', 'Tas Ransel', 'Fashion', 350000.00, 3, 1050000.00, 'completed', 'E-Wallet', '2025-06-28', '2025-12-11 02:13:34', '2025-12-11 02:13:34'),
(496, 'TRX-1ABM91YE2O', 'Siti Nurhaliza', 'Tas Ransel', 'Fashion', 350000.00, 5, 1750000.00, 'completed', 'Cash', '2025-08-12', '2025-12-11 02:13:34', '2025-12-11 02:13:34'),
(497, 'TRX-D6MUF478VD', 'Siti Nurhaliza', 'Samsung Galaxy S24', 'Electronics', 12000000.00, 5, 60000000.00, 'cancelled', 'Credit Card', '2025-09-07', '2025-12-11 02:13:34', '2025-12-11 02:13:34'),
(498, 'TRX-LFCIZNTIN5', 'Agus Wijaya', 'Raket Badminton', 'Sports', 450000.00, 1, 450000.00, 'completed', 'Debit Card', '2025-06-20', '2025-12-11 02:13:34', '2025-12-11 02:13:34'),
(499, 'TRX-ROV114CHYX', 'Nina Kusuma', 'Raket Badminton', 'Sports', 450000.00, 3, 1350000.00, 'completed', 'Debit Card', '2025-07-16', '2025-12-11 02:13:34', '2025-12-11 02:13:34'),
(500, 'TRX-CLETXW4UNT', 'Budi Santoso', 'Buku Programming', 'Books', 150000.00, 3, 450000.00, 'completed', 'Cash', '2025-07-04', '2025-12-11 02:13:34', '2025-12-11 02:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_transaction_code_unique` (`transaction_code`),
  ADD KEY `transactions_transaction_date_index` (`transaction_date`),
  ADD KEY `transactions_category_index` (`category`),
  ADD KEY `transactions_status_index` (`status`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
