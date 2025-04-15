-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2025 at 07:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Name`, `Email`, `Phone`, `Address`, `Gender`) VALUES
(1, 'Ali Reza', 'ali.reza@example.com', '09123456789', 'Mashhad', 'men'),
(2, 'Sara Ahmadi', 'sara.ahmadi@example.com', '09221234567', 'Tehran', 'women'),
(3, 'Mehdi Asadi', 'mehdi.asadi@example.com', '09121234567', 'Isfahan', 'men'),
(4, 'Neda Farahani', 'neda.farahani@example.com', '09351234567', 'Shiraz', 'women'),
(5, 'Hossein Ramezani', 'hossein.ramezani@example.com', '09132123456', 'Tabriz', 'men'),
(6, 'Zahra Ebrahimi', 'zahra.ebrahimi@example.com', '09141234567', 'Sari', 'women'),
(7, 'Ehsan Ghanbari', 'ehsan.ghanbari@example.com', '09191234567', 'Mashhad', 'men'),
(8, 'Maryam Kaveh', 'maryam.kaveh@example.com', '09031234567', 'Qom', 'women'),
(9, 'Ali Karimi', 'ali.karimi@example.com', '09181234567', 'Tehran', 'men'),
(10, 'Samin Saidi', 'samin.saidi@example.com', '09211234567', 'Kerman', 'women'),
(11, 'Reza Amini', 'reza.amini@example.com', '09173211234', 'Ahvaz', 'men'),
(12, 'Fatemeh Davari', 'fatemeh.davari@example.com', '09381234567', 'Rasht', 'women');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`OrderItemID`, `OrderID`, `ProductID`, `Quantity`, `Price`) VALUES
(1, 1, 1, 2, 3000000.00),
(2, 2, 12, 3, 21000000.00),
(3, 3, 2, 1, 7000000.00),
(4, 4, 3, 2, 2400000.00),
(5, 5, 5, 1, 9000000.00),
(6, 6, 4, 1, 2500000.00),
(7, 7, 6, 3, 900000.00),
(8, 8, 8, 2, 2400000.00),
(9, 9, 10, 1, 8500000.00),
(10, 10, 7, 4, 600000.00),
(11, 1, 1, 1, 15000000.00),
(12, 2, 9, 2, 11000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_`
--

INSERT INTO `order_` (`OrderID`, `CustomerID`, `OrderDate`, `TotalAmount`) VALUES
(1, 1, '2024-04-01', 45000000.00),
(2, 2, '2025-04-02', 15000000.00),
(3, 3, '2024-04-03', 25000000.00),
(4, 4, '2025-04-04', 13000000.00),
(5, 5, '2024-04-05', 75000000.00),
(6, 6, '2024-04-06', 11000000.00),
(7, 7, '2025-04-07', 49000000.00),
(8, 8, '2024-04-08', 10200000.00),
(9, 9, '2025-04-09', 8800000.00),
(10, 10, '2025-04-10', 5600000.00),
(11, 11, '2025-04-11', 3200000.00),
(12, 12, '2024-04-12', 8700000.00);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Name`, `Price`, `Stock`) VALUES
(1, 'Laptop', 15000000.00, 10),
(2, 'Mobile', 7000000.00, 50),
(3, 'Tablet', 4500000.00, 30),
(4, 'Headphones', 800000.00, 70),
(5, 'Smart Watch', 1200000.00, 50),
(6, 'Printer', 2500000.00, 20),
(7, 'Gaming Console', 9000000.00, 15),
(8, 'Keyboard', 300000.00, 80),
(9, 'Mouse', 150000.00, 100),
(10, 'External Hard Drive', 1200000.00, 40),
(11, 'Monitor', 5500000.00, 25),
(12, 'Camera', 8500000.00, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `TaxID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `taxstatus` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`TaxID`, `CustomerID`, `taxstatus`) VALUES
(1, 1, 'false'),
(2, 2, 'false'),
(3, 3, 'true'),
(4, 4, 'false'),
(5, 5, 'false'),
(6, 6, 'false'),
(7, 7, 'false'),
(8, 8, 'false'),
(9, 9, 'true'),
(10, 10, 'false'),
(11, 11, 'false'),
(12, 12, 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`TaxID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_`
--
ALTER TABLE `order_`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `TaxID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_` (`OrderID`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Constraints for table `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `order__ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `tax`
--
ALTER TABLE `tax`
  ADD CONSTRAINT `tax_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
