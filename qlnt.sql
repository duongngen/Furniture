-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th5 20, 2024 lúc 10:08 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlnt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '123456', 'admin@gmail.com'),
(3, 'cuonglee', 'cuong', 'pinhok123@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `sodh` int(11) NOT NULL,
  `name_customer` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_order` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `address` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`sodh`, `name_customer`, `date_order`, `status`, `address`, `email`, `phone`, `total`) VALUES
(18173821, 'cuong le', '2024-05-18', 1, 'thanh loc', '2100010355@nttu.edu.vn', '0762670780', 58470100),
(18182917, 'odoo', '2024-05-18', 1, '0762670780', '2100009549@nttu.edu.vn', '0762670780', 30000100),
(18182918, 'odoo', '2024-05-18', 0, '0762670780', '2100009549@nttu.edu.vn', '0762670780', 30000100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_imgage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_imgage`) VALUES
(1, 'Tủ', '/Tu/tu-2.jpg'),
(2, 'Bàn', '/Ban/ban-3.jpg'),
(3, 'Ghế', '/Ghe/ghe-4.jpg'),
(4, 'Giường', '/uploads/1716023904163-giuong-1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_bill`
--

CREATE TABLE `detail_bill` (
  `sodh` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` float NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_bill`
--

INSERT INTO `detail_bill` (`sodh`, `product_id`, `count`, `price`, `name_product`, `id`) VALUES
(18173821, 49, 3, 15000000, 'Tủ rượu 4 cánh KD-Y-H7603', 8),
(18173821, 14, 3, 4490000, 'Giường Ngủ Gỗ MOHO VLINE 601 Nhiều Kích Thước', 9),
(18182917, 49, 2, 15000000, 'Tủ rượu 4 cánh KD-Y-H7603', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `quantity_in_stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `description`, `price`, `quantity_in_stock`, `category_id`, `image_url`) VALUES
(3, 'Bàn làm việc giám đốc KD-Y-H7603', '', 15000008.00, 5, 2, '/uploads/1716095369419-ban-2.jpg'),
(4, 'Tủ tài liệu Giorgio ', '', 25987000.00, 7, 1, '/Tu/tu-4.jpg'),
(9, 'Ghế giám đốc Giorgio', '', 24578000.00, 10, 3, '/Ghe/ghe-2.jpg'),
(11, 'Ghế bàn ăn Giorgio - Absolute ', '', 5670000.00, 12, 3, '/Ghe/ghe-4.jpg'),
(13, 'Giường Ngủ Gỗ Tràm MOHO VLINE 601 Nhiều Kích Thước\r\n', '', 4490000.00, 10, 4, '/Giuong/giuong-1.jpg'),
(14, 'Giường Ngủ Gỗ MOHO VLINE 601 Nhiều Kích Thước', '', 4490000.00, 12, 4, '/Giuong/giuong-2.jpg'),
(15, 'Giường Ngủ Gỗ Tràm MOHO MALAGA 301 V2', '', 5490000.00, 5, 4, '/Giuong/giuong-3.jpg'),
(44, 'Tủ tài liệu Giorgio cua cuongle', '', 25987023.00, 0, 1, '/uploads/1716095148175-tu-1.jpg'),
(45, 'Tủ tài liệu Cong Trua Giorgi', '', 5122327.00, 0, 1, '/uploads/1716095166786-tu-2.jpg'),
(49, 'Tủ rượu 4 cánh KD-Y-H7604', '', 15000029.00, 0, 1, '/uploads/1716095179382-tu-4.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `detail_bill`
--
ALTER TABLE `detail_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sodh` (`sodh`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `sodh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18182919;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `detail_bill`
--
ALTER TABLE `detail_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `detail_bill`
--
ALTER TABLE `detail_bill`
  ADD CONSTRAINT `fk_detail_bil_bill` FOREIGN KEY (`sodh`) REFERENCES `bill` (`sodh`),
  ADD CONSTRAINT `fk_detail_bill_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `fk_detail_bill_products_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `fk_sodh` FOREIGN KEY (`sodh`) REFERENCES `bill` (`sodh`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
