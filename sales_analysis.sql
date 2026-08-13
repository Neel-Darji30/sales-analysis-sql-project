-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2026 at 11:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales_analysis`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `signup_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `state`, `signup_date`) VALUES
(1, 'Rahul Shah', 'Ahmedabad', 'Gujarat', '2025-01-15'),
(2, 'Priya Patel', 'Gandhinagar', 'Gujarat', '2025-01-20'),
(3, 'Amit Mehta', 'Surat', 'Gujarat', '2025-02-05'),
(4, 'Riya Joshi', 'Vadodara', 'Gujarat', '2025-02-18'),
(5, 'Karan Desai', 'Mumbai', 'Maharashtra', '2025-03-10'),
(6, 'Neha Shah', 'Pune', 'Maharashtra', '2025-03-22'),
(7, 'Dev Patel', 'Ahmedabad', 'Gujarat', '2025-04-12'),
(8, 'Anjali Mehta', 'Rajkot', 'Gujarat', '2025-04-25'),
(9, 'Jay Shah', 'Surat', 'Gujarat', '2025-05-08'),
(10, 'Meera Patel', 'Mumbai', 'Maharashtra', '2025-05-19'),
(11, 'Arjun Desai', 'Pune', 'Maharashtra', '2025-06-03'),
(12, 'Sneha Joshi', 'Ahmedabad', 'Gujarat', '2025-06-17'),
(13, 'Vishal Shah', 'Vadodara', 'Gujarat', '2025-07-01'),
(14, 'Pooja Patel', 'Surat', 'Gujarat', '2025-07-15'),
(15, 'Nikhil Mehta', 'Mumbai', 'Maharashtra', '2025-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department`, `city`) VALUES
(1, 'Aarav Shah', 'Sales', 'Ahmedabad'),
(2, 'Diya Patel', 'Sales', 'Gandhinagar'),
(3, 'Kabir Mehta', 'Sales', 'Surat'),
(4, 'Anaya Joshi', 'Sales', 'Mumbai'),
(5, 'Rohan Desai', 'Sales', 'Pune');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `employee_id`, `order_date`, `order_status`) VALUES
(1001, 1, 1, '2025-01-20', 'Completed'),
(1002, 2, 2, '2025-01-25', 'Completed'),
(1003, 3, 3, '2025-02-10', 'Completed'),
(1004, 4, 1, '2025-02-15', 'Completed'),
(1005, 5, 4, '2025-03-05', 'Completed'),
(1006, 6, 5, '2025-03-18', 'Completed'),
(1007, 7, 1, '2025-04-08', 'Completed'),
(1008, 8, 2, '2025-04-20', 'Cancelled'),
(1009, 9, 3, '2025-05-12', 'Completed'),
(1010, 10, 4, '2025-05-25', 'Completed'),
(1011, 11, 5, '2025-06-08', 'Completed'),
(1012, 12, 1, '2025-06-20', 'Completed'),
(1013, 13, 2, '2025-07-05', 'Completed'),
(1014, 14, 3, '2025-07-18', 'Completed'),
(1015, 15, 4, '2025-08-10', 'Completed'),
(1016, 1, 1, '2025-08-22', 'Completed'),
(1017, 2, 2, '2025-09-05', 'Completed'),
(1018, 3, 3, '2025-09-19', 'Completed'),
(1019, 5, 4, '2025-10-03', 'Completed'),
(1020, 7, 5, '2025-10-17', 'Completed'),
(1021, 9, 1, '2025-11-05', 'Completed'),
(1022, 11, 2, '2025-11-18', 'Completed'),
(1023, 13, 3, '2025-12-02', 'Completed'),
(1024, 15, 4, '2025-12-15', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
(1, 1001, 1, 1, 75000.00),
(2, 1001, 2, 2, 1500.00),
(3, 1002, 4, 1, 22000.00),
(4, 1002, 3, 1, 3500.00),
(5, 1003, 6, 1, 12000.00),
(6, 1003, 10, 2, 3000.00),
(7, 1004, 11, 1, 45000.00),
(8, 1004, 2, 3, 1500.00),
(9, 1005, 7, 1, 28000.00),
(10, 1005, 6, 2, 12000.00),
(11, 1006, 1, 1, 75000.00),
(12, 1006, 9, 2, 6000.00),
(13, 1007, 4, 2, 22000.00),
(14, 1007, 5, 2, 2500.00),
(15, 1008, 8, 1, 4500.00),
(16, 1008, 2, 1, 1500.00),
(17, 1009, 11, 1, 45000.00),
(18, 1009, 10, 1, 3000.00),
(19, 1010, 7, 1, 28000.00),
(20, 1010, 3, 2, 3500.00),
(21, 1011, 1, 1, 75000.00),
(22, 1011, 5, 1, 2500.00),
(23, 1012, 4, 1, 22000.00),
(24, 1012, 9, 1, 6000.00),
(25, 1013, 11, 2, 45000.00),
(26, 1013, 2, 2, 1500.00),
(27, 1014, 6, 1, 12000.00),
(28, 1014, 10, 2, 3000.00),
(29, 1015, 1, 1, 75000.00),
(30, 1015, 3, 1, 3500.00),
(31, 1016, 4, 1, 22000.00),
(32, 1016, 5, 3, 2500.00),
(33, 1017, 11, 1, 45000.00),
(34, 1017, 9, 1, 6000.00),
(35, 1018, 7, 1, 28000.00),
(36, 1018, 6, 1, 12000.00),
(37, 1019, 1, 1, 75000.00),
(38, 1019, 2, 2, 1500.00),
(39, 1020, 4, 1, 22000.00),
(40, 1020, 10, 1, 3000.00),
(41, 1021, 11, 1, 45000.00),
(42, 1021, 3, 1, 3500.00),
(43, 1022, 7, 1, 28000.00),
(44, 1022, 5, 2, 2500.00),
(45, 1023, 1, 1, 75000.00),
(46, 1023, 9, 1, 6000.00),
(47, 1024, 4, 1, 22000.00),
(48, 1024, 2, 3, 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`) VALUES
(1, 'Laptop Pro 14', 'Electronics', 75000.00),
(2, 'Wireless Mouse', 'Accessories', 1500.00),
(3, 'Mechanical Keyboard', 'Accessories', 3500.00),
(4, '27-inch Monitor', 'Electronics', 22000.00),
(5, 'USB-C Hub', 'Accessories', 2500.00),
(6, 'Office Chair', 'Furniture', 12000.00),
(7, 'Standing Desk', 'Furniture', 28000.00),
(8, 'Webcam HD', 'Electronics', 4500.00),
(9, 'Bluetooth Headphones', 'Audio', 6000.00),
(10, 'Laptop Stand', 'Accessories', 3000.00),
(11, 'Smartphone X', 'Electronics', 45000.00),
(12, 'Tablet Pro', 'Electronics', 32000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
