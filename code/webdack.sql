-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 05:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdack`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Position` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Position`) VALUES
(3, 'Hoa hộp giấy', 0),
(2, 'Giỏ hoa', 0),
(1, 'Bó Hoa', 0),
(4, 'Compo hoa + quà', 0),
(5, 'Cây cảnh để bàn', 0),
(6, 'Hoa lẻ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `GroupID` int(11) NOT NULL,
  `GroupName` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`GroupID`, `GroupName`) VALUES
(1, 'Admin - Quản lý'),
(2, 'NV Bán hàng'),
(3, 'Khách hàng'),
(5, 'NV Giao hàng');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `ManufacturerID` int(11) NOT NULL,
  `ManufacturerName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`ManufacturerID`, `ManufacturerName`) VALUES
(5, 'Cảm ơn'),
(4, 'Hoa cưới'),
(3, 'Khai trương'),
(2, 'Chúc mừng'),
(1, 'Sinh Nhật'),
(6, 'Xin lỗi'),
(7, 'Chúc sức khỏe'),
(8, 'Chia Buồn');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderID`, `ProductID`, `Quantity`) VALUES
(48, 52, 1),
(48, 35, 1),
(54, 69, 2),
(56, 72, 1),
(56, 71, 1),
(83, 102, 1),
(82, 102, 1),
(81, 500, 1),
(59, 71, 1),
(60, 102, 1),
(61, 400, 1),
(62, 401, 1),
(63, 102, 1),
(64, 101, 1),
(65, 102, 1),
(66, 102, 1),
(67, 102, 1),
(68, 103, 1),
(69, 303, 1),
(70, 103, 1),
(71, 104, 1),
(72, 100, 1),
(73, 101, 1),
(74, 102, 1),
(75, 401, 3),
(75, 302, 1),
(76, 101, 1),
(77, 400, 1),
(78, 102, 1),
(79, 103, 1),
(80, 101, 1),
(85, 100, 1),
(86, 102, 1),
(87, 402, 1),
(88, 104, 1),
(89, 102, 1),
(90, 300, 1),
(91, 103, 1),
(92, 402, 1),
(93, 102, 1),
(94, 102, 1),
(95, 111, 1),
(96, 103, 1),
(97, 102, 1),
(98, 103, 1),
(99, 104, 1),
(100, 102, 1),
(101, 110, 1),
(102, 103, 1),
(104, 100, 1),
(104, 101, 1),
(105, 102, 1),
(106, 100, 2),
(106, 102, 1),
(106, 101, 1),
(107, 102, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `namere` varchar(400) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `reDay` date DEFAULT NULL,
  `Sum` int(11) DEFAULT NULL,
  `Status` text NOT NULL DEFAULT 'Chưa xác nhận',
  `Mode` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `UserID`, `AddedDate`, `namere`, `Address`, `Phone`, `reDay`, `Sum`, `Status`, `Mode`) VALUES
(102, 37, '2021-12-09 19:32:19', 'team 6', '280 An dương vương q5 tphcm', '0396547895', '2021-12-18', 949000, 'chưa xác nhận', 'cod'),
(104, 41, '2021-12-15 15:53:38', 'trinh', '125 hjhj', '013121', '2021-12-15', 1138000, '\0', 'cod'),
(105, 37, '2021-12-15 17:30:55', 'Anh', 'phô mă mắê', '013121', '2021-12-24', 639000, 'Chưa xác nhận', 'cod'),
(106, 40, '2021-12-15 22:46:55', 'trinh', '125 hjhj', '0392584784', '2021-12-15', 2456000, 'Chưa xác nhận', 'netbanking'),
(107, 40, '2021-12-15 22:48:03', 'trinh', '125 hjhj', '013121', '2021-12-15', 639000, 'Chưa xác nhận', 'cod');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ManufacturerID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ImageUrl` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `Description` varchar(1000) NOT NULL,
  `Body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ManufacturerID`, `CategoryID`, `ProductName`, `ImageUrl`, `Price`, `Quantity`, `Description`, `Body`) VALUES
