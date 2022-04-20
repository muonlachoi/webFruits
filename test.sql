-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 12:39 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `mabl` int(11) NOT NULL,
  `mahh` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ngaybl` date NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cthoadon`
--

CREATE TABLE `cthoadon` (
  `masohd` int(11) NOT NULL,
  `mahh` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `mamuc` int(11) NOT NULL,
  `tenmuc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`mamuc`, `tenmuc`) VALUES
(1, 'Quà tặng'),
(2, 'Trái cây');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahh` int(11) NOT NULL,
  `tenhh` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dongia` double(13,2) NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maloai` int(11) NOT NULL,
  `ngaylap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`mahh`, `tenhh`, `dongia`, `mota`, `anh`, `maloai`, `ngaylap`) VALUES
(7, 'Ôỉ', 60000.00, 'Ổi chứa chất làm se nên bạn có thể sự dụng nước ép ổi.', 'public/assets/images\\1646246393_ôi1.jpg', 2, '2022-03-02'),
(8, 'Cam', 50000.00, 'Cam sành dùng bồi bổ cực tốt với vitamin và khoáng chất dồi dào.', 'public/assets/images\\1646246537_cam.jpg', 2, '2022-03-02'),
(9, 'Chuối', 42000.00, 'Mỗi quả chuối chứa khoảng 105 calories, chứa hầu hết là nước và tinh bột.', 'public/assets/images\\1646246639_chuoi.jpg', 2, '2022-03-02'),
(10, 'Cà chua', 50000.00, 'Cà chua rất giàu vitamin A, C, K, vitamin B6, kali, folate, thiamin.', 'public/assets/images\\1646246765_cachua.jpg', 2, '2022-03-02'),
(11, 'Nho', 100000.00, 'Nho chứa đầy chất dinh dưỡng, đặc biệt là vitamin C và K.', 'public/assets/images\\1646246907_nho.jpg', 2, '2022-03-02'),
(12, 'Táo', 70000.00, 'Táo có rất nhiều chất xơ hòa tan gọi là pectin, hạn chế sự thèm ăn .', 'public/assets/images\\1646246954_tao.jpg', 2, '2022-03-02'),
(13, 'Dâu tây', 123000.00, 'Dâu tây chứa nhiều vitamin A, B1, B2, đặc biệt là vitamin C rất cao.', 'public/assets/images\\1646247031_dau.jpg', 2, '2022-03-02'),
(14, 'Xoài', 50000.00, 'Xoài chứa các enzim hỗ trợ cho quá trình tiêu hóa dễ dàng hơn.', 'public/assets/images\\1646247172_xoai.jpg', 2, '2022-03-02'),
(15, 'Dưa hấu', 46000.00, 'Dưa hấu là một loại trái cây tươi, ngon, mát và rất tốt cho sức khỏe.', 'public/assets/images\\1646247307_duahau.jpg', 2, '2022-03-02'),
(16, 'Dứa', 50000.00, 'Dứa là một loại trái cây có vị thơm ngon được nhiều người ưa chuộng.', 'public/assets/images\\1646247399_dứa.jpg', 2, '2022-03-02'),
(17, 'Giỏ Trái Cây Chúc Sức Khỏe', 999000.00, 'Giỏ trái cây thiết kế tinh tế, sang trọng với tone màu nâu trầm.', 'public/assets/images\\1646285158_giotraicay1.jpg', 3, '2022-03-03'),
(18, 'Giỏ Trái Cây Khai Trương 2', 123000.00, 'Giỏ Trái Cây Hồng Phát có thiết kế sang trọng và tinh tế.', 'public/assets/images\\1646285217_giotraicay2.jpg', 3, '2022-03-03'),
(19, 'Giỏ Trái Cây Ngày Ra Mắt', 200000.00, 'Với thiết kế sang trọng và tinh tế bới sự kết hợp giữa các loại trái cây.', 'public/assets/images\\1646285267_giotraicay3.jpg', 3, '2022-03-03'),
(20, 'Giỏ Trái Cây Tri Ân', 50000.00, 'Giỏ hoa quả tri ân bao gồm nhiều loại trái cây nhập khẩu đa dạng.', 'public/assets/images\\1646285384_giotraicay4.jpg', 3, '2022-03-03'),
(21, 'Giỏ Trái Cây Cát Tường', 46000.00, 'Giỏ hoa quả Cát Tường bao gồm nhiều loại trái cây', 'public/assets/images\\1646285499_giotraicay5.jpg', 3, '2022-03-03'),
(22, 'Giỏ Trái Cây Như Ý', 200000.00, 'Giỏ hoa quả Như Ý bao gồm nhiều loại trái cây', 'public/assets/images\\1646285616_giotraicay6.jpg', 3, '2022-03-03'),
(23, 'Giỏ Trái Cây Năm Mới', 123000.00, 'Giỏ Trái Cây Như Ý có thiết kế sang trọng và tinh tế.', 'public/assets/images\\1646285673_giotraicay7.jpg', 3, '2022-03-03'),
(24, 'Giỏ Trái Cây Đám Cưới', 46000.00, 'Giỏ Trái Cây Đám Cưới có thiết kế sang trọng và tinh tế.', 'public/assets/images\\1646285722_giotraicay8.jpg', 3, '2022-03-03'),
(25, 'Giỏ Trái Cây Tri Ân 2', 123000.00, 'Giỏ Trái Cây Tri Ân 2  có thiết kế sang trọng và tinh tế.', 'public/assets/images\\1646285780_giotraicay9.jpg', 3, '2022-03-03'),
(26, 'Giỏ Trái Cây Chúc Sức Khỏe 2', 123000.00, 'Giỏ Trái Cây Chúc Sức Khỏe có thiết kế sang trọng và tinh tế.', 'public/assets/images\\1646285816_giotraicay10.jpg', 3, '2022-03-03'),
(27, 'Hộp Quà Cherry.', 200000.00, 'Đây sẽ là món quà yêu thương và ý nghĩa dành tặng cho người thân/ bạn bè/ đồng nghiệp/ khách hàng.', 'public/assets/images\\1646286175_hopqua1.jpg', 4, '2022-03-03'),
(28, 'Hộp Quà Trái Cây Cát Tường 1', 200000.00, 'Hộp Quà Tặng Trái Cây Cát Tường có thiết kế đơn giản và sang trọng.', 'public/assets/images\\1646286534_hopqua2.jpg', 4, '2022-03-03'),
(29, 'Hộp Quà Trái Cây Cát Tường 2', 123000.00, 'Hộp Quà Tặng Trái Cây Cát Tường 2 có thiết kế đơn giản và sang trọng.', 'public/assets/images\\1646286578_hopqua3.jpg', 4, '2022-03-03'),
(30, 'Hộp Quà Trái Cây Cát Tường 3', 300000.00, 'Hộp Quà Tặng Trái Cây Cát Tường có thiết kế đơn giản và sang trọng.', 'public/assets/images\\1646286615_hopqua4.jpg', 4, '2022-03-03'),
(31, 'Hộp quà trái cây Romantic', 150000.00, 'Hộp quà trái cây Lãng Mạn bao gồm 8 quả Táo Envy size lớn nhất 24+ nhập khẩu từ Mỹ đa dạng được trang trí kết hợp với hoa tươi.', 'public/assets/images\\1646286673_hopqua5.jpg', 4, '2022-03-03'),
(32, 'Hộp Quà Trái cây Rung Động', 200000.00, 'Hộp quà trái cây Rung Động bao gồm 6 loại trái cây nhập khẩu đa dạng được trang trí kết hợp với hoa tươi:', 'public/assets/images\\1646286738_hopqua6.jpg', 4, '2022-03-03'),
(33, 'Hộp Quà Trái Cây Say Đắm', 250000.00, 'Hộp quà trái cây Say Đắm bao gồm 3 loại trái cây nhập khẩu đa dạng được trang trí kết hợp với hoa tươi:', 'public/assets/images\\1646286777_hopqua7.jpg', 4, '2022-03-03'),
(34, 'Hộp Quà Trái Cây Sinh Nhật 1', 123000.00, 'Quà tặng được thiết kế độc đáo và đẹp mắt với lời chúc “Tuổi mới nhiều niềm vui và hạnh phúc”.', 'public/assets/images\\1646286831_hopqua8.jpg', 4, '2022-03-03'),
(35, 'Hộp Quà Trái Cây Sinh Nhật 2', 200000.00, 'Quà tặng được thiết kế độc đáo và đẹp mắt với lời chúc “Tuổi mới nhiều niềm vui và hạnh phúc”.', 'public/assets/images\\1646286869_hopqua8.jpg', 4, '2022-03-03'),
(36, 'Hộp quà trái cây Sweetie', 200000.00, 'Hộp quà trái cây Ngọt Ngào bao gồm nhiều loại trái cây nhập khẩu đa dạng được trang trí kết hợp với hoa tươi:', 'public/assets/images\\1646286908_hopqua9.jpg', 4, '2022-03-03'),
(37, 'Sầu riêng mix hạt điều sấy giòn', 50000.00, 'Sầu riêng mix hạt điều giòn rụm thơm ngon.', 'public/assets/images\\1646287182_kho1.jpg', 1, '2022-03-03'),
(38, 'Sữa chua mix mít thái sấy giòn', 50000.00, 'Sữa chua mix mít thái giòn rụm thơm ngon.', 'public/assets/images\\1646287227_kho2.jpg', 1, '2022-03-03'),
(39, 'Chùm Ruột muối ớt sấy dẻo', 46000.00, 'Chùm ruột sấy ớt ăn giòn dai vị chua cay ngọt mặn hòa quyện hấp dẫn.', 'public/assets/images\\1646287264_kho3.jpg', 1, '2022-03-03'),
(40, 'Đậu phộng rang Mix tỏi ớt', 32000.00, 'Đậu phộng rang cháy tỏi ớt ăn giòn rụm cay bùi mặn ngọt hòa quyện hấp dẫn.', 'public/assets/images\\1646287297_kho4.jpg', 1, '2022-03-03'),
(41, 'Chuối mè dừa dẻo không đường', 42000.00, 'Chuối sấy mè dừa ăn dai dẻo vị thơm ngọt béo hòa quyện hấp dẫn.', 'public/assets/images\\1646287361_kho5.jpg', 1, '2022-03-03'),
(42, 'Thơm muối ớt dẻo không đường', 42000.00, 'Thơm sấy muối ớt không đường ăn dẻo dai vị chua cay ngọt mặn hòa quyện hấp dẫn.', 'public/assets/images\\1646287400_kho8.jpg', 1, '2022-03-03'),
(43, 'Me trái muối ớt sấy dẻo', 50000.00, 'Me sấy muối ớt ăn dai dẻo vị chua cay ngọt mặn hòa quyện hấp dẫn.', 'public/assets/images\\1646287435_kho9.jpg', 1, '2022-03-03'),
(44, 'Vải Thiều Sấy Khô Tách Vỏ', 50000.00, 'Vải Thiều sấy khô tách vỏ bằng phương pháp sấy truyền thống.', 'public/assets/images\\1646287476_kho10.jpg', 1, '2022-03-03'),
(45, 'Xoài Sấy Dẻo Đặc Biệt', 46000.00, 'Xoài sấy dẻo có vị ngọt và hơi chua, tính nhiệt. Xoài chứa nhiều vitamin và khoáng chất.', 'public/assets/images\\1646287551_kho6.jpg', 1, '2022-03-03'),
(46, 'Vỏ Bưởi Sấy Dẻo Đặc Biệt', 65000.00, 'Bưởi là một loại quả quen thuộc với chúng ta.', 'public/assets/images\\1646287586_kho7.jpg', 1, '2022-03-03'),
(47, 'Khay Trái Cây Gửi Yêu Thương 1', 850000.00, 'Trái cây tươi kết hợp hoa tươi mang đến sự mềm mại như tình yêu thương gia đình.', 'public/assets/images\\1646287918_khay1.jpg', 5, '2022-03-03'),
(48, 'Khay Trái Cây Gửi Yêu Thương 2', 750000.00, 'Mẫu mã độc đáo và có thiết kế đơn giản.', 'public/assets/images\\1646287965_khay2.jpg', 5, '2022-03-03'),
(49, 'Khay Trái Cây Gửi Yêu Thương 3', 850000.00, 'Mẫu mã độc đáo và có thiết kế đơn giản.', 'public/assets/images\\1646288058_khay3.jpg', 5, '2022-03-03'),
(50, 'Khay Trái Cây Kính Nhớ Tổ Tiên', 123000.00, 'Khay Trái Cây Tươi Kính Nhớ Tổ Tiên được thiết kế độc đáo và sang trọng.', 'public/assets/images\\1646288090_khay4.jpg', 5, '2022-03-03'),
(51, 'Khay Trái Cây Kính Nhớ', 123000.00, 'Khay Trái Cây Tươi Kính Nhớ Tổ Tiên được thiết kế độc đáo và sang trọng.', 'public/assets/images\\1646288118_khay2.jpg', 5, '2022-03-03'),
(52, 'Khay Trái Cây Kính Nhớ 1', 123000.00, 'Khay Trái Cây Tươi Kính Nhớ Tổ Tiên được thiết kế độc đáo và sang trọng.', 'public/assets/images\\1646288149_khay3.jpg', 5, '2022-03-03'),
(53, 'Khay Trái Cây Chúc Mừng', 650000.00, 'Khay Trái Cây Tươi Chúc Mừng được thiết kế độc đáo và sang trọng.', 'public/assets/images\\1646288202_khay1.jpg', 5, '2022-03-03'),
(54, 'Khay Trái Cây Mừng Tuổi', 200000.00, 'Khay Trái Cây Tươi Kính Nhớ Tổ Tiên được thiết kế độc đáo và sang trọng.', 'public/assets/images\\1646288239_khay2.jpg', 5, '2022-03-03'),
(55, 'Khay Trái Cây 8/3 Ngày Phụ NỮ', 123000.00, 'Khay Trái Cây 8/3 được thiết kế độc đáo và sang trọng.', 'public/assets/images\\1646288383_1646288058_khay3.jpg', 5, '2022-03-03'),
(56, 'Khay Trái Cây Mừng Thọ', 123000.00, 'Khay Trái Cây Tươi  Mừng Thọ được thiết kế độc đáo và sang trọng.', 'public/assets/images\\1646288531_1646288090_khay4.jpg', 5, '2022-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `masohd` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ngaydat` date NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`masohd`, `makh`, `ngaydat`, `tongtien`) VALUES
(1, 1, '2022-03-08', 415000),
(2, 1, '2022-03-08', 523000),
(3, 1, '2022-03-09', 773000),
(4, 1, '2022-03-09', 773000),
(5, 1, '2022-03-09', 773000);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mamuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `mamuc`) VALUES
(1, 'Trái Cây Khô', 2),
(2, 'Trái Cây Tươi', 2),
(3, 'Giỏ Trái Cây', 1),
(4, 'Hộp Quà Trái Cây', 1),
(5, 'Khay Trái Cây', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_02_054437_create_danhmuc_table', 1),
(6, '2022_03_02_055549_create_loai_table', 1),
(7, '2022_03_02_055644_create_hanghoa_table', 1),
(8, '2022_03_02_055813_create_hoadon_table', 1),
(9, '2022_03_02_055840_create_cthoadon_table', 1),
(10, '2022_03_02_055919_create_binhluan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bảo Huỳnh', 'bao2@gmail.com', NULL, '$2y$10$WvJA4El.aqqu6HGWkFylSeBPrA7d60OopS7eGI2/sX8YGAMKavawW', 1, NULL, '2022-03-02 09:04:56', '2022-03-02 09:04:56'),
(2, 'bao', 'bao@gmail.com', NULL, '$2y$10$vJw2y3REdxOEJ/RE1t3BteEHZokXbcDOVNCxwEG5LI45Tx5wJMqFK', 0, NULL, '2022-03-12 00:16:48', '2022-03-12 00:16:48'),
(3, 'dũng', 'dung@gmail.com', NULL, '$2y$10$hSeK3gCsh1BFnMt5V./94O7MLT4PQqdwpRewUELSpKG2DfIPHerKe', 0, NULL, '2022-03-12 00:19:01', '2022-03-12 00:19:01'),
(4, 'Bình', 'binh@gmail.com', NULL, '$2y$10$ZxPSmch1vuDp90qqj4efuuhNBNUQwty7N3lvSlPpd1tWQsIs74mL2', 0, NULL, '2022-03-12 00:19:41', '2022-03-12 00:19:41'),
(5, 'duy', 'duy@gmail.com', NULL, '$2y$10$1sEFdtSynx0HDPTseW0MJ.ZtWXIqW0T9faUIRbCQkjvpSntR.GRya', 0, NULL, '2022-03-12 00:20:03', '2022-03-12 00:20:03'),
(6, 'Hằng', 'hang@gmail.com', NULL, '$2y$10$WvJA4El.aqqu6HGWkFylSeBPrA7d60OopS7eGI2/sX8YGAMKavawW', 0, NULL, '2022-03-12 00:20:31', '2022-03-12 00:20:31'),
(7, 'Ngô Văn Dũng', 'a@gmail.com', NULL, '$2y$10$uOy7iu8fF96Z68q1XROlUOzgxMUdbjK/RYtTLPhhA/DvFb4XXpTim', 0, NULL, '2022-04-07 01:58:54', '2022-04-07 01:58:54'),
(8, 'Dũng Ngô', 'b@gmail.com', NULL, '$2y$10$uOy7iu8fF96Z68q1XROlUOzgxMUdbjK/RYtTLPhhA/DvFb4XXpTim', 1, NULL, '2022-04-07 02:05:42', '2022-04-07 02:05:42'),
(9, 'Ngô Văn Dũng', 'dung123@gmail.com', NULL, '$2y$10$DGUVXRUFA9LLvUti9lGpR.V3jGEvw1acFUVRYkdBZ2uHc0cdAVWVi', 1, NULL, '2022-04-07 02:08:52', '2022-04-07 02:08:52'),
(10, 'uss', 'pha@gmail.com', NULL, '$2y$10$KSP5WtHCbFvJghCIjXYD8Oe24GpgEZCeQVftN6Yj7fKQJez6xFT6y', 1, NULL, '2022-04-07 03:29:02', '2022-04-07 03:29:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabl`),
  ADD KEY `binhluan_mahh_foreign` (`mahh`),
  ADD KEY `binhluan_makh_foreign` (`makh`);

--
-- Indexes for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`masohd`,`mahh`),
  ADD KEY `cthoadon_mahh_foreign` (`mahh`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`mamuc`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahh`),
  ADD KEY `hanghoa_maloai_foreign` (`maloai`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`masohd`),
  ADD KEY `hoadon_makh_foreign` (`makh`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`),
  ADD KEY `loai_mamuc_foreign` (`mamuc`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `mamuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `mahh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `masohd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_mahh_foreign` FOREIGN KEY (`mahh`) REFERENCES `hanghoa` (`mahh`),
  ADD CONSTRAINT `binhluan_makh_foreign` FOREIGN KEY (`makh`) REFERENCES `users` (`id`);

--
-- Constraints for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD CONSTRAINT `cthoadon_mahh_foreign` FOREIGN KEY (`mahh`) REFERENCES `hanghoa` (`mahh`),
  ADD CONSTRAINT `cthoadon_masohd_foreign` FOREIGN KEY (`masohd`) REFERENCES `hoadon` (`masohd`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `hanghoa_maloai_foreign` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_makh_foreign` FOREIGN KEY (`makh`) REFERENCES `users` (`id`);

--
-- Constraints for table `loai`
--
ALTER TABLE `loai`
  ADD CONSTRAINT `loai_mamuc_foreign` FOREIGN KEY (`mamuc`) REFERENCES `danhmuc` (`mamuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
