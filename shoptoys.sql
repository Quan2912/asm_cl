-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2022 lúc 06:23 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoptoys`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customser`
--

CREATE TABLE `customser` (
  `CID` int(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customser`
--

INSERT INTO `customser` (`CID`, `Username`, `Password`, `Description`) VALUES
(1, 'CatSon', '123456', '.'),
(2, 'DinhLong', '456789', '.'),
(3, 'LamThai', '123456', '.'),
(4, 'CongHuy', '123456', '.'),
(5, 'HongQuan', '123456', '.'),
(6, 'PhiHung', '123456', '.'),
(7, 'HoangMinh', '123456', '.'),
(8, 'QuocKhanh', '123456', 'Nguyen Quoc Khanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `PID` int(200) NOT NULL,
  `PName` varchar(200) NOT NULL,
  `Genre` varchar(200) NOT NULL,
  `Price` int(200) NOT NULL,
  `Img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`PID`, `PName`, `Genre`, `Price`, `Img`) VALUES
(1, 'Optimus Prime', 'LEGO', 170, 'C1.jpg'),
(2, 'The Starry Night', 'LEGO', 170, 'C2.jpg'),
(3, 'Bugatti Chiron', 'LEGO', 350, 'C3.jpg'),
(4, 'Santiago Bernabéu Stadium', 'LEGO', 350, 'C4.jpg'),
(5, 'Hogwarts Castle', 'LEGO', 400, 'C5.jpg'),
(6, 'Colosseum', 'LEGO', 550, 'C6.jpg'),
(7, 'Ferrari Daytona SP3', 'LEGO', 400, 'C7.jpg'),
(8, 'Camp Nou Stadium', 'LEGO', 350, 'C8.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customser`
--
ALTER TABLE `customser`
  ADD PRIMARY KEY (`CID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customser`
--
ALTER TABLE `customser`
  MODIFY `CID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `PID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
