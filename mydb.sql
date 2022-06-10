-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 03, 2022 lúc 04:06 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(200) DEFAULT NULL,
  `genre_description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`, `genre_description`) VALUES
(1, 'POP', NULL),
(2, 'EDM', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `singer`
--

CREATE TABLE `singer` (
  `singer_id` int(11) NOT NULL,
  `singer_name` varchar(200) DEFAULT NULL,
  `singer_description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `singer`
--

INSERT INTO `singer` (`singer_id`, `singer_name`, `singer_description`) VALUES
(1, 'Soobin Hoàng Sơn', NULL),
(2, 'Erik', NULL),
(3, 'JayKii', NULL),
(4, 'Sơn Tùng(M-TP) ', NULL),
(5, 'Avicii', NULL),
(6, 'ED Sheeran', NULL),
(7, 'Justin Bieber', NULL),
(8, 'Shawn Mendes ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(200) DEFAULT NULL,
  `song_description` varchar(10000) DEFAULT NULL,
  `song_price` varchar(100) DEFAULT NULL,
  `song_audio` varchar(100) DEFAULT NULL,
  `song_img` varchar(100) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `singer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`song_id`, `song_name`, `song_description`, `song_price`, `song_audio`, `song_img`, `genre_id`, `singer_id`) VALUES
(1, 'Di De Tro Ve', 'Tôi đang ở một nơi rất xa\r\n\r\nNơi không có khói bụi thành phố\r\n\r\nỞ một nơi đẹp như mơ\r\n\r\nTrên cao êm êm mây trắng bay lặng nhìn biển rộng sóng vỗ...ô\r\n\r\nCuộc đời tôi là những chuyến đi dài...\r\n\r\nVượt suối đá,vượt núi dốc, dù chênh vênh có xá gì\r\n\r\nCó biết bao thứ tươi đẹp vẫn cứ ở đó đang chờ tôi\r\n\r\nNgười xung quanh ở nơi đây, thật dễ mến sống mới gặp\r\n\r\nÁnh mắt lấp lánh hiền hoà chào tôi, chào người bạn mới\r\n\r\nTừng chặng đường dài mà ta qua\r\n\r\nGiờ ngồi một mình lại thấy nhớ\r\n\r\nNgày ngày mặt trời rạng ngời vươn cao\r\n\r\nLên từng trên mái nhà\r\n\r\nTừng chặng đường dài mà ta qua\r\n\r\nĐều để lại kỉ niệm quý giá\r\n\r\nĐể lại 1 điều rằng càng đi xa\r\n\r\nTa càng thêm nhớ nhà...\r\n\r\nĐi thật xa để trở về\r\n\r\nĐi thật xa để trở về\r\n\r\nCó 1 nơi để trở về đi đi để trở về...\r\n\r\nCuộc đời thật đẹp khi được đi muôn nơi xa xôi rộng lớn\r\n\r\nNhưng ta vẫn có nơi để trở về sau mỗi chuyến đi\r\n\r\nĐiều kì diệu là con người ta đi xa hơn để trưởng thành hơn\r\n\r\nKhông quên mang theo bên cạnh hành trang nỗi nhớ gia đình\r\n\r\nTừng chặng đường dài mà ta qua\r\n\r\nGiờ ngồi một mình lại thấy nhớ\r\n\r\nNgày ngày mặt trời rạng ngời vươn cao\r\n\r\nLên từng trên mái nhà\r\n\r\nTừng chặng đường dài mà ta qua\r\n\r\nĐều để lại kỉ niệm quý giá\r\n\r\nĐể lại 1 điều rằng càng đi xa\r\n\r\nTa càng thêm nhớ nhà...\r\n\r\n', '45$', 'didetrove.mp3', 'didetrove.jpg', 1, 1),
(2, 'Yeu Duong Kho Qua Thi Chay Ve Khoc Voi Anh', '\r\nMùi hương hoa diên vĩ\r\nHay là hương tóc mềm\r\nNgàn vì sao chẳng sáng\r\nHơn đôi mắt của em\r\nThật đẹp đến trăng thẹn thùng\r\nPhải nấp sau mây\r\nVậy thì cớ sao\r\nAnh đây lại nỡ buông tay\r\nỪ thì anh không muốn\r\nPhải nhìn thấy em buồn\r\nChuyện tình yêu nếu như\r\nKhông thể nắm thì buông\r\nTự nhiên không biết vì lẽ gì\r\nCứ lại tự kiềm lòng suốt thôi\r\nCây không muốn lá rời cành\r\nKhi lá vẫn còn xanh\r\nYêu đương khó quá\r\nThì chạy về khóc với anh\r\nMột người luôn yêu em nhất\r\nChắc chắn sẽ không bỏ đi\r\nKhiến em phải buồn được đâu\r\nPhong ba sóng gió phủ đầu\r\nAnh vẫn đứng đằng sau\r\nTình yêu có duyên\r\nThì tự tìm đến với nhau\r\nDù sao anh cũng vui lòng\r\nLàm người anh trai\r\nĐến suốt đời này được không\r\nỪ thì cây chỉ muốn\r\nGiữ chặt lá bên đời\r\nTừng sợ một cơn gió kia\r\nSẽ đi đến dạo chơi\r\nSợ rằng cơn gió chợt vô tình\r\nCây ngậm ngùi phải nhìn lá rơi\r\nCây không muốn lá rời cành\r\nKhi lá vẫn còn xanh\r\nYêu đương khó quá\r\nThì chạy về khóc với anh\r\nMột người luôn yêu em nhất\r\nChắc chắn sẽ không bỏ đi\r\nKhiến em phải buồn được đâu\r\nPhong ba sóng gió phủ đầu\r\nAnh vẫn đứng đằng sau\r\nTình yêu có duyên\r\nThì tự tìm đến với nhau\r\nDù sao anh cũng vui lòng\r\nLàm người anh trai\r\nĐến suốt đời này được không\r\nCây không muốn lá rời cành\r\nKhi lá vẫn còn xanh\r\nYêu đương khó quá\r\nThì chạy về khóc với anh\r\nMột người luôn yêu em nhất\r\nChắc chắn sẽ không bỏ đi\r\nKhiến em phải buồn được đâu\r\nPhong ba sóng gió phủ đầu\r\nAnh vẫn đứng đằng sau\r\nTình yêu có duyên\r\nThì tự tìm đến với nhau\r\nDù sao anh cũng vui lòng\r\nLàm người anh trai\r\nĐến suốt đời này được không\r\nDù sao anh cũng đây rồi\r\nLàm người theo em\r\nĐến hết đời này mà thôi', '100$', 'nhachayvekhocvoianh.mp3', 'ydkq.jpg', 1, 2),
(3, 'Chieu Hom Ay', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '125$', 'chieuhomay.mp3', 'cha.jpg', 1, 3),
(4, 'Nhu Ngay Hom Qua', 'Cuối con đường là bầu trời xanh ấm êm\r\n(Chu-la, chu-la, eh)\r\nBên tôi mỗi khi buồn, lặng lẽ xoá tan âu lo\r\nGạt giọt nước mắt thăng trầm\r\nNiềm tin mãi luôn đong đầy\r\nBài ca hát trọn đêm nay dành tặng bạn tôi\r\nLuôn dõi theo từng nụ cười lặng im phía sau\r\n(Chu-la, chu-la, eh)\r\nBên tôi mãi không rời, mặc nắng gắt hay mưa ngâu\r\nDù thời gian có xoá phai nhoà, lạc trôi những kí ức\r\nBạn tôi vẫn thế, không hề đổi thay trái tim\r\n\r\nVẫy tay xin chào, nghẹn ngào gặp lại ngày sau\r\nThương nhớ nhau, lòng ngập ngừng không muốn rời\r\nVỗ vai xin bình an ở phía trước, cho dù nhiều chông gai\r\nKiên cường lên, rồi mọi chuyện cũng sẽ vượt qua\r\nDẫu hai phương trời, dù nghìn trùng, dù xa xôi\r\nĐôi mắt nhìn hướng tới cuối chân trời\r\nCám ơn bạn, người luôn sát bên âm thầm dõi nhìn theo\r\nTay nắm chặt, gật đầu cười, tim khắc ghi\r\nMãi như ngày hôm qua\r\n(Oh)\r\n\r\nLuôn dõi theo từng nụ cười lặng im phía sau\r\nBên tôi mãi không rời, mặc nắng gắt hay mưa ngâu\r\nDù thời gian có xoá phai nhoà, lạc trôi những kí ức\r\nBạn tôi vẫn thế, không hề đổi thay trái tim\r\nOh-oh\r\n\r\nVẫy tay xin chào, nghẹn ngào gặp lại ngày sau\r\nThương nhớ nhau, lòng ngập ngừng không muốn rời\r\nVỗ vai xin bình an ở phía trước, cho dù nhiều chông gai\r\nKiên cường lên, rồi mọi chuyện cũng sẽ vượt qua\r\nDẫu hai phương trời, dù nghìn trùng, dù xa xôi\r\nĐôi mắt nhìn hướng tới cuối chân trời\r\nCám ơn bạn, người luôn sát bên âm thầm dõi nhìn theo\r\nTay nắm chặt, gật đầu cười, tim khắc ghi\r\n\r\nVẫy tay xin chào nghẹn ngào gặp lại ngày sau\r\nThương nhớ nhau, lòng ngập ngừng không muốn rời\r\nVỗ vai xin bình an ở phía trước, cho dù nhiều chông gai\r\nKiên cường lên, rồi mọi chuyện cũng sẽ vượt qua\r\nYeah\r\nDẫu hai phương trời, dù nghìn trùng, dù xa xôi\r\nĐôi mắt nhìn hướng tới cuối chân trời\r\nCám ơn bạn, người luôn sát bên âm thầm dõi nhìn theo\r\nTay nắm chặt, gật đầu cười, tim khắc ghi\r\nMãi như ngày hôm qua\r\nNhư ngày hôm qua', '200$', 'nhungayhomqua.mp3', 'nhhq.jpg', 1, 4),
(5, 'Wake me up', 'Wake me up when it\'s over\r\nWake me up when it\'s done\r\nWhen he\'s gone away and taken everything\r\nWake me up.\r\n\r\nWake me up when the skies are clearing\r\nWhen the water is still\r\n\'Cause I will not watch the ships sail away\r\nSo please, say you will.\r\n\r\nIf it were any other day\r\nThis wouldn\'t get the best of me.\r\n\r\nBut today I\'m not so strong\r\nSo lay me down with a sad song\r\nAnd when it stops then you\'ll know\r\nI\'ve been gone too long.\r\n\r\nBut don\'t shake me awake\r\nDon\'t bend me or I will break\r\nFind me somewhere between my dreams\r\nWith the sun on my face.\r\n\r\nI will still feel it later on\r\nBut for now I\'d rather be asleep.\r\n', '200$', 'wakemeup.mp3', 'wmu.jpg', 1, 5),
(6, 'Shape of you ', 'The club isn\'t the best place to find a lover\r\nЅo the bar is where Ɩ go\r\nMe and mу friends at the table doing shots\r\nƊrinking faster and then we talk slow\r\nϹome over and start up a conversation with just me\r\nAnd trust me Ɩ\'ll give it a chance now\r\nTake mу hand, stop! Put Van The Man on the jukebox\r\nAnd then we start to dance, and now Ɩ\'m singing like\r\n[Pre-Ϲhorus]\r\nGirl, уou know Ɩ want уour love\r\nYour love was handmade for somebodу like me\r\nϹome on now, follow mу lead\r\nƖ maу be crazу, don\'t mind me, saу\r\nƁoу, let\'s not talk too much\r\nGrab on mу waist and put that bodу on me\r\nϹome on now, follow mу lead\r\nϹome—come on now, follow mу lead\r\n[Ϲhorus]\r\nƖ\'m in love with the shape of уou\r\nWe push and pull like a magnet do\r\nAlthough mу heart is falling too\r\nƖ\'m in love with уour bodу\r\nAnd last night уou were in mу room\r\nAnd now mу bedsheets smell like уou\r\nƐverу daу discovering something brand new\r\nƖ\'m in love with уour bodу\r\nOh—i—oh—i—oh—i—oh—i\r\nƖ\'m in love with уour bodу\r\nOh—i—oh—i—oh—i—oh—i\r\nƖ\'m in love with уour bodу\r\nOh—i—oh—i—oh—i—oh—i\r\nƖ\'m in love with уour bodу\r\nƐverу daу discovering something brand new\r\nƖ\'m in love with the shape of уou\r\n[Verse 2]\r\nOne week in we let the storу begin\r\nWe\'re going out on our first date\r\nƁut уou and me are thriftу so go all уou can eat\r\nFill up уour bag and Ɩ fill up a plate\r\nWe talk for hours and hours about the sweet and the sour\r\nAnd how уour familу is doin\' okaу\r\nAnd leave and get in a taxi, we kiss in the backseat\r\nTell the driver make the radio plaу, and Ɩ\'m singing like\r\n[Pre-Ϲhorus]\r\nGirl, уou know Ɩ want уour love\r\nYour love was handmade for somebodу like me\r\nϹome on now, follow mу lead\r\nƖ maу be crazу, don\'t mind me, saу\r\nƁoу, let\'s not talk too much\r\nGrab on mу waist and put that bodу on me\r\nϹome on now, follow mу lead\r\nϹome—come on now, follow mу lead\r\n[Ϲhorus]\r\nƖ\'m in love with the shape of уou\r\nWe push and pull like a magnet do\r\nAlthough mу heart is falling too\r\nƖ\'m in love with уour bodу\r\nAnd last night уou were in mу room\r\nAnd now mу bedsheets smell like уou\r\nƐverу daу discovering something brand new\r\nƖ\'m in love with уour bodу\r\nOh—i—oh—i—oh—i—oh—i\r\nƖ\'m in love with уour bodу\r\nOh—i—oh—i—oh—i—oh—i\r\nƖ\'m in love with уour bodу\r\nOh—i—oh—i—oh—i—oh—i\r\nƖ\'m in love with уour bodу\r\nƐverу daу discovering something brand new\r\nƖ\'m in love with the shape of уou\r\n[Ɓridge]\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\n[Ϲhorus]\r\nƖ\'m in love with the shape of уou\r\nWe push and pull like a magnet do\r\nAlthough mу heart is falling too\r\nƖ\'m in love with уour bodу\r\nLast night уou were in mу room\r\nAnd now mу bedsheets smell like уou\r\nƐverу daу discovering something brand new\r\nƖ\'m in love with уour bodу\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nƖ\'m in love with уour bodу\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nƖ\'m in love with уour bodу\r\nϹome on, be mу babу, come on\r\nϹome on, be mу babу, come on\r\nƖ\'m in love with уour bodу\r\nƐverу daу discovering something brand new\r\nƖ\'m in love with the shape of уou', '250$', 'shapeofyou.mp3', 'soy.jpg', 1, 6),
(7, 'Stay', 'I do the same thing I told you that I never would\r\nI told you I’d change, even when I knew I never could\r\nKnow that I can’t find nobody else as good as you\r\nI need you to stay, need you to stay, hey (oh)\r\nI get drunk, wake up, I’m wasted still\r\nI realize the time that I wasted here\r\nI feel like you can’t feel the way I feel\r\nOh, I’ll be fucked up if you can’t be right here\r\nOh-oh-oh-whoa (oh-oh-whoa, oh-oh-whoa)\r\nOh-oh-oh-whoa (oh-oh-whoa, oh-oh-whoa)\r\nOh-oh-oh-whoa (oh-oh-whoa, oh-oh-whoa)\r\nOh, I’ll be fucked up if you can’t be right here\r\nI do the same thing I told you that I never would\r\nI told you I’d change, even when I knew I never could\r\nKnow that I can’t find nobody else as good as you\r\nI need you to stay, need you to stay, hey\r\nI do the same thing I told you that I never would\r\nI told you I’d change even when I knew I never could\r\nKnow that I can’t find nobody else as good as you\r\nI need you to stay, need you to stay, hey\r\nWhen I’m away from you, I miss your touch (ooh-ooh)\r\nYou’re the reason I believe in love\r\nIt’s been difficult for me to trust (ooh-ooh)\r\nAnd I’m afraid that I’ma fuck it up\r\nAin’t no way that I can leave you stranded\r\n‘Cause you ain’t ever left me empty-handed\r\nAnd you know that I know that I can’t live without you\r\nSo, baby, stay\r\nOh-oh-oh-whoa (oh-oh-whoa, oh-oh-whoa)\r\nOh-oh-oh-whoa (oh-oh-whoa, oh-oh-whoa)\r\nOh-oh-oh-whoa (oh-oh-whoa, oh-oh-whoa)\r\nI’ll be fucked up if you can’t be right here\r\nI do the same thing I told you that I never would\r\nI told you I’d change, even when I knew I never could\r\nKnow that I can’t find nobody else as good as you\r\nI need you to stay, need you to stay, hey\r\nI do the same thing I told you that I never would\r\nI told you I’d change even when I knew I never could\r\nKnow that I can’t find nobody else as good as you\r\nI need you to stay, need you to stay, hey\r\nOh-oh-oh\r\nI need you to stay, need you to stay, hey', '200$', 'stay.mp3', 'stay.jpg', 1, 7),
(8, 'Senorita', 'I love it when you call me señorita\r\n\r\nI wish I could pretend I didn\'t need ya\r\n\r\nBut every touch is ooh-la-la-la\r\n\r\nIt\'s true, la-la-la\r\n\r\nOoh, I should be runnin\'\r\n\r\nOoh, you keep me coming for ya\r\n\r\n[Verse 1: Shawn Mendes]\r\n\r\nLand in Miami\r\n\r\nThe air was hot from summer rain\r\n\r\nSweat drippin\' off me\r\n\r\nBefore I even knew her name, la-la-la\r\n\r\nIt felt like ooh-la-la-la, yeah, no\r\n\r\nSapphire moonlight, we danced for hours in the sand\r\n\r\nTequila sunrise, her body fit right in my hands, la-la-la\r\n\r\nIt felt like ooh-la-la-la, yeah\r\n\r\n[Chorus: Camila Cabello & Shawn Mendes, Camila Cabello]\r\n\r\nI love it when you call me señorita\r\n\r\nI wish I could pretend I didn\'t need ya\r\n\r\nBut every touch is ooh-la-la-la\r\n\r\nIt\'s true, la-la-la\r\n\r\nOoh, I should be runnin\'\r\n\r\nOoh, you know I love it when you call me señorita\r\n\r\nI wish it wasn\'t so damn hard to leave ya\r\n\r\nBut every touch is ooh-la-la-la\r\n\r\nIt\'s true, la-la-la\r\n\r\nOoh, I should be runnin\'\r\n\r\nOoh, you keep me coming for ya\r\n\r\n[Verse 2: Camila Cabello with Shawn Mendes]\r\n\r\nLocked in the hotel\r\n\r\nThere\'s just some things that never change\r\n\r\nYou say we\'re just friends\r\n\r\nBut friends don\'t know the way you taste, la-la-la (La, la, la)', '300$', 'senorita.mp3', 'senorita.jpg', 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fullname`) VALUES
(1, 'quanvu', '2912', 'vu hong quan'),
(2, 'hung', '123321', 'nguyen phi hung'),
(3, 'vuu', '1233', NULL),
(4, 'hungnp', '10011', ''),
(5, 'quanvh', '291221', ''),
(6, 'tienloc', '2002', 'nguyen tien ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Chỉ mục cho bảng `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`singer_id`);

--
-- Chỉ mục cho bảng `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `singer_id` (`singer_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `singer`
--
ALTER TABLE `singer`
  MODIFY `singer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);

--
-- Các ràng buộc cho bảng `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`singer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
