-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: qldt
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_id_telegram` varchar(50) DEFAULT NULL,
  `role` int NOT NULL,
  `otp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'admin','admin','admin','a@gmail.com',NULL,1,NULL),(11,'Nguyễn Chiến Trinh','nct','nct','a@gmail.com',NULL,2,NULL),(12,'Nguyễn Thị Thu hằng','ntth','ntth','a@gmail.com',NULL,2,NULL),(13,'Ngô Trung Kiên','ntk','ntk','a@gmail.com',NULL,2,NULL),(14,'Trần Huy Long','thl','thl','a@gmail.com',NULL,2,NULL),(101,'Nguyễn Văn A','nva','nva','Chiendlb03@gmail.com','6965173306',3,NULL),(102,'Nguyễn Văn B','nvb','nvb','a@gmail.com',NULL,3,NULL),(103,'Nguyễn Văn C','nvc','nvc','a@gmail.com',NULL,3,NULL),(104,'Nguyễn Văn D','nvd','nvd','a@gmail.com',NULL,3,NULL),(105,'Nguyễn Văn E','nve','nve','a@gmail.com',NULL,3,NULL),(106,'Nguyễn Văn F','nvf','nvf','a@gmail.com',NULL,3,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseregistrations`
--

DROP TABLE IF EXISTS `courseregistrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseregistrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `term` varchar(50) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `grade` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `courseregistrations_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `courseregistrations_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseregistrations`
--

LOCK TABLES `courseregistrations` WRITE;
/*!40000 ALTER TABLE `courseregistrations` DISABLE KEYS */;
INSERT INTO `courseregistrations` VALUES (1,101,'BAS1150','Kỳ 1 năm học 2021-2022','2025-05-16 02:47:36',7.5),(2,101,'BAS1201','Kỳ 1 năm học 2021-2022','2025-05-16 02:47:36',9.4),(3,101,'BAS1203','Kỳ 1 năm học 2021-2022','2025-05-16 02:47:36',8.7),(4,101,'INT1154','Kỳ 1 năm học 2021-2022','2025-05-16 02:47:36',5.1),(5,101,'BAS1106','Kỳ 1 năm học 2021-2022','2025-05-16 02:47:36',7.6),(6,101,'BAS1105','Kỳ 1 năm học 2021-2022','2025-05-16 02:47:36',6.5),(7,101,'BAS1226','Kỳ 2 năm học 2021-2022','2025-05-16 02:47:36',5.8),(8,101,'BAS1151','Kỳ 2 năm học 2021-2022','2025-05-16 02:47:36',5.7),(9,101,'BAS1157','Kỳ 2 năm học 2021-2022','2025-05-16 02:47:36',7),(10,101,'BAS1204','Kỳ 2 năm học 2021-2022','2025-05-16 02:47:36',7.7),(11,101,'BAS1224','Kỳ 2 năm học 2021-2022','2025-05-16 02:47:36',7.5),(12,101,'INT1155','Kỳ 2 năm học 2021-2022','2025-05-16 02:47:36',4.5),(13,101,'BAS1107','Kỳ 2 năm học 2021-2022','2025-05-16 02:47:36',7.9),(14,101,'BAS1152','Kỳ 1 năm học 2022-2023','2025-05-16 02:47:36',10),(15,101,'BAS1158','Kỳ 1 năm học 2022-2023','2025-05-16 02:47:36',4.2),(16,101,'BAS1227','Kỳ 1 năm học 2022-2023','2025-05-16 02:47:36',4.9),(17,101,'ELE13105','Kỳ 1 năm học 2022-2023','2025-05-16 02:47:36',8),(18,101,'ELE1318','Kỳ 1 năm học 2022-2023','2025-05-16 02:47:36',9.2),(19,101,'TEL1368','Kỳ 1 năm học 2022-2023','2025-05-16 02:47:36',6.2),(20,101,'KNM1','Kỳ 1 năm học 2022-2023','2025-05-16 02:47:36',5.3),(21,101,'BAS1122','Kỳ 2 năm học 2022-2023','2025-05-16 02:47:36',4.1),(22,101,'BAS1159','Kỳ 2 năm học 2022-2023','2025-05-16 02:47:36',6.5),(23,101,'ELE1309','Kỳ 2 năm học 2022-2023','2025-05-16 02:47:36',4.1),(24,101,'ELE13101','Kỳ 2 năm học 2022-2023','2025-05-16 02:47:36',9.2),(25,101,'TEL1344','Kỳ 2 năm học 2022-2023','2025-05-16 02:47:36',5.4),(26,101,'TEL1345','Kỳ 2 năm học 2022-2023','2025-05-16 02:47:36',7.5),(27,101,'KNM2','Kỳ 2 năm học 2022-2023','2025-05-16 02:47:36',5.4),(28,101,'ELE1317','Kỳ 1 năm học 2023-2024','2025-05-16 02:47:36',6.5),(29,101,'TEL1337','Kỳ 1 năm học 2023-2024','2025-05-16 02:47:36',6.2),(30,101,'BAS1153','Kỳ 1 năm học 2023-2024','2025-05-16 02:47:36',7.7),(31,101,'TEL1338','Kỳ 1 năm học 2023-2024','2025-05-16 02:47:36',9.7),(34,101,'TEL1452','Kỳ 2 năm học 2023-2024','2025-05-16 03:11:18',9.6),(35,101,'TEL1464','Kỳ 2 năm học 2023-2024','2025-05-16 03:11:18',4.9),(36,101,'TEL1453','Kỳ 2 năm học 2023-2024','2025-05-16 03:11:18',10),(37,101,'TEL1448','Kỳ 2 năm học 2023-2024','2025-05-16 03:11:18',7),(38,101,'TEL1457','Kỳ 2 năm học 2023-2024','2025-05-16 03:11:18',7.1),(39,101,'TEL1460','Kỳ 2 năm học 2023-2024','2025-05-16 03:11:18',4.7),(40,101,'TEL1467','Kỳ 2 năm học 2023-2024','2025-05-16 03:11:18',4.2);
/*!40000 ALTER TABLE `courseregistrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` varchar(50) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `num_credit` int NOT NULL,
  `term` int NOT NULL,
  `notcal` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('BAS1105','Giáo dục quốc phòng',7,1,_binary ''),('BAS1106','Giáo dục thể chất 1',2,1,_binary ''),('BAS1107','Giáo dục thể chất 2',2,2,_binary ''),('BAS1122','Tư tưởng Hồ Chí Minh',2,4,_binary '\0'),('BAS1150',' Triết học Mác Lênin',3,1,_binary '\0'),('BAS1151','Kinh tế chính trị Mác Lênin',2,2,_binary '\0'),('BAS1152','Chủ nghĩa xã hội khoa học',2,3,_binary '\0'),('BAS1153','Lịch sử Đảng cộng sản Việt Nam',3,5,_binary '\0'),('BAS1157','Tiếng Anh (Course 1)',4,2,_binary '\0'),('BAS1158','Tiếng Anh (Course 2)',4,3,_binary '\0'),('BAS1159','Tiếng Anh (Course 3) ',4,4,_binary '\0'),('BAS1201','Đại số',3,1,_binary '\0'),('BAS1203',' Giải tích 1',3,1,_binary '\0'),('BAS1204','Giải tích 2',3,2,_binary '\0'),('BAS1224','Vật lý 1 và thí nghiệm',4,2,_binary '\0'),('BAS1226','Xác suất thống kê',2,2,_binary '\0'),('BAS1227','Vật lý 2 và thí nghiệm',4,3,_binary '\0'),('đại số ','BAS1201',2,2,_binary '\0'),('ELE1309','Điện tử số',3,4,_binary '\0'),('ELE13101','Xử lí tín hiệu số ',3,4,_binary '\0'),('ELE13105','Linh Kiện và mạch điện tử',3,3,_binary '\0'),('ELE1317','Kỹ thuật vi xử lí',3,5,_binary '\0'),('ELE1318','Lý Thuyết Mạch ',3,3,_binary '\0'),('INT1154','Tin học cơ sở 1',2,1,_binary '\0'),('INT1155','Tin học cơ sở 2',4,2,_binary '\0'),('KNM1','Kỹ năng mềm 1',1,3,_binary ''),('KNM2','Kỹ năng mềm 2',1,4,_binary ''),('TEL1337','Toán rời rạc',3,5,_binary '\0'),('TEL1338','Kiến trúc máy tính ',2,5,_binary '\0'),('TEL1340 ','Kỹ thuật lập trình',3,5,_binary '\0'),('TEL1344','Lý thuyết truyền tin',3,4,_binary '\0'),('TEL1345','Kỹ thuật siêu cao tần',3,4,_binary '\0'),('TEL1368','Tín hiệu hệ thống',3,3,_binary '\0'),('TEL1421 ','Truyền sóng và ăng ten',3,5,_binary '\0'),('TEL1448','Lập trình hướng đôí tượng  ',3,6,_binary '\0'),('TEL1452','Kiến Trúc và giao thức IoT',2,6,_binary '\0'),('TEL1453','Học máy và ứng dụng',2,6,_binary '\0'),('TEL1457','Hệ thống nhúng IoT',3,6,_binary '\0'),('TEL1460','Lưu trữ và phân tích dữ liệu',3,6,_binary '\0'),('TEL1464','Giải pháp IoT tiên tiến',2,6,_binary '\0'),('TEL1467','Hệ thống cảm biến',3,6,_binary '\0');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupregistrations`
--

DROP TABLE IF EXISTS `groupregistrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupregistrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `groupregistrations_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `groupregistrations_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupregistrations`
--

LOCK TABLES `groupregistrations` WRITE;
/*!40000 ALTER TABLE `groupregistrations` DISABLE KEYS */;
INSERT INTO `groupregistrations` VALUES (5,101,'TEL1467_N02','2025-05-16 04:22:45');
/*!40000 ALTER TABLE `groupregistrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `group_id` varchar(50) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `time` varchar(255) NOT NULL,
  `teacher_id` int NOT NULL,
  `room` varchar(50) NOT NULL,
  `max_students` int NOT NULL,
  `available_slots` int NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES ('TEL1421 _N02','Nhóm 2','TEL1421 ','Thứ 2, kíp 2',11,'3',4,4),('TEL1448_N03','Nhóm 3','TEL1448','Thứ 4, kíp 3',11,'203-A3',40,40),('TEL1460_N01','Nhóm 1','TEL1460','Thứ 2, kíp 2',12,'203-A3',50,51),('TEL1467_N02','Nhóm 2','TEL1467','Thứ 3, kíp 1',11,'204-A3',30,29);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'Thông báo: Lịch đăng ký học kỳ 1 năm học 2023-2024 tuần từ 17/7 đến 23/7/2023','I- Đăng ký Lịch học khoá 2022:\n1/ D22 các ngành VT, Đ-ĐT, CNĐPT, TTĐPT: từ 12h ngày 17/7 đến 24h ngày 19/7\n2/ D22 các ngành CNTT, ATTT, KHMT: từ 12h ngày 18/7 đến 24h ngày 20/7\n3/ D22 các ngành QTKD, KT, MR, TMĐT, CNTC, BC: từ 12h ngày 19/7 đến 24h ngày 21/7\n* Theo đề nghị của Khoa Kế toán, đối với học phần FIA1326 (Tài chính tiền tệ) sinh viên ngành Kế toán chỉ đăng ký các nhóm 1-2-3; sinh viên\n ngành CN tài chính chỉ đăng ký các nhóm 4-5;\nII- Nhận đơn hỗ trợ đăng ký khoá 2022:\n1/ Sinh viên cần hỗ trợ gửi đơn qua form tại link:  https://forms.office.com/r/CQ2MAT1XSc   \n2/ Thời gian nộp đơn:\n- Toàn bộ các lớp khoá 2022 nộp đơn từ 0h ngày 22/7 đến 24h ngày 23/7.\nIII- Lưu ý thêm:\n- Trong các ngày đăng ký hệ thống sẽ tạm dừng từ 10h đến 12h.\n- Sinh viên cần thực hiện đăng ký trước đối với các học phần có ít nhóm, các học phần có thí nghiệm thực hành. Đối với các học phần có nhiều nhóm hoặc chỉ học lý thuyết thì thực hiện đăng ký sau.\n- Khi chưa thực hiện đăng ký đủ các học phần trong lần đăng ký đầu tiên, sinh viên tiếp tục thực hiện trong các ngày tiếp theo của thời gian đăng ký; Phòng Giáo vụ thường xuyên theo dõi và điều chỉnh lịch để thuận lợi nhất cho sinh viên.\n- Số điện thoại hỗ trợ: 096.847.2319  (8h30-11h, 14h-16h30).','2025-05-16 02:47:35'),(2,'Thông báo: Mở hệ thống cho sinh viên đăng ký thời khóa biểu các lớp học phần trong đợt học lớp riêng Học kỳ I – năm học 2023-2024','Hệ thống cho sinh viên đăng ký thời khóa biểu các lớp học phần trong đợt học lớp riêng Học kỳ I – năm học 2023-2024, cụ thể danh mục các lớp học phần mở, không mở sinh viên xem chi tiết tại thông báo:\nhttps://portal.ptit.edu.vn/giaovu/thong-bao-vv-dang-ky-thoi-khoa-bieu-cac-lop-hoc-phan-trong-dot-hoc-lop-rieng-hoc-ky-i-nam-hoc-2023-2024/\n1 - Đối tượng: Sinh viên khoá 2019, 2020 và các khoá trước còn thời hạn đào tạo theo quy định, đã hoàn thành nộp học phí đến hết học kỳ 1 năm học 2023-2024 theo thông báo của phòng Tài chính kế toán và đã có đăng ký nguyện vọng trong đợt này.\n2 - Thời gian: đăng ký online trên hệ thống QLĐT: https://qldt.ptit.edu.vn từ 12h00 ngày 19/10/2023 (thứ 5) đến 24h00 ngày 22/10/2023 (chủ nhật).\n3 - Cách đăng ký: truy nhập hệ thống qldt -> tab “Đăng ký môn học -> tại ô bên cạnh “Lọc theo môn học” nhập Mã môn học cần đăng ký -> bấm vào “Click chọn” nhóm môn học cần đăng ký (lưu ý chọn đúng mã môn cần học lại, cải thiện).\n* Các lưu ý:\nSinh viên không được đăng ký quá 12 tín chỉ (hoặc 5 học phần); trường hợp các học phần đã đăng ký nguyện vọng nhưng không đăng ký được lịch học do không mở lớp, trùng lịch thì sinh viên được phép đăng ký thay thế bằng học phần khác có mở trong đợt học.\nSinh viên phải cân nhắc kỹ trước khi đăng ký mỗi học phần để tự đảm bảo thời gian cho các nội dung học tập khác;\nĐối với các trường hợp không đăng ký nguyện vọng trong đợt học này, Học viện tạo điều kiện cho sinh viên được đăng ký bổ sung lịch học bằng hình thức online trên hệ thống qldt (trong trường hợp các lớp học còn chỗ) từ 12h00 ngày 20/10/2023 (thứ 6).\nPhòng Giáo vụ không tiếp nhận Đơn hỗ trợ đăng ký bổ sung hoặc huỷ đăng ký trong đợt đăng ký này, trong thời gian đăng ký các nội dung liên quan cần giải đáp sinh viên liên hệ số 0917235206 (giờ hành chính)./.\nTrân trọng ./.','2025-05-16 02:47:35'),(3,'Thông báo V/v: Mở hệ thống Đăng ký chuyên ngành D20VT','Kính gửi:  Sinh viên các lớp D20VT\nHệ thống sẽ mở cho sinh viên Đại học chính quy khóa 2020 ngành Kỹ thuật điện tử viễn thông đăng ký nguyện vọng chuyên ngành theo kế hoạch, cụ thể:\n1. Các chuyên ngành đăng ký:\n- Thông tin vô tuyến và di động. Mã: VTVT\n- Hệ thống IoT. Mã: VTHI\n- Mạng và dịch vụ Internet. Mã: VTMD\n2. Nguyên tắc xét và cách đăng ký:\n- Mỗi sinh viên được đăng ký tối đa 02 nguyện vọng cho 02 chuyên ngành học;\n- Mỗi chuyên ngành lấy số lượng tối đa 140 sinh viên;\n- Ưu tiên nguyện vọng 1 và xét theo GPA đến khi đủ số lượng sinh viên của mỗi nguyện vọng.\n- Cách đăng ký: Đăng nhập vào hệ thống/Đăng ký nguyện vọng:\n+ “Môn học”: Nhập mã chuyên ngành tương ứng.\n+ “Lý do” : Nguyện vọng 1, Nguyện vọng 2 tương ứng từng chuyên ngành.\n+”Đăng ký”: Để lưu nguyện vọng.\n* Lưu ý: Những sinh viên không đăng ký, không điền đầy đủ thông tin (nguyện vọng 1, 2), Đăng ký sai (3 nguyện vọng).  Học viện sẽ bố trí vào chuyên ngành còn trống chỗ\nPhòng Giáo vụ thông báo tới Ban cán sự các lớp, các sinh viên có liên quan để biết và nghiêm túc thực hiện.\nTrân trọng!','2025-05-16 02:47:35'),(4,'Thông báo V/v: Đăng ký môn học thay thế tốt nghiệp/ Đồ án tốt nghiệp các ngành khối kỹ thuật khóa 2019','Thực hiện theo kế hoạch đăng ký môn học thay thế tốt nghiệp/ đồ án tốt nghiệp của các ngành khối kỹ thuật khóa 2019, hệ thống QLĐT sẽ mở cho sinh viên đăng ký theo đúng kế hoạch, cụ thể:\nClick xem: Toàn văn thông báo, danh mục các môn học thay thế tốt nghiệp/ đồ án tốt nghiệp\n1.    Đối tượng:\n-   Sinh viên các ngành khối kỹ thuật hệ Đại học chính quy khóa 2019 thuộc diện đủ điều kiện làm Đồ án hoặc học các học phần thay thế tốt nghiệp theo thông báo của Học viện.\n-   Sinh viên các ngành khối kỹ thuật hệ đại học chính quy các khóa từ 2018 trở về trước (còn hạn đào tạo) còn nợ các học phần thay thế tốt nghiệp.\n2.    Thời gian đăng ký: Sinh viên đăng ký online trên hệ thống QLĐT\na. Các ngành Công nghệ thông tin, An toàn Thông tin, Công nghệ Kỹ thuật Điện – Điện tử, Công nghệ Đa phương tiện:  từ 12h00 ngày 20/09/2023 đến 24h ngày 23/09/2023.\nb. Ngành Kỹ thuật Điện tử Viễn thông:\n- Sinh viên làm Đồ án tốt nghiệp đăng ký từ: từ 12h00 ngày 20/09/2023 đến 24h00 ngày 23/09/2023\n- Sinh viên đăng ký học phần thay thế tốt nghiệp:\n+ Từ 12h00 ngày 20/09/2023 đến 12h00 ngày 21/09/2023 đăng ký học phần bắt buộc của mỗi chuyên ngành;\n+ Từ 14h00 ngày 21/09/2023 đến 24h00 ngày 23/09/2023 đăng ký học phần tự chọn của mỗi chuyên ngành.\nc. Sinh viên các khóa trước đăng ký học lại môn học thay thế tốt nghiệp: từ 12h00 ngày 25/09/2023 đến 24h00 ngày 26/09/2023 (không nộp đơn)\n3.    Lưu ý:\n- Các sinh viên xin chuyển hình thức từ làm Đồ án tốt nghiệp sang học các học phần thay thế cần đăng ký môn học theo thời gian và nội dung trên. Sinh viên làm đơn xin chuyển nguyện vọng từ làm Đồ án tốt nghiệp sang học học phần thay thế theo thông báo của Hội đồng xét tốt nghiệp.\nSinh viên cần hỗ trợ đăng ký làm Đơn và gửi email về phòng Giáo vụ (thầy Nguyễn Ngọc Quang, email: quangnn@ptit.edu.vn từ ngày 0h ngày 25/09/2023 đến hết 24h00 ngày 26/09/2023.\nLưu ý: Sinh viên tự chịu trách nhiệm với thời gian học tập đã đăng ký của cá nhân, Phòng Giáo vụ chỉ giải quyết đối với các email sinh viên do Học viện đã cấp. Các thắc mắc liên quan, sinh viên liên hệ theo số điện thoại 0917235206 trong giờ hành chính (8h30-11h30; 14h00-16h30) để được giải đáp.\nTrân trọng./.','2025-05-16 02:47:35'),(5,'Thông báo V/v: Yêu cầu sinh viên kiểm tra điểm học kỳ II và học kỳ phụ (hè) năm học 2022-2023 được cập nhật trên QLĐT','Kính gửi:  Sinh viên các lớp đại học chính quy khóa  2019, 2020, 2021, 2022  và các khóa khác còn thời hạn đào tạo - cơ sở Hà Nội\nThực hiện kế hoạch đào tạo năm học 2022-2023, Trung tâm Khảo thí & ĐBCLGD và Phòng Giáo vụ đã hoàn thành việc cập nhật điểm học kỳ II, học kỳ phụ (hè) năm học 2022-2023 các khóa 2019, 2020, 2021, 2022 và các khóa khác còn hạn đào tạo trên hệ thống Quản lý đào tạo (https://qldt.ptit.edu.vn).\nPhòng Giáo vụ yêu cầu các sinh viên đăng nhập vào hệ thống QLĐT kiểm tra, rà soát điểm của mình.\nCác trường hợp sai lệch thông tin về điểm đề nghị sinh viên gửi email (phải gửi từ email được Học viện cấp) đến cô Hoàng Kim Cúc – phòng Giáo vụ – hkcuc@ptit.edu.vn trước 17h00 ngày 22/09/2023 để được xem xét giải quyết.\nLưu ý: Nội dung email sinh viên phải ghi rõ các thông tin thắc mắc, kèm số điện thoại liên lạc.\nTrân trọng ./.','2025-05-16 02:47:35'),(6,'Thông báo: kết quả giải quyết đơn hỗ trợ đăng ký học kỳ 1 năm học 2023-2024','Phòng Giáo vụ đã hoàn thành việc xử lý đơn hỗ trợ đăng ký của các khoá 2020, 2021 và 2022; Đề nghị toàn bộ sinh viên đã làm đơn kiểm tra, rà soát lại lịch học cá nhân, cụ thể như sau:\n1/ Các trường hợp đã được hỗ trợ xử lý đăng ký: Các sinh viên đủ điều kiện đăng ký học, đã làm và nộp đơn đúng theo nội dung, thời gian quy định\n2/ Các trường hợp không hỗ trợ xử lý: Các sinh viên chưa hoàn thành nộp học phí trong thời gian quy định; Các trường hợp  nộp đơn \nkhông đúng thời gian hoặc nội dung quy định (Học phần học lại, học cải thiện hoặc học phần không tổ chức trong kỳ học)\n3/ Sinh viên truy nhập hệ thống quản lý đào tạo (qldt) để biết lịch học cá nhân sau khi được hỗ trợ đăng ký, nếu có vấn đề thắc mắc liên \nhệ số điện thoại 096.847.2319 từ 26/07 đến 28/07/2023 để được giải đáp (9h-11h, 14h30-16h30).','2025-05-16 02:47:35'),(7,'hello','báo cáo oop','2025-05-16 04:23:56');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28  1:13:23
