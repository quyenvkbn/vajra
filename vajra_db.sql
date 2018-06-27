-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 27, 2018 lúc 12:12 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vajra_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive',
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_activated`, `is_deleted`) VALUES
(24, '', '', '639129cf92e5310c140ce622f534a257.jpg', '2018-05-14 13:40:02', 'administrator', '2018-05-14 13:40:02', 'administrator', 1, 1),
(25, '', '', 'f4e0415f312373271066db0c109d0ca1.jpg', '2018-05-14 18:07:17', 'administrator', '2018-05-14 18:07:17', 'administrator', 1, 1),
(26, '', '', 'c169ac4e4225021f5da9a48af6b8e555.png', '2018-05-30 15:30:28', 'administrator', '2018-05-30 15:30:28', 'administrator', 1, 1),
(27, '', '', 'e96bff60c2110c71b354e55bebe3928d.jpg', '2018-05-30 15:37:07', 'administrator', '2018-05-30 15:37:07', 'administrator', 1, 1),
(28, '', '', 'c271b588baa819e1378c0105dc6adcc7.jpg', '2018-06-23 11:46:46', 'administrator', '2018-06-23 11:46:46', 'administrator', 0, 0),
(29, '', '', '16a8f5f1237db47d99605e4508f27626.png', '2018-06-27 13:37:38', 'administrator', '2018-06-27 13:37:38', 'administrator', 0, 0),
(30, '', '', 'da46cebe8f130ad2e79b9fb557ee9e0e.jpg', '2018-06-23 11:07:29', 'administrator', '2018-06-23 11:07:29', 'administrator', 0, 0),
(31, '', '', 'bae827d7f82c7c457089b80964d72403.png', '2018-06-26 10:20:28', 'administrator', '2018-06-26 10:20:28', 'administrator', 0, 0),
(32, 'Mô tả', NULL, 'a5b4a9bc4d37415db44ff53bb2d3fdff.png', '2018-06-27 09:52:46', 'administrator', '2018-06-27 09:52:46', 'administrator', 0, 0),
(33, 'Mô tả12', 'Mô tả', '0f5f9a9355850b341945e27d21a1c974.png', '2018-06-26 10:43:36', 'administrator', '2018-06-26 10:43:36', 'administrator', 0, 0),
(34, 'Mô tả', 'Mô tả', '528c0de99212c216d2a2b3ce6eb717a8.jpg', '2018-06-26 10:33:34', 'administrator', '2018-06-26 10:33:34', 'administrator', 1, 1),
(35, 'ád', 'sdfsdf', '781cd353e606ee91de57d7a6e8b6fee6.jpg', '2018-06-26 10:43:48', 'administrator', '2018-06-26 10:43:48', 'administrator', 1, 1),
(36, 'ádsdf', 'sdfsadas', 'dc3af5cdd63aa650c0447c9338f6d2b3.png', '2018-06-26 10:44:43', 'administrator', '2018-06-26 10:44:43', 'administrator', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adults` tinyint(4) NOT NULL,
  `children` tinyint(4) NOT NULL,
  `infants` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: pending; 1: success; 2: cancel',
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `product_id`, `title`, `first_name`, `last_name`, `email`, `phone`, `time`, `country`, `adults`, `children`, `infants`, `status`, `content`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 91, 'Mrs', 'Nguyễn', 'Quyền', '12quyen12@gmail.com', '01628299929', '2018-06-29 00:00:00', 'Việt Nam', 2, 2, 2, 2, 'ok đấy', 0, '2018-06-22 17:21:37', 'administrator', '2018-06-22 17:21:37', 'administrator'),
(2, 91, 'Mr', 'Nguyễn Văn', 'Quyền', '12quyen12@gmail.com', '01628299929', '2018-06-29 00:00:00', 'Việt nam', 2, 2, 5, 1, 'ok được', 0, '2018-06-22 17:25:00', 'administrator', '2018-06-22 17:25:00', 'administrator'),
(3, 91, 'Ms', 'Ngô', 'Quyền', '12quyen12@gmail.com', '01628299929', '2018-06-21 00:00:00', 'Việt Nam', 2, 2, 2, 1, 'Ok rồi', 0, '2018-06-23 00:02:39', 'administrator', '2018-06-23 00:02:39', 'administrator'),
(4, 91, 'Mrs', 'Ngô', 'Nghĩ', 'ngonghi@gmail.com', '01628299929', '2018-06-14 00:00:00', 'qwe', 1, 1, 1, 2, 'ádasd', 0, '2018-06-27 15:26:23', 'administrator', '2018-06-27 15:26:23', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d6d2ef5cbe48491b53b5c2ae95d1d4f14c98f82', '::1', 1516590779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539303735363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353134333939313533223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customize`
--

CREATE TABLE `customize` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0: pending; 1: success; 2: cancel',
  `content` text COLLATE utf8mb4_unicode_ci,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infants` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customize`
--

INSERT INTO `customize` (`id`, `product_id`, `status`, `content`, `adults`, `children`, `time`, `message`, `title`, `first_name`, `last_name`, `email`, `phone`, `country`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `infants`) VALUES
(1, 91, 2, '[\"\\u0110\\u01b0\\u1ee3c \\u0111\\u1ea5y\",\"\\u0110\\u01b0\\u1ee3c \\u0111\\u1ea5y\",\"Kh\\u00f4ng \\u0111\\u01b0\\u1ee3c r\\u1ed3i\"]', 2, 2, '2018-06-15 00:00:00', 'Rất là ok đấy', 'Dr', 'Hoàng', 'Quy', 'Quy@gmail.com', '01628299920', 'Việt Nam', 0, '2018-06-22 23:08:29', 'administrator', '2018-06-22 23:08:29', 'administrator', 3),
(2, 91, 2, '[\"T\\u00f4i kh\\u00f4ng th\\u00edch th\\u1ebf n\\u00e0y\",\"\",\"T\\u00f4i mu\\u1ed1n thay \\u0111\\u1ed5i ng\\u00e0y n\\u00e0y\"]', 5, 5, '2018-06-28 00:00:00', 'Quang Huy', 'Mrs', 'Quang', 'Huy', 'quanghuy@gmail.com', '01628222922', 'Việt Nam', 0, '2018-06-23 00:03:35', 'administrator', '2018-06-23 00:03:35', 'administrator', 5),
(3, 91, 0, '[\"\",\"\",\"Kh\\u00f4ng \\u1ed5n r\\u1ed3i3\"]', 1, 1, '2018-06-29 00:00:00', 'Không ổn đâu', 'Dr', 'Không', 'ổn', 'khongon@gmail.com', '01628299929', 'Việt Nam', 0, '2018-06-27 15:39:34', 'administrator', '2018-06-27 15:39:34', 'administrator', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `localtion`
--

CREATE TABLE `localtion` (
  `id` int(11) NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `localtion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `localtion`
--

INSERT INTO `localtion` (`id`, `slug`, `title`, `content`, `image`, `localtion`, `area`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(4, 'ngay-11', '', '', 'fa62a5be25a17dbf11f0f0cc70afe519.jpg', 'Nguyễn Bỉnh Khiêm', 'Hà Nội', 1, '2018-06-18 16:13:55', 'administrator', '2018-06-18 16:13:55', 'administrator'),
(5, 'ok', '', '', '8005e87e7c9ddc2e71cbc90e7315e0be.jpg', 'Hai Bà Trưng', 'Hà Nội', 1, '2018-06-19 09:11:16', 'administrator', '2018-06-19 09:11:16', 'administrator'),
(6, 'di-chua', 'Đi chùa', 'Đi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùaĐi chùa', '9552399e177cc83a3c4f56172259f317.jpg', 'Bái Đính', 'Ninh Bình', 1, '2018-06-20 09:06:22', 'administrator', '2018-06-20 09:06:22', 'administrator'),
(7, 'quan-lan1', 'Quan lạn1', 'Quan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạnQuan lạn2', 'b6c837377f6af25128629e7937740afe.png', 'Quan Lạn', 'Hà Nội', 0, '2018-06-20 16:42:03', 'administrator', '2018-06-20 16:42:03', 'administrator'),
(8, 'dinh-chua-quan-lan', 'Đình chùa Quan lạn', 'Đình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạnĐình chùa Quan lạn', '49f8a68caa7086c150bc56f32453108e.png', 'Đình, Chùa Quan Lạn', 'Quảng Ninh', 0, '2018-06-20 16:44:38', 'administrator', '2018-06-20 16:44:38', 'administrator'),
(9, 'bai-bien-minh-chau', 'Bãi biển minh châu', 'Bãi biển minh châuBãi biển minh châuBãi biển minh châuBãi biển minh châuBãi biển minh châuBãi biển minh châuBãi biển minh châuBãi biển minh châuBãi biển minh châuBãi biển minh châuBãi biển minh châu', '1f3362afc07e1a0711d8ea3e822d60a2.png', 'Bãi biển Minh Châu', 'Quảng Ninh', 0, '2018-06-20 16:46:45', 'administrator', '2018-06-20 16:46:45', 'administrator'),
(10, 'vi-tri-moi1', 'Vị trí mới1', 'Vị tr&iacute; mới1', '1d3cc07ca32e56ea53bb60d8e873a3fe.jpg', 'Vị trí mới', 'Hà Nội', 0, '2018-06-26 18:02:40', 'administrator', '2018-06-26 18:02:40', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `slug`, `title`, `description`, `content`, `avatar`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(7, 15, 'dong-luc-va-su-menh', 'Động lục và sứ mệnh', '', '', '', '47d6679344120e8498a4c9e87ac57432.jpg', '2018-06-19 13:09:13', 'administrator', '2018-06-19 13:09:13', 'administrator', 0, 0),
(10, 15, 've-cong-ty', 'Về công ty', '', '', '', '69a175e3a5b3586642dd458977f95f1c.png', '2018-06-19 13:08:08', 'administrator', '2018-06-19 13:08:08', 'administrator', 0, 0),
(11, 16, 'dich-vu-nha-nghi', 'Dịch vụ và nhà nghỉ', '', '', '', '60f0293f9efbbfd2eb6d395c3dfde1df.png', '2018-06-23 14:24:10', 'administrator', '2018-06-23 14:24:10', 'administrator', 0, 0),
(12, 16, 'dich-vu-may-bay', 'Dịch vụ máy bay', '', '', '', '433f2b98306dac8d3bbba06d6caab633.jpg', '2018-06-23 14:25:55', 'administrator', '2018-06-23 14:25:55', 'administrator', 0, 0),
(13, 19, 'sung-sot-truoc-phong-canh-dep-hon-tranh-cua-pakistan', 'Sửng sốt trước phong cảnh hơn tranh của paskistan', '', '', '', 'd9b1c753042792c46f379e095eea98b4.png', '2018-06-23 17:46:46', 'administrator', '2018-06-23 17:46:46', 'administrator', 0, 0),
(14, 19, 'thanh-pho-gilgit', 'Thanh phố gilgit', 'Thanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgit', 'Thanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgitThanh phố gilgit', '', '84919d8de68997e6ac10e65ee20b8c15.png', '2018-06-27 12:00:59', 'administrator', '2018-06-27 12:00:59', 'administrator', 0, 0),
(15, 19, 'deo-shandur', 'Đèo shandur', '', '', '', '228a5af48d83f9f80199045b3e493931.jpg', '2018-06-23 17:48:22', 'administrator', '2018-06-23 17:48:22', 'administrator', 0, 0),
(17, 19, 'mo-ta221', 'Mô tả221', 'Mô tả1231', 'M&ocirc; tả1123', '', '0dd1c53c37703c2aa3e9269c0754c1c1.png', '2018-06-26 13:28:12', 'administrator', '2018-06-26 13:28:12', 'administrator', 1, 0),
(18, 16, 'bai-moi-1wsz1ad', 'Bài mới 1wsz1ád', 'Bài mới 1wszád', 'B&agrave;i mới 1wsz&aacute;d', '', '1ca5414761245da503099a3b4cb8044d.jpg', '2018-06-26 13:34:03', 'administrator', '2018-06-26 13:34:03', 'administrator', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0 : list; 1 : detail',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `title`, `content`, `parent_id`, `project`, `image`, `sort`, `type`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(15, 'tin-tuc', 'Tin tức', 'Tin tứcTin tứcTin tứcTin tứcTin tứcTin tứcTin tứcTin tứcTin tứcTin tứcTin tứcTin tứcTin tứcTin tức', 0, '', 'bfeda477c909e2605b5b6b93f8485f4c.png', NULL, 0, 0, 0, '2018-06-27 11:40:29', 'administrator', '2018-06-27 11:40:29', 'administrator'),
(16, 'kho-thu-vien', 'Kho thư viện', 'Kho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư việnKho thư viện', 0, '', 'a2964b3dbe263ce6d40a2a76818f4990.png', NULL, 0, 0, 0, '2018-06-27 11:40:49', 'administrator', '2018-06-27 11:40:49', 'administrator'),
(17, 'mice', 'Mice', '', 0, '', 'dde848ff7b98e1a946f39d70ef7e0544.jpg', NULL, 0, 0, 1, '2018-06-23 11:34:21', 'administrator', '2018-06-23 11:34:21', 'administrator'),
(18, 'visa', 'Visa', '', 0, '', 'a84b6f48b954ba1c877c079d9ea03bf0.jpg', NULL, 0, 0, 1, '2018-06-23 17:38:20', 'administrator', '2018-06-23 17:38:20', 'administrator'),
(19, 'goc-chia-se', 'Góc chia sẻ', 'G&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻG&oacute;c chia sẻ', 0, '', 'c0e637fd03b2d07aa86333666e08b4de.jpg', NULL, 0, 0, 0, '2018-06-27 12:00:13', 'administrator', '2018-06-27 12:00:13', 'administrator'),
(20, '', 'ok ok1', 'ok ok2', 19, '', 'e9b3a682dc480142c0a727bf9ff1a672.png', NULL, 1, 0, 1, '2018-06-26 13:07:55', 'administrator', '2018-06-26 13:07:55', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecontent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tripnodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsprice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive',
  `dateimg` text COLLATE utf8mb4_unicode_ci,
  `vehicles` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,0) DEFAULT NULL,
  `priceadults` decimal(10,0) NOT NULL,
  `pricechildren` decimal(10,0) NOT NULL,
  `priceinfants` decimal(10,0) NOT NULL,
  `percen` int(11) DEFAULT NULL,
  `imglocaltion` text COLLATE utf8mb4_unicode_ci,
  `localtion` text COLLATE utf8mb4_unicode_ci,
  `librarylocaltion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rating` int(11) DEFAULT NULL,
  `count_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `slug`, `title`, `description`, `content`, `metakeywords`, `metadescription`, `datetitle`, `datecontent`, `tripnodes`, `detailsprice`, `avatar`, `image`, `is_deleted`, `is_activated`, `dateimg`, `vehicles`, `price`, `priceadults`, `pricechildren`, `priceinfants`, `percen`, `imglocaltion`, `localtion`, `librarylocaltion`, `date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `total_rating`, `count_rating`) VALUES
(91, 26, 'du-lich-kham-pha-quan-lan-3-ngay-2-dem-22', 'Du lịch khám phá quan lạn 3 ngày 2 đêm 22', 'Đảo Quan Lạn là một hòn đảo thuộc Vịnh Bái Tử Long, huyện Vân Đồn, tỉnh Quảng Ninh, gồm 2 xã đảo là Quan Lạn và Minh Châu. Đảo Quan Lạn gồm 3 bãi biển Minh Châu, Sơn Hào, Quan Lạn, đều là những bãi biển đẹp nhất Vân Đồn. Quan Lạn thực sự là một điểm du lịch lý tưởng mà vừa xa xôi, vừa mới lạ, có chút mạo hiểm, lại vừa bình dị và dân dẫ khiến ai cũng phải thích thú. Cảnh đẹp mà tạo hóa đã ban tặng nơi đây chắc chắn sẽ làm du khách phải ngỡ ngàng.', '<table width=\"480\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" width=\"480\">\r\n<ul style=\"list-style-type: square;\">\r\n<li>Kh&aacute;ch sạn 3 sao suốt chương tr&igrave;nh.</li>\r\n<li>Hướng dẫn vi&ecirc;n c&oacute; nhiều kinh nghiệm, nhiệt th&agrave;nh, chu đ&aacute;o.</li>\r\n<li>Kh&aacute;m ph&aacute; đảo Quan Lạn xinh đẹp với b&atilde;i biển Minh Ch&acirc;u nổi tiếng</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Du lịch khám phá quan lạn 3 ngày 2 đêm', 'Du lịch khám phá quan lạn 3 ngày 2 đêm', '[\"H\\u00e0 N\\u1ed9i, V\\u00e2n \\u0110\\u1ed3n, Quan L\\u1ea1n\",\"Quan L\\u1ea1n\",\"Quan L\\u1ea1n, V\\u00e2n \\u0110\\u1ed3n, H\\u00e0 N\\u1ed9i\"]', '[\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">06h00: xe v&agrave; h\\u01b0\\u1edbng d\\u1eabn vi&ecirc;n Diamondtour \\u0111&oacute;n \\u0111o&agrave;n t\\u1ea1i \\u0111i\\u1ec3m h\\u1eb9n kh\\u1edfi h&agrave;nh \\u0111i V&acirc;n \\u0110\\u1ed3n &ndash; Qu\\u1ea3ng Ninh, tr&ecirc;n \\u0111\\u01b0\\u1eddng \\u0111i, \\u0111o&agrave;n d\\u1eebng ch&acirc;n t\\u1ea1i H\\u1ea3i D\\u01b0\\u01a1ng, t\\u1ef1 do \\u0103n s&aacute;ng.<br \\/>11h30: T\\u1edbi V&acirc;n \\u0110\\u1ed3n, Qu&yacute; kh&aacute;ch \\u0103n tr\\u01b0a t\\u1ea1i nh&agrave; h&agrave;ng, ngh\\u1ec9 ng\\u01a1i sau \\u0111&oacute; xe \\u0111\\u01b0a \\u0111o&agrave;n ra b\\u1ebfn c\\u1ea3ng C&aacute;i R\\u1ed3ng.<br \\/>13h30: \\u0110o&agrave;n l&ecirc;n t&agrave;u cao t\\u1ed1c \\u0111i Quan L\\u1ea1n, \\u0111i kho\\u1ea3ng 45 ph&uacute;t \\u0111o&agrave;n c&oacute; m\\u1eb7t t\\u1ea1i \\u0111\\u1ea3o Quan L\\u1ea1n, nh\\u1eadn ph&ograve;ng kh&aacute;ch s\\u1ea1n, ngh\\u1ec9 ng\\u01a1i ho\\u1eb7c t\\u1ef1 do t\\u1eafm bi\\u1ec3n Quan L\\u1ea1n.<br \\/>T\\u1ed1i: \\u0110o&agrave;n d&ugrave;ng b\\u1eefa t\\u1ed1i t\\u1ea1i nh&agrave; h&agrave;ng<br \\/>20h30: Qu&yacute; kh&aacute;ch di chuy\\u1ec3n ra b\\u1edd bi\\u1ec3n, h&ograve;a m&igrave;nh trong \\u0111&ecirc;m giao l\\u01b0u v\\u0103n ngh\\u1ec7 l\\u1eeda tr\\u1ea1i v\\u1edbi nh\\u1eefng m&agrave;n bi\\u1ec3u di\\u1ec5n t\\u01b0ng b\\u1eebng, vui nh\\u1ed9n v&agrave; \\u0111\\u1ea7y ng\\u1eabu h\\u1ee9ng, tr\\u1ea3i nghi\\u1ec7m h&aacute;t karaoke tr&ecirc;n bi\\u1ec3n v\\u1edbi nh\\u1eefng v\\u0169 \\u0111i\\u1ec7u khi&ecirc;u v\\u0169 \\u0111\\u1eb7c s\\u1eafc. <br \\/>\\u0110o&agrave;n ngh\\u1ec9 \\u0111&ecirc;m tr&ecirc;n \\u0111\\u1ea3o.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">S&aacute;ng: Qu&yacute; kh&aacute;ch d\\u1eady s\\u1edbm ng\\u1eafm b&igrave;nh minh tr&ecirc;n \\u0111\\u1ea3o, \\u0103n s&aacute;ng t\\u1ea1i kh&aacute;ch s\\u1ea1n. Sau b\\u1eefa s&aacute;ng, xe \\u0111\\u01b0a \\u0111o&agrave;n \\u0111i tham quan m\\u1ed9t v&agrave;i \\u0111\\u1ecba danh tr&ecirc;n \\u0111\\u1ea3o nh\\u01b0: \\u0110&igrave;nh, Ch&ugrave;a Quan L\\u1ea1n, Mi\\u1ebfu, ngh&egrave; Quan L\\u1ea1n, \\u0111\\u1ec1n th\\u1edd Tr\\u1ea7n Kh&aacute;nh D\\u01b0<br \\/>Tr\\u01b0a: \\u0110o&agrave;n \\u0103n tr\\u01b0a t\\u1ea1i nh&agrave; h&agrave;ng v\\u1edbi nh\\u1eefng m&oacute;n \\u0103n \\u0111\\u01b0\\u1ee3c ch\\u1ebf bi\\u1ebfn t\\u1eeb h\\u1ea3i s\\u1ea3n t\\u01b0\\u01a1i ngon.<br \\/>Chi\\u1ec1u: Xe \\u0111\\u01b0a \\u0111o&agrave;n ra b&atilde;i bi\\u1ec3n Minh Ch&acirc;u. Qu&yacute; kh&aacute;ch t\\u1ef1 do t\\u1eafm bi\\u1ec3n t\\u1ea1i b&atilde;i bi\\u1ec3n xinh \\u0111\\u1eb9p n&agrave;y.<br \\/>T\\u1ed1i: T\\u1ed5 ch\\u1ee9c Gala dinner t\\u1ea1i Sky Bar (t\\u1ea7ng th\\u01b0\\u1ee3ng c\\u1ee7a kh&aacute;ch s\\u1ea1n), tham gia tr&ograve; ch\\u01a1i, b\\u1ed1c th\\u0103m tr&uacute;ng th\\u01b0\\u1edfng, ho\\u1ea1t \\u0111\\u1ed9ng v\\u0103n ngh\\u1ec7 t\\u1ef1 di\\u1ec5n v&agrave; th\\u01b0\\u1edfng th\\u1ee9c BBQ h\\u1ea3i s\\u1ea3n V&acirc;n \\u0111\\u1ed3n.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"\"]', '<table style=\"height: 324px; width: 992px;\" width=\"926\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 499px; height: 18px;\" colspan=\"3\">\r\n<ul style=\"list-style-type: circle;\">\r\n<li><strong>ĐIỀU KIỆN ĐĂNG K&Yacute; TOUR</strong></li>\r\n</ul>\r\n</td>\r\n<td style=\"width: 477px; height: 18px;\">\r\n<ul style=\"list-style-type: circle;\">\r\n<li><strong>ĐIỀU KIỆN HỦY TOUR</strong></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 90px;\">\r\n<td style=\"width: 499px; height: 90px;\" colspan=\"3\">\r\n<ul style=\"list-style-type: square;\">\r\n<li>Qu&yacute; kh&aacute;ch c&oacute; đầy đủ sức khỏe tham gia chương tr&igrave;nh.</li>\r\n<li>Đặt cọc 50%/1 kh&aacute;ch khi đăng k&yacute; chương tr&igrave;nh.&nbsp;</li>\r\n<li>Thanh to&aacute;n to&agrave;n bộ số tiền trước 20 ng&agrave;y khởi h&agrave;nh.</li>\r\n<li>Hộ chiếu c&ograve;n thời hạn tr&ecirc;n 6 th&aacute;ng t&iacute;nh đến ng&agrave;y về.</li>\r\n</ul>\r\n</td>\r\n<td style=\"width: 477px; height: 90px;\">\r\n<ul style=\"list-style-type: square;\">\r\n<li>Ngay sau khi đặt cọc: Ph&iacute; hủy l&agrave; 15% tiền tour</li>\r\n<li>Trước ng&agrave;y khởi h&agrave;nh 30 ng&agrave;y: Ph&iacute; hủy l&agrave; 25% tiền tour</li>\r\n<li>Từ trước 8 - 29 ng&agrave;y trước ng&agrave;y KH: Ph&iacute; hủy l&agrave; 35% tiền tour</li>\r\n<li>Trước 07 ng&agrave;y khởi h&agrave;nh: Ph&iacute; hủy l&agrave; 70% tiền tour</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 216px;\">\r\n<td style=\"width: 982px; height: 216px;\" colspan=\"4\">\r\n<ul style=\"list-style-type: circle;\">\r\n<li>Khi đăng k&yacute; tour du lịch, Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kỹ chương tr&igrave;nh, gi&aacute; tour, c&aacute;c khoản bao gồm cũng như kh&ocirc;ng bao gồm trong chương tr&igrave;nh, c&aacute;c điều kiện hủy tour. Trong trường hợp Qu&yacute; kh&aacute;ch kh&ocirc;ng trực tiếp đến đăng k&yacute; tour m&agrave; do người kh&aacute;c đến đăng k&yacute; th&igrave; Qu&yacute; kh&aacute;ch vui l&ograve;ng t&igrave;m hiểu kỹ chương tr&igrave;nh từ người đăng k&yacute; cho m&igrave;nh.</li>\r\n<li>Qu&yacute; kh&aacute;ch từ 70 tuổi trở l&ecirc;n y&ecirc;u cầu cam kết sức khỏe với C&ocirc;ng ty.</li>\r\n<li>T&ugrave;y v&agrave;o t&igrave;nh h&igrave;nh thực tế, thứ tự c&aacute;c điểm thăm quan trong chương tr&igrave;nh c&oacute; thể thay đổi nhưng vẫn đảm bảo đầy đủ c&aacute;c điểm thăm quan như l&uacute;c đầu.</li>\r\n<li>Trong trường hợp xảy ra thi&ecirc;n tai: b&atilde;o lụt, hạn h&aacute;n, động đất&hellip;; Sự cố về an ninh: khủng bố, biểu t&igrave;nh; Sự cố về h&agrave;ng kh&ocirc;ng: trục trặc kỹ thuật, an ninh, dời, hủy, ho&atilde;n chuyến bay, Diamondtour sẽ xem x&eacute;t để ho&agrave;n trả chi ph&iacute; kh&ocirc;ng thăm quan cho kh&aacute;ch trong điều kiện c&oacute; thể (Sau khi đ&atilde; trừ lại c&aacute;c dịch vụ đ&atilde; thực hiện như ph&iacute; l&agrave;m visa. V&agrave; kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường th&ecirc;m bất kỳ chi ph&iacute; n&agrave;o kh&aacute;c).</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<table style=\"height: 314px; width: 727px;\" width=\"716\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px; width: 717px;\" colspan=\"3\"><strong>GI&Aacute; TOUR BAO GỒM&nbsp;</strong></td>\r\n</tr>\r\n<tr style=\"height: 108px;\">\r\n<td style=\"height: 108px; width: 717px;\" colspan=\"3\">\r\n<ul style=\"list-style-type: square;\">\r\n<li>Kh&aacute;ch sạn chuẩn 3 sao ở Quan Lạn (2 kh&aacute;ch/ ph&ograve;ng; nếu lẻ kh&aacute;ch sẽ ở ph&ograve;ng 3 người);</li>\r\n<li>Ăn trọn g&oacute;i theo chương tr&igrave;nh.</li>\r\n<li>Xe: &Ocirc; t&ocirc; tiện nghi phục vụ theo chương tr&igrave;nh.</li>\r\n<li>V&eacute; v&agrave;o cửa tham quan cổng thứ nhất.</li>\r\n<li>Bảo hiểm du lịch mức tối đa 200.000.000đ/ người/ h&agrave;nh tr&igrave;nh;</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px; width: 717px;\" colspan=\"3\"><strong>GI&Aacute; TOUR KH&Ocirc;NG BAO GỒM</strong></td>\r\n</tr>\r\n<tr style=\"height: 90px;\">\r\n<td style=\"height: 90px; width: 717px;\" colspan=\"3\">\r\n<ul style=\"list-style-type: square;\">\r\n<li>Ph&iacute; ph&ograve;ng đơn (d&agrave;nh cho kh&aacute;ch y&ecirc;u cầu ở ph&ograve;ng đơn).</li>\r\n<li>Đồ uống (bia rượu trong bữa ăn), điện thoại, giặt l&agrave;</li>\r\n<li>Tiền tip cho hướng dẫn vi&ecirc;n $/h&agrave;nh tr&igrave;nh.</li>\r\n<li>Chi ph&iacute; c&aacute; nh&acirc;n của kh&aacute;ch ngo&agrave;i chương tr&igrave;nh.</li>\r\n<li>Thuế VAT.</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '286e1ca643e88e05896fed5a6ea84616.png', 0, 0, '[\"84acf83995d7e4d7f93c557786310f4f.png\",\"7386eacfd728a51f708dbe4a7697f1d4.png\",\"b1aff5ff42e4fd645c0045e67f8d6945.png\"]', '[\"5\",\"8\",\"5\"]', '5000000', '100', '85', '30', 0, '8b004fe14a8733646e7953bb82e2f61b.png', 'Hà Nội, Vân Đồn, Quan Lạn', '[\"7\",\"8,9\",\"8,9\"]', '2018-06-30 00:00:00', '2018-06-27 12:25:10', 'administrator', '2018-06-27 12:25:10', 'administrator', 9, 3),
(92, 28, 'chuong-trinh-du-lich-ket-hop-chiem-bai-danh-tu-phat-giao-dai-loan-5-ngay-4-dem', '', '', '', '', '', '', '', '', '', '', '51823441f4cdbdcd99a4b7a8a6d62f91.jpg', 0, 0, '[\"bd901338bdb83ec9b485cbc247cc1037.png\",\"d56a69fe72636693673ef865cc0c5b4b.png\",\"a3fb4777534b03a0d086b77c0c0ab689.jpg\",\"eb9c445df5d816b6b7c3abdc31e9620d.jpg\",\"67ad1b4581790dc5b17798bc64da7de4.png\"]', '[\"2\",\"5\",\"5\",\"5\",\"2\"]', '510000', '100', '85', '30', 0, '9b1d64c4b8be1fdda7b1a391d010e3d3.jpg', 'Hà Nội, Đảo Viên, Đài Bắc, Đài Trung, Gia Nghĩa, Cao Hùng', '[\"7\",\"7\",\"7\",\"7\",\"7\"]', '2018-06-15 00:00:00', '2018-06-23 10:30:25', 'administrator', '2018-06-23 10:30:25', 'administrator', NULL, NULL),
(93, 30, 'du-lich-kham-pha-quang-binh-4-ngay-3-dem', '', '', '', '', '', '', '', '', '', '', '632d5401cf1473838101fa33d87c6933.jpg', 0, 0, '[\"404a6058ea94e701d2f4b3e27f1184d5.png\",\"538a7fe61625a36ce36500e7d379f5c7.png\",\"2ef3d11a06ab858b0c07dd28ba3ecc25.png\",\"5edceeadf8d15f291c1396a076db53d8.png\"]', '[\"2\",\"5\",\"5\",\"2\"]', '6300000', '100', '85', '30', 0, 'f732329e8a9d5f90e7bdbbd8d0d5636f.png', '', '[\"7\",\"7\",\"7\",\"7\"]', '2018-06-08 00:00:00', '2018-06-23 12:10:00', 'administrator', '2018-06-23 12:10:00', 'administrator', NULL, NULL),
(94, 24, 'philipin---thien-nhien-hoang-da', '', '', '', '', '', '', '', '', '', '', '5c0a02718cb7c5b6f1efbae43b091e38.png', 1, 0, '[\"104bc738ee82a6d8bf1cb47292acfcce.png\",\"5b405f4a2b0a357590065927f73dbc83.png\"]', '[\"2\",\"6\"]', '6600000', '100', '85', '30', 0, '5e6c75ccdfdd7f92cc7e8e83d61c3333.png', 'Nguyễn Bỉnh Khiêm', '[\"8\",\"7\"]', '2018-07-05 00:00:00', '2018-06-26 09:41:01', 'administrator', '2018-06-26 09:41:01', 'administrator', NULL, NULL),
(95, 25, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '[\"\"]', '[\"2\"]', '0', '0', '0', '0', 0, NULL, '', '[\"\"]', '2018-06-26 00:00:00', '2018-06-25 16:55:57', 'administrator', '2018-06-25 16:55:57', 'administrator', NULL, NULL),
(96, 25, 'please-select-the-parent-category1', '', '', '', '', '', '', '', '', '', '', '317ce29bce109e5291d44d705fde336c.png', 0, 0, '[\"1672aa2dcbd522c31df0b347c1f231e5.png\",\"b3b838ce86143fc46b58e91f04aba540.png\",\"6133d59ec2650c781c192ab10639d7a7.jpg\"]', '[\"2\",\"6\",\"8\"]', '6700000', '100', '85', '30', 0, 'fe5ad6e55e04bcbda65cf2c7caee7492.png', 'Nguyễn Bỉnh Khiêm', '[\"7\",\"8,9\",\"7\"]', '2018-06-09 00:00:00', '2018-06-25 17:39:33', 'administrator', '2018-06-25 17:39:33', 'administrator', NULL, NULL),
(97, 27, 'qweqwe', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '[\"d199beef57e365137703f5353278beea.png\",\"5f481fb01e9c091ad0391a225ee5baf6.jpg\"]', '[\"2\",\"3\"]', '0', '0', '0', '0', 0, NULL, '', '[\"7\",\"8,9\"]', '1970-01-01 08:00:00', '2018-06-26 09:21:28', 'administrator', '2018-06-26 09:21:28', 'administrator', NULL, NULL),
(98, 25, 'asdssssssssssssss', '', '', '', '', '', '', '', '', '', '', 'edfe4b408a46b212f5d92eae59909cc2.png', 0, 0, '[\"dd55200cfaeae65cd92db3f621061f3a.png\",\"21e6cf4e6e88408ffb073a3f877df7d5.png\"]', '[\"2\",\"4\"]', '100', '85', '30', '0', 1, '252e9b3494d99d629986eaf86f8f3555.png', 'Nguyễn Bỉnh Khiêm', '[\"8\",\"8,9\"]', '2018-06-06 00:00:00', '2018-06-26 09:28:26', 'administrator', '2018-06-26 09:28:26', 'administrator', NULL, NULL),
(99, 31, 'adminproductcreate', 'admin/product/create', 'admin/product/create', 'admin/product/create', 'admin/product/create', 'admin/product/create', '[\"admin\\/product\\/create1\"]', '[\"\"]', 'admin/product/create', 'admin/product/create', '', 'df2b7ec92f3e2b89d826d6c0118339f6.jpg', 0, 0, '[\"8e8be3702d1115a99afc1aa9c035a4af.jpg\"]', '[\"4\"]', '1000000', '100', '85', '30', 0, 'a68c75369f27b0637d98dfa4b6408004.jpg', 'admin/product/create', '[\"7\"]', '2018-05-30 00:00:00', '2018-06-27 11:48:58', 'administrator', '2018-06-27 11:48:58', 'administrator', NULL, NULL),
(100, 25, 'qudwqwdqd', 'qưdwqwdqd', '', '', '', '', '[\"q\\u01b0dqdwqwd\"]', '[\"\"]', '', '', '', '', 0, 0, '[\"\"]', '[\"3\"]', '0', '0', '0', '0', 0, NULL, '', '[\"\"]', '1970-01-01 08:00:00', '2018-06-27 13:27:49', 'administrator', '2018-06-27 13:27:49', 'administrator', NULL, NULL),
(101, 33, 'qudqwd', 'qưdqwd', 'qưd', 'qưd', 'qdw', 'qưd', '[\"q\\u01b0dqwd\"]', '[\"adasd\"]', 'qưd', 'qưd', '', '08391843280b1b10961950eb3945617c.jpg', 0, 0, '[\"d5c983aa206d4630921988841fbe541d.jpg\"]', '[\"2\"]', '1', '1', '1', '1', 1, '788b817966cb8a45d982fa3d25353e7b.jpg', 'Quan Lạn', '[\"10\"]', '2018-06-14 00:00:00', '2018-06-27 13:32:37', 'administrator', '2018-06-27 13:32:37', 'administrator', NULL, NULL),
(102, 35, 'qudwqd', 'qưdwqd', '', '', '', '', '[\"q\\u01b0dqwd\"]', '[\"q\\u01b0dqwd\"]', '', '', '', '', 0, 0, '[\"\"]', '[\"5\"]', '1', '2', '3', '4', 5, NULL, '', '[\"\"]', '2018-06-07 00:00:00', '2018-06-27 13:35:28', 'administrator', '2018-06-27 13:35:28', 'administrator', NULL, NULL),
(103, 27, 'queqwee', 'qưeqwee', '', '', '', '', '[\"q\\u01b0eqwe\"]', '[\"\"]', '', '', '', '', 0, 0, '[\"\"]', '[\"2\"]', '0', '0', '0', '0', 0, NULL, '', '[\"\"]', '0000-00-00 00:00:00', '2018-06-27 15:52:13', 'administrator', '2018-06-27 15:52:13', 'administrator', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1: deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `slug`, `title`, `content`, `metakeywords`, `metadescription`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(22, 'hanh-huong-trong-nuoc', 'Hành hương trong nước', 'H&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nướcH&agrave;nh hương trong nước', 'Hành hương trong nước', 'Hành hương trong nước', 0, 0, '2018-06-27 11:10:49', 'administrator', '2018-06-27 11:10:49', 'administrator', '', 'b061eba312363382ee48a3daf1e37934.jpg', 1, 0),
(23, 'hanh-huong-nuoc-ngoai', 'Hành hương nước ngoài', 'H&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;iH&agrave;nh hương nước ngo&agrave;i', 'Hành hương nước ngoài', 'Hành hương nước ngoài', 0, 0, '2018-06-27 11:11:08', 'administrator', '2018-06-27 11:11:08', 'administrator', '', '1c157f8fd84f78b1bec85be57c2c0bd0.png', 2, 0),
(24, 'tour-dac-biet', 'Tour đặc biệt', '', '', '', 0, 1, '2018-06-26 09:40:06', 'administrator', '2018-06-26 09:40:06', 'administrator', '', '46bca0c6d516a1c4ba0948334395c09b.jpg', 3, 0),
(25, 'mien-trung-1', 'Miền Trung', 'Miền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền Trung', 'Miền BắcMiền BắcMiền TrungMiền Trung', 'Miền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền TrungMiền Trung', 22, 0, '2018-06-27 11:17:51', 'administrator', '2018-06-27 11:17:51', 'administrator', '', '82e04b447e933ae67b8724ff47e7a5ab.jpg', 2, 0),
(26, 'quang-ninh', 'Quảng Ninh', '', '', '', 25, 0, '2018-06-20 14:46:09', 'administrator', '2018-06-20 14:46:09', 'administrator', '', '405b8675e691584b0c7c228011e207c4.png', NULL, 0),
(27, 'mien-bac', 'Miền Bắc', 'Miền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền Bắc', 'Miền Bắc', 'Miền Bắc', 22, 0, '2018-06-27 11:17:22', 'administrator', '2018-06-27 11:17:22', 'administrator', '', '3477c9595682cb80cc0319f1f047c574.jpg', 1, 0),
(28, 'an-do', 'Ấn Độ', 'Ấn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn ĐộẤn Độv', 'Ấn Độ', 'Ấn Độ', 23, 0, '2018-06-27 11:19:41', 'administrator', '2018-06-27 11:19:41', 'administrator', '', '7e3d4048fac6c84c37d414be4498ac90.jpg', NULL, 0),
(29, 'mien-nam', 'Miền Nam', 'Miền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền Nam', 'Miền NamMiền NamMiền NamMiền NamMiền NamMiền Nam', 'Miền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền NamMiền Nam', 22, 0, '2018-06-27 11:18:08', 'administrator', '2018-06-27 11:18:08', 'administrator', '', 'e6028c249771cc3c5ee47f3fdd56728f.jpg', 3, 0),
(30, 'quang-binh', 'Quảng Bình', '', '', '', 29, 0, '2018-06-23 11:53:37', 'administrator', '2018-06-23 11:53:37', 'administrator', '', '28992e5971eb25edfa420cbf25f70f6e.png', NULL, 0),
(31, 'tesst-tesst-tesst-tesst-tesst-tesst-tesst-tesst-tesst-tesst-tesst-tesst-tesst-tesst99', 'Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst99', 'Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst99', 'Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst99', 'Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst Tesst99', 27, 0, '2018-06-26 14:07:40', 'administrator', '2018-06-26 14:07:40', 'administrator', '', '026c16af6247003973213d773424368f.jpg', NULL, 0),
(32, 'test-tiep-nao', 'test tiếp nào', 'test tiếp n&agrave;o', 'test tiếp nào', 'test tiếp nào', 31, 0, '2018-06-26 14:02:05', 'administrator', '2018-06-26 14:02:05', 'administrator', '', 'a138b943f451855dc642f878c3694f69.jpg', NULL, 0),
(33, 'ton-giao-khac', 'Tôn giáo khác', 'T&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;cT&ocirc;n gi&aacute;o kh&aacute;c', 'Tôn giáo khác', 'Tôn giáo khác', 22, 0, '2018-06-27 11:18:27', 'administrator', '2018-06-27 11:18:27', 'administrator', '', 'e0f49839eda550cad898282e484a2a05.png', NULL, 0),
(34, 'kim-cuong-thua', 'Kim Cương Thừa', 'Kim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương ThừaKim Cương Thừa', 'Kim Cương Thừa', 'Kim Cương Thừa', 23, 0, '2018-06-27 11:21:43', 'administrator', '2018-06-27 11:21:43', 'administrator', '', '9fcc7c304f1d18cde23535f57214ac2a.jpg', NULL, 0),
(35, 'phat-giao-han-truyen', 'Phật Giáo Hán Truyền', 'Phật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n TruyềnPhật Gi&aacute;o H&aacute;n Truyền', 'Phật Giáo Hán Truyền', 'Phật Giáo Hán Truyền', 23, 0, '2018-06-27 11:20:30', 'administrator', '2018-06-27 11:20:30', 'administrator', '', '522e5876923754b897e804a67cc19445.jpg', NULL, 0),
(36, 'phat-giao-nam-truyen', 'Phật Giáo Nam Truyền', '<strong>Phật Gi&aacute;o Nam Truyền</strong>Phật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam TruyềnPhật Gi&aacute;o Nam Truyền', 'Phật Giáo Nam Truyền', 'Miền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền Bắc', 23, 0, '2018-06-27 11:20:53', 'administrator', '2018-06-27 11:20:53', 'administrator', '', '9edd1b11c5ea7b63374a1847a1e9abc9.jpg', NULL, 0),
(37, 'ton-giao-khac-1', 'Tôn Giáo Khác', 'T&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;cT&ocirc;n Gi&aacute;o Kh&aacute;c', 'Phật Giáo Nam Truyền', 'Phật Giáo Nam Truyền', 23, 0, '2018-06-27 11:21:20', 'administrator', '2018-06-27 11:21:20', 'administrator', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_sessions`
--

CREATE TABLE `site_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `site_sessions`
--

INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0taq9q69s9ftbi0vauois3c92guvglo9', '::1', 1530004811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030343831313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('1aofd3r1ejqhta88v54h8gk16ue486p4', '::1', 1530004397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030343339373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('1fplh9186j9012u2ke81gg7sdsj1dd6q', '::1', 1530004048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030343034383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('1gaglebba8pkbdi6ne8ruoot8dv4v5fr', '::1', 1530094325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039343331393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1ps6n695r5obefcdcdd81nmtg54gs9a1', '::1', 1530068547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303036383534373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393935323831223b6c6173745f636865636b7c693a313533303036373930333b),
('1t2nln846m4aa0qc3tirgt7l9kdcic7t', '::1', 1529992288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939323238383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('2lo3a72eu2lri0q573lvii0s51knkers', '::1', 1530083605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038333630353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2r809kmfk54ma7ed688q8ltmh74k0do5', '::1', 1530010904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303031303930343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('31vj8moud7opa1msmsf8ut1kbj96tf58', '::1', 1530007994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030373939343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('3gs4r22ae4cempluho4ef4slnca88rhv', '::1', 1530076653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037363635333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('3neolvgq9cnsk7b4tlctuv85f3leippa', '::1', 1529992905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939323930353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('460bta6mk7cigoq5ukg1ltvep7it9pav', '::1', 1530070809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037303830393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('49bm7e37erjs1tthdmjgkftt6tpglecm', '::1', 1529994625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939343632353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('4a172o2kkmpmdmqakv8dkncjejc27sff', '::1', 1530073026, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037333032363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('59qj4g9rcenfsu4rs1i3qdkpqj7gk9o7', '::1', 1529995333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939353333333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('5ca47g6adinfrbbb40ekm7f136q2vog5', '::1', 1529999425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939393432353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('5mtdm7pc3gs6jgkqj5lcdamol4njtr52', '::1', 1530082765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038323736353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5q5rskshrtqqn5rkhdoph77jdks144f9', '::1', 1530007257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030373235373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('62cagsesqcq1cq8ftk1jr6ph8l1se0ek', '::1', 1530079972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037393937323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('6b03r0fh15fup9d0peed5ei5t03up1kf', '::1', 1530074841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037343834313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('6mkf36oggg13rph086ubk4c8kfmebcpr', '::1', 1530083217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038333231373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6so1kkrov5psqqo25nf4mr8sk126da9h', '::1', 1530083909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038333930393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b6d6573736167655f6572726f727c733a32323a224944206b68c3b46e672074e1bb936e2074e1baa16921223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('76aedp7jnnho1fdd52u8urnbr7i87vuj', '::1', 1530005862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030353836323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('7e8rs02rf0cm9420nmiv4baemfnnf0kn', '::1', 1530077470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037373437303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('7j93iu5dl0995mas3do62carra2021ev', '::1', 1530070482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037303438323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('7jmbsl2lcd39f5anl8kljrhnfmcds5lt', '::1', 1530072581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037323538313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('7k5d8u3sdv56ej4ldg7j4upv9ktmkjbp', '::1', 1529996451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939363435313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('7mk4lstpm3jpesgu7jtfjrdjuvlk9v1a', '::1', 1529998444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939383434343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('8gb0k5ko1ibb2k42331vvbejmdtai8h8', '::1', 1530006857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030363835373b),
('8vtmdll5ds76ed1o0bcbn6i466fqqsgj', '::1', 1529995286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939353237373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393931383331223b6c6173745f636865636b7c693a313532393939353238313b),
('928pt4vjidgcgb580r2iv4dj9itjph1b', '::1', 1530085389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038353338393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a9vqmc19n6lksuua0ojrfcspj7elojv9', '::1', 1529996130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939363133303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('aiam170v1r19rhjbfn3nc6f4b3rs7nii', '::1', 1530075564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037353536343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('arq1tgu9cq92488m3e936mi33j1572p3', '::1', 1529999098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939393039383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('auqtjdt79h03hiej5h0bhmqlpvbaoikk', '::1', 1530075971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037353937313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('bp3q8hi5udgqj6987n0614unl3elci08', '::1', 1530069084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303036393038323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393935323831223b6c6173745f636865636b7c693a313533303036373930333b),
('brteumcfhjnv9cdi77lb5bqcpikp44cq', '::1', 1529992593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939323539333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('ckob1l32476jcjqc1d64ihsqrujmaaok', '::1', 1530007669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030373636393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('cnbi7jrlhkh5fhap4l6tr4p76nq091ml', '::1', 1530087986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038373938363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cpchdtudldncg00kk42rnjfkj2b2roup', '::1', 1530076350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037363335303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('dd7e5dn90jsaboggranov5v9da1khdv8', '::1', 1530094307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039343330373b),
('ea51m6ckrdg0cv8mbehn40vtrras9pne', '::1', 1530009395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030393339353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('eg727j2v86pri7jnf3c0fdgcnbsa5b7r', '::1', 1529997951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939373935313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('eglve4v2adn5sn201e6ut14cppknkb4l', '::1', 1530082215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038323231353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('euuehuvn63e70chfo74i4cbq4dr4ggh6', '::1', 1529993945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939333934353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('fb655naj4b00a4c93jdcdfh3s4uq7fti', '::1', 1529994966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939343936363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('fqhg75k5do7t6nc8ftg3ajvcvvpd72ij', '::1', 1530094319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039343331393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gdfc4pgqk424oond8iovvd810soe9gij', '::1', 1530002934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030323933343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('h2l2ihnoi42vo64amhd2ufri5bn64kf1', '::1', 1530074390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037343339303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('hkpinlvprc7h64003ev2hbqrq33e4mqn', '::1', 1530080832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038303833323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('hub8emf0o7rgaadvodbjl1l2246gm8o0', '::1', 1529996790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939363739303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('ijc3ogip9au1evnsm4mdjgnae14dt8eg', '::1', 1530068205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303036383230353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393935323831223b6c6173745f636865636b7c693a313533303036373930333b),
('iuekcjhc39upn9t2tlknvmpp1d0cdjtp', '::1', 1530001973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030313937333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('j0oud1pctkj79rsrt370assi2rm4o770', '::1', 1529998789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939383738393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('jbls3p0dfln7467omc089dfnklh3ate5', '::1', 1530010219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303031303231393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('jqc4k3dko013o3jqhgsd9u3mdb6h8gn2', '::1', 1530069082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303036393038323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393935323831223b6c6173745f636865636b7c693a313533303036373930333b),
('k6g1bbfvmq26bvr61l1p4argph9fn0jt', '::1', 1530084983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038343938333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ksedkqcet6ep4ataual0tlub1bnl1rra', '::1', 1530006915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030363931353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('lkusobc6e3vuq0v180kkte1u2ld932tb', '::1', 1529999796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939393739363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('luc8dqs6498eg583kqsreq1vtshvrfr7', '::1', 1529997639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939373633393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('m21fruv4tot2oojbaae4hqd3mtbk9q8b', '::1', 1530081162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038313136323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('m92v1imrh56j07hpgsg67ecjkl14evvv', '::1', 1530070174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037303137343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('mvalobag78s3dkapsvcp1qiv8bkda3hg', '::1', 1529993213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939333231333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('n112tbofg4htjkdccktv2thjisfeq9qu', '::1', 1529994306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939343330363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('nrpavj7b8ks1cu8v2flng0qakdn5pocd', '::1', 1530006567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030363536373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('ojpifbous2uilnrl55aurhn1o21851l9', '::1', 1530010550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303031303535303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('oq43i33hb4gub8d4ckjbs4haa6tfhhkb', '::1', 1530090360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039303336303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('oqg1qmkrip4lcr7ter0qq4r08fubp7n6', '::1', 1530085697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038353639373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pj468ugel9ku5h08sko7su0vqg1g5ql2', '::1', 1530001006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030313030363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('q1vs5376jitm7fvtbobm2ilbpbnrh7nd', '::1', 1530080419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038303431393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('q27bd6c7n1bd14kissvnr4umkuesgpi8', '::1', 1530072220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037323232303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('q63ruie0l9mmm3i4pu1ooqc62utg3fuq', '::1', 1530010972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303031303930343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('qej4p6oose3h34r25jkb9ech4inuolhq', '::1', 1529997252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939373235323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('s418q322673rpbnr3c2d750l5htsg0o2', '::1', 1529993531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939333533313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('s6lcl3ttkmd92ip1u1kb13j59t4t2hn6', '::1', 1530008991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030383939313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('sps297tkpq42mk6tn4h0ldjm1bsrf2n5', '::1', 1530084586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038343538363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sstg18mh03h5qhsghd9ue89lfdp1ernp', '::1', 1530071485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037313438353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('t9jbip89j0dlid02jma0vepdaq68sleo', '::1', 1530001309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030313330393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('tbclp22rdgabggmo0udbamc4v6ncit95', '::1', 1529995711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939353731313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('ti10f5ld9q5unm9ss0s5u6ta9og0csrc', '::1', 1530088618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038383631383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tur7l9h0imvvrkaffgpm56bpbsf8quga', '::1', 1530009832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030393833323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('u4a0pml2f1estfedds9j44dongvq2vb7', '::1', 1530006207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030363230373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('ub81el96sv9p1mofch3cpp2hnd0o5sih', '::1', 1530003512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030333531323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('uksrb5ar5l6nsgt816fg5b1i3nu0ba0v', '::1', 1530002507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030323530373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393738393434223b6c6173745f636865636b7c693a313532393939313833313b),
('v40e5n5lde8g6va835jmjpm7jmdagb07', '::1', 1530076990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037363939303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b),
('v60ktlo3rad3tmd9qcat16o2clam1tae', '::1', 1530089508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038393530383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vn165r3rb7habq5tft9pij4pcjh9fgvo', '::1', 1530088930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038383933303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303637393033223b6c6173745f636865636b7c693a313533303036393730323b6c616e67416262726576696174696f6e7c733a323a227669223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `age`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1530069702, 1, 'Admin', 'istrator', 'ADMIN', '0', NULL),
(2, '::1', 'asdas', '$2y$08$PpWSK2unjydxp3spURaQIeF0XLE0W70gsd0TD9pit699I.YgN2DAC', NULL, 'admin@admin.com1', NULL, NULL, NULL, NULL, 1527177316, NULL, 0, '', 'asdas', '', '121231', ''),
(3, '::1', 'minhtruong', '$2y$08$YPNhvgbGnA7jbd9HyjXO0./rYZmIXRje/UcB7523ZAy1xg5BOjfGa', NULL, 'minhtruong93gtvt@gmail.com', NULL, NULL, NULL, NULL, 1527177780, 1527179552, 1, '', 'minhtruong', 'mato', '123', '1'),
(4, '::1', 'a', '$2y$08$kDxKWvqs.XWwiD7LHvs2AuG.Uzu4NWhm498URqvjIUYfV3PzfQHim', NULL, 'minhtruong93gtvt@gmail.com1', NULL, NULL, NULL, NULL, 1527178136, NULL, 0, '', 'a', 'mato', '123123', '12'),
(5, '::1', 'Minh Trường', '$2y$08$RzELUGHvx8MtPpATO4/1xuQqG3iKiVsluuuuW9GHcd/lijGyPt8YC', NULL, 'minhtruong93gtvt@gmail.com2', NULL, NULL, NULL, NULL, 1527178552, NULL, 1, '', 'Minh Trường', 'mato', '0985767862', '25'),
(6, '::1', 'Minh Trường', '$2y$08$eFnAMTSd9nK8tyZQNcNlVeWv82KfRkF18pF8Lh7gxbJWCSZF3grMG', NULL, 'minhtruong93gtvt@gmail.com2', NULL, NULL, NULL, NULL, 1527178625, NULL, 1, '', 'Minh Trường', 'mato', '0985767862', '25'),
(7, '::1', 'asd', '$2y$08$VLybd2Ow93i3lknQtDqpIeoMf3xP7v38m9JYML2VM8dowCepDvyP.', NULL, 'a@gmail.com', NULL, NULL, NULL, NULL, 1527179462, NULL, 1, '', 'asd', '', '123', ''),
(8, '::1', 'Minh', '$2y$08$SbJuXh7GnCBqPBvYRTEcMONjoU8TZ8u0ZzDez2z3QP7TivGnE/iH.', NULL, 'hanguyen@user.com', NULL, NULL, NULL, NULL, 1527432498, NULL, 1, '', 'Minh', 'mato', '0985767862', '26'),
(9, '::1', '1232', '$2y$08$FF9cU4VevU3PqW8SJ39bcuVDOVvauKoECc68nn.3CDc6bl8GindX2', NULL, 'asdas@gmail.com', NULL, NULL, NULL, NULL, 1527433031, NULL, 1, '', '1232', '', '1231', ''),
(10, '::1', 'asdasd', '$2y$08$o/tFkN0LG5IxWpsDHNK0KemUM8OvGEiY3Ao1B7eJO6uvB5lrpYALm', NULL, 'aa@gmail.com', NULL, NULL, NULL, NULL, 1527504887, NULL, 1, '', 'asdasd', 'asda', '123123', '12'),
(11, '::1', 'Minh Truong', '$2y$08$Bi2qBwrxcSPkgFlq0xCwLOQbnQH348SZpZt5IRG5mT7/t/y3dbT6G', NULL, 'minhtruong93gtvt@gmail.com111', NULL, NULL, NULL, NULL, 1527523354, NULL, 1, '', 'Minh Truong', 'mato', '0985767862', '26'),
(12, '::1', 'Test', '$2y$08$WIF4VSIReuADjylqq0PeIO/0xapxmvMq9EL8/osUzL.X9MdnvFute', NULL, 'minhtruong93gtvt@gmail.com12', NULL, NULL, NULL, NULL, 1528288091, 1528295244, 1, '', 'Test', 'Mato', '0985767862', '25'),
(13, '::1', 'Do Minh Minh', '$2y$08$BconVYwp22s1nsQX8.X6iewac3bdgoQ4QPY2Qc8GaLrynqT4M7HfW', NULL, 'minhtruong93gtvt@gmail.com123', NULL, NULL, NULL, '/2NIvlwW8v3xZvePhIOIS.', 1528295320, 1528295517, 1, '', 'Do Minh Minh', 'MatoCreative', '0985767862', '25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 2),
(5, 4, 2),
(6, 5, 2),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2),
(10, 9, 2),
(11, 10, 2),
(12, 11, 2),
(13, 12, 2),
(14, 13, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `customize`
--
ALTER TABLE `customize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `localtion`
--
ALTER TABLE `localtion`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id` (`product_category_id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customize`
--
ALTER TABLE `customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `localtion`
--
ALTER TABLE `localtion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `customize`
--
ALTER TABLE `customize`
  ADD CONSTRAINT `customize_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
