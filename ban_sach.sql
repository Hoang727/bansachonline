-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 27, 2024 lúc 04:34 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ban_sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(144, 127, 214, 1, 214, 214.00, '15'),
(145, 128, 224, 1, 155, 155.00, '15'),
(146, 129, 233, 1, 100, 100.00, '15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Bọc sách', 10),
(16, 'Gói quà tặng', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `dienthoai` varchar(50) NOT NULL,
  `hinhthucthanhtoan` varchar(100) NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(127, 'thanh@gmail.com', '2021-06-26', 'Thanh Truong', 'Hà Nội', '1234567890', 'ATM', 224.00),
(128, 'thanh@gmail.com', '2024-02-26', 'Thanh Truong', 'sad', '1234567890', 'Live', 165.00),
(129, 'thanh@gmail.com', '2024-02-26', 'Thanh Truong', '21312', '1234567890', 'ATM', 110.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `DienThoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('thanh@gmail.com', 123, 'Thanh Truong', '1234567890'),
('tungvu@gmail.com', 123, 'Vũ Đình Tùng', '0123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(15, 'NXB Trẻ'),
(16, 'NXB Tổng hợp TP.HCM'),
(17, 'NXB Thế Giới'),
(18, 'NXB Hội Nhà Văn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `matheloai` bigint(10) NOT NULL,
  `Mota` text NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `tacgia` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `matheloai`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(212, 'Bản Án Chế Độ Thực Dân Pháp', 75, 'DSHCM.jpg\r\n', 15, 10, '<p>&ldquo;Bản &aacute;n chế độ thực d&acirc;n Ph&aacute;p&rdquo; (Le Proc&egrave;s de la Colonisation Fran&ccedil;aise) l&agrave; t&aacute;c phẩm của Hồ Chủ tịch viết bằng tiếng Ph&aacute;p trong khoảng những năm 1921-1925, đăng tải lần đầu ti&ecirc;n năm 1925 tại Paris (thủ đ&ocirc; nước Ph&aacute;p) tr&ecirc;n b&aacute;o Impr&eacute;kor của Quốc tế Cộng sản. T&aacute;c phẩm gồm 12 chương v&agrave; phần phụ lục, với c&aacute;ch h&agrave;nh văn ngắn gọn, s&uacute;c t&iacute;ch, c&ugrave;ng với những sự kiện đầy sức thuyết phục, t&aacute;c phẩm tố c&aacute;o thực d&acirc;n Ph&aacute;p d&ugrave;ng mọi thủ đoạn khốc liệt bắt &ldquo;d&acirc;n bản xứ&rdquo; phải đ&oacute;ng &ldquo;thuế m&aacute;u&rdquo; cho ch&iacute;nh quốc... để &ldquo;phơi th&acirc;y tr&ecirc;n chiến trường ch&acirc;u &Acirc;u&rdquo;; đ&agrave;y đọa phụ nữ, trẻ em &ldquo;thuộc địa&rdquo;; c&aacute;c thống sứ, quan lại thực d&acirc;n độc &aacute;c như một bầy th&uacute; dữ, v.v... T&aacute;c phẩm đ&atilde; g&acirc;y được tiếng vang lớn ngay từ khi ra đời, thức tỉnh lương tri của những con người y&ecirc;u tự do, b&igrave;nh đẳng, b&aacute;c &aacute;i, hướng c&aacute;c d&acirc;n tộc bị &aacute;p bức đi theo con đường C&aacute;ch mạng th&aacute;ng Mười Nga v&agrave; chủ nghĩa M&aacute;c &ndash; L&ecirc;nin, thắp l&ecirc;n ngọn lửa đấu tranh cho độc lập, tự do v&agrave; chủ nghĩa x&atilde; hội của d&acirc;n tộc Việt Nam. Nh&acirc;n hưởng ứng cuộc vận động học tập v&agrave; l&agrave;m theo tấm gương đạo đức Hồ Ch&iacute; Minh, Nh&agrave; xuất bản Trẻ in t&aacute;c phẩm &ldquo;Bản &aacute;n chế độ thực d&acirc;n Ph&aacute;p&rdquo; &ndash; một trong những đỉnh cao của văn chương ch&iacute;nh luận c&aacute;ch mạng.</p>\r\n', '2021-06-26', 0, 0, 'Hồ Chí Minh'),
(213, 'Và Rồi Chẳng Còn Ai - And Then There Were None', 110, 'VRCCA.jpg', 15, 11, '<p>&ldquo;Mười&hellip;&rdquo; Mười người bị lừa ra một h&ograve;n đảo nằm trơ trọi giữa biển khơi thuộc vịnh Devon, tất cả được bố tr&iacute; cho ở trong một căn nh&agrave;. T&aacute;c giả của tr&ograve; bịp n&agrave;y l&agrave; một nh&acirc;n vật b&iacute; hiểm c&oacute; t&ecirc;n &ldquo;U.N.Owen&rdquo;. &ldquo;Ch&iacute;n&hellip;&rdquo; Trong bữa ăn tối, một th&ocirc;ng điệp được thu &acirc;m sẵn vang l&ecirc;n lần lượt buộc tội từng người đ&atilde; g&acirc;y ra những tội &aacute;c b&iacute; mật. V&agrave;o cuối buổi tối h&ocirc;m đ&oacute;, một vị kh&aacute;ch đ&atilde; thiệt mạng. &ldquo;T&aacute;m&hellip;&rdquo; Bị kẹt lại giữa mu&ocirc;n tr&ugrave;ng khơi v&igrave; gi&ocirc;ng b&atilde;o c&ugrave;ng nỗi &aacute;m ảnh về một b&agrave;i v&egrave; đếm ngược, từng người, từng người một&hellip; những vị kh&aacute;ch tr&ecirc;n đảo bắt đầu bỏ mạng. &ldquo;Bảy&hellip;&rdquo; Ai trong số mười người tr&ecirc;n đảo l&agrave; kẻ giết người, v&agrave; liệu ai trong số họ c&oacute; thể sống s&oacute;t? &ldquo;Một trong những t&aacute;c phẩm g&acirc;y t&ograve; m&ograve; hay nhất, xuất sắc nhất của Christie.&rdquo; &ndash; Tạp ch&iacute; Observer &ldquo;Kiệt t&aacute;c của Agatha Christie.&rdquo; &ndash; Tạp ch&iacute; Spectator</p>\r\n', '2021-06-26', 1, 94, 'Agatha Christie'),
(214, 'Muôn Kiếp Nhân Sinh Tập 2', 268, 'MKNS.jpg', 16, 12, '<p>T&aacute;c phẩm Mu&ocirc;n Kiếp Nh&acirc;n Sinh tập 1 của t&aacute;c giả Nguy&ecirc;n Phong xuất bản giữa t&acirc;m điểm của đại dịch đ&atilde; thực sự tạo n&ecirc;n một hiện tượng xuất bản hiếm c&oacute; ở Việt Nam. Cuốn s&aacute;ch đ&atilde; khơi dậy những trực cảm tiềm ẩn của con người, l&agrave;m thay đổi g&oacute;c nh&igrave;n cuộc sống v&agrave; thức tỉnh nhận thức của ch&uacute;ng ta giữa một thế giới đang ng&agrave;y c&agrave;ng bất ổn v&agrave; đầy biến động. Ngo&agrave;i việc ph&aacute;t h&agrave;nh hơn 200.000 bản trong 6 th&aacute;ng, chưa kể lượng ph&aacute;t h&agrave;nh Ebook v&agrave; Audio Book qua Voiz-FM, First News c&ograve;n nhận được h&agrave;ng ng&agrave;n tin nhắn, e-mail chuyển lời cảm ơn đến t&aacute;c giả Nguy&ecirc;n Phong. Điều n&agrave;y chứng tỏ sức lan tỏa của cuốn s&aacute;ch đ&atilde; tạo n&ecirc;n một hiện tượng trong văn h&oacute;a đọc của năm 2020.</p>\r\n', '2021-06-26', 1, 214, 'Nguyên Phong'),
(216, 'Hiểu Về Trái Tim (Tái Bản 2019) ', 138, 'image_195509_1_14922.jpg', 16, 12, 'HIỂU VỀ TRÁI TIM – CUỐN SÁCH MỞ CỬA THẾ GIỚI CẢM XÚC CỦA MỖI NGƯỜI  \r\n\r\n“Hiểu về trái tim” là một cuốn sách đặc biệt được viết bởi thiền sư Minh Niệm. Với phong thái và lối hành văn gần gũi với những sinh hoạt của người Việt, thầy Minh Niệm đã thật sự thổi hồn Việt vào cuốn sách nhỏ này.\r\n\r\nXuất bản lần đầu tiên vào năm 2011, Hiểu Về Trái Tim trình làng cũng lúc với kỷ lục: cuốn sách có số lượng in lần đầu lớn nhất: 100.000 bản. Trung tâm sách kỷ lục Việt Nam công nhận kỳ tích ấy nhưng đến nay, con số phát hành của Hiểu về trái tim vẫn chưa có dấu hiệu chậm lại.\r\n\r\nLà tác phẩm đầu tay của nhà sư Minh Niệm, người sáng lập dòng thiền hiểu biết (Understanding Meditation), kết hợp giữa tư tưởng Phật giáo Đại thừa và Thiền nguyên thủy Vipassana, nhưng Hiểu Về Trái Tim không phải tác phẩm thuyết giáo về Phật pháp. Cuốn sách rất “đời” với những ưu tư của một người tu nhìn về cõi thế. Ở đó, có hạnh phúc, có đau khổ, có tình yêu, có cô đơn, có tuyệt vọng, có lười biếng, có yếu đuối, có buông xả… Nhưng, tất cả những hỉ nộ ái ố ấy đều được khoác lên tấm áo mới, một tấm áo tinh khiết và xuyên suốt, khiến người đọc khi nhìn vào, đều thấy mọi sự như nhẹ nhàng hơn…\r\n', '2021-06-26', 1, 110, 'Minh Niệm'),
(218, 'Đừng Chạy Theo Số Đông ', 200, 'image_195509_1_37011.jpg', 17, 12, 'Nếu tất cả mọi người ai cũng làm chủ doanh nghiệp, thì ai sẽ đi làm thuê?\r\n\r\nTôi.\r\n\r\nBởi lúc đó họ sẽ phải đấu giá để có được tôi.\r\n\r\nNhưng điều này không bao giờ xảy ra. Bởi ngay từ trong trứng đến lúc mọc cánh, chúng ta đã được dạy phải làm cho người khác cả đời. Chỉ có 1% được dạy khác.\r\n\r\nBạn không chạy theo số đông.\r\n\r\nBạn LÀ số đông.\r\n\r\nTuy nhiên bạn đừng nhầm lẫn. Cuốn sách này không chỉ nói về vấn đề “làm thuê” hay “làm riêng”. Đây chỉ là một trong những khía cạnh rất nhỏ.\r\n\r\nCuốn sách này muốn làm nổi bật một hệ tư duy ngầm lớn và khủng khiếp hơn thế mà chúng ta không nhận ra. Một sức hút vô hình nhưng mạnh mẽ.', '2021-06-26', 0, 0, 'Kiên Trần'),
(219, 'Nhà Giả Kim (Tái Bản 2020) ', 79, 'image_195509_1_36793.jpg', 18, 12, 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', '2021-06-26', 1, 59, 'Paulo Coelho'),
(220, 'Nhật ký Che Guevara', 72, 'img547_5.jpg', 15, 13, 'Che Guevara không chỉ là người anh hùng của Cuba và các nước châu Mỹ Latin mà ông đã trở thành biểu tượng anh hùng của cả thế giới, đặc biệt là giới trẻ, vì lý tưởng sống cao đẹp, dám xả thân vì chính nghĩa trong cuộc đời ngắn ngủi 39 năm của mình.\r\n\r\nNhật ký được Che viết năm 23 tuổi, khi đang là sinh viên y khoa, thể hiện những trăn trở, suy tư và khát vọng của một chàng trai tài hoa, lãng tử, yêu tự do và thích phiêu lưu mạo hiểm. Che đã kể lại cuộc hành trình cùng người bạn Alberto trên chiếc môtô La Poderosa II 500cc suốt chín tháng rong ruổi qua nhiều quốc gia Mỹ Latin.', '1995-05-17', 1, 67, 'Che Guevara'),
(221, 'Tư duy ngược', 110, 'tuduynguoc.png', 17, 12, 'Tư Duy Ngược\r\n\r\nChúng ta thực sự có hạnh phúc không? Chúng ta có đang sống cuộc đời mình không? Chúng ta có dám dũng cảm chiến thắng mọi khuôn mẫu, định kiến, đi ngược đám đông để khẳng định bản sắc riêng của mình không?. Có bao giờ bạn tự hỏi như thế, rồi có câu trả lời cho chính mình? \r\n\r\nTôi biết biết, không phải ai cũng đang sống cuộc đời của mình, không phải ai cũng dám vượt qua mọi lối mòn để sáng tạo và thành công… Dựa trên việc nghiên cứu, tìm hiểu, chắt lọc, tìm kiếm, ghi chép từ các câu chuyện trong đời sống, cũng như trải nghiệm của bản thân, tôi viết cuốn sách này.\r\n\r\nCuốn sách sẽ giải mã bạn là ai, bạn cần Tư duy ngược để thành công và hạnh phúc như thế nào và các phương pháp giúp bạn dũng cảm sống cuộc đời mà bạn muốn.', '2022-10-01', 1, 82, 'Nguyễn Anh Dũng'),
(222, 'Chúng ta là đàn ông', 100, 'chung-ta-la-dan-ong-steve-senkman.jpg', 16, 12, '<p>Cuốn s&aacute;ch &ldquo;Ch&uacute;ng ta l&agrave; đ&agrave;n &ocirc;ng&rdquo; của Steve Senkman (&ldquo;Мы &ndash; мужчины&rdquo; Стив Шенкман) được dịch v&agrave; xuất bản ở Việt Nam năm 1987, dưới sự kết hợp của Nh&agrave; xuất bản Thế giới M&aacute;txcơva với Nh&agrave; xuất bản Thể dục Thể thao Việt Nam. Những người dịch l&agrave; Phan Bạch Yến[1] v&agrave; Trần Yến Thoa. Được cầm n&oacute; tr&ecirc;n tay lần đầu năm 18 tuổi, từ đ&oacute; m&igrave;nh &ocirc;m cuốn s&aacute;ch n&agrave;y đọc say sưa, v&agrave; n&oacute; gi&uacute;p m&igrave;nh th&agrave;nh một con người kh&aacute;c. Chơi thể thao; x&acirc;y dựng lối sống l&agrave;nh mạnh; n&oacute;i kh&ocirc;ng với thuốc l&aacute;, rượu bia; học c&aacute;ch nghỉ ngơi chủ động; sắp xếp thời gian biểu; c&aacute;c quy tắc học tập v&agrave; l&agrave;m việc khoa học... v&agrave; tuyệt nhất ở chương cuối l&agrave; &ldquo;How to be a gentleman?&rdquo; C&aacute;ch đ&acirc;y mười mấy năm, l&ecirc;n &ldquo;nh&agrave; ngoại&rdquo; ở kh&ocirc;ng c&oacute; chỗ cho mấy ngh&igrave;n cuốn s&aacute;ch, m&igrave;nh phải để tạm cả đống s&aacute;ch to tướng dưới nh&agrave; ch&uacute; em trai. Ri&ecirc;ng cuốn n&agrave;y, &ocirc;ng bạn th&acirc;n thời &ldquo;hậu sinh vi&ecirc;n&rdquo; mượn về, bảo &ldquo;Để tao giữ cho sau ổn định chỗ ở th&igrave; lấy về!&rdquo; M&atilde;i tr&ograve;n một gi&aacute;p mới thực hiện được, kh&ocirc;ng phải l&agrave; &ldquo;thư viện gia đ&igrave;nh&quot; như mong ước, m&agrave; l&agrave; &ldquo;kho s&aacute;ch.&rdquo; Cố giữ được khoảng 4000, vứt đi khoảng 6-7000 v&igrave; nhiều l&yacute; do. Ri&ecirc;ng cuốn n&agrave;y, gọi điện cho &ocirc;ng bạn để đ&ograve;i nhận được c&acirc;u trả lời r&aacute;o hoảnh: &ldquo;L&agrave;m g&igrave; c&ograve;n, lại chẳng ra h&agrave;ng đồng n&aacute;t l&acirc;u rồi!&rdquo; May b&acirc;y giờ học Phật kh&ocirc;ng thấy hận, nhưng với người y&ecirc;u qu&yacute; s&aacute;ch vở như m&igrave;nh, c&acirc;u trả lời đ&oacute; qu&aacute; đau. Lại bỏ c&ocirc;ng nhưng kh&ocirc;ng mấy hi vọng, lượn h&agrave;ng s&aacute;ch cũ. Một ng&agrave;y thấy trong l&ograve;ng c&oacute; g&igrave; ngờ ngợ, kh&ocirc;ng d&aacute;m nghĩ l&agrave; điều g&igrave;. Tranh thủ 10 ph&uacute;t rỗi tạt v&agrave;o một h&agrave;ng, gặp n&oacute;, cầm n&oacute; l&ecirc;n, tay run bắn. Xin ch&agrave;o, người bạn tuổi thanh ni&ecirc;n của t&ocirc;i! Cuốn s&aacute;ch cực kỳ qu&yacute; gi&aacute; cho những ai c&oacute; con trai đang chuẩn bị bước v&agrave;o ngưỡng cửa cuộc đời, n&oacute; c&ograve;n l&agrave; của b&aacute;u cho bất kỳ người đ&agrave;n &ocirc;ng n&agrave;o, ở bất cứ lứa tuổi n&agrave;o với phương ch&acirc;m &ldquo;h&atilde;y l&agrave;m, kh&ocirc;ng c&oacute; g&igrave; l&agrave; qu&aacute; muộn.&rdquo; Đến nay, ngay cả ở Nga, khi m&agrave; Li&ecirc;n X&ocirc; kh&ocirc;ng c&ograve;n nữa, cuốn s&aacute;ch vẫn tiếp tục được t&aacute;i bản nhiều lần do nhu cầu rất lớn của x&atilde; hội đối với n&oacute;. M&igrave;nh đ&atilde; t&igrave;m kiếm rất l&acirc;u cuốn n&agrave;y, thậm ch&iacute; c&oacute; lần tr&ecirc;n một diễn đ&agrave;n bạn n&agrave;o đ&oacute; hỏi, nhưng kh&ocirc;ng c&oacute; ai chia sẻ n&oacute;. Thật may đ&atilde; mua lại được cuốn s&aacute;ch, v&agrave; ngay lập tức ngồi v&agrave;o b&agrave;n, scan để chia sẻ cho mọi người. N&agrave;o, ch&uacute;ng ta h&atilde;y c&ugrave;ng nhau trở th&agrave;nh những người đ&agrave;n &ocirc;ng đ&iacute;ch thực!</p>\r\n', '1987-01-01', 0, 0, 'Steve Senkman'),
(223, 'Trí tuệ Do Thái', 189, '12115657.jpg', 17, 12, 'Trí tuệ Do Thái là một cuốn sách tư duy đầy tham vọng trong việc nâng cao khả năng tự học tập, ghi nhớ và phân tích - những điều đã khiến người Do Thái vượt trội lên, chiếm lĩnh những vị trí quan trọng trong ngành truyền thông, ngân hàng và những giải thưởng sáng tạo trên thế giới.\r\n\r\nTuy là một cuốn sách nhỏ nhưng Trí Tuệ Do Thái lại mang trong mình tri thức về một dân tộc có thể nhỏ về số lượng nhưng vĩ đại về trí tuệ và tài năng. Cuốn sách không chỉ lý giải lý do vì sao những người Do Thái trên thế giới lại thông minh và giàu có, mà còn đặc tả con đường thành công của một người Do Thái - Jerome cùng những triết lý được đúc kết đầy giá trị.\r\n\r\nTrí Tuệ Do Thái không dừng lại ở giới hạn của một cuốn sách triết lý hay kỹ năng. Thông qua Jerome, một kẻ lông bông thích la cà, tác giả đưa người đọc vào một chuyến khám phá về trí tuệ của người Do Thái, từ đó khơi ra những giới hạn để người đọc có thể tự khai phá trí tuệ bản thân với \"Năm nguyên tắc\" và \"Mười lăm gợi ý\". Đây sẽ là những bài học quý giá dành cho những ai muốn tồn tại và phát triển mạnh mẽ, không chỉ với con đường thành công của riêng mình.\r\n\r\nKhông được viết như một cuốn sách kỹ năng khô khan, Trí Tuệ Do Thái được dựng lên bằng một câu chuyện và rồi cũng khép lại với một cái kết mở, nơi những người Do Thái đang không ngừng đối mặt với cuộc sống và chinh phục nó.', '2022-01-01', 1, 151, 'Eran Katz'),
(224, 'Cuộc đấu tranh của tôi', 200, 'mein.jpg', 17, 13, 'Mein Kampf là tựa đề tiếng Đức của quyển sách do Adolf Hitler làm tác giả bắt đầu từ năm 1924, trình bày tư tưởng và cương lĩnh của ông về Đế chế Đức một khi ông ta lên nắm quyền.\r\n\r\nHitler phát động vụ Đảo chính Nhà hàng bia ngày 8 tháng 11 năm 1923 nhưng bị đàn áp một cách đẫm máu, bị án tù bắt đầu từ ngày 1 tháng 4 năm 1924. Án tù này tạo cho Hitler một thời gian tĩnh lặng để suy nghĩ, phân tích và đặt ra những kế hoạch kinh thiên động địa cho tương lai.\r\n\r\nHitler muốn đặt tựa đề cho quyển sách là Bốn năm rưỡi tranh đấu chống lại những dối trá, ngu xuẩn và hèn nhát, nhưng Max Amann, nhân viên quản trị cứng đầu trong ngành xuất bản của Quốc xã, người sẽ lo phát hành quyển sách, phản đối cái tựa nặng nề – và khiến cho sách khó bán chạy – nên đề nghị tựa là Cuộc tranh đấu của tôi (Mein Kampf). Amann cảm thấy thất vọng não nề về nội dung. Thoạt tiên, ông đã hy vọng một câu chuyện cá nhân trong đó Hitler sẽ kể lại bước đường tiến thủ từ một anh \"công nhân\" vô danh ở Wien đến vị thế nổi tiếng cả thế giới. Ít có phần tiểu sử trong quyển sách. Nhà quản trị kinh doanh của Quốc xã cũng mong những chi tiết nội tình của vụ bạo loạn ở nhà hàng bia, tấn kịch và trò nước đôi mà ông chắc chắn sẽ khiến quyển sách thu hút người đọc. Nhưng Hitler đã quá khôn lanh về điểm này, không muốn khơi lại đống tro tàn trong khi Đảng Quốc xã đang bị loại ra ngoài vòng pháp luật. Không có mấy lời nói đến vụ bạo loạn bất thành trong quyển Mein Kampf.', '1925-07-18', 1, 155, 'Adolf Hitler'),
(225, 'Thép đã tôi thế đấy!', 127, '2020_07_28_10_42_44_1-390x510.jpg', 18, 11, '<p>Th&eacute;p đ&atilde; t&ocirc;i thế đấy ! Được đăng lần dầu tr&ecirc;n tạp chi Molodaya Gvardiya v&agrave;o năm 1932 v&agrave; được xuất bản th&agrave;nh s&aacute;ch v&agrave;o năm 1936 . Kh&ocirc;ng phải một tiểu thuyết b&igrave;nh thường , Th&eacute;p đ&atilde; t&ocirc;i thế đấy ! Ch&iacute;nh l&agrave; cuộc đời của t&aacute;c giả Nikolai A.Ostrovsky . Bằng sự ca trường của người chiến sĩ c&aacute;ch mạng , d&ugrave; cơ thể bị t&agrave;n ph&aacute; , đ&acirc;u đớn , Nikolai A.Ostrovsky vẫn sống trọn vẹn , cống hiến cho x&atilde; hội cuốn tiểu thuyết bất hủ Th&eacute;p đ&atilde; t&ocirc;i thế đấy ! v&agrave; th&agrave;nh c&ocirc;ng trong x&acirc;y dựng h&igrave;nh tượng nh&acirc;n vật ch&iacute;nh - người chiến sĩ hồng qu&acirc;n Pavel Korchagin . Nhiệt t&igrave;nh c&aacute;ch mạng nồng ch&aacute;y của Pavel đ&atilde; khiến nhiều độc giả y&ecirc;u qu&yacute; anh v&agrave; phương ch&acirc;m sống của anh cũng đ&atilde; trở th&agrave;nh phương ch&acirc;m sống của nhiều thanh ni&ecirc;n thế hệ Pavel tại khối c&aacute;c nước x&atilde; hội chủ nghĩa trong đ&oacute; c&oacute; Việt Nam .</p>\r\n', '2024-02-26', 1, 110, 'Nicolai Ostrovsky'),
(226, 'TOP G Thoát khỏi ma trận', 73, '61fJPvPk-vL._AC_UF1000,1000_QL80_.jpg', 15, 12, 'THOÁT MA TRẬN\r\nNếu bạn không muốn trở thành một thằng ẻo lả, hãy theo dõi tôi, mở cuốn sách này và tìm hiểu cách làm của TOP G.\r\nTôi có cần phải nói thêm không?', '2023-01-01', 0, 0, 'Andrew Tate'),
(227, 'Giang hồ Sài Gòn', 50, 'NXBTreStoryFull_23452011_014510.jpg', 15, 11, 'Giang Hồ Sài Gòn là tập sách viết về những nhân vật và những băng nhóm du đãng của Sài Gòn một thời trước năm 1975.\r\n\r\nTác giả Vũ Quang Hùng, nguyên là một sinh viên tranh đấu trong phong trào sinh viên học sinh trước giải phóng, bị chế độ cũ bắt bỏ tù hai lần, giam tại khám Chí Hòa và nhà tù Côn Đảo. Trong thời gian bị tù đầy dưới chế độ Thiệu, tác giả đã có nhiều dịp bị nhốt chung với các tay anh chị cộm cán trong làng du đãng Sài Gòn. Sau giải phóng, tác giả từng là Phó Tổng biên tập báo Công An TP.HCM. Chính điều đó đã cho phép tác giả có nhiều tư liệu xác thực để viết nên câu chuyện về giới giang hồ Sài Gòn và những dư đảng.\r\n\r\nGiang Hồ Sài Gòn không chỉ là chuyện du đãng mà còn là chuyện đối nhân xử thế giữa người với người, chuyện nổi loạn của những người không đất dung thân, là chuyện nghĩa tình đồng đội và bao nhiêu chuyện khác.\r\n', '2012-01-01', 0, 0, 'Vũ Quang Hùng'),
(228, 'Hội Kín Nguyễn An Ninh', 99, 'hoikinNguyenAnNinh.jpg', 16, 10, 'Nguyễn An Ninh (1900 – 1943), một chí sĩ yêu nước không giống bao kẻ sĩ khác cùng thời. Không giẫm bước trên dấu giày của kẻ khác, phụng sự chế độ thực dân để hưởng vinh hoa, phú quý, Nguyễn An Ninh đã vượt qua những hạng người đó, dùng tài học của mình để tìm con đường giải thoát dân chúng.\r\n\r\nÔng tổ chức mít tính, diễn thuyết, viết báo, hăng hái đấu tranh với chính quyền thực dân bóc lột. Cuộc đời ông có hai lần diễn thuyết lớn. Lần đầu là đêm ngày 25/1/1923 với đề tài “Nền văn hóa Việt Nam”. Lần thứ hai là vào đêm 15/10/1923 với đề tài “Lý tưởng thanh niên An Nam”. Tiếng vang qua hai bài diễn thuyết của Nguyễn An Ninh đã tác động mạnh đến dư luận thanh niên và trí thức Sài Gòn, đã làm đau đầu chính quyền thống trị. Thống đốc Nam Kỳ lúc đó là Cognacq phải gọi ông lên dinh để mong bịt miệng. Dụ dỗ không thành, Cognacq đã ra lệnh cấm Nguyễn An Ninh diễn thuyết hay tụ họp bất cứ nơi đâu.\r\n\r\nKhông thể tiếp tục đấu tranh bằng lời, ông chuyển sang đấu tranh bằng ngòi bút. Ông cho ra đời báo La Cloche Fêlée (Chuông rè) bằng Pháp văn với người quản lý Pháp lai tên Eugène Dejean de la Bâtie vào ngày 10/12/1923. Mặc dù lo sợ nhưng không cấm đoán được, viên Thống đốc Cognacq và nhà cầm quyền Pháp chủ trương đánh phá La Cloche Fêlée. Bất cứ ai cầm tờ báo trên tay cũng bị mật thám theo dõi, bị đuổi học, đuổi việc. Chủ nhà in, thợ sắp chữ liên tục bị hăm dọa. Báo phải đổi nhà in, chủ báo Nguyễn An Ninh vừa là ký giả, vừa phụ xếp chữ với thợ, sửa bản vỗ, làm long tong. Sau khi in xong, đích thân Nguyễn An Ninh mặc đồ dài, tay ôm sấp báo đứng bán ở góc đường Catinat. Phát hành được 19 số, đến ngày 14/7/1924, tờ báo phải tạm ngưng vì lý do sức khỏe của ông và sự đánh phá của giới cầm quyền.\r\n\r\nCon đường đấu tranh của Nguyễn An Ninh không dừng lại ở đó, ông tiếp tục các hoạt động của mình bằng việc sáng lập và tổ chức Thanh niên Cao vọng Đảng, còn được biết đến với tên Hội kín Nguyễn An Ninh. Đây được xem là một trong những tổ chức có ảnh hưởng rộng khắp Nam Kỳ trong suốt thập niên 20 của thế kỷ trước…\r\n\r\nViệt Tha – Lê Văn Thử, một chí sĩ yêu nước từng sát cánh với Nguyễn An Ninh trong những ngày đấu tranh khốc liệt, đã ghi lại về cuộc đời “anh Ninh” trong tác phẩm “Hội kín Nguyễn An Ninh” một cách chân thật và dung dị, đúng theo như tinh thần và đức tính đáng mến của tác giả: Thấy sao nói vậy! Trong những lời đầu sách, Lê Văn Thử viết:\r\n\r\n“Tôi lấy tên quyển sách này là Hội kín Nguyễn An Ninh bởi tôi có sống trong thời kỳ ấy. Tôi được mục kích sự khủng khiếp ở đây và được nghe tiếng dội của luồng dư luận trong các chính giới ở Pháp. Họ cho là một phong trào vĩ đại chưa từng có. Họ khủng khiếp bởi bấy lâu, chừa ra một vài phong trào nông dân như Thiên Địa hội hay là Phan Xích Long do vài tên du đãng mê tín dựa vào nông dân gây ra mà chưa có một tay tri thức nào đứng ra dẫn đạo như phong trào Hội kín. Tuy quyển sách này nói nhiều về đời anh Ninh, song tôi muốn để tên Hội kín, bởi tôi muốn nhắc lại đời anh chỉ có lần hội kín mà anh được tên tuổi nhiều và cũng do hội kín mà người ta quên sự lầm lạc của anh đi.”', '1961-03-14', 1, 79, 'Lê Văn Thử'),
(229, 'Giọt Lệ Trong Hồn', 80, '33842087663_0e6381f6e3_z.jpg', 17, 13, 'Trong công trình sử học “Sách đen về chủ nghĩa cộng sản” (Le livre noir du communistme, Robert Laffont, Paris 1997), tác giả Rémi Kauffer - một chuyên gia về tình báo và khủng bố - đã dành bảy chương sách để nói về mối quan hệ giữa các thể chế “cộng sản hiện thực” (hiểu theo nghĩa: các thể chế tự nhận mình là “cộng sản”, không nhất thiết phải tuân thủ các nguyên tắc của chủ nghĩa Marx) và chủ nghĩa khủng bố.\r\n\r\nTác giả cuốn sách trên khẳng định: trong hai thập niên 20 và 30, phong trào cộng sản thế giới dốc toàn lực để chuẩn bị những cuộc khởi nghĩa vũ trang nhưng đều thất bại. Do đó, trong thập niên 40, họ đã lợi dụng cuộc chiến chống phát-xít Đức và giới quân phiệt Nhật, và trong hai thập niên 50 và 60, họ đã nhân danh những cuộc đấu tranh giải phóng dân tộc để tạo dựng những đội du kích chính qui, dần dần biến thành những đạo quân thực thụ để giúp các Đảng Cộng sản cướp chính quyền tại nhiều xứ như Nam Tư, Trung Hoa, Bắc Hàn…\r\n\r\nTuy nhiên, phải đương đầu với sự chống đối của các thế lực thân Hoa Kỳ, thất bại của phong trào “du kích” Nam Mỹ đã khiến một số phe, nhóm cộng sản nhận thấy họ nên trở lại những phương pháp khủng bố “truyền thống”. Lấy danh nghĩa “đấu tranh giải phóng dân tộc”, ở nhiều nơi trên thế giới, khủng bố và chiến tranh du kích đã được hòa quyện một cách “hữu hiệu” trong các hành động vũ trang, như trong trường hợp Mặt trận Giải phóng Dân tộc Algeria hoặc các tổ chức khủng bố Palestine.\r\n\r\nCó thể tranh luận với các luận điểm trên của tác giả Rémi Kauffer, tuy nhiên, lần giở kho lưu trữ mật được “bạch hóa” sau khi Liên Xô sụp đổ, có thể thấy trong không ít trường hợp, Liên bang Xô-viết đã trợ giúp và ủng hộ một cách hữu hiệu các nhóm khủng bố ở Trung Đông và Mỹ - La Tinh.\r\n\r\nĐặc biệt, trong nhiều năm liền, Ilich Ramirez Sanchez, một trùm khủng bố khét tiếng từng hoành hành ngang dọc ở các nước Ả Rập và phương Tây, đã được sự che chở của hầu hết các quốc gia “xã hội chủ nghĩa” ở Đông Âu: bằng những tấm thông hành và hộ chiếu giả, y đã sử dụng thủ đô Budapest (Hungary) như một địa bàn chính yếu để tổ chức và tham gia các vụ khủng bố đẫm máu.\r\n\r\nDầu vậy, cần phải nói là bản thân các quốc gia “xã hội chủ nghĩa” (cũ) ít khi đứng ra tổ chức khủng bố, vì mức độ mạo hiểm quá lớn. Một ngoại lệ là trường hợp Bắc Hàn: trong những năm tháng căng thẳng dưới thời “Chiến tranh lạnh”, xứ này đã thường xuyên cử các mật vụ ra nước ngoài để ám sát, giết chóc, bắt cóc và thực hiện những hành vi khủng bố, nhất là đối với các nhân vật Nam Hàn.\r\n\r\nNhiều phụ nữ Nhật đã bị bắt cóc và đưa về Bình Nhưỡng để đào tạo thành những điệp viên kiêm khủng bố. Đó là chưa nói đến chuyện trong hai thập niên 60 và 70, Bắc Hàn là nơi ẩn mình của vô số nhóm khủng bố Nhật, Palestine, Phillippines…, với một mục tiêu chính yếu là “lật đổ chế độ tư bản thối nát”. Có thể nói trong một thời gian dài, Bắc Triều Tiên là quốc gia cộng sản duy nhất đã chủ trương khủng bố một cách có hệ thống ở cấp nhà nước.\r\n\r\nTrong số các hành động khủng bố đẫm máu nhất của Kim Nhật Thành, cần phải kể đến vụ ám sát 16 người xảy ra ở Rangun (trong số đó có bốn bộ trưởng Nam Hàn), hoặc vụ nổ máy bay Hãng hàng không Korean Airline ngày 29-11-1987, gây nên cái chết của 115 hành khách vô tội.\r\n\r\nKim Hyun Hee là một trong hai thủ phạm chính của vụ nổ máy bay nói trên. Cùng một điệp viên đứng tuổi và dày dạn kinh nghiệm (Kim Soung Ir), người phụ nữ trẻ trung 25 tuổi và xinh đẹp đó được nhận nhiệm vụ phải “dạy cho Hán Thành một bài học”: mục đích chính của vụ khủng bố là hạ uy tín Nam Hàn, khiến nước này “mất mặt” và chứng tỏ cho thế giới thấy rằng Hán Thành không đủ sức để giữ gìn an ninh cho Thế vận hội 1988, sẽ được tổ chức sau đó ít tháng.\r\n\r\nTuy nhiên, ý định đó của nhà độc tài Kim Nhật Thành đã hoàn toàn phá sản. Thế vận hội Hán Thành 1988 thành công mỹ mãn, trở thành một biểu tượng của hòa bình và hữu nghị, khi các vận động viên “tư bản” và “xã hội chủ nghĩa” lại bắt tay nhau trên tinh thần bằng hữu và thể thao sau hai kỳ Olympic không trọn vẹn (1980: Moscow, và 1984: Los Angeles).\r\n\r\nSau vụ đặt bom, nhóm khủng bố bị phát hiện: Kim Soung Ir uống độc dược tự tử, còn Kim Hyun Hee định tẩu thoát nhưng bị bắt giam. Sau một thời gian dằn vặt nội tâm và đấu tranh với chính mình, cô gái trẻ tuổi đã cung khai mọi sự trước nhà chức trách Nam Hàn. Về sau, họ Kim đã thuật lại chi tiết những hoạt động gián điệp và khủng bố của mình trong cuốn hồi ký “Giọt lệ trong hồn” (The Tears Of My Soul, 1993), khiến thế giới phải kinh hoàng trước sự tàn ác của các nhà lãnh đạo Bắc Hàn.\r\n\r\nCho dù, vì những lý do dễ hiểu, cuốn hồi ký chưa thể nói lên hết được những gì tại hậu trường các sự kiện của 20 năm trước, nhưng đây là một nguồn tư liệu có độ xác tín tương đối cao về một xã hội, một thể chế khép kín mà thế giới có rất ít thông tin. NCTG xin giới thiệu đến quý độc giả “Giọt lệ trong hồn”, thông qua bản dịch tiếng Hung ( “Kémek iskolája: Egy terroristanő vallomásai”, fordította: Gálvölgyi Judit, JGX Kiadó, Budapest 1994).\r\n\r\nXin tặng cuốn sách này cho người nhà các nạn nhân chuyến bay 858 của Hãng Hàng không Triều Tiên.\r\n\r\nMọi thu nhập xuất phát từ cuốn sách đều dành cho họ.\r\nKim Huyn Hee', '1993-01-01', 0, 0, 'Kim Huyn Hee'),
(230, '\r\nĐắc nhân tâm', 86, 'dntttttuntitled.jpg', 16, 12, 'Đắc nhân tâm – How to win friends and Influence People  của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. Tác phẩm đã được chuyển ngữ sang hầu hết các thứ tiếng trên thế giới và có mặt ở hàng trăm quốc gia. \r\n\r\nĐây là quyển sách duy nhất về thể loại self-help liên tục đứng đầu danh mục sách bán chạy nhất (best-selling Books) do báo The New York Times bình chọn suốt 10 năm liền. Riêng bản tiếng Anh của sách đã bán được hơn 15 triệu bản trên thế giới. Tác phẩm có sức lan toả vô cùng rộng lớn – dù bạn đi đến bất cứ nơi đâu, bất kỳ quốc gia nào cũng đều có thể nhìn thấy. Tác phẩm được đánh giá là quyển sách đầu tiên và hay nhất, có ảnh hưởng làm thay đổi cuộc đời của hàng triệu người trên thế giới.\r\n\r\nKhông còn nữa khái niệm giới hạn, Đắc Nhân Tâm là nghệ thuật thu phục lòng người, là làm cho tất cả mọi người yêu mến mình. Đắc nhân tâm và cái Tài trong mỗi người chúng ta. Đắc Nhân Tâm trong ý nghĩa đó cần được thụ đắc bằng sự hiểu rõ bản thân, thành thật với chính mình, hiểu biết và quan tâm đến những người xung quanh để nhìn ra và khơi gợi những tiềm năng ẩn khuất nơi họ, giúp họ phát triển lên một tầm cao mới. Đây chính là nghệ thuật cao nhất về con người và chính là ý nghĩa sâu sắc nhất đúc kết từ những nguyên tắc vàng của Dale Carnegie.\r\n\r\nQuyển sách Đắc nhân tâm là cuốn sách “đầu tiên và hay nhất mọi thời đại về nghệ thuật giao tiếp và ứng xử”, quyển sách đã từng mang đến thành công và hạnh phúc cho hàng triệu người trên khắp thế giới.\r\n\r\nĐắc Nhân Tâm là cuốn sách gối đầu giường về đối nhân xử thế.', '1936-10-10', 1, 62, 'Dale Carnegie'),
(231, 'Cha giàu cha nghèo', 70, 'kiotviet_0d7e2251c670c3f1498f2f2b90681181-557x800.jpg', 16, 12, 'Cuốn sách là một câu chuyện, chủ yếu nói về sự giáo dục mà Kiyosaki đã nhận được tại Hawaii.\r\nNgười cha nghèo trong câu chuyện là cha thật của Kiyosaki, có bằng PhD, tốt nghiệp từ Stanford, Chicago và đại học Northwestern, với tất cả sự uyên thâm đó, ông trở thành người đứng đầu ngành giáo dục bang Hawaii. Theo cuốn sách, ông được mọi người rất tôn trọng cho tới khi, giai đoạn cuối sự nghiệp, ông quyết định chống lại thống đốc bang Hawaii. Điều đó trực tiếp khiến người cha nghèo mất việc, và không bao giờ còn khả năng tìm lại được công việc có vị trí như vậy nữa. Bởi vì ông ta chưa bao giờ được học về cách tự do về tài chính, thay vì phụ thuộc hoàn toàn vào trợ cấp chính phủ (một người làm thuê), ông ta chìm trong nợ nần chồng chất.\r\nĐối lập với nhân vật đó là người cha giàu, bố của người bạn thân nhất, Michael. Người cha giàu bỏ học từ lớp 8, nhưng lại trở thành một triệu phú.\r\nÔng ta dạy Kiyosako và Michael rất nhiều bài học về tài chính, và luôn nói rằng các cậu phải học để tiền làm việc cho họ chứ đừng tiêu hết tiền kiếm được cho cuộc sống hàng ngày, giống như những nhân công của người cha giàu, cũng như người cha nghèo, và hầu hết mọi người trên thế giới.\r\nCuốn sách đã nêu bật vị trí khác nhau của đồng tiền, sự nghiệp và cuộc đời hai người đàn ông, và họ đã làm thế nào để thay đổi các quyết định trong cuộc đời của Kiyosaki.', '1997-01-01', 0, 0, 'Robert Kiyosaki'),
(232, 'Làm Chủ Tuổi 20', 198, 'lam-chu-tuoi-20-tb-2022.jpg', 17, 12, 'Làm chủ tuổi 20 được viết lại dựa trên những trải nghiệm trong cuộc sống của tác giả Dương Duy Bách – một người sớm tự lập và đạt được nhiều thành công ở tuổi 20. Ngoài câu chuyện của chính mình, tác giả còn ghi lại những bài học mà anh học được từ những người trẻ thành công khác và phân tích lý do khách quan khiến họ đạt được mục tiêu khi tuổi đời còn rất trẻ.\r\n\r\nXuyên suốt hai mươi chương sách là những chia sẻ về khám phá đam mê, làm chủ thói quen và vận mệnh: từ thoát khỏi sợi dây xiềng xích, học cách chịu trách nhiệm 100% với cuộc sống của mình đến học cách yêu thương, biết ơn, độc lập tài chính, nỗ lực thành công nhanh hơn tốc độ già đi của bố mẹ,…\r\n\r\nĐiều tạo nên sự khác biệt giữa Làm chủ tuổi 20 với các cuốn sách phát triển bản thân khác là tác giả đã dành gần ba năm để chia sẻ những gì viết trong cuốn sách này đến hàng chục nghìn bạn trẻ, thông qua các buổi nói chuyện và chương trình đào tạo. Nói đúng hơn, đây là cuốn sách được viết bởi một người Việt Nam trẻ tuổi đã ứng dụng những bài học, kiến thức này thành công để thay đổi cuộc sống của mình và hàng nghìn bạn trẻ khác.\r\n\r\nCứ đi ắt sẽ đến, cứ đọc rồi ứng dụng, bạn sẽ thấy cuộc sống mình thay đổi đáng kể. Nỗ lực thay đổi cuộc sống không phải nỗ lực tạo ra điều gì lớn lao, mà là kiên trì với những hành động tích cực, suy nghĩ tích cực hàng ngày, hàng giờ, hàng phút, hàng giây. Vì: Cách bạn làm một việc chính là cách bạn làm mọi việc.\r\n\r\nThông tin tác giả\r\n\r\nTác giả Dương Duy Bách hiện là nhà sáng lập công ty giáo dục và tổ chức sự kiện FLY Việt Nam. Anh còn được biết đến là một diễn giả trẻ, thành công từ rất sớm tại Việt Nam. Anh nổi tiếng bởi thành tích khởi nghiệp đáng nể và những hoạt động phát triển bản thân cho giới trẻ.', '2022-01-01', 1, 150, 'Dương Duy Bách'),
(233, 'Cuộc Chiến Không Kết Thúc', 120, '32574951643_35847f94ee.jpg', 17, 10, '<p>Cuộc Chiến Kh&ocirc;ng Kết Th&uacute;c - Người Israel &amp; Palestine Trong Cuộc Chiến Gi&agrave;nh V&ugrave;ng Đất Hứa. - Một v&ugrave;ng đất hứa ( Israel - Palestine) của ba t&ocirc;n gi&aacute;o lớn tr&ecirc;n thế giới - Kit&ocirc; gi&aacute;o, Hồi gi&aacute;o v&agrave; Do Th&aacute;i gi&aacute;o - lại l&agrave; nơi lửa đạn như lu&ocirc;n r&igrave;nh rập bất cứ t&iacute;n đồ n&agrave;o của một trong ba t&ocirc;n gi&aacute;o ấy ! - Ch&iacute;nh ở miền đất thi&ecirc;n đ&oacute;, một trong những d&acirc;n tộc bản địa - người do Th&aacute;i - phải lang thanh khắp thế giới h&agrave;ng ng&agrave;n năm nay. V&agrave; cũng ch&iacute;nh nơi đ&oacute; - sau Thế chiến II - quốc gia Do Th&aacute;i ra đời, cũng l&agrave; l&uacute;c người Palestine lại phải rời bỏ nh&agrave; cửa, đất đai ra đi. - Cả hai d&acirc;n tộc Do Th&aacute;i - Palestine đều kh&ocirc;ng muốn b&aacute;nh xe lịch sử quay những v&ograve;ng lịch sử quay những v&ograve;ng nghiệt ng&atilde; để lu&acirc;n phi&ecirc;n nhau tồn tại, tr&ecirc;n mảnh đất nhỏ đẹp như thế. Cả hai phải c&ugrave;ng tồn tại, cộng sinh. Nhưng tồn tại như thế n&agrave;o? Đ&oacute; l&agrave; vấn đề nan giải l&agrave;m cho cả thế giới phải quan t&acirc;m... - Một cuộc chiến v&igrave; ch&iacute;nh nghĩa đối với cả hai d&acirc;n tộc, nhưng nghịch l&yacute; thay, tại sao chẳng biết bao giời mới kết th&uacute;c! *** Cuốn s&aacute;ch l&agrave; một thi&ecirc;n ph&oacute;ng sự sinh động của nh&agrave; b&aacute;o người &Yacute; Anton La Guardia giới thiệu bao qu&aacute;t lịch sử v&agrave; những biến động triền mi&ecirc;n của V&ugrave;ng đất hứa, hay c&ograve;n gọi l&agrave; &ldquo;Kingdom of Heaven&rdquo; giữa người Israel v&agrave; người Palestine từ h&agrave;ng ng&agrave;n năm trước C&ocirc;ng nguy&ecirc;n cho tới ng&agrave;y nay. Một dải đất ngang kh&ocirc;ng qu&aacute; 75 dặm v&agrave; d&agrave;i chưa tới 260 dặm, với d&acirc;n số hơn 5 triệu người Do Th&aacute;i v&agrave; hơn 4 triệu người Palestine, nhưng l&agrave; nơi m&agrave; hơn 1 tỉ người Hồi gi&aacute;o, 1,7 tỉ người Kit&ocirc; gi&aacute;o v&agrave; khoảng 13 triệu người Do Th&aacute;i khắp thế giới hướng về. L&agrave;m thế n&agrave;o để hai d&acirc;n tộc Israel v&agrave; Palestine c&oacute; thể c&ugrave;ng tồn tại trong ho&agrave; b&igrave;nh? Đ&oacute; vẫn c&ograve;n l&agrave; c&acirc;u hỏi chưa c&oacute; lời đ&aacute;p. *** L&uacute;c đăng k&yacute; chuyến bay ở phi trường Ben-Gurion, một phụ nữ trẻ dẫn c&aacute;c h&agrave;nh kh&aacute;ch v&agrave;o những h&agrave;ng c&aacute;ch nhau để kh&aacute;m x&eacute;t về an ninh. Những người Do Th&aacute;i đứng ở một h&agrave;ng c&ograve;n những người kh&ocirc;ng phải Do Th&aacute;i đứng ở h&agrave;ng kh&aacute;c. Những người n&oacute;i tiếng Hebrew (tiếng Do Th&aacute;i cổ) đọc lướt bảng c&acirc;u hỏi. Những người c&ograve;n lại thường đợi ở h&agrave;ng để hướng về d&atilde;y c&acirc;u thẩm vấn, từ th&ocirc;ng thường đến gay gắt. &Ocirc;ng (b&agrave;) c&oacute; mang đồ hộ ai kh&ocirc;ng? &Ocirc;ng (b&agrave;) c&oacute; quen ai ở Israel kh&ocirc;ng? T&ecirc;n của họ l&agrave; g&igrave;? &Ocirc;ng (b&agrave;) c&oacute; đi tới Bờ T&acirc;y kh&ocirc;ng? &Ocirc;ng (b&agrave;) c&oacute; người bạn Ả Rập n&agrave;o kh&ocirc;ng? T&ecirc;n họ l&agrave; g&igrave;? V&agrave; v&acirc;n v&acirc;n. Mặc d&ugrave; c&oacute; vẻ qua loa nhưng phải n&oacute;i l&agrave; &quot;t&ocirc;i cảm thấy kh&oacute; chịu&quot; c&aacute;i kiểu hạch hỏi kh&oacute; ưa ấy. N&oacute; c&oacute; nghĩa l&agrave; điều tra nh&acirc;n dạng của kh&aacute;ch h&agrave;ng, đ&acirc;m chọc v&agrave;o chuyện của du kh&aacute;ch. &quot;C&ograve;n &ocirc;ng l&agrave; nh&agrave; b&aacute;o &agrave;? C&oacute; g&igrave; chứng minh kh&ocirc;ng? Vui l&ograve;ng mở m&aacute;y t&iacute;nh của &ocirc;ng v&agrave; chỉ cho t&ocirc;i những g&igrave; &ocirc;ng đ&atilde; viết.&quot; C&oacute; khi người thẩm vấn bỏ đi, nhưng một người kh&aacute;c đến v&agrave; bắt đầu hỏi lại. T&ocirc;i lại bị hỏi, hết sức nghi&ecirc;m t&uacute;c: &quot;&Ocirc;ng kh&ocirc;ng phải người Do Th&aacute;i, vậy tại sao &ocirc;ng tới Israel?&quot; Ở đ&acirc;y chẳng l&agrave;m g&igrave; phải lo ngại về chuyện &quot;ghi h&igrave;nh&quot;, hỏi về sắc tộc hay điều g&igrave; kh&aacute;c. Những phụ nữ nước ngo&agrave;i tự đi c&ograve;n bị xăm xoi rất kỹ, kể từ khi Nizar Hindawi, một người Jordan l&agrave;m việc cho cơ quan t&igrave;nh b&aacute;o Syria, đ&atilde; gửi c&ocirc; bạn g&aacute;i c&oacute; thai người Ireland tr&ecirc;n chuyến bay E1 Al m&agrave; kh&ocirc;ng n&oacute;i cho chị ta biết l&agrave; anh ta đ&atilde; giấu quả bom Semtex ở đ&aacute;y giả c&aacute;i t&uacute;i của chị ta. Một l&iacute;nh g&aacute;c của El Al tinh &yacute; đ&atilde; ph&aacute;t hiện thiết bị n&agrave;y, cứu được mạng của 375 người v&agrave;o bữa đ&oacute;, hồi th&aacute;ng Tư 1986. Cả khi ở nước ngo&agrave;i, l&uacute;c bạn bước lại gần quầy, bạn đ&atilde; đi v&agrave;o sự kiểm so&aacute;t của Israel, l&uacute;c n&agrave;o cũng nghĩ c&oacute; mối đe dọa khủng bố v&agrave; chiến tranh. Ở một số nước ch&acirc;u &Acirc;u, một nh&acirc;n vi&ecirc;n an ninh ngồi cạnh t&agrave;i xế xe bus đưa kh&aacute;ch từ nh&agrave; kh&aacute;ch tới m&aacute;y bay. Những nh&acirc;n vi&ecirc;n mật vụ kh&aacute;c rải khắp nơi, bảo vệ cầu thang l&ecirc;n xuống hoặc dắt con ch&oacute; đ&aacute;nh hơi tr&ecirc;n h&agrave;nh l&yacute;. Đ&ocirc;i khi một xe bọc sắt theo d&otilde;i chiếc m&aacute;y bay hạ c&aacute;nh đang chạy tr&ecirc;n đường băng. Mỗi chuyến bay E1 Al đều c&oacute; l&iacute;nh g&aacute;c vũ trang v&agrave; c&aacute;c buồng l&aacute;i ngăn được đạn. ... Mời c&aacute;c bạn đ&oacute;n đọc Cuộc Chiến Kh&ocirc;ng Kết Th&uacute;c: Người Israel &amp; Palestine Trong Cuộc Chiến Gi&agrave;nh V&ugrave;ng Đất Hứa của t&aacute;c giả Anton La Guardia.</p>\r\n', '2006-01-01', 1, 100, 'Anton La Guardia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `matheloai` bigint(10) NOT NULL,
  `Ten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`matheloai`, `Ten`) VALUES
(10, 'Lịch sử'),
(11, 'Tiểu thuyết'),
(12, 'Kỹ năng sống'),
(13, 'Hồi ký');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`),
  ADD KEY `matheloai` (`matheloai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`matheloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `matheloai` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD CONSTRAINT `theloai_ibfk_1` FOREIGN KEY (`matheloai`) REFERENCES `sanpham` (`matheloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
