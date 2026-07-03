-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2026 at 11:10 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `drive_types`
--

CREATE TABLE `drive_types` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drive_types`
--

INSERT INTO `drive_types` (`id`, `name`, `description`) VALUES
(1, 'FWD', 'Front-Wheel Drive'),
(2, 'RWD', 'Rear-Wheel Drive'),
(3, 'AWD', 'All-Wheel Drive'),
(4, '4WD', '4-Wheel Drive');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `country`) VALUES
(1, 'BYD', 'China'),
(2, 'Chery', 'China'),
(3, 'Venucia', 'China'),
(4, 'SAIC', 'China'),
(5, 'Changan', 'China'),
(6, 'Mitsubishi', 'Japan'),
(7, 'GAC', 'China'),
(8, 'IKCO', 'Iran'),
(9, 'Hongqi', 'China'),
(10, 'AITO', 'China'),
(11, 'GAC-TOYOTA', 'China'),
(12, 'GWM', 'China'),
(13, 'MG', 'China'),
(14, 'Geely', 'China'),
(15, 'Lexus', 'Japan'),
(16, 'Chery Jetour', 'China'),
(17, 'Leapmotor', 'China'),
(18, 'Li Auto', 'China'),
(19, 'Lynk & Co', 'China'),
(20, 'Deepal', 'China'),
(21, 'Avatr', 'China'),
(22, 'Toyota', 'Japan'),
(23, 'Honda', 'Japan'),
(24, 'Hyundai', 'South Korea'),
(25, 'Kia', 'South Korea'),
(26, 'Jetour', 'China'),
(27, 'ArianPars', 'Iran');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `battery_capacity` decimal(5,2) DEFAULT NULL,
  `powertrain_id` int(11) DEFAULT NULL,
  `cltc_range` int(11) DEFAULT NULL,
  `e_power` int(11) DEFAULT NULL,
  `e_torque` int(11) DEFAULT NULL,
  `top_speed` int(11) DEFAULT NULL,
  `zero_to_hundred` decimal(4,2) DEFAULT NULL,
  `drive_type_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `cell_shape` varchar(50) DEFAULT NULL,
  `cooling_method` varchar(50) DEFAULT NULL,
  `cell_chemistry` varchar(50) DEFAULT NULL,
  `fast_charging_time` varchar(20) DEFAULT NULL,
  `ac_charging_time` varchar(20) DEFAULT NULL,
  `warranty_years` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `manufacturer_id`, `model_name`, `class_id`, `release_year`, `battery_capacity`, `powertrain_id`, `cltc_range`, `e_power`, `e_torque`, `top_speed`, `zero_to_hundred`, `drive_type_id`, `price`, `cell_shape`, `cooling_method`, `cell_chemistry`, `fast_charging_time`, `ac_charging_time`, `warranty_years`) VALUES
