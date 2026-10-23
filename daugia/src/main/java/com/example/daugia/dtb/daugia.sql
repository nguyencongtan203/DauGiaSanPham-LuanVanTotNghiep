-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 21, 2026 lúc 01:26 AM
-- Phiên bản máy phục vụ: 9.1.0
-- Phiên bản PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `daugia`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuthanhtoantiencoc`
--

DROP TABLE IF EXISTS `phieuthanhtoantiencoc`;
CREATE TABLE IF NOT EXISTS `phieuthanhtoantiencoc` (
  `matc` char(10) NOT NULL,
  `maphiendg` char(10) NOT NULL,
  `makh` char(10) NOT NULL,
  `hanthanhtoan` timestamp NOT NULL,
  `thoigianthanhtoan` timestamp NULL DEFAULT NULL,
  `trangthai` tinyint NOT NULL,
  `vnptransactionno` char(20) DEFAULT NULL,
  `bankcode` char(10) DEFAULT NULL,
  PRIMARY KEY (`matc`),
  KEY `maphiendg` (`maphiendg`),
  KEY `makh` (`makh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuthanhtoantiencoc`
--

INSERT INTO `phieuthanhtoantiencoc` (`matc`, `maphiendg`, `makh`, `hanthanhtoan`, `thoigianthanhtoan`, `trangthai`, `vnptransactionno`, `bankcode`) VALUES
('TC08102084', 'DG40292679', 'KH61949720', '2026-01-21 02:50:00', '2026-01-20 02:56:14', 3, '15402941', 'NCB'),
('TC08194631', 'DG72875773', 'KH62980565', '2026-01-21 18:09:00', '2026-01-20 18:12:47', 1, '15404079', 'NCB'),
('TC20891344', 'DG90316034', 'KH29009892', '2026-01-22 19:20:00', '2026-01-20 19:30:14', 1, '15404136', 'NCB'),
('TC24847132', 'DG33262426', 'KH61949720', '2026-01-22 01:59:00', '2026-01-20 02:09:30', 1, '15402860', 'NCB'),
('TC35072894', 'DG90316034', 'KH61949720', '2026-01-22 19:20:00', '2026-01-20 19:28:45', 1, '15404134', 'NCB'),
('TC44263993', 'DG33262426', 'KH62980565', '2026-01-22 01:59:00', '2026-01-20 02:05:59', 3, '15402854', 'NCB'),
('TC44742790', 'DG03241757', 'KH62980565', '2026-01-21 04:14:00', '2026-01-20 04:18:22', 3, '15403099', 'NCB'),
('TC47237420', 'DG90316034', 'KH62980565', '2026-01-22 19:20:00', NULL, 0, NULL, NULL),
('TC76523662', 'DG72875773', 'KH29009892', '2026-01-21 18:09:00', '2026-01-20 18:17:29', 3, '15404085', 'NCB'),
('TC86001834', 'DG40292679', 'KH62980565', '2026-01-21 02:50:00', '2026-01-20 02:54:27', 1, '15402937', 'NCB'),
('TC91314702', 'DG72875773', 'KH61949720', '2026-01-21 18:09:00', '2026-01-20 18:15:06', 3, '15404081', 'NCB'),
('TC99769886', 'DG03241757', 'KH61949720', '2026-01-21 04:14:00', '2026-01-20 04:17:07', 1, '15403096', 'NCB');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `phieuthanhtoantiencoc`
--
ALTER TABLE `phieuthanhtoantiencoc`
  ADD CONSTRAINT `phieuthanhtoantiencoc_ibfk_1` FOREIGN KEY (`maphiendg`) REFERENCES `phiendaugia` (`maphiendg`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `phieuthanhtoantiencoc_ibfk_2` FOREIGN KEY (`makh`) REFERENCES `taikhoan` (`matk`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
