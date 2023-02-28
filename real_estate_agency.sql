-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 03:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `images_gallery`
--

CREATE TABLE `images_gallery` (
  `image_id` int(11) NOT NULL,
  `primary_or_secondary` tinyint(1) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images_gallery`
--

INSERT INTO `images_gallery` (`image_id`, `primary_or_secondary`, `image_path`, `property_id`) VALUES
(1, 1, 'images/1_primary.jpg', 1),
(2, 0, 'images/1_secondary1.jpg', 1),
(3, 0, 'images/1_secondary2.jpg', 1),
(4, 0, 'images/1_secondary3.jpg', 1),
(5, 0, 'images/1_secondary4.jpg', 1),
(6, 1, 'images/2_primary.jpg', 2),
(7, 0, 'images/2_secondary1.jpg', 2),
(8, 0, 'images/2_secondary2.jpg', 2),
(9, 0, 'images/2_secondary3.jpg', 2),
(10, 0, 'images/2_secondary4.jpg', 2),
(11, 1, 'images/3_primary.jpg', 3),
(12, 0, 'images/3_secondary1.jpg', 3),
(13, 0, 'images/3_secondary2.jpg', 3),
(14, 0, 'images/3_secondary3.jpg', 3),
(15, 0, 'images/3_secondary4.jpg', 3),
(16, 1, 'images/4_primary.jpg', 4),
(17, 0, 'images/4_secondary1.jpg', 4),
(18, 0, 'images/4_secondary2.jpg', 4),
(19, 0, 'images/4_secondary3.jpg', 4),
(20, 0, 'images/4_secondary4.jpg', 4),
(21, 1, 'images/5_primary.jpg', 5),
(22, 0, 'images/5_secondary1.jpg', 5),
(23, 0, 'images/5_secondary2.jpg', 5),
(24, 0, 'images/5_secondary3.jpg', 5),
(25, 0, 'images/5_secondary4.jpg', 5),
(26, 1, 'images/6_primary.jpg', 6),
(27, 0, 'images/6_secondary1.jpg', 6),
(28, 0, 'images/6_secondary2.jpg', 6),
(29, 0, 'images/6_secondary3.jpg', 6),
(30, 0, 'images/6_secondary4.jpg', 6),
(31, 1, 'images/7_primary.jpg', 7),
(32, 0, 'images/7_secondary1.jpg', 7),
(33, 0, 'images/7_secondary2.jpg', 7),
(34, 0, 'images/7_secondary3.jpg', 7),
(35, 0, 'images/7_secondary4.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_gallery`
--

CREATE TABLE `real_estate_gallery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `type` enum('lease','sale') NOT NULL,
  `surface` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `area` varchar(50) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(500) NOT NULL,
  `publication_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modification_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `real_estate_gallery`
--

INSERT INTO `real_estate_gallery` (`id`, `user_id`, `title`, `category`, `type`, `surface`, `address`, `area`, `zip_code`, `city`, `country`, `price`, `description`, `publication_date`, `modification_date`) VALUES
(1, 1, 'Spacious apartment in the city center', 'Apartment', 'lease', 120, 'Main Street 10A', 'Downtown', '12345', 'New York', 'USA', '2000.00', 'This spacious apartment is located in the heart of the city.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(2, 1, 'Beautiful villa with sea view', 'Villa', 'sale', 300, 'Beach Road 25', 'Costa del Sol', '29660', 'Marbella', 'Spain', '1000000.00', 'This beautiful villa offers stunning views of the Mediterranean Sea.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(3, 2, 'Cozy cottage in the countryside', 'Cottage', 'lease', 80, 'Country Lane 15', 'Cotswolds', 'GL54 3BY', 'Cheltenham', 'UK', '800.00', 'This cozy cottage is perfect for a peaceful getaway.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(4, 2, 'Modern loft in the city', 'Loft', 'lease', 150, 'Main Street 20B', 'Soho', 'W1D 4RN', 'London', 'UK', '3000.00', 'This modern loft is located in the trendy neighborhood of Soho.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(5, 3, 'Charming farmhouse with pool', 'Farmhouse', 'sale', 400, 'Rue de la Fontaine 5', 'Provence', '13100', 'Aix-en-Provence', 'France', '1500000.00', 'This charming farmhouse is surrounded by olive trees and has a beautiful swimming pool.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(6, 3, 'Luxury penthouse with terrace', 'Penthouse', 'sale', 250, 'Avenue des Champs-Élysées 12', 'Eiffel Tower', '75008', 'Paris', 'France', '5000000.00', 'This luxurious penthouse offers a breathtaking view of the Eiffel Tower.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(7, 4, 'Bright and spacious office', 'Office', 'lease', 200, 'Wall Street 100', 'Financial District', '10005', 'New York', 'USA', '4000.00', 'This bright and spacious office is located in the heart of the Financial District.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(8, 4, 'Stunning mansion with private pool', 'Mansion', 'sale', 800, 'Beverly Hills Drive 120', 'Beverly Hills', '90210', 'Los Angeles', 'USA', '10000000.00', 'This stunning mansion offers the ultimate luxury lifestyle with its private pool and beautiful gardens.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(9, 5, 'Spacious warehouse for rent', 'Warehouse', 'lease', 1000, 'Long Street 50', 'Industrial Area', '34567', 'Chicago', 'USA', '6000.00', 'This spacious warehouse is perfect for storage or manufacturing.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(10, 5, 'Beautiful chalet in the mountains', 'Chalet', 'sale', 350, 'Ski Slope Road 5', 'Val-d\'Isère', '73150', 'Val-d\'Isère', 'France', '800000.00', 'This beautiful chalet offers stunning views of the French Alps.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(11, 1, 'Cozy Apartment in City Center', 'Apartment', 'lease', 70, 'Main Street 12', 'Downtown', '12345', 'New York', 'USA', '1500.00', 'This cozy apartment is located in the heart of the city center.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(12, 2, 'Luxury Villa with Panoramic Views', 'Villa', 'sale', 500, 'Hilltop Road 25', 'Hillside', '54321', 'Los Angeles', 'USA', '3500000.00', 'This luxury villa offers stunning panoramic views of the city and the ocean.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(13, 3, 'Renovated Townhouse with Garden', 'Townhouse', 'sale', 200, 'Park Lane 8', 'Central Park', '67890', 'London', 'UK', '1200000.00', 'This beautifully renovated townhouse features a private garden and is located in the heart of the city.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(14, 1, 'Charming Cottage in the Countryside', 'House', 'lease', 120, 'Oak Lane 5', 'Countryside', '23456', 'Paris', 'France', '2000.00', 'This charming cottage is located in a peaceful countryside setting and offers a cozy and comfortable living space.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(15, 2, 'Spacious Loft with Industrial Chic Design', 'Loft', 'lease', 150, 'Factory Street 18', 'Industrial District', '98765', 'Berlin', 'Germany', '1800.00', 'This spacious loft apartment features an industrial chic design with exposed brick walls and high ceilings.', '2023-02-27 12:11:35', '2023-02-27 12:11:35'),
(16, 3, 'Modern Penthouse with Rooftop Terrace', 'Penthouse', 'sale', 300, 'Ocean View Road 9', 'Beachfront', '43210', 'Sydney', 'Australia', '2500000.00', 'This modern penthouse offers breathtaking ocean views and a spacious rooftop terrace for outdoor entertaining.', '2023-02-27 12:11:35', '2023-02-27 12:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_number`) VALUES
(1, 'John', 'Doe', 'johndoe@gmail.com', 'password123', '555-555-5555'),
(2, 'Jane', 'Smith', 'janesmith@yahoo.com', 'password456', '555-123-4567'),
(3, 'Bob', 'Johnson', 'bobjohnson@hotmail.com', 'password789', '555-867-5309'),
(4, 'Sarah', 'Lee', 'sarahlee@gmail.com', 'password101', '555-246-8135'),
(5, 'Mike', 'Wong', 'mikewong@yahoo.com', 'password1212', '555-314-1592'),
(6, 'Kadeem Byrd', 'Jenna Boyd', 'vydi@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '+1 (901) 962-1453'),
(7, 'Kevyn Knight', 'Yeo Hogan', 'suvejo@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '+1 (293) 682-6258'),
(8, 'Iona Curtis', 'Naomi Hall', 'decy@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '+1 (928) 109-7827');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images_gallery`
--
ALTER TABLE `images_gallery`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `real_estate_gallery`
--
ALTER TABLE `real_estate_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images_gallery`
--
ALTER TABLE `images_gallery`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `real_estate_gallery`
--
ALTER TABLE `real_estate_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images_gallery`
--
ALTER TABLE `images_gallery`
  ADD CONSTRAINT `images_gallery_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `real_estate_gallery` (`id`);

--
-- Constraints for table `real_estate_gallery`
--
ALTER TABLE `real_estate_gallery`
  ADD CONSTRAINT `real_estate_gallery_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;