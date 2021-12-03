-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2021 lúc 09:46 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webgr11_db_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` decimal(15,4) NOT NULL,
  `product_image` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_price` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `idUser`, `product_name`, `product_price`, `product_image`, `quantity`, `total_price`) VALUES
(11, 4292, 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN REFILL', '30.0000', 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN REFILL.jpg', 5, '150.0000'),
(17, 4294, 'LoT.Patjdu', '20000.0000', '1200px-Man_Utd_FC_.svg.png', 2, '40000.0000'),
(19, 4294, 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN', '30.0000', 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN.jpg', 3, '90.0000'),
(20, 4294, 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN REFILL', '30.0000', 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN REFILL.jpg', 2, '60.0000'),
(23, 4295, 'SUN STALKR INSTANT WARMTH BRONZER', '30.0000', 'brs4.jpg', 3, '90.0000'),
(25, 4296, 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN', '30.0000', 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN.jpg', 1, '30.0000'),
(26, 4292, 'SUN STALKR INSTANT WARMTH BRONZER', '30.0000', 'brs4.jpg', 2, '60.0000'),
(28, 4292, 'GLOSS BOMB CREAM COLOR DRIP LIP CREAM', '19.0000', 'brs1.jpg', 1, '19.0000'),
(30, 4298, 'GLOSS BOMB CREAM COLOR DRIP LIP CREAM', '19.0000', 'brs1.jpg', 1, '19.0000'),
(31, 4298, 'PERFECT STROKES UNIVERSAL VOLUMIZING MASCARA', '20.0000', 'brs10.jpg', 1, '20.0000'),
(32, 4298, 'Stay Vulnerable Melting Blush', '23.0000', 'brs12.jpg', 1, '23.0000'),
(33, 4292, 'RARE BEAUTY DISCOVERY EYESHADOW PALETTE', '35.0000', 'brs8.jpg', 1, '35.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_catalog`
--

CREATE TABLE `tbl_catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `tbl_catalog`
--

INSERT INTO `tbl_catalog` (`id`, `name`, `parent_id`) VALUES
(46, 'Son', 0),
(2, 'Phấn Mắt', 0),
(25, 'Kem nền', 0),
(47, 'Mascara', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` text COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT 0,
  `brand` text COLLATE utf8_unicode_ci NOT NULL,
  `madeIn` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `capacity` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `catalog_id`, `name`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`, `brand`, `madeIn`, `type`, `capacity`) VALUES
(26, 2, 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN REFILL', '30.0000', 'null', 0, 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN REFILL.jpg', '', '28', 0, 'null', 'null', 'null', 'null'),
(27, 2, 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN', '30.0000', 'null', 0, 'HYDRA VIZOR INVISIBLE MOISTURIZER BROAD SPECTRUM SPF 30 SUNSCREEN.jpg', '', '28', 0, 'null', 'null', 'null', 'null'),
(25, 2, 'KILLAWATT FOIL FREESTYLE HIGHLIGHTER DUO', '30.0000', 'null', 0, 'KILLAWATT FOIL FREESTYLE HIGHLIGHTER DUO.jpg', '', '28', 0, 'null', 'null', 'null', 'null'),
(28, 2, 'SUN STALKR INSTANT WARMTH BRONZER', '30.0000', 'null', 0, 'brs4.jpg', '', '28/11/2021', 0, 'null', 'null', 'null', 'null'),
(33, 2, 'HYDRATING + SOFT MATTE COMPLEXION ESSENTIALS WITH SPONGE', '86.0000', 'mô tả: Luôn tươi tắn và hoàn mỹ với gói sản phẩm độc quyền có thể tùy chỉnh của FentyBeauty.com dành cho các loại da bình thường, tập hợp các yếu tố cần thiết cho làn da của bạn để có quần áo dài, che phủ và dưỡng ẩm với hiệu ứng chỉnh sửa tức thì.\r\n', 0, 'brs7.jpg', '', '2/12/2021', 0, 'Fenty Beauty', 'Mỹ', 'Pro Filt’r', '24g'),
(34, 2, 'RARE BEAUTY DISCOVERY EYESHADOW PALETTE', '35.0000', 'Bảng phấn mắt với 7 ô màu cực mịn, các màu cơ bản dễ dùng hằng ngày, các màu nhũ giúp đôi mắt lung linh ở những bữa tiệc cùng bạn bè. Đặc biệt, với độ mịn lì lâu trôi sẽ giúp bạn có đôi mắt long lanh suốt cả ngày.\r\n', 0, 'brs8.jpg', '', '2/12/2021', 0, 'Rare Beauty', 'Mỹ', 'Discover Eyeshadow', '1,2g'),
(35, 46, 'MINI MAUVES LIP DUO', '18.0000', 'Phiên bản giới hạn: Một bộ hai son môi nhỏ kết hợp với nhau làm nên đôi môi ẩm mượt hoàn hảo. Với sự kết hợp giữa hỗn hợp thực vật của hoa sen, cây dành dành và hoa súng trắng - làm dịu, cung cấp độ ẩm nuôi dưỡng đôi môi.\r\n', 0, 'brs11.jpg', '', '2/12/2021', 0, 'Rare Beauty', 'Mỹ', 'Lip Balm', '0,75g-3,0ml'),
(36, 46, 'Stay Vulnerable Melting Blush', '23.0000', 'Phấn má hồng dạng kem lỏng, với cấu trúc đột phá, tan chảy hòa vào da để có làn da ửng hồng trông tự nhiên nhất\r\nLấy cảm hứng từ vẻ ngoài mềm mại, loại kem dạng lỏng độc đáo này sẽ tan chảy khi tiếp xúc với da tạo ra một lớp màu mỏng nhẹ ửng hồng cả ngày.\r\n', 0, 'brs12.jpg', '', '2/12/2021', 0, 'Rare Beauty', 'Mỹ', 'Melting Blush', '5g'),
(37, 47, 'PERFECT STROKES UNIVERSAL VOLUMIZING MASCARA', '20.0000', 'Được tạo ra cho mọi loại mi, mascara với lông chải ôm sát mắt đa năng để nâng, dài, cong và bồng bềnh cho sợi mi từ mọi góc độ.\r\nKhông quá ướt, không quá khô hoàn hảo để tạo ra hàng mi như ý với bạn — tạo và giữ độ cong cho mi.\r\n', 0, 'brs10.jpg', '', '2/12/2021', 0, ' Rare Beauty', 'Mỹ', 'Mascara', '13,5ml'),
(41, 47, 'PERFECT STROKES UNIVERSAL VOLUMIZING MASCARA', '20.0000', 'Được tạo ra cho mọi loại mi, mascara với lông chải ôm sát mắt đa năng để nâng, dài, cong và bồng bềnh cho sợi mi từ mọi góc độ.Không quá ướt, không quá khô hoàn hảo để tạo ra hàng mi như ý với bạn — tạo và giữ độ cong cho mi.', 0, 'macara.png', '', '3/12/2021', 0, 'Rare Beauty', 'Mỹ', 'Mascara', '13,5ml'),
(39, 46, 'GLOSS BOMB CREAM COLOR DRIP LIP CREAM', '19.0000', 'Son bóng yêu thích của bạn tạo cảm giác dễ chịu, trông tuyệt vời, giờ đây có độ che phủ màu trung bình đến toàn phần — và không có ánh nhũ.\r\n', 0, 'brs1.jpg', '', '2/12/2021', 0, 'Fenty Beauty', 'Mỹ', 'Gloss Bomb', '9ml'),
(40, 25, 'PRO FILT\'R SOFT MATTE POWDER FOUNDATION', '90.0000', 'Phức hợp Blur Filt’r để mang lại kết thúc mờ, tối ưu nhất. Chống mồ hôi, độ ẩm và nhàu. Công thức có thể xây dựng từ nhẹ đến che phủ đầy đủ, thích được nhiều lớp. Không đọng lại thành các nếp nhăn, tắc nghẽn lỗ chân lông hoặc đóng bánh\r\n', 0, 'foundation.jpg', '', '2/12/2021', 0, 'Fenty Beauty', 'Mỹ', 'Mỹ', '9,1g');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(255) NOT NULL,
  `role` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` text COLLATE utf8_unicode_ci NOT NULL,
  `avtUser` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `role`, `name`, `email`, `phone`, `address`, `password`, `created`, `avtUser`) VALUES
