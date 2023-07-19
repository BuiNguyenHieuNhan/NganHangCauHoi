-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th7 13, 2023 lúc 09:18 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai`
--

DROP TABLE IF EXISTS `bai`;
CREATE TABLE IF NOT EXISTS `bai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `chuong_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai`
--

INSERT INTO `bai` (`id`, `ten`, `created_at`, `updated_at`, `chuong_id`, `status`) VALUES
(1, 'Mô hình tổng quát của máy tính cá nhân PC', '2023-06-05 16:20:43', '2023-07-05 08:10:47', 2, 1),
(2, 'Bài kết môn', '2023-06-08 17:45:45', '2023-07-06 11:23:49', 3, 1),
(0, '', '2023-06-22 18:53:05', '2023-06-22 18:53:10', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

DROP TABLE IF EXISTS `cauhoi`;
CREATE TABLE IF NOT EXISTS `cauhoi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a` text COLLATE utf8_unicode_ci,
  `b` text COLLATE utf8_unicode_ci,
  `c` text COLLATE utf8_unicode_ci,
  `d` text COLLATE utf8_unicode_ci,
  `e` text COLLATE utf8_unicode_ci,
  `dapandung` text COLLATE utf8_unicode_ci NOT NULL,
  `mucdo` int(11) NOT NULL,
  `bai_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nguoidung_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`id`, `noidung`, `hinhanh`, `a`, `b`, `c`, `d`, `e`, `dapandung`, `mucdo`, `bai_id`, `status`, `created_at`, `updated_at`, `nguoidung_id`) VALUES
(1, 'Ổ cứng HDD lưu trữ dữ liệu nhờ vào ?', NULL, 'Transistor', 'Các hạt từ tính trên đĩa từ', 'Đầu đọc/ghi', 'Motor trục quay', NULL, 'Các hạt từ tính trên đĩa từ', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-13 13:24:10', 1),
(2, 'Thuật ngữ FDD (ổ đĩa mềm) trong máy tính là viết tắt của cụm từ nào?', NULL, 'Flash Disk Drive', ' Floppy Disk Drive', 'Flash Disk Dive', 'Floppy Drive Disk', NULL, 'Floppy Disk Drive', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(3, 'Bộ nguồn của máy tính Desktop có chức năng chính là?', NULL, 'Thay đổi cường độ dòng điện', 'Tổng hợp điện áp', ' Biến đổi dòng điện AC sang DC', 'Thay đổi hiệu điện thế dòng điện', NULL, 'Biến đổi dòng điện AC sang DC', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(4, 'Một máy tính server có địa chỉ IP: 192.168.1.17/28. Máy tính này có kết nối với một máy in và được chia sẽ trong mạng cục bộ. Máy tính có địa chỉ IP nào sau đây có thể kết nối với máy in trên?', NULL, '192.168.1.19/28', '192.168.1.15/28', '192.168.1.13/28', '192.168.1.11/28', NULL, '192.168.1.19/28', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(5, 'Đổi 23 hệ (8) sang hệ (2) được?', NULL, '10011 (2) ', '10001 (2)', '10111 (2)', '11111 (2)', NULL, '10011 (2) ', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(6, 'Đổi 1A hệ (16) sang hệ (10) được', NULL, '20 (10)', '23 (10)', ' 26 (10)', '29 (10)', NULL, '26 (10)', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(7, 'Đâu không phải là thiết bị nội vi?', NULL, 'Scanner', ' CPU', ' RAM', 'Chipset Nam', NULL, 'Scanner', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(8, 'Thiết bị xử lý trong Desktop là?', NULL, 'CPU', 'VRAM', ' Cache', '3 đáp án trên đều đúng', NULL, 'CPU', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(9, 'Chân 1,3 trên cụm chân Front Panel 9 chân dùng để kết nối với?', NULL, 'Power SW', 'HDD Led', ' Power Led', 'Reset SW', NULL, 'HDD Led', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(10, 'Có những cách phân loại vi xử lý nào', NULL, 'Theo công nghệ chế tạo', 'Theo mục đích sử dụng CPU', 'Câu a và b đều đúng', 'Câu a và b đều sai', NULL, 'Câu a và b đều đúng', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(11, 'Dây màu vàng trên jack cắm nguồn chính của bộ nguồn cung cấp điện áp bao nhiên vôn?', NULL, '3.3V', '5V', ' 0V', '12V', NULL, '12V', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(12, 'Thông số kỹ thuật của một CPU có ghi Intel, LGA 1150, 3.70 GHz, 2 Cores – 4 Threads, 3 MB Cache, Intel HD Graphics. Phát biểu nào sau đây sai?', NULL, 'CPU của hãng Intel, card đồ họa onboard', 'Socket dùng để cắm CPU là LGA1150', 'CPU không sử dụng công nghệ Dual Cores', 'Tốc độ xử lý của CPU là 3.7GHz', NULL, 'CPU không sử dụng công nghệ Dual Cores', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(13, 'Công nghệ Extended Memory 64 (EM64T) là công nghệ gì?', NULL, 'Tốc độ truyền dữ liệu đạt tối đa 64GB/s', 'Đường truyền bus có độ dài 64-bit', 'Mã hoá địa chỉ có độ dài 64-bit', '3 đáp án trên đều sai', NULL, ' Đường truyền bus có độ dài 64-bit', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(14, 'Đâu là module khe cắm RAM DDRII dành cho Desktop?', NULL, 'RIMM', 'DIMM', 'SIMM', 'SODIMM', NULL, 'DIMM', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(15, 'Trọng các bộ nhớ sau, bộ nhớ nào có tốc độ truy xuất cao nhất?', NULL, 'EPROM', 'Cache', 'SDR SDRAM', 'DRAM', NULL, 'Cache', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(16, 'Cổng dùng để kết nối với các thiết bị trình chiếu là cổng?', NULL, 'IEEE 1394', 'DVI', ' Serial', 'PS/2', NULL, ' DVI', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(17, 'Đổi 777 hệ (8) sang hệ (16) được', NULL, '1AA (16) ', '1FF (16)', '1BB (16)', '1DD (16)', NULL, '1FF (16)', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(18, 'Đường bus kết nối giữa CPU và chipset Bắc gọi là?', NULL, 'Back Side Bus', 'Front Side Bus', 'System Bus', ' Cả 3 câu đều sai', NULL, ' Front Side Bus', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(19, 'Đâu là các thành phần cấu tạo vi xử lý?', NULL, 'RAM, Register', ' ALU, FPU', ' Register, VRAM', 'Register, BUS', NULL, 'ALU, FPU', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(20, 'Đơn vị đo tốc độ làm việc của CPU là?', NULL, 'byte/s', 'KB/s', 'hz', ' bit', NULL, 'hz', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(21, 'Một bộ nhớ RAM có tốc độ Bus là 1066MHz, độ rộng đường truyền là 64 bit, hệ thống RAM sử dụng công nghệ Dual Channel. Cho biết băng thông của bộ nhớ RAM trên?', NULL, '17056 MBps', ' 9600 Mbps', '34128 MBps', '2700 Mbps', NULL, '17056 MBps', 1, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(22, 'Mỗi sector trên ổ cứng HDD có kích thước bao nhiêu?', NULL, '256 Byte', '384 Byte', '512 Byte', '512 KB', NULL, '512 Byte', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(23, 'Đâu là tên của một hệ thống quản lý tập tin trên ổ cứng?', NULL, 'FTP', 'NAT', ' CLUSTER', 'NTFS', NULL, 'NTFS', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(24, 'Công nghệ siêu phân luồng để tăng tốc độ xử lý trung bình trên CPU là?', NULL, 'Dual ROM', 'Turbo Boost', 'Hyper Threading', ' Dual Core', NULL, 'Hyper Threading', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(25, 'Đổi 10101111 hệ (2) sang hệ (10) được?', NULL, '135 (10)', '155 (10)', '175 (10)', '195 (10)', NULL, '175 (10)', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(26, 'RAM DDR2 trên mainboard Desktop có bao nhiêu chân pin?', NULL, '168 chân', ' 200 chân', '184 chân', '240 chân', NULL, '240 chân', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(27, 'Công nghệ RAID áp dụng cho thành phần nào trong máy tính?', NULL, 'Cổng PCI ', ' Ổ cứng', 'Cổng VGA', 'RAM', NULL, 'Ổ cứng', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(28, 'RAM DDRII cần điện áp bao nhiêu để hoạt động?', NULL, '2.5V ', '3.3V', '1.8V', '1.5V', NULL, '1.8V', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(29, 'Một thanh RAM có ghi: 16 GB PC4-17000 SODIMM 1.2V. Phát biểu nào sau đây là sai?', NULL, 'Dung lượng RAM là 16384 MB', 'Băng thông RAM là 17000 MBps', 'Thanh RAM dùng cho Desktop', 'Điện áp hoạt động là 1.2 V', NULL, 'Thanh RAM dùng cho Desktop', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(30, 'Có những loại bộ nhớ RAM nào?', NULL, 'SRAM', ' DRAM', 'ERAM', 'Câu a và b đúng', NULL, 'Câu a và b đúng', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(31, 'Trong các thiết bị lưu trữ HDD, USB 2.0, SSD, FDD, thiết bị nào có tốc độ đọc ghi dữ liệu cao nhất?', NULL, 'FDD', ' HDD', 'USB 2.0', ' SSD', NULL, 'SSD', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(32, 'Cache L1 trong CPU lưu trữ những dữ liệu gì?', NULL, 'Data và Instruction', ' Chương trình BIOS', 'Lệnh điều khiển CU', 'Cả 3 câu đều sai', NULL, 'Data và Instruction', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(33, 'Xung nhịp (clock) trên máy tính được tạo ra từ?', NULL, 'IC SIO', 'Cache', 'Thạch anh và Cache', 'IC clockgen và thạch anh', NULL, 'IC clockgen và thạch anh', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(34, 'Đơn vị đo tốc độ truyền dữ liệu “Megabit per second” được ký hiệu là?', NULL, 'MBps ', 'mBps', 'MBpS', 'Mbps', NULL, 'Mbps', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(35, 'RAM lưu trữ dữ liệu nhờ vào?', NULL, 'Các hạt từ tính trên đĩa từ', 'Tính phân cực của tụ hóa', 'Trở kháng của điện trở', 'Trạng thái của transistor', NULL, 'Trạng thái của transistor', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(36, 'Dây truyền dữ liệu chuẩn SATA có bao nhiêu chân pin?', NULL, '5', '7', '9', '11', NULL, '7', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(37, 'Hệ thập lục phân sử dụng các chữ số từ 0 đến 9 và những chữ cái nào để biểu diễn dữ liệu?', NULL, 'A, B, C, D, E, G', 'A, B, C, D, E, F, G', ' A, B, C, D, E, F', ' A, B, C, D, E, F, G, H', NULL, 'A, B, C, D, E, F', 2, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(38, 'Bộ nguồn của máy tính PC tạo ra các mức điện áp một chiều nào?', NULL, '12V', '5V, 12V', '3.3V, 5V', '12V, 5V, 3.3V', NULL, '12V, 5V, 3.3V', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(39, 'Jack cắm molex 4 chân của bộ nguồn ATX cấp nguồn cho?', NULL, 'RAM', 'Mainboard', ' HDD SATA', 'HDD ATA', NULL, 'HDD ATA', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(40, 'IC SIO trên mainboard Desktop dùng để làm gì?', NULL, 'Điều khiển Chipset Nam', ' Điều khiển card mạng', 'Điều khiển card âm thanh', ' Điều khiển nguồn', NULL, 'Điều khiển nguồn', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(41, 'Cổng USB type A có bao nhiêu chân?', NULL, '3 chân', ' 4 chân', '7 chân', '8 chân', NULL, ' 4 chân', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(42, 'Lệnh cd.. trong CMD có nghĩa là:', NULL, 'Tạo thư mục', 'Trở về thư mục gốc', 'Trở về thư mục cha', 'Thay đổi ổ đĩa hiện hành', NULL, 'Trở về thư mục cha', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(43, 'Lệnh nào sau đây để tạo tập tin trong command prompt?', NULL, 'COPY CON', ' COPY +', 'MD', 'CD', NULL, 'COPY CON', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(44, 'Người đưa ra nguyên lý máy tính điện tử là?', NULL, 'Pascal', ' Leibnitz', 'Thomat', 'Von Newmann', NULL, 'Von Newmann', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(45, 'Chip cầu Nam còn có tên là:', NULL, 'ICH', 'SIO', 'GMCH', 'NBC', NULL, 'ICH', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(46, 'Chức năng cơ bản của vi xử lý là?', NULL, 'Lưu trữ dữ liệu tạm thời', 'Nhận tín hiệu hình ảnh', ' Xử lý tín hiệu âm thanh', 'Đọc lệnh và thực thi lệnh', NULL, 'Đọc lệnh và thực thi lệnh', 3, 1, 1, '2023-07-07 08:54:23', '2023-07-07 08:54:23', 1),
(47, 'Chọn khai báo đúng:  ', NULL, 'float a; b;', 'int a; b;', 'int a; float b;', 'int a, float b;', NULL, 'int a; float b;', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(48, 'Cho biết dòng lệnh nào bị báo lỗi?<br />\r\nusing namespace std;<br />\r\nvoid main() {<br />\r\nfloat a; cout<<\" Nhap 1 so : \"; // 1<br />\r\ncin>>a; // 2<br />\r\nif (a >= 0) cout<', NULL, 'dòng //1', 'dòng //2', 'dòng //3', 'Cả 3 câu lệnh đều lỗi', NULL, 'Cả 3 câu lệnh đều lỗi', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-13 06:49:16', 6),
(49, 'Để xuống dòng và đưa con trỏ về đầu dòng?', NULL, 'cout << \"endl\";', 'cout << \\n;', 'câu a và câu b sai ', 'câu a và câu b đúng', NULL, 'câu a và câu b sai ', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(50, 'Kết quả xuất ra của chương trình sau?<br />\r\nusing namespace std;<br />\r\n#include <iostream> void main() {<br />\r\nint x = 6,<br />\r\ny = 4;<br />\r\nx = x/y;<br />\r\ny--;<br />\r\ncout << x+y;<br />\r\n} </iostream>', NULL, '1', '2', '3', '4', NULL, '4', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-13 06:49:51', 6),
(51, 'Với các khai báo sau\nint   n, m; float  x, y;\nthì lệnh nào dưới đây là sai ?\n', NULL, 'n = x / 4;', 'm = y % 3;', 'x = m / 5 ;', 'y = n % 2;', NULL, 'm = y % 3;', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(52, 'Cho biết giá trị của b sau đoạn chương trình:\nint a = 3, b =(a > 1) ? 1 : 2;\nb += 1; \n', NULL, '0', '1', '2', '3', NULL, '2', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(53, 'Cho biết kết quả của đoạn chương trình sau?\nint a = 4;\nswitch (a / 2)\n{ case 1: a = a + 1;\n case 2: a = a - 2; \n default: a = a / 3;\n}\ncout << a;\n', NULL, '5', '2', '1', '0', NULL, '0', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(54, 'Cho biết kết quả của đoạn chương trình sau?\nint a = 14%4-1;\nint  b = a+1;\nif (a<0)  \n cout<<b;\nelse  \n if (b>1) cout<<a;\n else cout<<a+b;\n', NULL, '0', '1', '2', '3', NULL, '1', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(55, 'Cho biết kết quả của đoạn chương trình sau đây nếu lần lượt nhập vào 1, 5, -4, 3, 0\nint a = 0, d = 0;\ndo\n{ cin >> a;\n if (a > 0) d++;\n}while (a!=0);\ncout << d;\n', NULL, '3', '4', '7', '10', NULL, '3', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(56, 'Cho biết kết quả của đoạn chương trình sau?\nint  a=10, s=0;\nwhile (s<20)\n   {  s = s+a;\n      a++;\n   }\ncout << s;\n', NULL, '11', '12', '21', '33', NULL, '21', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(57, 'Lệnh nào sau đây để xuất giá trị vào hai biến a và b:', NULL, 'cout<<a,b;', 'cout>>a,b;', 'cout<<a<<b;', 'cout>>a>>b;', NULL, 'cout<<a<<b;', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(58, 'Cho biết kết quả của đoạn chương trình sau đây nếu nhập vào 246 \nint n, a, b=0;\ncin>>n;\nwhile (n>0)\n{  a=n%10;\n b=b+a;\n n=n/10;\n}\ncout<<b;\n', NULL, '3', '6', '10', '12', NULL, '12', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(59, 'Cho biết kết quả của đoạn chương trình sau ?\nfloat  LT=7;\nfloat  TH=4;\nif(LT>=5 && TH>=5) cout << \"Dau\";\nelse if (LT<5) cout << \"Thi lai LT\";\nelse if (TH<5) cout << \"Thi lai TH\";\nelse cout << \"Rot\";\n', NULL, 'Dau', 'Thi lai LT', 'Thi lai TH', 'Rot', NULL, 'Thi lai TH', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(60, 'Câu lệnh nào sau đây dùng để gán giá trị của biến a cho biến b: ', NULL, 'b = a;', 'b == a ;', 'a = b; ', 'a == b;', NULL, 'b = a;', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(61, 'Cho biết kết quả của đoạn chương trình sau ?\nint n = 4;\nswitch (n % 2)\n{\n case 1: n--; break;\n case 2: n++;\n default: n = n % 3;\n}\ncout << n;\n', NULL, '1', '2', '4', '6', NULL, '1', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(62, 'Kết quả xuất ra của chương trình sau ?\nint n = 6, m = 5;\nfloat  x = 16;\ncout << n/m << \" \" << x/m;\n', NULL, '1   3', ' 1   3.2', '1.2   3.2', '1.2   3', NULL, '1   3.2', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(63, 'Cho biết dòng lệnh nào bị lỗi?\nusing namespace std;\n#include<iostream>\nvoid main()\n{\n int  n, y;\n cin >> n; // 1\n for (i=1; i<=n; i++) // 2\n  y = y + i; // 3\n cout << \"Tong =\" << y; // 4\n}\n', NULL, 'dòng //1', 'dòng //2', 'dòng //3', 'dòng //4', NULL, 'dòng //2', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(64, 'Cho dòng chữ Lap trinh C sẽ in ra bao nhiêu lần: \nint   n=3, m=6 ;\nfor (int a=1; a<=n; a++);\n for (int b=1; b<=m; b++)\n  cout<<\"Lap trinh C\";\n', NULL, '3', '6', '18', '1', NULL, '6', 1, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(65, 'Cho biết kết quả của đoạn chương trình sau nếu lần lượt nhập 4, 7, 5 ?\nint a,b,c,x;\ncin>>a>>b>>c;\nif(a > b) x=a;\nelse  x=b;\nif(c > x) x=c;\ncout<<x;\n', NULL, '4', '7', '5', 'Tất cả đều sai', NULL, '7', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(66, 'Cho biết kết quả của đoạn chương trình sau ?\nint  i, n = 5, t = 0;\nfor (i = 1; i<n; i++)\n if (i %2 !=0) t = t + i;\ncout << t;\n', NULL, '0', '4', '9', '10', NULL, '4', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(67, 'Cho biết kết quả của đoạn chương trình sau:\nint s=5, n=0;\nwhile (s<0)\n{   n=n+s;\n    s++;\n}\ncout<<n;\n', NULL, '15', '35', '0', 'Tất cả đều sai', NULL, '0', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(68, 'Cho biết kết quả của đoạn chương trình sau:\nint   n=10;\nfor (int a=1; a<n; a=a+2) \n cout<< a <<\"  \";\n', NULL, '1  3  5  7  9', ' 9  7  5  3  1', '1  2  3  4  5  6  7  8  9', '9  8  7  6  5  4  3  2  1', NULL, '1  3  5  7  9', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(69, 'Cho biết kết quả của đoạn chương trình sau ?\nint  a=3, b=7;\nif (a<b) cout<<\"b-a\"; \nelse cout<<a+b;\n', NULL, '-4', '10', '4', 'Tất cả đều sai', NULL, 'Tất cả đều sai', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(70, 'Cho biết kết quả TT, nếu nhập vào 5000 và 8\nint DG, SL, TT;\ncin>>DG>>SL;\nTT=DG*SL;\nif (SL>=5||TT>100000) TT=TT*11/10; \ncout<<TT;\n', NULL, '40000', 'xuất ra 36000', '44000', 'tất cả đều sai   ', NULL, '44000', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(71, 'Cho biết kết quả của đoạn chương trình sau nếu lần lượt nhập vào 8, 1, 5, 4, 6, -3\nint n=0, x;\ndo \n{  cin>>x;\n   n=n+x; \n}while(x>0);\ncout<<n;\n', NULL, '24', '5', '6', '21', NULL, '21', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(72, 'Câu lệnh nào để kiểm tra biến T có phải là điểm số hợp lệ hay không: ', NULL, 'if(T>=0)&&(T<=10) cout<< \"hop le\";', 'if(T>=0||T<=10) cout<<\"hop le\";', ' if(T>=0&&T<=10) cout<<\"hop le\";', ' if(0<=T<=10) cout<<\"hop le\";', NULL, 'if(T>=0&&T<=10) cout<<\"hop le\";', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(73, 'Cho biết kết quả của đoạn chương trình sau ?\nint a=2, b=1;\nif (a>b) a=a-b;\nelse  b=b+a;\ncout<<a+b;\n', NULL, '1', '2', '3', 'không thực hiện vì có lỗi  ', NULL, '2', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(74, 'Cho biết kết quả của chương trình sau:\nint  s=0;\nfor(int  i=1; i<10; i++)\n if(i%2==0)  s=s+i;\ncout<<s; \n', NULL, '20', '25', '45', '55', NULL, '20', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(75, 'Cho biết kết quả của đoạn chương trình sau ?\nint a=1, b=2;\nif (a<b)  \n  if (a>1) a++;\n  else b++;\nelse  a=a+b;\ncout<<a<<\" \"<<b;\n', NULL, '1  3', '2  2', '2  3', '3  1 ', NULL, '3  1 ', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(76, 'Khi trình bày thuật toán bằng lưu đồ thì thao tác đặt điều kiện dùng ký hiệu là', NULL, 'hình chữ nhật\n', 'hình thoi', 'hình elip', 'hình bình hành', NULL, 'hình thoi', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(77, 'Chọn câu lệnh đúng để kiểm tra biến a có phải là số lẻ hay không:', NULL, 'if(a/2==1)  cout<<a<<\"So Le\";', 'if(a/2!=0)  cout<<a<<\"So Le\";', ' if(a%2!=1)  cout<<a<<\"So Le\";', ' if(a%2!=0)  cout<<a<<\"So Le\";', NULL, ' if(a%2!=0)  cout<<a<<\"So Le\";', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(78, 'Chọn câu lệnh đúng:  ', NULL, 'float a, a=0;', 'float a=0;', 'const float a; ', 'float a==0;', NULL, ' float a=0;', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(79, 'Cho biết kết quả của đoạn chương trình sau nếu lần lượt nhập vào là 3, 8, 5\nint a, b, c;\ncin>>a>>b>>c;\nfloat t=(a+b+c)/3;\nif (a>t)  cout<<a<<\"  \";\nif (b>t)  cout<<b<<\"  \";\nif (c>t)  cout<<c<<\"  \";\n', NULL, '3', '5', '3 5', '8 5', NULL, '3', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(80, 'Cho biết kết quả của đoạn chương trình sau nếu lần lượt nhập vào 1, 5, 4, 3, 0\nint   m=0, x;\ndo \n{  cin>>x;\n   if(m>x) m=x; \n}while(x>0);\ncout<<m;\n', NULL, '13', '5', '4', '0', NULL, '0', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(81, 'Cho biết kết quả của chương trình sau \nint  n = 10, s;\nfor (s=1; ; n--)\n{\n s = s*n;\n if (s>100) break;\n}\ncout << s;\n', NULL, '0', '8', '90', '720', NULL, '720', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(82, 'Cho biết kết quả của đoạn chương trình sau nếu nhập vào 51\nint   n, a, b;\ncin>>n; \na=n%10; \nb=n/10; \ncout<<b*10 + a;\n', NULL, '15', '6', '51', 'Tất cả đều sai', NULL, '51', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(83, 'Cho biết kết quả của biểu thức:\n(10%3+4)%5\n', NULL, '0', '1', '2', '3', NULL, '0', 2, 2, 1, '2023-07-07 09:20:40', '2023-07-07 09:20:40', 6),
(84, 'Cho biết kết quả của đoạn chương trình sau đây nếu nhập vào biến s là 11 \nint s, n = 0;\ncin >> s;\nwhile (s>0)\n{\n if (s%2==0 || s%3==0) n++;\n s--;\n}\ncout << n;\n', NULL, '6', '7', '8', '9', NULL, '7', 3, 2, 1, '2023-07-07 09:20:40', '2023-07-07 12:40:34', 6),
(85, 'Cho biết kết quả của đoạn chương trình sau nếu lần lượt nhập vào 8, 1, 5, 4, 6, 0\nint   n = 0, d = 0, x;\ndo\n{\n cin >> x;\n if (x % 2 == 0) \n { \n  d++;  \n  n = n + x;\n }\n} while (x>0);\ncout << n/d; \n', NULL, '  4.8', '4', '5', 'Tất cả đều sai', NULL, '4', 3, 2, 1, '2023-07-07 09:20:40', '2023-07-07 12:40:32', 6),
(86, 'Cho đoạn code, kết quả của đoạn code là gì???<br />\r\nint a = 2;<br />\r\nswitch (a)<br />\r\n{<br />\r\ncase 0:a = a + 1; break;<br />\r\ncase 1:a = a + 2; break;<br />\r\ncase 2:a = a + 3; break;<br />\r\ndefault:a = a + 4; break;<br />\r\n}<br />\r\ncout << a;<br />\r\n ', NULL, '3', '4', '5', '6', NULL, '5', 1, 1, 1, '2023-07-13 13:14:47', '2023-07-13 13:14:47', 1),
(87, 'TCP được viết tắt bởi từ ?', NULL, 'Transmission Control Protocol', 'Transport Control Protocol', 'Transport Control Processing', 'Transmission Control Processing', NULL, 'Transmission Control Protocol', 1, 1, 1, '2023-07-13 20:27:34', '2023-07-13 20:27:34', 1),
(90, 'Hàm nào dưới đây là hàm tập hợp trong SQL?', NULL, 'AVG', 'LEN', 'JOIN', 'LEFT', NULL, 'AVG', 2, 1, 1, '2023-07-13 20:49:08', '2023-07-13 20:49:08', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
CREATE TABLE IF NOT EXISTS `chucvu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenchucvu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`id`, `tenchucvu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, '2023-04-23 16:01:51', '2023-04-23 16:01:51'),
(2, 'Người dùng', 1, '2023-04-23 16:02:11', '2023-07-05 03:45:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuong`
--

DROP TABLE IF EXISTS `chuong`;
CREATE TABLE IF NOT EXISTS `chuong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monhoc_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuong`
--

INSERT INTO `chuong` (`id`, `ten`, `updated_at`, `created_at`, `monhoc_id`, `status`) VALUES
(0, '', '2023-07-05 04:40:38', '2023-07-05 04:40:32', 0, 1),
(2, 'Lắp ráp phần cứng máy tính', '2023-07-05 04:48:41', '2023-07-05 04:48:41', 1, 1),
(3, 'KIỂU DỮ LIỆU CẤU TRÚC', '2023-07-06 10:42:20', '2023-07-06 10:42:20', 2, 1),
(4, 'TỔNG QUAN VỀ CÁC THÀNH PHẦN TRONG MÁY TÍNH PC', '2023-07-13 19:40:52', '2023-07-13 19:40:52', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de`
--

DROP TABLE IF EXISTS `de`;
CREATE TABLE IF NOT EXISTS `de` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `de` int(11) DEFAULT NULL,
  `trungbinh` int(11) DEFAULT NULL,
  `kho` int(11) DEFAULT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `mon_id` int(11) DEFAULT NULL,
  `chuong_id` int(11) DEFAULT NULL,
  `bai_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `de`
--

INSERT INTO `de` (`id`, `ten`, `soluong`, `de`, `trungbinh`, `kho`, `nguoidung_id`, `mon_id`, `chuong_id`, `bai_id`, `status`, `created_at`, `updated_at`) VALUES
('NN-PCMT2023-07-0712:30:38', 'Thi học kì II', 20, 10, 5, 5, 6, 1, 2, 1, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-NMLT2023-07-0712:40:36', 'Đề 45\'', 10, 10, 0, 0, 6, 2, 3, 2, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('TT2023-07-1320:37:48', 'Thi học kì II', 20, 10, 5, 5, 1, 1, 2, 1, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:40:40', 'Thi học kì II', 20, 10, 5, 5, 1, 1, 2, 1, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:41:07', 'Thi học kì II', 20, NULL, NULL, NULL, 1, 1, 2, 1, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:49:45', 'Thi học kì II', 10, 5, 5, 0, 8, 2, 2, 1, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_cauhoi`
--

DROP TABLE IF EXISTS `de_cauhoi`;
CREATE TABLE IF NOT EXISTS `de_cauhoi` (
  `id_de` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `de_cauhoi`
--

INSERT INTO `de_cauhoi` (`id_de`, `id_cauhoi`, `status`, `created_at`, `updated_at`) VALUES
('NN-PCMT2023-07-0712:30:38', 12, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 8, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 2, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 18, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 6, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 16, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 5, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 21, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 14, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 15, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 26, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 36, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 31, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 29, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 34, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 45, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 39, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 41, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 38, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-PCMT2023-07-0712:30:38', 44, 1, '2023-07-07 12:30:38', '2023-07-07 12:30:38'),
('NN-NMLT2023-07-0712:40:36', 57, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 60, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 61, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 50, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 56, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 47, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 59, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 48, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 64, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('NN-NMLT2023-07-0712:40:36', 55, 1, '2023-07-07 12:40:36', '2023-07-07 12:40:36'),
('TT2023-07-1320:37:48', 10, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 21, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 86, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 11, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 87, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 6, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 5, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 20, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 15, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 12, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 37, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 28, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 33, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 24, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 35, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 44, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 41, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 42, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 39, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:37:48', 43, 1, '2023-07-13 20:37:48', '2023-07-13 20:37:48'),
('TT2023-07-1320:40:40', 12, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 13, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 15, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 5, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 2, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 3, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 17, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 16, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 1, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 4, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 23, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 37, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 22, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 29, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 30, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 40, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 42, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 41, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 45, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:40:40', 39, 1, '2023-07-13 20:40:40', '2023-07-13 20:40:40'),
('TT2023-07-1320:41:07', 1, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 2, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 3, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 4, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 5, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 6, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 7, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 8, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 9, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 10, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 11, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 12, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 13, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 14, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 15, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 16, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 17, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 18, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 19, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:41:07', 20, 1, '2023-07-13 20:41:27', '2023-07-13 20:41:27'),
('TT2023-07-1320:49:45', 15, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 19, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 16, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 87, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 6, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 90, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 35, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 30, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 25, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45'),
('TT2023-07-1320:49:45', 31, 1, '2023-07-13 20:49:45', '2023-07-13 20:49:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_nguoidung`
--

DROP TABLE IF EXISTS `de_nguoidung`;
CREATE TABLE IF NOT EXISTS `de_nguoidung` (
  `de_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguoidung_id` int(11) DEFAULT NULL,
  `diem` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `de_nguoidung`
--

INSERT INTO `de_nguoidung` (`de_id`, `nguoidung_id`, `diem`, `status`, `created_at`, `updated_at`) VALUES
('NN-NMLT2023-07-0712:40:36', 6, '3', 1, '2023-07-07 13:02:14', '2023-07-07 13:02:14'),
('NN-PCMT2023-07-0712:30:38', 8, '1.5', 1, '2023-07-13 20:50:20', '2023-07-13 20:50:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linhvuc`
--

DROP TABLE IF EXISTS `linhvuc`;
CREATE TABLE IF NOT EXISTS `linhvuc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `ten`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CNTT', 0, '2023-05-29 18:23:44', '2023-07-13 13:42:08'),
(2, 'Kinh tế', 1, '2023-05-29 18:25:25', '2023-05-29 18:25:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

DROP TABLE IF EXISTS `monhoc`;
CREATE TABLE IF NOT EXISTS `monhoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  `id_linhvuc` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`id`, `ten`, `id_linhvuc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PHẦN CỨNG VÀ MẠNG MÁY TÍNH', 1, 0, '2023-07-04 21:45:44', '2023-07-13 13:42:23'),
(2, 'Nhập môn lập trình', 1, 1, '2023-07-06 03:40:10', '2023-07-06 03:40:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mucdo`
--

DROP TABLE IF EXISTS `mucdo`;
CREATE TABLE IF NOT EXISTS `mucdo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mucdo`
--

INSERT INTO `mucdo` (`id`, `ten`) VALUES
(1, 'Dễ'),
(2, 'Trung bình'),
(3, 'Khó');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ma_chucvu` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sdt` (`sdt`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `hoten`, `sdt`, `username`, `password`, `ma_chucvu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hiếu Nhân', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '2023-04-23 16:00:02', '2023-06-25 17:02:34'),
(4, 'Nguyễn Văn A', '0779984041', 'giangvien1', '1', 2, 1, '2023-05-05 02:52:05', '2023-07-05 03:49:23'),
(7, 'Nguyễn Văn C', '0123456798', 'user2', '7e58d63b60197ceb55a1c487989a3720', 2, 1, '2023-06-25 16:35:52', '2023-06-25 16:37:19'),
(6, 'Nguyễn Văn B', '0123456789', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 2, 1, '2023-06-25 09:19:29', '2023-06-25 09:19:29'),
(8, 'Huỳnh Văn B', '1478523691', 'pastaman', 'cf27f62cd582991e64c71ccec497364d', 2, 1, '2023-07-04 06:35:39', '2023-07-04 06:35:39'),
(9, 'Nguyễn Văn D', '1234567890', 'user4', '3f02ebe3d7929b091e3d8ccfde2f3bc6', 2, 1, '2023-07-10 19:32:04', '2023-07-10 19:32:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