(1, 1, 'Song plus', 1, 2025, '18.30', 1, 112, 215, 260, 180, '7.70', 1, '50000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '5.5h', 8),
(2, 2, 'Tiggo8e+', 1, 2024, '19.20', 1, 80, 326, 510, 180, '7.50', 1, '38000.00', 'Prismatic', 'Liquid', 'LFP', '-95', '3h', 8),
(3, 3, 'Venucia Vonline DDI', 1, 2024, '18.40', 1, 110, 200, 320, 170, '7.80', 1, '40000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '5.5h', 8),
(4, 4, 'Roewe eRX5', 2, 2023, '12.30', 1, 61, 185, 300, 200, '8.00', 1, '14000.00', 'Prismatic', 'Liquid', 'LFP', '.', '4h', 8),
(5, 5, 'Q05', 2, 2023, '18.50', 1, 120, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(6, 1, 'Qin Dmi', 3, 2024, '15.80', 1, 120, 218, 260, 180, '7.50', 1, '44000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '2.5h', 8),
(7, 6, 'Outlander', 2, 2018, '12.00', 1, 45, 203, 190, 170, '10.30', 1, '44000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '5h', 8),
(8, 7, 'Emkoo', 1, 2024, '2.10', 2, 0, 238, 300, 160, '8.00', 1, '44000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, 8),
(9, 8, 'Envoy', 3, 2025, '1.80', 2, 0, 224, 312, 180, '8.50', 1, '20000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, 8),
(10, 9, 'H5', 3, NULL, '23.90', 1, 170, 378, 565, 180, '7.20', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(11, 2, 'Jetour T2 I-DM', 2, 2026, '26.70', 1, 150, 326, 545, 190, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4h', 10),
(12, 10, 'ERES M5', 1, 2024, '40.00', 3, 1265, 489, 675, 210, '8.00', 1, '60000.00', 'Prismatic', 'Liquid', 'L Polymer', '0.5h', '5h', 8),
(13, 27, 'Lamari Eama', 2, 2023, '2.00', 1, 120, 174, 300, 160, '8.10', 1, '33000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(14, 11, 'Levin', 3, 2023, '1.30', 2, 0, 136, 185, 160, '9.70', 1, '35000.00', 'Prismatic', 'Liquid', 'NMC', NULL, NULL, 8),
(15, 12, 'Haval H6', 1, 2024, '1.70', 2, 0, 240, 530, 180, '8.50', 1, '41000.00', 'Prismatic', 'Liquid', 'NMC', NULL, NULL, 8),
(16, 13, 'MG ZS', 1, 2024, '1.83', 2, 0, 194, 465, 170, '8.70', 1, '36000.00', 'Prismatic', 'Liquid', 'NMC', NULL, NULL, 8),
(17, 14, 'Azkara', 2, 2023, '0.50', 2, 0, 190, 300, 200, '9.70', 1, '44000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, 8),
(18, 15, 'NX', 2, 2015, '1.10', 2, 0, 194, 210, 180, '9.20', 3, '70000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, 8),
(19, 1, 'Seal 06 DM-i', 4, 2024, '15.80', 1, 90, 215, 260, 180, '7.50', 1, NULL, 'Blade', 'Liquid', 'LFP', '0.5h', '2.5h', 8),
(20, 1, 'Han DM-i', 4, 2025, '18.50', 1, 125, 272, 315, 180, '6.90', 1, '25000.00', 'Blade', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(21, 1, 'Tang DM-i', 6, 2025, '21.50', 1, 110, 271, 315, 180, '7.50', 1, '31000.00', 'Blade', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(22, 1, 'Destroyer 05 Dmi', 5, 2024, '18.30', 1, 101, 194, 325, 180, '7.30', 1, NULL, 'Blade', 'Liquid', 'LFP', '1h', '5.5h', 8),
(23, 1, 'Song Pro DM-i', 7, 2026, '18.30', 1, 133, NULL, NULL, 180, '8.30', 1, NULL, 'Blade', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(24, 14, 'Galaxy L7', 8, 2024, '18.70', 1, 115, NULL, NULL, 180, '7.00', 3, '16000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(25, 14, 'Galaxy A7', 3, 2025, '8.00', 1, 70, NULL, NULL, 190, NULL, 1, '9000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, NULL),
(26, 14, 'Starshine8', 3, 2025, '18.40', 1, 130, NULL, NULL, 180, '6.50', 1, '23000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, NULL),
(27, 14, 'Galaxy Starship 7 EM-i', 7, 2026, '8.00', 1, 55, NULL, NULL, 180, '7.50', 1, '13000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(28, 2, 'Fulwin T9', 7, 2024, '34.45', 1, 210, 165, 390, 180, '8.00', 1, '18000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(29, 2, 'Omoda C9', 2, 2025, '34.50', 1, 180, 335, 700, 180, '5.00', 3, '20000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, NULL),
(30, 2, 'Fulwin A8', 4, 2024, '18.30', 1, 145, NULL, NULL, 180, '8.00', 1, '15000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(31, 16, 'Shanhai L9', 6, 2025, '19.00', 1, 108, 199, 395, 180, '7.80', 1, '22000.00', 'Prismatic', 'Liquid', 'NMC(Gotion)', '0.5h', '3.5h', 8),
(32, 16, 'Dashing iDM', 2, 2023, '19.30', 1, 80, 170, 315, 180, '8.00', 1, '22000.00', 'Prismatic', 'Liquid', 'NMC(Gotion)', NULL, NULL, 8),
(33, 16, 'Shanhai L7', 8, 2026, '18.40', 1, 100, 271, 395, 180, '8.00', 1, '15000.00', 'Prismatic', 'Liquid', 'LFP(Gotion)', '0.5h', '3h', 8),
(34, 12, 'Wey 07', 6, 2025, '44.20', 1, 172, 476, 930, 200, '5.70', 3, '32000.00', 'Prismatic', 'Liquid', 'NMC(SVOLT)', '0.5h', '6.5h', 8),
(35, 12, 'Tank 500 Hi4-T', 8, 2026, '37.11', 1, 120, 120, 400, 180, '6.90', 1, '65000.00', 'Prismatic', 'Liquid', 'NMC(SVOLT)', '0.5h', '6.5h', 8),
(36, 12, 'Haval Great Dog Plus', 2, 2026, '27.50', 1, 115, 270, 750, 190, '6.20', 4, '22000.00', 'Prismatic', 'Liquid', 'LFP', '0.5', '3h', NULL),
(37, 12, 'Haval Raptor Hi4', 7, 2026, '19.00', 1, 80, 299, 350, 190, '6.20', 3, '24000.00', 'Prismatic', 'Liquid', 'LFP(SVOLT)', '0.5h', '4-6h', 8),
(38, 17, 'C10', 7, NULL, '18.50', 3, 120, 160, 320, 180, '8.00', 1, '20000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(39, 10, 'M5', 2, 2025, '42.00', 3, 190, 272, 360, 200, '7.10', 2, '34000.00', 'Prismatic', 'Liquid', NULL, NULL, NULL, NULL),
(40, 10, 'M7 Pro', 8, 2026, '37.00', 3, 175, 533, 563, 200, '5.20', 3, '41000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, NULL),
(41, 10, 'M8', 2, 2025, '37.00', 3, 170, 533, 598, 200, '5.30', 3, '53000.00', 'Prismatic', 'Liquid', 'LFP', '5h', '15h', 8),
(42, 10, 'M9', 6, 2026, '60.00', 3, 340, 676, 765, 220, '4.50', 3, '70000.00', 'Prismatic', 'Liquid', 'NMC', '7h', '15h', 8),
(43, 18, 'L6', 7, 2025, '36.80', 3, 212, 408, 529, 180, '5.30', 3, '36000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '6h', 8),
(44, 18, 'L7', 8, 2025, '52.30', 3, 225, 449, 620, 180, '5.30', 3, '44000.00', 'Prismatic', 'Liquid', 'NMC', '0.5h', '6h', 8),
(45, 18, 'L8', 8, 2025, '52.30', 3, 225, 449, 620, 180, '5.30', 3, '46000.00', 'Prismatic', 'Liquid', 'NMC', '0.5h', '8h', 8),
(46, 18, 'L9', 6, 2025, '72.70', 3, 280, 571, 710, 180, '4.90', 3, '68000.00', 'Prismatic', 'Liquid', 'NMC', '0.5h', '4-6h', 8),
(47, 9, 'HS3', 2, 2025, '18.40', 1, 95, 228, 340, 190, '7.60', 1, '19000.00', 'Prismatic', 'Liquid', 'LFP', '2.6', '19', 8),
(48, 9, 'HQ9', 2, 2026, '39.50', 1, 168, 324, 500, 200, '7.70', 4, '48000.00', 'Prismatic', 'Liquid', 'LFP', 'No', '16', 8),
(49, 9, 'HS7', 6, 2025, '20.00', 1, 102, 228, 340, 180, '8.80', 1, '35000.00', 'Prismatic', 'Liquid', 'LFP', NULL, NULL, 8),
(50, 7, 'Trumpchi E8', 7, 2024, '25.60', 1, 116, 182, 300, 180, '8.80', 1, '27000.00', 'Prismatic', 'Liquid', 'NMC', '3.5h', '30h', 8),
(51, 7, 'Trumpchi ES9', 7, 2024, '25.60', 1, 110, 182, 300, 180, '8.00', 1, '34000.00', 'Prismatic', 'Liquid', 'NMC', '3.5h', '22h', 8),
(52, 5, 'CS75', 2, 2020, '13.00', 1, 60, 346, 605, 180, '8.60', 4, '26000.00', 'Prismatic', 'Liquid', 'NMC', 'No', '3.3h', 8),
(53, 5, 'CS55 Plus', 7, 2026, '18.40', 1, 100, 215, 330, 180, '7.40', 1, '17000.00', 'Prismatic', 'Liquid', 'LFP', '3', '19', 8),
(54, 5, 'UNIZ', 7, 2026, '18.40', 1, 101, 218, 251, 180, '7.40', 1, '15000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(55, 19, '08 EM-P', 7, 2026, '28.30', 1, 130, 245, 350, 180, '8.00', 1, '24000.00', 'Prismatic', 'Liquid', 'LFP', '0.25h', '14h', 8),
(56, 19, '07 EM-P', 3, 2026, '18.40', 1, 103, 245, 350, 180, '8.00', 1, '20000.00', 'Prismatic', 'Liquid', 'LFP', '0.25h', '18h', 8),
(57, 1, 'Xia DM-i', 9, 2026, '20.00', 1, 85, 272, 315, 180, '8.10', 1, '29000.00', 'Prismatic', 'Liquid', 'LFP', '2.9h', '18h', 8),
(58, 12, 'Tank 700 Hi4-T', 8, 2025, '18.50', 1, 120, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(59, 12, 'Haval Xiaolong Max Hi4', 9, 2025, '18.50', 1, 120, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(60, 18, 'i8', 7, 2025, '40.00', 3, 120, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(61, 17, 'B10 EREV', 7, 2025, '40.00', 3, 120, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(62, 20, 'S09', 7, 2025, '18.50', 1, 120, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(63, 21, '07 EREV', 7, 2025, '40.00', 3, 120, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', '0.5h', '4-6h', 8),
(64, 22, 'Camry', 4, 2025, '2.00', 2, 0, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', NULL, NULL, 8),
(65, 23, 'Accord', 4, 2025, '2.00', 2, 0, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', NULL, NULL, 8),
(66, 7, 'GS8', 8, 2025, '2.00', 2, 0, 160, 320, 180, '8.00', 1, NULL, 'Prismatic', 'Liquid', 'LFP', NULL, NULL, 8),
(67, 1, 'Seal 06 DM-i 2026', 5, 2026, '15.90', 1, 120, 160, 260, 180, '7.50', 1, '15000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '3h', 8),
(68, 1, 'Song Pro DM-i 2026', 7, 2026, '18.30', 1, 115, 160, 300, 180, '7.90', 1, '18000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '3.5h', 8),
(69, 14, 'Galaxy Starship 7 EM-i', 8, 2026, '19.10', 1, 130, 175, 330, 190, '7.00', 3, '22000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4h', 8),
(70, 2, 'Fulwin T8', 7, 2026, '18.70', 1, 125, 165, 320, 185, '7.80', 1, '18000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4h', 8),
(71, 26, 'Shanhai L7', 7, 2026, '19.40', 1, 140, 180, 340, 190, '7.20', 3, '22000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '4h', 8),
(72, 12, 'Haval H6 Hi4', 7, 2026, '27.50', 1, 180, 190, 530, 190, '4.90', 3, '25000.00', 'Prismatic', 'Liquid', 'LFP', '0.4h', '4h', 8),
(73, 10, 'M7', 8, 2026, '42.00', 3, 240, 200, 660, 200, '4.80', 3, '35000.00', 'Prismatic', 'Liquid', 'NMC', '0.5h', '5h', 8),
(74, 18, 'L6', 8, 2026, '36.80', 3, 212, 180, 529, 180, '5.40', 3, '32000.00', 'Prismatic', 'Liquid', 'NMC', '0.5h', '6h', 8),
(75, 17, 'C16', 8, 2026, '38.70', 3, 200, 170, 360, 185, '8.50', 2, '25000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '6h', 8),
(76, 20, 'S07', 7, 2026, '39.00', 3, 215, 175, 320, 180, '7.60', 2, '23000.00', 'Prismatic', 'Liquid', 'LFP', '0.5h', '6h', 8),
(77, 22, 'RAV4', 7, 2026, '2.50', 2, 0, 163, 221, 180, '8.10', 3, '30000.00', NULL, 'Liquid', 'NiMH', NULL, NULL, 8),
(78, 22, 'Corolla', 5, 2026, '1.80', 2, 0, 103, 142, 180, '9.20', 1, '22000.00', NULL, 'Liquid', 'Li-ion', NULL, NULL, 8),
(79, 23, 'CR-V', 7, 2026, '2.00', 2, 0, 135, 335, 187, '8.70', 1, '30000.00', NULL, 'Liquid', 'Li-ion', NULL, NULL, 8),
(80, 24, 'Santa Fe', 8, 2026, '1.50', 2, 0, 172, 367, 190, '8.50', 3, '35000.00', NULL, 'Liquid', 'Li-ion', NULL, NULL, 8),
(81, 25, 'Sorento', 8, 2026, '1.50', 2, 0, 169, 350, 190, '8.80', 3, '35000.00', NULL, 'Liquid', 'Li-ion', NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `powertrain_types`
--

CREATE TABLE `powertrain_types` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `powertrain_types`
--

INSERT INTO `powertrain_types` (`id`, `name`, `description`) VALUES
(1, 'PHEV', 'Plug-in Hybrid Electric Vehicle'),
(2, 'HEV', 'Hybrid Electric Vehicle'),
(3, 'EREV', 'Extended Range Electric Vehicle');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_classes`
--

CREATE TABLE `vehicle_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_classes`
--

INSERT INTO `vehicle_classes` (`id`, `name`, `category`) VALUES
(1, 'Cross', 'Cross'),
(2, 'SUV', 'SUV'),
(3, 'Sedan', 'Sedan'),
(4, 'Sedan D-Segment', 'Sedan'),
(5, 'Sedan C-Segment', 'Sedan'),
(6, 'E-SUV', 'SUV'),
(7, 'C-SUV', 'SUV'),
(8, 'D-SUV', 'SUV'),
(9, 'MPV', 'MPV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drive_types`
--
ALTER TABLE `drive_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drive_type_id` (`drive_type_id`),
  ADD KEY `idx_manufacturer` (`manufacturer_id`),
  ADD KEY `idx_class` (`class_id`),
  ADD KEY `idx_powertrain` (`powertrain_id`),
  ADD KEY `idx_year` (`release_year`),
  ADD KEY `idx_price` (`price`);

--
-- Indexes for table `powertrain_types`
--
ALTER TABLE `powertrain_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vehicle_classes`
--
ALTER TABLE `vehicle_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drive_types`
--
ALTER TABLE `drive_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `powertrain_types`
--
ALTER TABLE `powertrain_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_classes`
--
ALTER TABLE `vehicle_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `models_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `vehicle_classes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `models_ibfk_3` FOREIGN KEY (`powertrain_id`) REFERENCES `powertrain_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `models_ibfk_4` FOREIGN KEY (`drive_type_id`) REFERENCES `drive_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
