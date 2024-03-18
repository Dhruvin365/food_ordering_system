-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 12:02 PM
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
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Jagatiya chirag', 'Chirag', 1234567890, 'jagatiyachirag786@gmail.com', '0192023a7bbd73250516f069df18b500', '2021-03-06 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(19, 'Sandwiches', '2023-12-18 13:18:40'),
(20, 'Pizza', '2023-12-18 13:18:50'),
(21, 'Burger', '2023-12-18 13:19:01'),
(22, 'French Fry', '2023-12-18 13:19:12'),
(23, 'Mocktails', '2023-12-18 13:19:22'),
(24, 'Garlic Bread', '2023-12-18 13:20:22'),
(25, 'Fruit Shake & Juice', '2023-12-18 13:20:56'),
(26, 'Shots & Shakes', '2023-12-18 13:39:03'),
(27, 'Special Grill	', '2023-12-18 13:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(23, 'Sandwiches', 'Veg. Sandwich', '85', 'Bombay sandwich is a popular kind of Sandwich from India. It is made with butterm green chutney, raw veggies and spices.', '694f1839a831f88a4446194d57376b8d.jpg', 'medium'),
(24, 'Sandwiches', 'Veg. Toast Sandwich', '95', 'This vegetable sandwich is made with green chutney, butter, veggies, cheese, and chat masala                                                 	', 'd89ec9f7b1fab8031d10e579016d7701.jpg', 'medium'),
(25, 'Sandwiches', 'Cheese Chilli Toast', '90', 'Bombay sandwich is a popular kind of Sandwich from India. It is made with butterm green chutney, raw veggies and spices.', 'a86e2441ef99d0847b1b4c833038b63e.jpg', 'regular'),
(26, 'Sandwiches', 'Double Decker Sandwich', '140', '  A classic double-decker club sandwich includes thinly sliced turkey breast, bacon, lettuce, tomato and mayonnaise on white bread.                                                	', '127a3437b1504fdcf679c11285fb933f.jpg', 'regular'),
(27, 'Sandwiches', 'Aloo Masala Toast', '95', 'A toasty grilled Potato sandwich (or Aloo Sandwich) with a savory spiced mashed potato stuffing is comfort food for us.                                                 	', '289417dde01fd41915171bb8b004aa90.jpg', 'regular'),
(28, 'Sandwiches', 'Open Toast(Cheese)', '140', ' Veg Chilli Cheese Toast, is a quick breakfast or snack recipe made from cheese, chilies, and some veggies spread on top.                                                 	', '6472a459f45093441844eec23f7a46b7.jpg', 'regular'),
(29, 'Pizza', 'Margherita(regular)', '150', 'Pizza Margherita is a typical Neapolitan pizza, made with tomatoes, mozzarella cheese, fresh basil, salt, and olive oil.                                                 	', '8033619f63b28d1fc98ff4fd02a2327c.jpg', 'regular'),
(30, 'Pizza', 'Margherita(medium)', '300', 'Pizza Margherita is a typical Neapolitan pizza, made with tomatoes, mozzarella cheese, fresh basil, salt, and olive oil.                                                 	', '8033619f63b28d1fc98ff4fd02a2327c.jpg', 'medium'),
(32, 'Pizza', 'Margherita(Large)', '450', 'Pizza Margherita is a typical Neapolitan pizza, made with tomatoes, mozzarella cheese, fresh basil, salt, and olive oil.                                                 	', '8033619f63b28d1fc98ff4fd02a2327c.jpg', 'Large'),
(33, 'Pizza', 'Paneer Paprika', '250', 'The peppy paneer pizza is made with fresh and soft paneer with crispy capsicum and topped with spicy red pepper                                                 	', 'f14bb2da148c0f372a2dab0d7570deb4.jpg', 'medium'),
(34, 'Pizza', '7 Chessey', '250', 'A delicious pizza loaded with full mozzarella cheese, white cheese, orange cheddar cheese, Monterey jack, cheese jalapeno & Colby cheese.                                                 	', '22a4cb5e19a8584d4bf4aa9914845aa9.jpg', 'medium'),
(35, 'Pizza', 'Capsicum,paneer with Extra Cheese', '350', 'Paneer Pizza recipe with stepwise pics. This is a scrumptious homestyle Paneer Cheese Pizza with a mixed veggie and paneer and cheese topping.                                                 	', '51fa62fd7116383ab525a85eeef3340e.jpg', 'medium'),
(36, 'Pizza', 'Onion', '250', 'Onion Pizza is simple, delicious, and so comforting. Sweet caramelized onions, fresh thyme, and cheese come together in a delicious recipe.                                                 	', 'e738fb7a50857618a1b994cf8feb6a68.jpg', 'medium'),
(37, 'Garlic Bread', 'Cheese Garlic Bread', '110', 'This classic side dish features a warm and crusty baguette, smothered in a trio of melted cheeses and garlic.                                                  	', 'cb32fc5c980608f70464233a8dfc7acd.jpg', 'medium'),
(38, 'Garlic Bread', 'Bruschetta Bread', '130', 'Easy to throw together and made up of simple, classic ingredients, bruschetta was made for chill warm weather snacking.                                                 	', '24223274395019fe9ed8057c823118e8.jpg', 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(13, '441555481', 'i am sure, this order is cancal.', 'Order Cancelled', '2023-11-02 19:02:25', 1),
(15, '441555481', '!!', 'Order Cancelled', '2023-11-02 19:03:22', 1),
(21, '173339331', 'test', 'Order Confirmed', '2023-11-03 12:12:08', NULL),
(22, '230967559', 'test', 'Order Confirmed', '2023-11-03 12:15:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(5, '6', '441555481', 'B-908,', 'Test App,', 'Old Kosad,', 'near Demo Road,', 'Surat', '2021-05-19 18:58:45', 'Order Cancelled'),
(6, '7', '699466969', '789, demo App,', 'demo,', 'puna,', 'test road,', 'Mumbai', '2021-05-20 14:57:49', 'Order Confirmed'),
(7, '8', '651539244', '654, Mamta', 'Park soc,', 'dharmanagar', 'raod', 'Puna', '2021-05-20 15:07:23', 'Food being Prepared'),
(8, '9', '647546853', '985-demo App,', 'steet-g', 'demotest', '', 'Surat', '2021-05-20 15:53:40', 'Food Pickup'),
(9, '6', '512142442', '987-test App,', 'demo.', 'ring road', '', 'Surat', '2021-05-20 16:41:06', 'Food Delivered'),
(10, '6', '947142953', '987-test App,', 'demo,', 'ring road', '', 'Surat', '2021-05-20 17:12:07', 'Food Pickup'),
(12, '6', '314977436', '654-test', 'demo', 'testdemo', '', 'Surat', '2021-05-22 11:47:23', NULL),
(13, '6', '173339331', '101-test', 'demo', 'test', '', 'surat', '2021-05-22 12:10:19', 'Order Confirmed'),
(14, '6', '230967559', 'test', 'test', 'test', '', 'surat', '2021-05-22 12:14:33', 'Order Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`) VALUES
(9, '6', '17', 1, '441555481'),
(10, '7', '4', 1, '699466969'),
(11, '8', '21', 1, '651539244'),
(12, '9', '8', 1, '647546853'),
(13, '6', '22', 1, '512142442'),
(14, '6', '7', 1, '512142442'),
(15, '6', '19', 1, '512142442'),
(16, '6', '21', 1, '512142442'),
(17, '6', '13', 1, '512142442'),
(18, '6', '20', 1, '947142953'),
(19, '6', '22', 1, '947142953'),
(20, '6', '1', 1, '227140703'),
(24, '6', '15', 1, '173339331'),
(25, '6', '2', 1, '230967559');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(6, 'Test', 'User', 'testuser1@gmail.com', 9876543210, '41da76f0fc3ec62a6939e634bfb6a342', '2021-05-19 16:05:14'),
(7, 'test1', 'user1', 'test1user1@gmail.com', 6549873210, '165b2023b1d710fa52f09675e9e721a4', '2021-05-20 14:55:31'),
(8, 'test2', 'user2', 'test2user2@gmail.com', 9854975132, '05d5be1c4748d10220c7d62a46ac8ea8', '2021-05-20 15:05:50'),
(9, 'test3', 'user3', 'test3user3@gmail.com', 9879561321, 'f3baeae46897699368a3ae8370749132', '2021-05-20 15:31:24'),
(10, 'demo', 'test', 'demotest@gmail.com', 6543219870, '5c4896c0c3fefb8ef0b326e436790906', '2021-05-21 14:21:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