(100, 5, 1, 'For The Beautiful', '100.jpeg', 679000, 1, '\'Những đóa hoa hồng phấn được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp đặc biệt.', 'Bó Hoa For The Beautiful gồm:10 Bông Hoa Hồng, Lá Bạc, Các loại hoa và lá khác'),
(101, 1, 1, 'Young & Beautiful', '101.jpeg', 459000, 1, 'Bó hoa Baby trắng mang vẻ nhẹ nhàng và trong sáng sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', ''),
(102, 4, 1, 'Hoa Cưới Cinderella Bridal', '102.jpeg', 639000, 4, 'Bó hoa hồng nhã nhặn, tinh khiết và thanh lịch sẽ tô điểm thêm cho bạn trong ngày trọng đại của mình.', ''),
(103, 4, 1, 'Hoa Cưới Cherish Bridal', '103.jpeg', 949000, 4, 'Bó hoa lạ mắt với bông bi màu tím sẽ là người bạn đồng hành trong ngày quan trọng của hai bạn.', 'Bó hoa Cherish (Phiên Bản Đặc Biệt) gồm: 6 cành Baby, Các loại hoa và lá khác'),
(104, 5, 1, 'Mandarine Garden', '104.jpeg', 639000, 1, 'Bó hoa Mandarine Garden rực rỡ và đầy sức sống với hoa Hồng và Cẩm Chướng tươi tắn, là một phiên bản bó hoa của Spring Garden - sản phẩm bán chạy nhất tại Flowerstore. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', '\'Bó Hoa Love Me Tender gồm: 3 Hoa Hồng Đỏ, Hoa Baby'),
(105, 6, 1, 'Love Me Tender', '105.jpeg', 529000, 1, 'Bó Hoa Love Me Tender của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn. Đây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè thân yêu!', ''),
(106, 5, 1, 'Sweet Desire', '106.jpeg', 369000, 1, 'Bó hoa pastel được gói theo phong cách Hàn Quốc, mang màu sắc rất trẻ trung và thanh lịch. Sự kết hợp giữa Hoa hồng da, Cẩm tú cầu và hoa Cẩm chướng là một trong lựa chọn hoàn hảo cho ngày đặc biệt hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.', '\'Bó Hoa Sweet Desire gồm: 12 Hoa Hồng da, Hoa Cẩm Tú Cầu, Hoa Cẩm Chướng, Các loại hoa & lá khác'),
(107, 7, 1, 'Passionate Love', '107.jpeg', 749000, 1, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản được gói rất trẻ trung và thanh lịch là một trong lựa chọn hoàn hảo cho ngày đặc biết hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.', ''),
(112, 6, 1, 'Mandarine Garden', '104.jpeg', 639000, 1, 'Bó hoa Mandarine Garden rực rỡ và đầy sức sống với hoa Hồng và Cẩm Chướng tươi tắn, là một phiên bản bó hoa của Spring Garden - sản phẩm bán chạy nhất tại Flowerstore. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', ''),
(108, 5, 1, 'Crystal Pearl', '108.jpeg', 659000, 1, 'Bó hoa nhẹ nhàng và thanh khiết với hoa Cẩm Tú Cầu đan xen với những đóa hoa Cúc Tana được gói xinh xắn bằng giấy Kraft. Đây sẽ là món quà xinh xắn và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', ''),
(109, 5, 1, 'My Princess', '109.jpeg', 499000, 1, 'Bó hoa ngọt ngào và thanh khiết với hoa Cẩm Tú Cầu, Hoa Cúc và 12 bông hồng da được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', ''),
(110, 5, 2, 'Dreamlike', '110.jpeg', 1179000, 1, 'Giỏ hoa rực rỡ và đầy sức sống với hoa Hồng, Đồng Tiền & Cẩm Chướng tươi tắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', 'Giỏ Hoa Dreamlike gồm: 15 Bông Hồng, 10 Bông Cát Tường, 8 Bông Đồng Tiền, Hoa Baby, Các loại hoa và lá khác'),
(111, 5, 2, 'Blooming Lily', '111.jpeg', 2029000, 1, 'Hộp hoa gỗ với sự kết hợp hài hòa giữa hai tông màu hồng của Lily và màu xanh của lá. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', '\'Hộp Hoa Gỗ Blooming Lily gồm: 10 Bông LiLy, Cúc Tana, cúc calimero, Các loại hoa và lá khác'),
(200, 1, 4, ' Combo Sweet Heaven ', '200.jpeg', 529000, 1, 'Combo Sweet Heaven dành tặng riêng cả thiên đường ngọt ngào gửi đến người thương của bạn.', ''),
(201, 1, 4, 'Hộp Quà Glamor', '201.jpeg', 689000, 1, 'Hộp quà Glamor bao gồm hoa hồng đỏ tinh tế và son Black Rouge. Đây là món quà ý nghĩa cho người bạn thương', ''),
(202, 2, 4, 'Hộp Quà Elegant', '202.jpeg ', 749000, 1, 'Hộp quà Elegant bao gồm 6 hoa hồng tinh tế và son Black Rouge. Đây là món quà ý nghĩa cho người bạn thương.', ''),
(203, 3, 4, 'Sweet Innocence', '204.jpeg ', 1079000, 1, 'Hộp hoa Sweet Innocence với sự kết hợp của Dâu tây thanh mát, chocolate nồng nàn cùng chút tinh khôi của Baby trắng và Cúc tana cuối đông sẽ là một món quà ngọt ngào cho người bạn thương vào dịp Noel này đấy.', ''),
(204, 1, 4, 'Hello Sweety', '203.jpeg ', 1079000, 1, 'Hello Sweety mang vẻ đẹp nồng nàn từ Chocolate và Cherry chín mọng, kết hợp với Cẩm Tú Cầu và Cúc Tana cuối đông, hứa hẹn sẽ là món quà Giáng Sinh vô cùng bất ngờ cho người bạn thương!', ''),
(300, 5, 5, 'Chậu Cây Tiểu Cảnh Suburban', '300.jpeg', 279000, 1, 'Chậu cây Suburban là sự kết hợp giữa âm hưởng ngoại ô từ vùng cao nguyên Đà Lạt với nhiều loại sen đá đa dạng dễ thương, và vùng đồng bằng Nam Bộ với giỏ cần xé mộc mạc dân dã. Tưởng không hợp mà hợp không tưởng!', ''),
(301, 5, 5, 'Sen Đá', '301.jpeg', 179000, 1, 'Sen đá đựng trong chậu hình thú đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở.', 'Giao ngẫu nhiên hình chậu thú.'),
(302, 5, 5, 'Chậu Hoa Lan Lets Celebrate', '302.jpeg', 5049000, 1, 'Chậu hoa lan hồ điệp Lets Celebrate cùng ý nghĩa giàu sang phú quý, tấn tài tấn lộc sẽ là món quà tuyệt vời trong nhiều dịp, đặc biệt là trong thời khắc chuyển giao sang năm mới.', ''),
(303, 5, 5, 'Chậu Hoa Lan Hopeful Melody', '303.jpeg', 3059000, 1, 'Chậu hoa lan hồ điệp Hopeful Melody với lời chúc thịnh vượng, an khang sẽ là món quà tuyệt vời trong nhiều dịp, đặc biệt là trong thời khắc chuyển giao sang năm mới.', ''),
(400, 6, 6, 'Hoa hồng', '400.jpg', 25000, 1, 'Hoa hồng bán lẻ', 'Hoa bán lẻ, liên hệ shop để được làm thành bó hoa.'),
(401, 6, 6, 'Hoa Cẩm tú cầu', '401.jfif', 60000, 1, 'Hoa bán lẻ', 'Hoa bán lẻ, liên hệ shop để được làm thành bó hoa.'),
(402, 6, 6, 'Hoa cẩm chướng', '402.png', 90000, 1, 'Hoa bán lẻ', 'Hoa cẩm chướng bán lẻ, liên hệ shop để được làm thành bó hoa.'),
(500, 3, 3, ' Hộp quà All My Loving Chords', '500.jpeg', 329000, 1, ' Gửi tặng người bạn thương Hộp Quà All My Loving Chords, thay cho những lời yêu ngọt ngào bạn nhé!', ''),
(501, 3, 3, ' Hộp quà Lovely', '501.jpeg', 489000, 1, ' Gửi tặng người bạn thương Hộp Quà All My Loving Chords, thay cho những lời yêu ngọt ngào bạn nhé!', ''),
(502, 3, 3, 'Hộp quà Ocean Lover', '502.jpeg ', 449000, 1, 'Hộp quà Elegant bao gồm  hoa hồng xanh tinh tế. Đây là món quà ý nghĩa cho người bạn thương.', ''),
(113, 5, 2, 'Enchanting Romance', '113.jpeg', 869000, 1, 'Giỏ hoa tông màu hồng pastel vừa trang nhã vừa ngọt ngào với sự kết hợp của các loại hoa như hoa hồng, hoa đồng tiền, hoa cát tường và hoa cẩm chướng.', ''),
(114, 5, 2, 'Blooms Of Love', '114.jpeg', 1309000, 1, 'Hộp hoa tông màu hồng pastel vừa trang nhã vừa ngọt ngào với sự kết hợp của các loại hoa như hoa hồng, hoa đồng tiền và hoa baby.', ''),
(115, 3, 2, 'Moon River', '115.jpeg', 1679000, 1, 'Hộp Hoa Gỗ Moon River với 20 cành hoa hồng xinh xắn, rạng rỡ cùng với hoa hướng dương vàng được cắm cao và xoè, do đó vô cùng phù hợp để dành tặng cho người bạn yêu mến vào những dịp đặc biệt như chúc mừng hay khai trương.', ''),
(116, 3, 2, 'Cupids Kisses', '116.jpeg', 719000, 1, 'Các loại hoa tông màu đỏ rực rỡ cắm hình trái tim kết hợp với hộp hoa gỗ vintage cổ điển, là món quà sang trọng thích hợp để tặng nhân dịp khai trương hoặc cho bất kỳ dịp đặc biệt.', ''),
(117, 8, 2, 'Eternal Bond', '117.jpeg', 649000, 1, 'Gửi giỏ hoa trắng từ Cẩm Chướng & Cát Tường đến người bạn yêu mến.', ''),
(118, 1, 2, 'Combo Beautiful Darling', '118.jpeg', 1219000, 1, 'Lựa chọn hoàn hảo dành cho người bạn yêu thương với toàn điều ngọt ngào, đáng yêu.', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `PassWord` varchar(32) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `GroupID`, `FullName`, `UserName`, `PassWord`, `Email`) VALUES
(39, 1, 'Vo Yen Nhi', 'vynhi', '202cb962ac59075b964b07152d234b70', 'voyennhi107@gmail.com'),
(38, 3, 'Anh', 'Anh1', 'fb62579e990da4e2a8f15c3d1e123438', 'abc@gmail.com'),
(37, 3, 'Anh', 'Anh', '250cf8b51c773f3f8dc8b4be867a9a02', 'abc'),
(40, 1, 'trinh', 'trinh', '2d969e2cee8cfa07ce7ca0bb13c7a36d', 'letrinh2203@gmail.com'),
(41, 2, 'huyen', 'huyen', 'd856125d827ac297307baf299a8ee1f1', 'huyen@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`GroupID`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`ManufacturerID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderID`,`ProductID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `GroupID` (`GroupID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