(19, 1, 'admin', 'gido@gmail.com', '0123456789', '2x đường XXXX, phường xxxx', '123456', '0', ''),
(4292, 1, 'Nguyễn Thị Kiều My', '4444@gmail.com', '098452xxx', 'mật khẩu là 4444', 'dbc4d84bfcfe2284ba11beffb853a8c4', '27/11/2021', ''),
(4293, 2, 'Phúc', '333@gmail.com', '091728xxxxx', '4444', 'dbc4d84bfcfe2284ba11beffb853a8c4', '28/11/2021', ''),
(4294, 2, 'abc', '55556@gmail.com', '', '', 'dbc4d84bfcfe2284ba11beffb853a8c4', '29/11/2021', ''),
(4295, 2, 'Kim Kim', 'nganle.31191025771@st.ueh.edu.vn', '', '', 'e10adc3949ba59abbe56e057f20f883e', '1/12/2021', ''),
(4296, 2, 'Lại Phi Trường', 'truonglai.31191024512@gmail.com', '0123456789', 'Bảo Lộc', '25f9e794323b453885f5181f1b624d0b', '1/12/2021', ''),
(4297, 2, 'kim jong kook', 'kimjongkook@gmail.com', '', '', '25f9e794323b453885f5181f1b624d0b', '2/12/2021', ''),
(4298, 2, 'Đặng Công Bình', 'dangcongbinh36@gmail.com', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '3/12/2021', ''),
(4299, 2, 'Abc', 'abc@gmail.com', '', '', '202cb962ac59075b964b07152d234b70', '3/12/2021', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `tbl_catalog`
--
ALTER TABLE `tbl_catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`catalog_id`);
ALTER TABLE `tbl_products` ADD FULLTEXT KEY `name` (`name`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `tbl_catalog`
--
ALTER TABLE `tbl_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4300;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
