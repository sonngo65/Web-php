-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th6 13, 2023 lúc 05:14 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webphukiendt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`) VALUES
(1, 'SONY', 1),
(2, 'ACER', 1),
(3, 'SAMSUNG', 1),
(4, 'CANON', 1),
(5, 'IPHONE', 1),
(21, 'VIVO', 1),
(22, 'VSMART', 1),
(25, 'MACBOOK', 1),
(26, 'OTHER', 1),
(27, 'APPLE', 1),
(28, 'OPPO', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `created_date`) VALUES
(40, 0, '2022-11-07'),
(41, 11, '2022-11-07'),
(42, 7, '2023-01-07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `total_price` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`, `total_price`) VALUES
(256, 41, 88, 2, '38000000', 38000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(1, 'Laptop', 0),
(2, 'Camera', 0),
(3, 'Desktop', 1),
(4, 'Accessories', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `code`, `image`, `content`, `status`) VALUES
(9, 'Vivo X9 được cho là sẽ ra mắt vào ngày 20 tháng 6', '1153', 'Vivo-X90S-ra-mat-ngay-20-6-2.jpeg', 'Bên trong, Vivo X90S sẽ được cung cấp sức mạnh đến từ con chip Dimensity 9200+, đi kèm RAM 8GB/12GB/16GB và các tùy chọn bộ nhớ trong 128GB/256GB/512GB/1TB. Về khả năng nhiếp ảnh, smartphone này có hệ thống 3 camera sau, bao gồm cảm biến chính 50MP, đi kèm máy ảnh 12MP cho góc chụp siêu rộng và ống kính chân dung 12MP với hỗ trợ zoom quang học 2x. Mặt trước của máy có sự xuất hiện của camera selfie 32MP.\r\nCác tính năng còn lại của Vivo X90S bao gồm viên pin 4,690 mAh với hỗ trợ sạc nhanh 120W và chạy trên hệ điều hành Android 13 mới nhất.\r\n', 1),
(10, 'iQOO 11S sẽ ra mắt vào tháng 7 với chip SD8+ Gen 2, màn hình 144Hz, sạc nhanh 200W', '1154', 'iQOO-11-5G-cover.jpeg', 'Theo rò rỉ, iQOO 11S rất có thể là điện thoại đầu tiên sử dụng chipset Snapdragon 8 Plus Gen 2 sắp ra mắt, được cho là phiên bản ép xung của Snapdragon 8 Gen 2. Smartphone này còn được tiết lộ có Sony IMX866 VCS, được hỗ trợ bởi chip Vivo V2. Ngoài ra, nó sẽ có pin 4,700mAh nhỏ hơn một chút so với iQOO 11 nhưng được bù đắp với khả năng sạc nhanh 200W ấn tượng. Hơn nữa, iQOO 11S sẽ ra mắt với màu xanh mới hấp dẫn.\r\nỞ mặt trước, di động sắp ra mắt của Vivo sẽ được trang bị màn hình E6 AMOLED phẳng 6.78 inch cung cấp độ phân giải 2K và tốc độ làm mới 144Hz. Thiết bị sẽ đi kèm với 16GB RAM LPDDR5x và 512GB dung lượng lưu trữ UFS 4.0. Nó sẽ có khung viền kim loại cứng cáp, hệ thống camera sau bao gồm ống kính tele 8 megapixel và một ống kính siêu rộng 13 megapixel. Đối với ảnh selfie, nó sẽ có camera phía trước 16 megapixel.', 1),
(16, 'Nên sửa lỗi laptop báo sạc nhưng không vào pin như thế nào?', '2312', 'sua-loi-laptop-bao-sac-nhung-khong-vao-pin-bg.jpg', 'Những dấu hiệu dưới đây có thể cho thấy laptop gặp lỗi về nguồn điện hoặc pin, bạn hãy cùng mình tham khảo nhé!\r\n\r\nLaptop không thể hoạt động khi không cắm sạc: Khi bạn tháo bỏ sạc khỏi laptop, máy sẽ tự động tắt nguồn và không thể khởi động lên bằng pin.\r\nKhông có biểu tượng pin hoặc pin báo 0%: Khi bạn nhìn vào biểu tượng pin trên thanh tác vụ hoặc phần mềm quản lý pin, nó không hiển thị mức pin hiện tại hoặc chỉ hiển thị 0%.\r\nLaptop tự động tắt khi ngắt nguồn: Khi nguồn điện chuyển từ sạc sang pin, laptop bị tắt nguồn mà không có cảnh báo hay yêu cầu sự can thiệp từ người dùng.\r\nSạc không hoạt động hoặc không kết nối chặt: Bạn có thể thấy đèn LED trên bộ sạc không sáng khi kết nối vào laptop, hoặc sạc không cắm chặt vào cổng sạc trên laptop.\r\nLaptop hoạt động bình thường khi sử dụng sạc từ nguồn khác: Khi sử dụng một sạc từ nguồn khác, laptop hoạt động bình thường và pin có thể được sạc đầy.', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `status` int(10) NOT NULL,
  `total` bigint(20) DEFAULT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `status`, `total`, `created_date`) VALUES
(64, 0, 8, 2, 38110000, '2022-11-07'),
(66, 0, 2, 2, 11000000, '2022-11-20'),
(67, 8, 8, 2, 41800000, '2022-11-20'),
(68, 8, 8, 1, 41800000, '2022-11-20'),
(69, 11, 8, 2, 50600000, '2022-11-28'),
(71, 11, 8, 5, 418000, '2022-11-28'),
(75, 11, 8, 5, 11000000, '2023-01-07'),
(76, 11, 8, 1, 41800000, '2023-01-07'),
(77, 11, 8, 1, 52833000, '2023-01-07'),
(78, 7, 8, 1, 41800000, '2023-01-07'),
(79, 7, 8, 1, 19800000, '2023-01-07'),
(80, 0, 2, 5, 41800000, '2023-06-04'),
(81, 0, 8, 5, 41827500, '2023-06-07'),
(82, 0, 8, 5, 125400000, '2023-06-07'),
(83, 0, 8, 0, 63800000, '2023-06-09'),
(84, 0, 8, 5, 125400000, '2023-06-09'),
(85, 0, 8, 2, 43228900, '2023-06-09'),
(86, 0, 8, 2, 1100000, '2023-06-10'),
(87, 0, 2, 1, 133430, '2023-06-10'),
(88, 0, 8, 1, 134530000, '2023-06-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `consignee_name` varchar(200) NOT NULL,
  `consignee_address` varchar(500) NOT NULL,
  `consignee_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `consignee_name`, `consignee_address`, `consignee_phone`) VALUES
(144, 64, 88, 1, 38000000, '', '', ''),
(145, 64, 79, 1, 30000, '', '', ''),
(146, 64, 81, 1, 80000, '', '', ''),
(149, 66, 86, 1, 10000000, '', '', ''),
(150, 67, 88, 1, 38000000, '', '', ''),
(151, 64, 88, 1, 38000000, '', '', ''),
(152, 69, 88, 1, 38000000, '', '', ''),
(153, 69, 85, 1, 8000000, '', '', ''),
(155, 71, 74, 2, 190000, '', '', ''),
(156, 75, 93, 1, 10000000, 'Bùi Văn Hà', '58 Trần Nguyên Hãn,Hà Nội', '0365932577'),
(157, 76, 88, 1, 38000000, 'Bùi Văn Lâm', '58 Trần Nguyên Hãn,Hà Nội', '0365932400'),
(158, 77, 88, 1, 38000000, 'Trần Thu Hằng', '58 Trần Nguyên Hãn,Hà Nội', '123123123123'),
(159, 77, 79, 1, 30000, 'Trần Thu Hằng', '58 Trần Nguyên Hãn,Hà Nội', '123123123123'),
(160, 77, 86, 1, 10000000, 'Trần Thu Hằng', '58 Trần Nguyên Hãn,Hà Nội', '123123123123'),
(161, 78, 88, 1, 38000000, 'Bùi Văn Lâm', '58 Trần Nguyên Hãn,Hà Nội', '0365932577'),
(162, 79, 86, 1, 10000000, 'Trần Thu Hằng', '58 Trần Nguyên Hãn,Hà Nội', '0365932400'),
(163, 79, 85, 1, 8000000, 'Trần Thu Hằng', '58 Trần Nguyên Hãn,Hà Nội', '0365932400'),
(164, 80, 88, 3, 38000000, 'qwewqe', 'wqeqw', '456456546'),
(165, 81, 80, 2, 25000, 'e', 'q', '23123'),
(166, 81, 88, 1, 38000000, 'e', 'q', '23123'),
(167, 82, 88, 3, 38000000, 'Ngô sơn', 'hà nội', '0984242115'),
(168, 83, 93, 2, 10000000, 'qwewqe', 'rew', '09432423423'),
(169, 83, 88, 1, 38000000, 'qwewqe', 'rew', '09432423423'),
(170, 84, 88, 3, 38000000, 'wqe', 'aaaaewr', '234234'),
(171, 85, 88, 1, 38000000, 'ewr', 'ewr', '324234'),
(172, 85, 139, 2, 1000000, 'ewr', 'ewr', '324234'),
(173, 85, 138, 1, 299000, 'ewr', 'ewr', '324234'),
(174, 86, 139, 1, 1000000, 'sadwqe', 'ưqeqweqw', '2312312'),
(175, 87, 140, 1, 121300, '123', '123', '123'),
(176, 88, 140, 1000, 121300, 'Ngô sơn', 'hà nội', '0984242115'),
(177, 88, 139, 1, 1000000, 'Ngô sơn', 'hà nội', '0984242115');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `name`, `description`) VALUES
(2, 'Trả qua thẻ ngân hàng', '<p>Phương thức thanh to&aacute;n online</p>'),
(8, 'Trả tiền mặt', '<p><strong>Phương thức thanh to&aacute;n trực tiếp</strong></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text DEFAULT NULL,
  `view_count` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `image`, `price`, `quantity`, `category_id`, `brand_id`, `status`, `content`, `description`, `view_count`) VALUES
(37, 'Tai nghe Bluetooth 2 Bên Mozard Q6C', 'M01', 'tai-nghe-ep-gaming-jbl-quantum-50-260722-053101-600x600.jpg', 321000, 98, 4, 26, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Có phím điều chỉnh âm lượng, nghe/nhận cuộc gọi.\r\n', 1),
(38, 'Macbook Pro', 'M50', 'apple-macbook-pro-14-m1-pro-2021-10-core-cpu-1-1-600x600.jpg', 3200000, 100, 1, 25, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB', 1),
(39, 'Vivo Y36', 'M50', 'vivo-y36-xanh-thumb-1-2-600x600.jpg', 3290000, 100, 3, 21, 1, 'Mặt lưng của máy được làm từ kính tạo nên sự quyến rũ thu hút sự chú ý của mọi người. Đồng thời cạnh viền được làm từ kim loại phẳng và bo tròn ở các góc cho cảm giác cầm nắm chắc chắn tạo nên sự bóng bẩy và không bị cấn tay trong quá trình sử dụng.\r\n\r\nGiải trí đã hơn trên màn hình 6.64 inch\r\nMặt trước của điện thoại Vivo sẽ là tấm nền IPS LCD có kích thước 6.64 inch, độ phân giải của máy đạt mức Full HD+ (1080 x 2388 Pixels) cho mọi nội dung trên màn hình được tái hiện tương đối sắc nét, giúp bạn chiêm ngưỡng những bộ phim, chơi game được tốt hơn.\r\n\r\nGiúp hình ảnh được chuyển động mượt mà, khả năng vuốt chạm diễn ra tốt hơn khi đọc báo hoặc chơi game nên Vivo trang bị màn hình tần số quét 90 Hz cùng với độ sáng 650 nits giúp bạn nhìn rõ thông báo và sử dụng tốt hơn khi ra ngoài trời.\r\n\r\nHiệu năng ổn định\r\nVivo Y36 được trang bị con chip Snapdragon 680 đây là vi xử lý tầm trung đến từ nhà Qualcomm có mức xung nhịp tối đa có thể đạt được theo như công bố của hãng là vào khoảng 2.4 GHz, nhờ vậy mà máy đủ sức duy trì sự ổn định trong quá trình sử dụng các tác vụ như lướt web, xem phim hay chơi một vài tựa game thịnh hành ở mức cấu hình tầm trung.\r\n\r\nBên cạnh một chiếc điện thoại RAM 8 GB sẽ là sự tối ưu về giao diện trên Android 13, điều này giúp cho máy có thể đa nhiệm ổn định, hạn chế được phần nào tình trạng tải lại khi mở nhiều ứng dụng cùng một lúc.\r\n\r\nCamera đem đến chất lượng ảnh đẹp\r\nĐể hỗ trợ người dùng có khả năng chụp ảnh chuyên nghiệp hơn, Vivo đã cải tiến bộ đôi camera trên chiếc Vivo Y36 với camera chính của máy được nâng cấp lên độ phân giải 50 MP và camera phụ 2 MP. Nhờ tính năng chụp siêu độ phân giải, việc chụp ảnh để in ấn trở nên thuận tiện hơn cho người dùng.', 'Vivo Y36 chiếc điện thoại Vivo Y mới nhất được nhà Vivo tung ra thị trường Việt Nam vào tháng 06/2023', 2),
(44, 'Oppo F3 plus', 'f3plus', 'iphone-7-plus-256gb-300x3001665153922.jpg', 300000, 100, 3, 3, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Thiết kế gọn gàng, di động\r\n', 0),
(45, 'Desktop Mac', 'ip5', 'featured-section-new-to-imac_2x1665153699.jpg', 12000000, 100, 3, 25, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 1),
(65, 'Bộ sạc Iphone', 'h7', '21665153459.jpg', 22000, 100, 4, 5, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\n\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\n\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 2),
(66, 'Máy ảnh Canon chính hãng', 'y7', 'canon-eos-1d-x-2-1-min1665153411.jpg', 8000000, 96, 2, 4, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Sản phẩm chính hãng nguyên seal 100%.\r\n', 5),
(67, 'Bộ sạc Combo iPhone 5/6/6+ (Pisen)', 'j8', '31665153514.jpg', 250000, 100, 4, 5, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\n\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\n\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 1),
(68, 'Ốp lưng Galaxy S8 Plus Standing 2017 chính hãng', 'b6', 'timthumb (1)1665153326.jpg', 60000, 100, 4, 5, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\n\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\n\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 0),
(71, 'Gậy tự sướng mini Samsung', 'k8', 'gimbal-chong-rung-zhiyun-smooth-xs-trang-1.-600x600.jpg', 230000, 100, 4, 3, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 0),
(72, 'Gậy tự sướng Samsung', 'k8', 'gimbal-chong-rung-zhiyun-smooth-q3-thumb-600x600.jpg', 230000, 100, 4, 3, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Dung lượng RAM 8GB là một con số dư giả cho đa ', 2),
(73, 'Gậy tự sướng mini Sony', 'k8', 'gimbal-chong-rung-zhiyun-smooth-q3-thumb-600x600.jpg', 239900, 100, 4, 1, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 3),
(74, 'Pin điện thoại LG Trắng', 'p7', 'sac-du-phong-polymer-5000mah-khong-day-magnetic-typecpd-15w-laut-handy-e33a-den-1.jpg', 231000, 88, 4, 26, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Sản phẩm chính hãng nguyên seal 100%.\r\n', 2),
(79, 'Sạc dự phòng xiami trắng ', 'j8', 'd8e-pin-sac-xiaomi-10000mah-gen-2-gia-re1665152948.jpg', 300000, 96, 4, 26, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 9),
(80, 'Sạc dự phòng Acer 15.000MAH', 'j8', '797-sac-du-phong-genai-trang-10000mah-gia-re1665152869.jpg', 25000, 98, 4, 2, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\n\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\n\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 4),
(81, 'Sạc dự phòng 10.000MAH', 'j8', '0a7-sac-du-phong-romoss-polymoss-10000mah-gia-re1665152811.jpg', 230000, 99, 4, 1, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Thiết kế gọn gàng, di động\r\n', 3),
(85, 'Canon EOS-1D X', 'canon', '3-4a620da2-d3d1-46b3-82b7-6522066a48ed1665152728.jpg', 2399000, 98, 2, 4, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Nhìn tổng thể bên ngoài, máy chiếu này có thiết kế khá nhỏ nhắn, đồng thời khối lượng cũng cực kỳ gọn nhẹ', 3),
(86, 'Canon EOS 6D', 'canon 6d', '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1665152687.jpg', 3200000, 96, 2, 4, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Sản phẩm chính hãng nguyên seal 100%.\r\n', 9),
(88, 'Macbook pro 2017', 'mp67', 'featured-section-new-to-imac_2x1665156961.jpg', 2300000, 79, 1, 25, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', '', 61),
(93, 'SONY CAM V1', 'SONY_SP1', '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1665156911.jpg', 123000, 4, 4, 4, 1, 'MacBook Air có hai tuỳ chọn phiên bản bộ nhớ là 256GB và 512GB. Ổ cứng SSD có trên máy cũng có tốc độ gấp đôi. Dung lượng RAM 8GB là một con số dư giả cho đa phần người dùng hiện tại.\r\n\r\nMacBook Air M1 sở hữu cảm biến vân tay đặt trên phím nguồn của máy. Bảo mật vân tay Touch ID không chỉ tiện dụng khi mở máy và thanh toán online, mà còn bảo vệ tất cả các dữ liệu quan trọng của bạn có trên chiếc máy tính này.\r\n\r\nBạn có thể sử dụng webcam có sẵn trên máy để thực hiện các cuộc gọi FaceTime HD sắc nét. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 cùng một cổng tai nghe 3.5mm. Với các cổng kết nối này, bạn có thể sử dụng MacBook Air trên màn hình ngoài, truyền tải dữ liệu với tốc độ chóng mặt tới 40GB/s.', 'Nhìn tổng thể bên ngoài, máy chiếu này có thiết kế khá nhỏ nhắn, đồng thời khối lượng cũng cực kỳ gọn nhẹ', 73),
(103, 'Laptop Apple MacBook Air 13 inch M2 2022 8-core CPU/8GB/256GB/8-core GPU (MLY13SA/A) ', 'mb01', 'apple-macbook-air-m2-2022-vang-600x600.jpg', 26777000, 100, 1, 25, 1, 'CPU:\r\n\r\nApple M2100GB/s\r\nRAM:\r\n\r\n8 GB\r\nỔ cứng:\r\n\r\n256 GB SSD\r\nMàn hình:\r\n\r\n13.6', 'Lột xác ngoạn mục với thiết kế thời thượng, sang trọng \r\n', 5),
(104, 'Laptop Apple MacBook Pro 16 inch M1 Pro 2021 10 core-CPU/16GB/512GB/16 core-GPU (MK1E3SA/A)', 'mb02', 'apple-macbook-pro-16-m1-pro-2021-10-core-cpu-600x600.jpg', 44990000, 10, 1, 25, 1, 'MacBook Pro 16 M1 Pro 2021 không chỉ sở hữu thiết kế mới trông vuông vức hơn mà còn mang trong mình sức mạnh hiệu năng vượt trội đến từ bộ vi xử lý M1 Pro, cho mình trải nghiệm sử dụng mượt mà và ấn tượng như một dân chuyên đúng nghĩa.\r\nHiệu năng vượt trội, chinh phục mọi tác vụ\r\nMacBook Pro 16 inch sở hữu sức mạnh từ bộ vi xử lý M1 Pro tiên tiến được trang bị 10 nhân CPU (8 nhân hiệu suất cao + 2 nhân tiết kiệm điện) mang đến hiệu suất nhanh hơn tới 70% so với M1, cho khả năng xử lý mượt mà mọi tác vụ từ cơ bản đến khắt khe nhất như chỉnh sửa hình ảnh, dựng video độ phân giải cao,... Không những có thời gian phản hồi nhanh mà còn tối ưu tiết kiệm được đáng kể điện năng', 'MacBook Pro 16 inch sở hữu sức mạnh từ bộ vi xử lý M1 Pro tiên tiến được trang bị 10 nhân CPU (8 nhân hiệu suất cao + 2 nhân tiết kiệm điện)', 0),
(105, 'Laptop Apple MacBook Pro 14 inch M1 Pro 2021 10-core CPU/16GB/1TB SSD/16-core GPU (MKGQ3SA/A)', 'mb03', 'apple-macbook-pro-14-m1-pro-2021-10-core-cpu-1-1-600x600.jpg', 44990000, 12, 1, 25, 1, 'Apple MacBook Pro 14 inch M1 Pro 2021 gây ấn tượng mạnh khi mang trên mình vẻ ngoài có nhiều cải tiến mới, độc đáo và cuốn hút mọi ánh nhìn cùng hiệu năng mạnh mẽ, đỉnh cao đến từ con chip M1 Pro hiện đại, đáp ứng tối ưu nhu cầu sử dụng cho giới công nghệ, kỹ thuật cũng như cá nhà sáng tạo nội dung chuyên nghiệp.\r\nBộ cấu hình vượt trội, phục vụ tối đa cho công việc\r\nMacBook M1 Pro có cấu trúc 10 nhân mang một sức mạnh hiệu năng vô cùng mạnh mẽ được sản xuất dựa trên tiến trình là 5 nm, có tận 33.7 tỷ bóng bán dẫn đạt tốc độ băng thông lên đến 200GB/s memory bandwidth cho hiệu suất của Apple nhanh hơn khoảng 70% so với thế hệ tiền nhiệm Apple M1, từ đó đem lại cho bạn một tốc độ xử lý đáng kinh ngạc giúp giải quyết tốt từ các công việc văn phòng cơ bản đến phức tạp trên các phần mềm đồ họa chuyên nghiệp trên', 'MacBook M1 Pro có cấu trúc 10 nhân mang một sức mạnh hiệu năng vô cùng mạnh mẽ được sản xuất dựa trên tiến trình là 5 nm', 1),
(106, 'Laptop Apple MacBook Air 13 inch M1 2020 8-core CPU/8GB/256GB/7-core GPU (MGN63SA/A) ', 'mb04', 'macbook-air-m1-2020-gray-600x600.jpg', 18390000, 13, 1, 25, 1, 'Chip Apple M1 tốc độ xử lý nhanh gấp 3.5 lần thế hệ trước', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.\r\nChip Apple M1 tốc độ xử lý nhanh gấp 3.5 lần thế hệ trước\r\nChiếc MacBook này được trang bị con chip Apple M1 được sản xuất độc quyền bởi Nhà Táo trên tiến trình 5 nm, 8 lõi bao gồm 4 lõi tiết kiệm điện và 4 lõi hiệu suất cao, mang đến một hiệu năng kinh ngạc, xử lý mọi tác vụ văn phòng một cách mượt mà như Word, Excel, Powerpoint,... thực hiện tốt các nhiệm vụ chỉnh sửa hình ảnh, kết xuất 2D trên các phần mềm Photoshop, AI,... máy còn hỗ trợ tiết kiệm được điện năng cao.', 1),
(107, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD 15W Belkin Pocket Power BPB011', 's01', 'pin-polymer-10000-type-c-15w-belkin-pocket-power-thumb1-600x600.jpg', 470000, 98, 4, 21, 1, 'Pin sạc dự phòng Polymer 10.000 mAh Type C 15W PD Belkin Pocket Power BPB011 được thiết kế hướng đến sự tiện lợi cho người dùng với khối lượng gọn nhẹ, sạc nhanh ấn tượng,...\r\n• Vẻ ngoài tối giản, pin sạc mỏng gọn, các cạnh viền được bo mềm mại giúp việc cầm nắm thoải mái hơn.\r\n\r\n• Màu sắc nổi bật, thời thượng, pin sạc dự phòng có in logo Belkin làm tổng thể thêm hài hòa, đẹp mắt.\r\n\r\n• Dung lượng pin 10.000 mAh và hiệu suất sạc 60%, sạc cho nhiều thiết bị điện tử của bạn như: Điện thoại, tai nghe, pin sạc dự phòng,...\r\n\r\n• Công nghệ sạc nhanh Power Delivery cho phép thiết bị nhận được mức sạc tối đa 15 W, đồng thời vẫn đảm bảo an toàn khi sạc', ' Dung lượng pin 10.000 mAh và hiệu suất sạc 60%, sạc cho nhiều thiết bị điện tử của bạn như: Điện thoại, tai nghe, pin sạc dự phòng,...', 0),
(108, 'Pin sạc dự phòng Polymer 5000mAh Không dây Magnetic Type C PD 20W LAUT Handy E33A', 'S04', 'sac-du-phong-polymer-5000mah-khong-day-magnetic-typecpd-15w-laut-handy-e33a-den-1.jpg', 960000, 34, 4, 26, 1, 'Pin sạc dự phòng Polymer 5000mAh Không dây Magnetic Type C PD 20W LAUT Handy E33A sở hữu kiểu dáng sang trọng, hoạ tiết giả đá đẹp mắt, hỗ trợ sạc không dây giúp tối đa hoá công dụng trong 1 thiết kế nhỏ gọn.\r\n• Kiểu dáng thời trang, khối lượng gọn nhẹ, có thể bỏ sạc dự phòng vào balo hay túi xách để mang theo bất cứ đâu.\r\n\r\n• Pin sạc dự phòng trang bị 2 cách sạc là sạc không dây Magnetic (công suất tối đa 15 W) và sạc có dây qua cổng Type-C (công suất tối đa 20 W), cho phép bạn sử dụng để sạc nhiều dòng điện thoại khác nhau.\r\n\r\n• Lõi pin Polymer giúp giữ năng lượng pin lâu hơn và bảo vệ người dùng cũng như thiết bị an toàn trong quá trình sử dụng.', '• Pin sạc dự phòng trang bị 2 cách sạc là sạc không dây Magnetic (công suất tối đa 15 W) và sạc có dây qua cổng Type-C (công suất tối đa 20 W), cho phép bạn sử dụng để sạc nhiều dòng điện thoại khác nhau.', 0),
(109, 'Ốp lưng iPad 10 Nhựa cứng viền dẻo ESR CLASSIC HYBRID BACK Chính hãng', 'OP01', 'op-lung-ipad-10-nhua-cung-vien-deo-classic-hybrid-back-chinh-hang-thumb-600x600.jpg', 480000, 42, 4, 26, 1, 'Bao da trong suốt, thể hiện trọn vẹn vẻ đẹp của chiếc iPad 10.\r\nChất liệu nhựa cứng viền dẻo được sử dụng kết hợp, vừa gia tăng độ cứng cáp, vừa tiện lợi tháo lắp.\r\nBao da cực mỏng, không làm ảnh hưởng đến độ dày iPad, tiện mang theo.\r\nChống sốc tốt, bảo vệ hiệu quả mặt lưng và các góc của iPad.', '', 0),
(110, 'Gimbal chống rung Zhiyun Smooth Q3', 'GAY01', 'gimbal-chong-rung-zhiyun-smooth-q3-thumb-600x600.jpg', 1890000, 77, 4, 3, 1, 'Gimbal chống rung Zhiyun Smooth Q3 có thiết kế công thái học, các nút điều khiển bố trí trực quan giúp quá trình sử dụng gimbal diễn ra nhanh hơn. \r\n• Giá đỡ điện thoại hỗ trợ điện thoại thông minh từ 4.7 - 6.7 inch, dùng được cho hầu hết các điện thoại.\r\n\r\n• Gimbal Zhiyun với bộ ổn định 3 trục gập nhỏ gọn, được thiết kế với đèn LED tích hợp sử dụng được ba mức độ sáng có thể điều chỉnh khác nhau.\r\n\r\n• Gimbal dễ dàng chuyển đổi giữa các chế độ dọc và ngang chỉ bằng một nút bấm, cho phép bạn quay cả video điện ảnh.\r\n\r\n• Gimbal có thiết kế tiện dụng với tay cầm không trượt, cho thời gian sử dụng được tới 15 giờ với pin đi kèm và sạc đầy trong khoảng ba giờ.', ' Giá đỡ điện thoại hỗ trợ điện thoại thông minh từ 4.7 - 6.7 inch, dùng được cho hầu hết các điện thoại.', 0),
(111, 'Gimbal chống rung Moza Nano SE ', 'GAY02', 'gimbal-chong-rung-moza-nano-se-den-1.-600x600.jpg', 230000, 21, 4, 26, 1, 'Bạn yêu thích chụp ảnh, muốn quay lại những đoạn video ngắn làm kỉ niệm, quay khi đi chơi, đi du lịch khoe với bạn bè trên facebook, tiktok hoặc quay phim làm vlog, quay review sản phẩm thì chiếc gimbal Moza Nano SE này sẽ đáp ứng được đầy đủ nhu cầu của bạn ngay tại thời điểm này.', 'Chống rung mượt mà, chuyển đổi linh hoạt giữa các chế độ với remote\r\n', 0),
(112, 'Gimbal chống rung Zhiyun Smooth XS', 'GAY03', 'gimbal-chong-rung-zhiyun-smooth-xs-trang-1.-600x600.jpg', 120000, 12, 4, 26, 1, 'Zhiyun Smooth XS chỉ sử dụng với điện thoại từ 4.7 - 6.7 inch, kết nối với điện thoại qua Bluetooth 5.0.\r\nKiểu dáng nhỏ gọn chỉ 249 gram, có thể gấp gọn tiện lợi kết hợp màu sắc trẻ trung.\r\nSmooth XS có khả năng chống rung 2 trục cuộn (roll) và xoay (yaw) với phạm vi góc quay là 270o và 268o.\r\nPhần thân kéo dài 26 cm giúp tăng thêm các góc chụp khác như chụp nhóm.\r\nPin 1000 mAh, thời gian sử dụng lên đến 4 tiếng và sạc đầy trong 3 tiếng qua cổng USB Type-C.\r\nPhím điều khiển trên thân gimbal: Chuyển đổi nhanh từ chụp ảnh dọc chân dung sang chụp ảnh ngang phong cảnh, điều chỉnh trái phải, điều khiển zoom xa/gần,...\r\nCó tích hợp đèn LED báo dung lượng pin.\r\nKết nối với ứng dụng ZY Cami với nhiều tính năng hỗ trợ chụp hình, quay video: nhận diện cử chỉ, tự động theo dõi chủ thể và đặt chủ thể tại trọng tâm', 'Zhiyun Smooth XS chỉ sử dụng với điện thoại từ 4.7 - 6.7 inch, kết nối với điện thoại qua Bluetooth 5.0.\r\n', 0),
(113, 'Tai nghe Bluetooth AirPods 2 Lightning Charge Apple MV7N2 ', 'TN01', 'bluetooth-airpods-2-apple-mv7n2-imei-ava-600x600.jpg', 2650000, 13, 4, 27, 1, 'Thiết kế đơn giản, thời trang và nhỏ gọn.\r\nTrang bị chip H1 hoàn toàn mới, cho tốc độ kết nối, chuyển đổi giữa các thiết bị nhanh chóng.\r\nKích hoạt nhanh trợ lý ảo Siri bằng cách nói \"Hey, Siri\".\r\nCó thể sử dụng nghe nhạc lên đến 5 giờ (âm lượng 50%) cho mỗi một lần sạc đầy.\r\nTích hợp công nghệ sạc nhanh hiện đại. Sạc nhanh 15 phút có thể nghe nhạc 2 - 3 giờ (âm lượng 50%).\r\nSử dụng song song với hộp sạc có thể dùng được lên đến 24 giờ.\r\nTính năng nhận cuộc gọi, kích hoạt Siri, nghe hoặc tạm dừng đoạn nhạc đang phát.\r\nSản phẩm chính hãng Apple, nguyên seal 100%.', 'Thiết kế đơn giản, thời trang và nhỏ gọn.\r\nTrang bị chip H1 hoàn toàn mới, cho tốc độ kết nối, chuyển đổi giữa các thiết bị nhanh chóng.', 0),
(114, 'Tai nghe Bluetooth True Wireless AVA+ DS200A-WB ', 'TN02', 'bluetooth-true-wireless-ava-ds200a-wb-thumb-600x600.png', 175999, 23, 4, 27, 1, 'Kiểu dáng đơn giản, trẻ trung với 2 màu xanh navy và đen.\r\nTai nghe cho âm thanh chất lượng cao, rõ nét.\r\nKết nối bằng chuẩn Bluetooth 5.0, có độ ổn định cao trong phạm vi 10 m.\r\nSử dụng thoải mái trong 4 giờ, sạc đầy trong 1.5 giờ. \r\nHỗ trợ phím nhấn điều khiển, dễ dàng bật trợ lý ảo, nghe/nhận cuộc gọi, phát/dừng chơi nhạc. \r\nTương thích với thiết bị cấu hình Android, iOS, Windows, macOS.', 'Kiểu dáng đơn giản, trẻ trung với 2 màu xanh navy và đen.\r\nTai nghe cho âm thanh chất lượng cao, rõ nét.', 0),
(115, 'Tai nghe Bluetooth True Wireless AVA+ DS206', 'TN03', 'tai-nghe-bluetooth-true-wireless-ava-ds206-thumb-1-600x600.jpg', 395000, 123, 4, 26, 1, 'Thiết kế thời trang, đẹp mắt\r\nTrước hết, về tổng quan thiết kế, phiên bản mình đang sử dụng có màu hồng nổi bật, cực kỳ thời trang và phù hợp với sở thích của mình. Ngoài ra, tai nghe còn phiên bản màu trắng cũng đẹp không kém, nếu bạn yêu thích những màu sắc cơ bản, không quá nổi bật thì phiên bản trắng này sẽ hợp với bạn hơn.\r\n\r\nỞ ngoài hộp sạc còn có logo AVA+ và một đèn báo pin nhỏ ở gần đáy. Nhìn chung về mặt thiết kế, chiếc AVA+ DS206 này không có gì để chê cả, mình hoàn toàn ưng ý cách thiết kế của nhà AVA+.', 'Tai nghe Bluetooth True Wireless AVA+ DS206 là dòng tai nghe In-ear của nhà AVA+ với vẻ ngoài thời thượng và nhiều tiện ích hấp dẫn', 0),
(116, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 2 ETE11 ', 'TN4', 'bluetooth-true-wireless-oppo-enco-air-2-ete11-xanh-600x600.jpg', 900000, 24, 4, 28, 1, 'OPPO đã trình làng chiếc tai nghe không dây mới nhất của mình vào tháng 3/2022 mang tên OPPO Enco Air 2 - phiên bản kế nhiệm của OPPO ENCO Air sở hữu thiết kế độc đáo, thời lượng “pin trâu” và nhiều tính năng hữu ích.\r\nKiểu thiết kế thạch trong mờ lạ mắt, chất lượng hoàn thiện cao\r\nOppo ENCO Air 2 vẫn giữ nguyên mẫu thiết kế với kiểu dáng bo tròn tựa hình elip, mang lại cảm giác cầm nắm rất vừa vặn và nằm gọn trong lòng bàn tay. Nếu bạn là người chuộng kiểu thiết kế nhỏ gọn kết hợp màu trắng thuần khiết mà OPPO ENCO Air đem lại thì có thể cân nhắc tới ENCO Air 2 vì nó vẫn giữ vẹn nguyên ngôn ngữ thiết kế ấy', 'Kiểu thiết kế thạch trong mờ lạ mắt, chất lượng hoàn thiện cao', 0),
(117, 'Tai nghe Bluetooth Xmobile Z706A', 'TN5', 'bluetooth-true-wireless-oppo-enco-air-2-ete11-xanh-600x600.jpg', 489900, 23, 4, 28, 1, 'Tai nghe Bluetooth Xmobile Z706A với thiết kế đeo vòng cổ mềm mại giúp thoải mái sử dụng suốt ngày dài. Viên pin lớn và chất lượng âm thanh cũng là một điểm cộng lớn trên chiếc tai nghe này.\r\nThiết kế chắc chắn, đầu hít nam châm giúp chống rối tốt', 'Thiết kế chắc chắn, đầu hít nam châm giúp chống rối tốt', 0),
(118, 'Tai nghe Bluetooth Chụp Tai Mozard K8 ', 'TN7', 'bluetooth-mozard-k8-thumb-5-600x600.jpg', 400000, 155, 4, 26, 1, 'Thiết kế đệm tai êm và dày, giúp thoải mái khi đeo.\r\nCó thể kéo giãn tai nghe 3.7 cm để vừa vặn hơn khi sử dụng.\r\nÂm thanh phát ra to rõ, sắc nét, âm trầm dày chắc, đầy nội lực.\r\nTích hợp mic thoại giúp thu giọng nói rõ ràng, tương tác tốt hơn.\r\nChuẩn Bluetooth 4.2 cho khoảng cách đến 10 m.\r\nDung lượng pin 300 mAh, thời gian sử dụng 15 giờ, sạc khoảng 2 giờ', 'Thiết kế đệm tai êm và dày, giúp thoải mái khi đeo.\r\nCó thể kéo giãn tai nghe 3.7 cm để vừa vặn hơn khi sử dụng.', 0),
(119, 'Tai nghe Bluetooth 1 Bên Mozard Q6C', 'TN8', 'bluetooth-true-wireless-oppo-enco-air-2-ete11-xanh-600x600.jpg', 90000, 213, 4, 26, 1, 'Thiết kế nhỏ gọn, khối lượng nhẹ, thoải mái khi đeo.\r\nCông nghệ Bluetooth 4.2 cho kết nối lên đến 10 m.', 'Công nghệ Bluetooth 4.2 cho kết nối lên đến 10 m.', 0),
(120, 'Tai nghe Có Dây Gaming JBL Quantum 50 ', 'TN10', 'tai-nghe-ep-gaming-jbl-quantum-50-260722-053101-600x600.jpg', 530000, 122, 4, 26, 1, 'Thiết kế cá tính, sử dụng khi chơi game thoải mái.\r\nDriver 8.6 mm cho âm thanh chân thực, rõ ràng.\r\nTích hợp bộ điều khiển âm trên dây tiện lợi.\r\nMicro thu nhận giọng nói vượt trội.\r\nTương thích nhiều hệ máy: PC/Mac/Xbox/PS4/Nintendo Switch/Mobile/VR.', 'Thiết kế cá tính, sử dụng khi chơi game thoải mái.', 0),
(121, 'ai nghe Bluetooth True Wireless OPPO ENCO Air 2 Pro ETE21 ', 'TN11', 'bluetooth-true-wireless-oppo-enco-air-2-pro-ete21-trang-600x600.jpg', 1790000, 200, 4, 28, 1, 'Tai nghe Bluetooth TWS OPPO ENCO Air 2 Pro ETE21 là chiếc tai nghe mới được ra mắt của nhà OPPO vào tháng 8/2022, chỉ vài tháng sau khi phiên bản tiền nhiệm của nó là OPPO ENCO Air 2 ra đời. Đến với phiên bản Pro này, nhà OPPO đã có vài nâng cấp mà mình rất thích. Vậy những điểm thu hút đó là gì?\r\nThiết kế gọn gàng, kiểu dáng sang trọng, màu sắc trang nhã\r\nThay vì thiết kế dạng nắp hộp trong suốt như trước kia, chiếc tai nghe Bluetooth TWS OPPO ENCO Air 2 Pro ETE21 này mang đến thiết kế hộp đựng được bao kín hoàn toàn tạo cảm giác chắc chắn cho hộp đựng. Các chi tiết thiết kế như bản lề, đường bo góc mình nhận thấy chiếc ENCO Air 2 Pro này vẫn được chăm chút tỉ mỉ. ', 'Thiết kế gọn gàng, kiểu dáng sang trọng, màu sắc trang nhã\r\n', 0),
(122, 'Tai nghe Bluetooth True Wireless Rezo F15 ', 'tn34', 'bluetooth-true-wireless-rezo-f15-thumb-600x600.jpeg', 767000, 23, 4, 26, 1, 'Kiểu dáng gọn nhẹ, đeo vừa vặn, dễ mang theo. \r\nChất âm sinh động, mạnh mẽ. \r\nTín hiệu kết nối không dây mượt mà với công nghệ Bluetooth 5.0.\r\nCung cấp thời gian dùng tai nghe đến 4 giờ.', 'Chất âm sinh động, mạnh mẽ. \r\nTín hiệu kết nối không dây mượt mà với công nghệ Bluetooth 5.0.', 0),
(123, 'Tai nghe Bluetooth True Wireless Rezo F12', 'TN23', 'bluetooth-true-wireless-ava-ds200a-wb-thumb-600x600.png', 239900, 13, 4, 26, 1, 'Kiểu dáng gọn nhẹ, đeo vừa vặn, dễ mang theo. \r\nChất âm sinh động, mạnh mẽ. \r\nTín hiệu kết nối không dây mượt mà với công nghệ Bluetooth 5.0.\r\nCung cấp thời gian dùng tai nghe đến 4 giờ.\r\nNghe nhạc ở khắp mọi nơi với tiêu chuẩn chống nước IPX5.\r\n', 'Nghe nhạc ở khắp mọi nơi với tiêu chuẩn chống nước IPX5.', 0),
(124, 'Tai nghe Bluetooth AirPods 2 Lightning Charge Apple MV7N2 ', 'TN43', 'bluetooth-mozard-k8-thumb-5-600x600.jpg', 1032390, 23, 4, 26, 1, 'Kiểu dáng gọn nhẹ, đeo vừa vặn, dễ mang theo. \r\nChất âm sinh động, mạnh mẽ. \r\nTín hiệu kết nối không dây mượt mà với công nghệ Bluetooth 5.0.\r\nCung cấp thời gian dùng tai nghe đến 4 giờ.\r\nNghe nhạc ở khắp mọi nơi với tiêu chuẩn chống nước IPX5.\r\nTrang bị cảm ứng chạm, điều khiển chính xác. ', 'Tín hiệu kết nối không dây mượt mà với công nghệ Bluetooth 5.0.\r\n', 0),
(125, 'Tai nghe Bluetooth AirPods 2 Lightning Charge Apple 2 32 ', 'TN32', 'bluetooth-airpods-2-apple-mv7n2-imei-ava-600x600.jpg', 239000, 13, 4, 26, 1, 'Kiểu dáng gọn nhẹ, đeo vừa vặn, dễ mang theo. \r\nChất âm sinh động, mạnh mẽ. \r\nTín hiệu kết nối không dây mượt mà với công nghệ Bluetooth 5.0.', 'Trang bị cảm ứng chạm, điều khiển chính xác. \r\n', 0),
(126, 'Ổ cứng di động SSD 1TB Seagate One Touch STKG1000401 Bạc ', 'OC01', 'o-cung-ssd-1tb-seagate-one-touch-stkg1000401-thumb-600x600.jpg', 4470000, 213, 1, 26, 1, 'Dung lượng 1 TB cùng hiệu suất SSD nhanh gấp 2 lần ổ cứng thông thường.\r\nThiết kế gọn đẹp, vỏ được làm từ chất liệu Aluminum vân xước và vải dệt.\r\nĐịnh dạng exFAT cho phép kết nối cả Windows và Mac OS mà không cần format lại ổ cứng.\r\nPhần mềm Seagate SSD Touch kết nối trực tiếp thiết bị Android.\r\nTốc độ đọc/ghi: 1.030 MB/s nhanh chóng, mượt mà.\r\nKết nối qua cổng Type-C thông dụng.\r\nĐược tặng tài khoản sử dụng phần mềm quản lý hình ảnh Mylio (1 năm), phần mềm chỉnh sửa hình ảnh Adobe Photoshop + Lightroom (4 tháng)', 'Dung lượng 1 TB cùng hiệu suất SSD nhanh gấp 2 lần ổ cứng thông thường.\r\n', 0),
(127, 'Ổ cứng di động SSD 1TB Seagate One Touch STKG1000 Bạc', 'OC02', 'o-cung-ssd-1tb-seagate-one-touch-stkg1000401-thumb-600x600.jpg', 1000000, 32, 4, 26, 1, 'Dung lượng 1 TB cùng hiệu suất SSD nhanh gấp 2 lần ổ cứng thông thường.\r\nThiết kế gọn đẹp, vỏ được làm từ chất liệu Aluminum vân xước và vải dệt.\r\nĐịnh dạng exFAT cho phép kết nối cả Windows và Mac OS mà không cần format lại ổ cứng.\r\nPhần mềm Seagate SSD Touch kết nối trực tiếp thiết bị Android.\r\nTốc độ đọc/ghi: 1.030 MB/s nhanh chóng, mượt mà.\r\nKết nối qua cổng Type-C thông dụng.\r\nĐược tặng tài khoản sử dụng phần mềm quản lý hình ảnh Mylio (1 năm), phần mềm chỉnh sửa hình ảnh Adobe Photoshop + Lightroom (4 tháng).', 'Tốc độ đọc/ghi: 1.030 MB/s nhanh chóng, mượt mà.', 0),
(128, ' cứng di động HDD 1TB WD My Passport G0010BRD/ BBL', 'OC03', 'o-cung-hdd-1tb-wd-my-passport-g0010brd-thumb-600x600.jpg', 2130000, 12, 4, 26, 1, 'Thiết kế nổi bật, bền chắc, chống bám vân tay khi cầm nắm. \r\nNhiều tiện ích: WD Backup sao lưu dữ liệu, WD Drive Utilities dễ theo dõi sức khỏe ổ cứng, WD Security bảo vệ bằng mật khẩu.\r\nLưu trữ dữ liệu thoải mái cùng dung lượng 1 TB.\r\nPhù hợp laptop, PC có chuẩn kết nối USB 3.0, USB 2.0.', 'Lưu trữ dữ liệu thoải mái cùng dung lượng 1 TB.', 0),
(129, 'Ổ cứng di động HDD 2TB WD My Passport G0020BBK Đen', 'OC04', 'o-cung-hdd-2tb-wd-my-passport-g0020bbk-den-thumb-600x600.jpg', 3000000, 23, 4, 26, 1, 'Kiểu dáng hình chữ nhật, thiết kế gọn nhẹ, tiện mang theo.\r\nDung lượng 2 TB giúp lưu trữ hình ảnh, video, tài liệu dung lượng lớn dễ dàng. \r\nCó tính năng WD Backup tự động sao lưu dữ liệu, WD Security đặt mật khẩu ổ cứng, WD Drive Utilities theo dõi tình trạng ổ cứng.\r\nTốc độ kết nối mạnh mẽ với chuẩn giao tiếp USB 3.0.', 'Dung lượng 2 TB giúp lưu trữ hình ảnh, video, tài liệu dung lượng lớn dễ dàng. \r\n', 0),
(130, 'Bao da nắp gập iPad 10 ESR ASCEND HYBRID Chính hãng', 'OP02', 'bao-da-nap-gap-ipad-10-ascend-hybrid-chinh-hang-vang-hong-thumb-600x600.jpg', 980000, 12, 4, 26, 1, 'Diện mạo thời trang, thiết kế mỏng gọn.\r\nBao da được thiết kế dành riêng cho chiếc iPad 10.\r\nChất liệu bền bỉ, bảo vệ tốt cho iPad.\r\nTự động đánh thức iPad khi mở nắp và đưa iPad về chế độ ngủ khi đóng nắp lại.', 'Chất liệu bền bỉ, bảo vệ tốt cho iPad.\r\n', 0),
(131, 'Bao da nắp gập iPad Air 4/ Air 5 10.9 inch SHOCK X JM', 'OP03', 'op-lung-nap-gap-ipad-air-4-wifi-shock-x-jm-1.-600x600.jpg', 400000, 213, 4, 26, 1, 'Kiểu dáng chắc chắn, sắc hồng tươi tắn, đẹp mắt. \r\nThiết kế chuyên dụng cho model iPad Air 4/ Air 5 10.9 inch.\r\nTích hợp nắp gập giúp bảo vệ màn hình tốt hơn.\r\nLàm từ vật liệu da PU và nhựa nhẹ bền, hạn chế biến dạng, nứt vỡ.\r\nSản phẩm có khả năng chịu lực uốn cong tốt, tháo lắp nhanh chóng.\r\nLưu ý: Thanh toán trước khi mở seal.', 'Thiết kế chuyên dụng cho model iPad Air 4/ Air 5 10.9 inch.\r\n', 0),
(132, 'Bao da nắp gập iPad Pro 11 inch SHOCK X JM ', 'OP16', 'op-lung-nap-gap-ipad-pro-11-inch-2021-shock-x-jm-1.-600x600.jpg', 300000, 98, 4, 26, 1, 'Ngoại hình gọn đẹp, tông màu bắt mắt, thời trang.\r\nThiết kế dạng nắp gập giúp bảo vệ màn hình máy tốt hơn. \r\nỐp lưng ôm sát vào các góc cạnh của iPad Pro 11 inch 2021.\r\nDễ dàng tách rời hoặc lắp vào máy, trải nghiệm liền mạch, thoải mái.\r\nLàm từ chất liệu da PU và nhựa bền bỉ, hạn chế rạn nứt.\r\nLưu ý: Thanh toán trước khi mở seal.', 'Ốp lưng ôm sát vào các góc cạnh của iPad Pro 11 inch 2021.\r\n', 0),
(133, 'Ốp lưng iPad 9 Nhựa cứng viền dẻo ESR CLASSIC HYBRID BACK Chính hãng', 'OP12', 'bao-da-nap-gap-ipad-10-ascend-hybrid-chinh-hang-vang-hong-thumb-600x600.jpg', 329000, 123, 4, 26, 1, 'Ngoại hình gọn đẹp, tông màu bắt mắt, thời trang.\r\nThiết kế dạng nắp gập giúp bảo vệ màn hình máy tốt hơn. \r\nỐp lưng ôm sát vào các góc cạnh của iPad Pro 11 inch 2021.\r\nDễ dàng tách rời hoặc lắp vào máy, trải nghiệm liền mạch, thoải mái.\r\nLàm từ chất liệu da PU và nhựa bền bỉ, hạn chế rạn nứt.\r\nLưu ý: Thanh toán trước khi mở seal.', 'Làm từ chất liệu da PU và nhựa bền bỉ, hạn chế rạn nứt.\r\n', 1),
(134, 'Ốp lưng iPad 4 Nhựa cứng viền dẻo ESR CLASSIC HYBRID BACK Chính hãng', 'OP213', 'op-lung-nap-gap-ipad-air-4-wifi-shock-x-jm-1.-600x600.jpg', 120000, 13, 4, 26, 1, 'Ngoại hình gọn đẹp, tông màu bắt mắt, thời trang.\r\nThiết kế dạng nắp gập giúp bảo vệ màn hình máy tốt hơn. \r\nỐp lưng ôm sát vào các góc cạnh của iPad Pro 11 inch 2021.\r\nDễ dàng tách rời hoặc lắp vào máy, trải nghiệm liền mạch, thoải mái.\r\nLàm từ chất liệu da PU và nhựa bền bỉ, hạn chế rạn nứt.\r\nLưu ý: Thanh toán trước khi mở seal.', 'Dễ dàng tách rời hoặc lắp vào máy, trải nghiệm liền mạch, thoải mái.\r\n', 0),
(135, 'Bao da nắp gập 9.9 inch SHOCK X JM', 'OP22', 'op-lung-nap-gap-ipad-pro-11-inch-2021-shock-x-jm-1.-600x600.jpg', 231000, 23, 4, 26, 1, 'Ngoại hình gọn đẹp, tông màu bắt mắt, thời trang.\r\nThiết kế dạng nắp gập giúp bảo vệ màn hình máy tốt hơn. \r\nỐp lưng ôm sát vào các góc cạnh của iPad Pro 11 inch 2021.\r\nDễ dàng tách rời hoặc lắp vào máy, trải nghiệm liền mạch, thoải mái.\r\nLàm từ chất liệu da PU và nhựa bền bỉ, hạn chế rạn nứt.\r\nLưu ý: Thanh toán trước khi mở seal.', 'Dễ dàng tách rời hoặc lắp vào máy, trải nghiệm liền mạch, thoải mái.\r\n', 2),
(136, 'Tai nghe Bluetooth AirPods 12 Lightning Charge Apple MV7N2 ', 'TN221', 'bluetooth-airpods-2-apple-mv7n2-imei-ava-600x600.jpg', 3230000, 32, 4, 26, 1, 'Ngoại hình gọn đẹp, tông màu bắt mắt, thời trang.\r\nThiết kế dạng nắp gập giúp bảo vệ màn hình máy tốt hơn. \r\nỐp lưng ôm sát vào các góc cạnh của iPad Pro 11 inch 2021.\r\nDễ dàng tách rời hoặc lắp vào máy, trải nghiệm liền mạch, thoải mái.\r\nLàm từ chất liệu da PU và nhựa bền bỉ, hạn chế rạn nứt.\r\nLưu ý: Thanh toán trước khi mở seal.', 'Làm từ chất liệu da PU và nhựa bền bỉ, hạn chế rạn nứt.\r\n', 0),
(137, 'Laptop Apple MacBook Air 15 inch M2 2022 8-core CPU/8GB/256GB/8-core GPU (MLY13SA/A) ', 'MB23', 'macbook-air-m1-2020-gray-600x600.jpg', 21300000, 23, 1, 25, 1, 'Ngoại hình gọn đẹp, tông màu bắt mắt, thời trang.\r\nThiết kế dạng nắp gập giúp bảo vệ màn hình máy tốt hơn. \r\nỐp lưng ôm sát vào các góc cạnh của iPad Pro 11 inch 2021.\r\nDễ dàng tách rời hoặc lắp vào máy, trải nghiệm liền mạch, thoải mái.\r\nLàm từ chất liệu da PU và nhựa bền bỉ, hạn chế rạn nứt.\r\nLưu ý: Thanh toán trước khi mở seal.', 'Ngoại hình gọn đẹp, tông màu bắt mắt, thời trang.\r\n', 1),
(138, 'Bộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X', 'Sac01', 'bo-adapter-sac-kem-cap-type-c-type-c-pd-45w-samsung-ep-t4510x-thumb-600x600.jpeg', 299000, 233, 4, 3, 1, 'Bộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen -  củ sạc được mong đợi nhất trong thời điểm hiện tại. Bởi đây chính là phiên bản sạc dành cho mẫu điện thoại Samsung Galaxy S22 Ultra cực hot vào tháng 2/2022 gần đây.\r\nMàu đen sang trọng, chất liệu bền bỉ\r\nTên gọi của bộ Adapter sạc đã sự thay đổi theo các đời, ở đời Note10 Series bộ sạc 45 W có tên gọi là \"Travel Adapter\", đến đời S22 series thì nhà Samsung đã đặt một cái tên dễ nhớ hơn là \"45 W PD Power Adapter\".\r\n\r\nThiết kế củ sạc \"45 W PD Power Adapter\" tương tự như bộ sạc 25 W mà Samsung sản xuất trước đó nhưng có kiểu dáng bầu bĩnh hơn, được gia công với chất liệu nhựa nhám hạn chế được dấu bám vân tay và mồ hôi. Các góc cạnh được thiết kế đều đặn, chắc chắn kết hợp là sắc đen huyền thoại, mang lại cho người dùng cảm giác sử dụng sạch sẽ, sang trọng.\r\n\r\nBộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen - Thiết kế\r\n\r\nPhần chân cắm được thiết kế chuẩn 2 chấu, là một trong những kiểu chân cắm phổ biến ở cả thị trường châu Âu và châu Á. Tương thích với đa số các ổ cắm điện mà bạn đang sử dụng hàng ngày.\r\n\r\nBộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen - Thiết kế\r\n\r\nĐi kèm với củ sạc, hãng cũng trang bị thêm sợi dây cáp sạc đầu C to C dài 1.81 m, đem lại sự tiện lợi hơn trong những lúc cắm sạc các thiết bị khi ở xa nguồn điện.\r\n\r\nChất liệu dây sạc Samsung cũng không khác gì nhiều so với củ sạc, được làm bằng nhựa bóng cao cấp, có độ mềm và độ dẻo cao, dây sạc cũng không có hiện tượng bị rối và cực kì dễ quấn lại để bỏ vào balo, túi xách mang đi làm, đi học để sử dụng.\r\n\r\nBộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen - Dây cáp sạc\r\n\r\nTrên thực tế, mình cũng đang dùng một sợi dây cáp mở hộp của Samsung đi kèm khoảng 2 hơn năm rồi và cảm thấy vẫn còn rất tốt. Theo đánh giá của mình, chất lượng dây cáp sạc mà nhà Samsung sản xuất khá là tốt, dây có độ bền dẻo cao và không hề có tình trạng gãy nếp gấp ở 2 đầu dây như một số dòng khác.\r\n\r\nHiệu suất tăng mạnh, sạc pin an toàn và nhanh chóng\r\nAdapter sạc Samsung EP-T4510X đã nâng số V lên và cường độ dòng điện đã được cố định từ 2.25A - 3A để có thể sạc được công suất tối đa 45 W.\r\n\r\nBộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen - Công suất\r\n\r\nVới các dòng thiết bị có hỗ trợ sạc công nghệ PDO thì công suất sẽ tương ứng là 5V - 3A, 9V - 3A, 15V - 3A, 20V - 2.25A (Max 45 W). Còn ở công nghệ PPS là: 3.3V - 20V - 2.25A (Max 45 W).\r\n\r\nBộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen - Công suất\r\n\r\nTương thích với nhiều thiết bị, tối ưu trên các thiết bị của Samsung\r\nSản phẩm tương thích với các thiết bị như: Tai nghe Bluetooth, pin sạc dự phòng, điện thoại, máy tính bảng, đồng hồ thông minh,... Ngoài ra, củ sạc hỗ trợ sạc lên đến 45 W cho các thiết bị của Samsung như: Galaxy S23 Plus, Galaxy S23 Ultra, Galaxy S20 Ultra, Galaxy S22 Plus, Galaxy S22 Ultra, Galaxy Note 10+, Galaxy Tab S8 Series và các dòng cao hơn. Đối với các dòng Galaxy S23, Galaxy S22,... bộ sạc sẽ hỗ trợ mức sạc 25 W.\r\n\r\nBộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen - Tương thích với nhiều thiết bị, tối ưu trên các thiết bị của Samsung\r\n\r\nBảng số liệu được thống kê sau khi đã được thử nghiệm đo đạc thực tế về thời gian sạc và phần trăm pin đầy khi sạc với củ sạc. \r\n\r\nBộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen - Bảng số liệu\r\n\r\nCủ sạc 45 W Samsung EP-T4510X mang lại hiệu suất sạc nhanh chóng, là bộ đôi hoàn hảo và cực kì tối ưu khi kết hợp sử dụng cho các thiết bị Samsung. Vừa tiết kiệm được thời gian sạc và không gian bỏ đồ, cho bạn dễ dàng mang theo củ sạc để sử dụng mọi lúc.\r\n\r\n', 'Màu đen sang trọng, chất liệu bền bỉ\r\n', 2),
(139, 'Loa Bluetooth Sony SRS-XE300 ', 'Loa01', 'loa-bluetooth-sony-srs-xe300-thumb-5-1-600x600.jpg', 1000000, 28, 4, 1, 1, 'Loa Bluetooth Sony SRS-XE300 sở hữu thiết kế đẹp mắt, màu sắc sành điệu, chất lượng âm thanh đỉnh cao,... hứa hẹn sẽ cho bạn đắm chìm vào không gian âm thanh rõ nét, bùng nổ.\r\n• Được thiết kế với kiểu dáng hình trụ bo tròn tinh tế. Chất liệu nhựa và sợi dệt tổng hợp cao cấp, đa dạng màu sắc dễ lựa chọn theo sở thích.\r\n\r\n• Loa Bluetooth không dây với bộ khuếch tán âm rộng Line-Shape độc đáo, giúp âm thanh chất lượng cao tràn ngập không gian. Màng loa X-balanced hạn chế méo tiếng khi mở lớn, giúp tạo ra áp suất mạnh mẽ hơn cho âm thanh chất lượng cao.\r\n\r\n• Đồng thời, bộ tản âm kép thụ động giúp các nốt trầm mạnh mẽ, cho không gian âm thanh quyến rũ hơn bao giờ hết.', '• Loa Bluetooth không dây với bộ khuếch tán âm rộng Line-Shape độc đáo, giúp âm thanh chất lượng cao tràn ngập không gian.', 6),
(140, 'Ốp lưng Magsafe iPhone 14 Pro Max Nhựa trong Apple MPU73 Chính hãng ', 'OP11', 'op-lung-magsafe-iphone-14-pro-max-nhua-trong-apple-mpu73-thumb-600x600.jpg', 199000, -996, 4, 27, 1, 'Sử dụng cho điện thoại iPhone 14 Pro Max.\r\n\r\n• Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.\r\n\r\n• Với chất liệu nhựa trong đơn giản, tinh tế.\r\n\r\n• Ốp lưng Apple hỗ trợ sạc không dây MagSafe tiện lợi không cần tháo ốp.\r\n\r\n• Thiết kế ốp ôm trọn thân máy, cầm chắc tay.', '• Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.\r\n\r\n', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'Admin', '<p><strong>The person who has every permission with the website&nbsp;</strong></p>'),
(2, 'User', '<p>The person who has an account on this website</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `title`, `image`, `status`) VALUES
(1, 'Slider 1', '11664378882.png', 1),
(2, 'Slider 2', 'redmi-note12-sliding-0805.jpg', 1),
(3, 'Slider 3', '31664379017.jpg', 1),
(9, 'Slider4', 'sliding-s23-thucu-giatot.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone_number`, `username`, `role_id`, `status`) VALUES
(0, 'Trần Thu Hằng a', 'hang@gmail.com', '123', 'Thái Bình', '0312648789', 'hangr', 2, 1),
(1, 'Admin', 'admin@gmail.com', '123', '', '', 'admin', 1, 1),
(7, 'Nguyễn Văn Tiến', 'nguyenvantien123@gmail.com', 'hiTien12345', 'Hoài Đức,Hà Nội', '0365932647', 'tienvanbui', 2, 1),
(8, 'Nguyễn Văn Nam', 'tienvanbui1982001@gmail.com', '1982001000', 'Hoài Đức,Hà Nội', '0123456789', 'nampro123', 2, 1),
(11, 'Khách hàng', 'kh123@gmail.com', '123456', 'Hà Nội', '0973456789', 'user', 2, 1),
(23, 'Nguyễn Hải Ngọc', 'haingoc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Nhổn,Nam Từ Liêm,Hà Nội', '0365974210', 'haingoc', 2, 0),
(24, 'aer', 'ewr', 'b59c67bf196a4758191e42f76670ceba', 'wqrew', '32423423', 'ngoson', 2, 0),
(25, 'qưe', 'ưqe', 'c987ed9c20cc7d892442e6c5aa1bb72e', 'ưqe', 'qưe', 'qưe', 2, 0),
(26, 'qe', 'ê', 'e1671797c52e15f763380b45e841ec32', 'e', 'e', 'e', 2, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_carts` (`user_id`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_key_cart_detail-cart` (`cart_id`),
  ADD KEY `foreign_key_cart_detail-product` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fg_cart_order` (`user_id`),
  ADD KEY `fg_payment_order` (`payment_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fg_products_categories` (`category_id`),
  ADD KEY `fg_products_brands` (`brand_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fg_user_role` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `user_carts` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD CONSTRAINT `foreign_key_cart_detail-cart` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `foreign_key_cart_detail-product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fg_orders_payments` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `fg_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `foreign_key_order_detail-order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `foreign_key_order_detail-products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fg_products_brands` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fg_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fg_user_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
