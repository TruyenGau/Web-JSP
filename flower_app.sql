-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: flower-app
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `book_dtls`
--

DROP TABLE IF EXISTS `book_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_dtls` (
  `bookId` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(45) DEFAULT NULL,
  `author` varchar(555) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `bookcategory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_dtls`
--

LOCK TABLES `book_dtls` WRITE;
/*!40000 ALTER TABLE `book_dtls` DISABLE KEYS */;
INSERT INTO `book_dtls` VALUES (13,'PURE LOVE aa','BÃ³ hoa há»ng tráº¯ng ÄÆ°á»£c gÃ³i Äáº¹p máº¯t vÃ  thanh lá»ch. Lá»±a chá»n hoÃ n háº£o cho ngÃ y Valentine hoáº·c báº¥t ká»³ dá»p Äáº·c biá»t nÃ o.','122000','hoabanchay','Active','banchay1.webp','admin'),(14,'LỜI YÊU NGÂY DẠI','Bó hoa hồng bé xinh nhưng chất chứa nhiều tâm tình để bạn gửi tặng người thương cho mọi dịp đặc biệt.','222222','hoabanchay','active','banchay2.webp','admin'),(15,'NỤ CƯỜI EM','Bó hoa cực kỳ xinh xắn và trong trẻo được gói từ những cành hoa hồng song hỷ, hoa đồng tiền cùng điểm thêm chút tinh khôi từ hoa baby trắng chắc chắn sẽ là món quà tuyệt vời cho mọi dịp!','123000','hoabanchay','active','banchay3.webp','admin'),(16,'SUMMER DELIGHT','Sắc cam rực rỡ của những cành hoa hồng David mang lại nguồn năng lượng tích cực và sôi nổi như mùa hè. Cùng lan tỏa nguồn năng lượng thêm yêu đời này đến những người thân yêu trong dịp sinh nhật, chúc mừng,.... với bó hoa Summer Delight này nha!','230000','hoabanchay','active','banchay4.jpg','admin'),(17,'WOOD NYMPH','Wood Nymph - Bó hoa là món quà từ những vị thần rừng Nymph Hy Lạp cổ xưa, với những bông hồng hột gà, hạt ngọc đỏ. Đây là một món quà ý nghĩa, thanh tao để dành tặng cho người thân yêu của bạn!','340000','hoabanchay','active','banchay5.jpg','admin'),(18,'BÁNH  KEM LON TON','Bánh Kem Lon Ton là một bé gấu bông đáng yêu và ngọt ngào với tạo hình một chiếc bánh kem sinh nhật. Với bề ngoài mềm mại và màu sắc tươi sáng, bé gấu bông này thật sự thu hút ánh nhìn. Lớp lông mịn và dày được thiết kế theo hình dạng của một chiếc bánh kem với các chi tiết như kem và những viên đường màu sắc, tạo cảm giác như đang nhìn thấy một chiếc bánh ngon lành.','120000','thubong','active','thubong1.webp','admin'),(19,'THỎ DUDU MÁ PHÍNH','Thỏ Dudu Má Phính','340000','thubong','active','thubong2.webp','admin'),(20,'THỎ TRÁI CÂY CON','Thỏ Trái Cây Con 25cm (Giao ngẫu nhiên cà rốt và dâu tây)','12300','thubong','active','thubong3.webp','admin'),(21,'CÁ NÓC MẶT NGƠ','Cá Nóc Mặt Ngơ 45cm','345000','thubong','active','thubong4.webp','admin'),(22,'SHIBA BÉO PHÌ','Shiba Béo Phì 50cm','78000','thubong','active','thubong5.webp','admin'),(23,'VỊT VÀNG NGỚ NGẨN','Vịt Vàng Ngớ Ngẩn là một chú gấu bông khổng lồ, được làm từ chất liệu mềm mại và mịn màng, với lớp lông màu vàng rực rỡ. Khi ôm chặt, gấu bông vịt vàng mang lại cảm giác ấm áp và an toàn, như một người bạn đồng hành đáng yêu và trung thành. Chắc chắn, Vịt Vàng Ngớ Ngẩn sẽ là món quà lý tưởng cho bất kỳ ai.','12550','thubong','active','thubong6.webp','admin'),(24,'IRENIC','*KHÁCH HÀNG VUI LÒNG ĐẶT TRƯỚC 1 NGÀY ĐỐI VỚI SẢN PHẨM CÓ HOA TULIP*','123000','hoatulip','active','tulip1.jpg','admin'),(25,'SUMMER OF SOUL','Mang theo ánh nắng và sắc vàng rực rỡ của mùa hè, bó hoa tulip Summer Of Soul chính là món quà vô cùng ý nghĩa gửi tặng người thương. Cùng biến một ngày của người ấy thật rạng rỡ và hạnh phúc như những cành tulip vàng này nha.','345000','hoatulip','active','tulip2.webp','admin'),(26,'ARIANA','Gửi tặng người thương một chút nhẹ nhàng, một chút tinh khôi và một chút đáng yêu với những cành hoa Tulip hồng pastel này nha! ','345100','hoatulip','active','tulip3.webp','admin'),(27,'VIOREL','*KHÁCH HÀNG VUI LÒNG ĐẶT TRƯỚC 1 NGÀY ĐỐI VỚI SẢN PHẨM CÓ HOA TULIP*','230000','hoatulip','active','tulip4.jpg','admin'),(28,'MẪN NHI','Sự phối hợp giữa tulip và hoa hồng David Austin mang lại bó hoa màu sắc tươi sáng, rực rỡ nhưng vẫn trong trẻo từ sự bất đối xứng của dáng hình và độ dài ngắn của những cành hoa. Đây là sự lựa chọn tuyệt vời cho những dịp đặc biệt, khiến người thương rung động.','120000','hoatulip','active','tulip5.webp','admin'),(29,'LOVE SOMEONE','*KHÁCH HÀNG VUI LÒNG ĐẶT TRƯỚC 1 NGÀY ĐỐI VỚI SẢN PHẨM CÓ HOA TULIP*','300000','hoatulip','active','tulip6.jpg','admin'),(30,'KHÚC GIAO MÙA','Kệ hoa Khúc Giao Mùa là món quà ý nghĩa dành tặng trong các dịp quan trọng như khai trương, sinh nhật,...','123000','hoakhaitruong','active','khaitruong1.jpg','admin'),(31,'RISING STARS','Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa màu vàng. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ','123500','hoakhaitruong','active','khaitruong2.jpg','admin'),(32,'GLAMOROUS','Mỗi sự kiện đặc biệt hay dịp quan trọng nào sẽ trở nên lộng lẫy và hoành tráng hơn rất nhiều với vẻ đẹp đến từ kệ hoa đứng Glamorous. Cùng lan tỏa sắc màu của sự thành công và may mắn này đến những người thân yêu nhé!','340000','hoakhaitruong','active','khaitruong3.webp','admin'),(33,'REVELRY','Trân trọng và biến mọi khoảnh khắc đặc biệt trở nên thật ý nghĩa, hạnh phúc và hồng phát hơn với kệ hoa chúc mừng Revelry!','340000','hoakhaitruong','active','khaitruong4.webp','admin'),(34,'IMMORTAL','Kệ hoa hướng dương Immortal với vẻ đẹp rực rỡ và tỏa sáng từ hoa hướng dương cùng những nhành lan vũ nữ chắc chắn sẽ biến những dịp đặc biệt trở nên thật ý nghĩa!','890000','hoakhaitruong','active','khaitruong5.jpg','admin'),(35,'THE DREAMER','The Dreamer - Kệ hoa hồng kèm, cẩm chướng, đồng tiền mang đến sắc hồng dịu dàng, ngọt ngào. Đây là một món quà ngọt ngào dành cho những dịp đặc biệt!','344000','hoakhaitruong','active','khaitruong6.jpg','admin'),(36,'LY SỨ THIẾT KẾ TỐT NGHIỆP','Món quà tuyệt vời nhất trong dịp tốt nghiệp chính là thứ gắn liền với cá tính của người nhận, vậy thì ở đây có ly sứ thiết kế theo yêu cầu cực kỳ xinh xắn dành tặng cho người bạn thương!','300000','hoatotnghiep','active','tot1.webp','admin'),(37,'SUNNY SMILE','Bó hoa được gói đẹp mắt và hiện đại với sự kết hợp của Hướng Dương và Salem tím xinh xắn là lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.','56000','hoatotnghiep','active','tot2.jpg','admin'),(38,'HAPPY SUCCESS','Những cành cúc Tana bé xinh tô điểm cho cành cúc Ping Pong chính là món quà vô cùng phù hợp cho buổi lễ Tốt Nghiệp. Cùng lưu giữ những khoảnh khắc đầy cảm xúc ấy với bó hoa của sự thành công và hạnh phúc - Happy Success nhé! ','123000','hoatotnghiep','active','tot3.webp','admin'),(39,'HỘP QUÀ NGỌT NGÀO','Hộp quà siêu ngọt ngào này sẽ giúp tô điểm cuộc sống của bạn thêm rạng rỡ và thư thái hơn đấy! Một chiếc ly xinh xắn cùng nến thơm hương hoa sẽ giúp cho một ngày mệt mỏi trở nên nhẹ nhàng và thư thả.','45000','hoatotnghiep','active','tot4.webp','admin'),(40,'FRESH JOURNEY','Một bó hoa tươi xanh và ngọt ngào từ hoa Hướng Dương và Bibi chắc chắn sẽ lan tỏa hạnh phúc như một sự khởi đầu đầy năng lượng cho người thân yêu trong buổi lễ Tốt Nghiệp.','56000','hoatotnghiep','active','tot5.webp','admin'),(41,'JOYFUL LIFE','Bó hoa rực rỡ và tươi tắn với hoa Hướng Dương được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.','34000','hoatotnghiep','active','tot6.jpg','admin');
/*!40000 ALTER TABLE `book_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
INSERT INTO `book_order` VALUES (7,'BOOK-ORD-00547','truyenn le van','truyenle@gmail.com','addresss,la,c,s,123','123321123','aa','adfdf','333.0','COD'),(8,'BOOK-ORD-00929','truyenn le van','truyenle@gmail.com','addresss,la,c,s,123','123321123','sfsffssddd','adfdfdfdfdfdf','133333.0','COD'),(9,'BOOK-ORD-00128','truyenn le van','truyenle@gmail.com','sfsf,sf,sffs,sf,34','123321123','aa','adfdf','333.0','COD'),(10,'BOOK-ORD-00218','truyenn le van','truyenle@gmail.com','sfsf,sf,sffs,sf,34','123321123','sfsffssddd','adfdfdfdfdfdf','133333.0','COD'),(11,'BOOK-ORD-00640','tr','levantruyen57@gmail.com','tam xuan,tam xuan,da nang,123,12333','2','truyeenfgfgfg','dgdgdg','2.0','COD'),(12,'BOOK-ORD-00258','truyenn le van','truyenle@gmail.com','sdfdfdfdd,dfdf,fdf,dfdf,dfdf','123321123','bbb','bbb','323.0','COD'),(13,'BOOK-ORD-00829','truyenn le van','truyenle@gmail.com','sdfdfdfdd,dfdf,fdf,dfdf,dfdf','123321123','bbb','bbb','323.0','COD'),(14,'BOOK-ORD-00451','truyen dep trai','levantruyen57@gmail.com','dfdf,dfdf,dfdf,dfdf,fdf','2','Ngọt Ngào Như Hoa ','Admin','350000.0','COD'),(15,'BOOK-ORD-00966','truyen dep trai','levantruyen57@gmail.com','dfdf,dfdf,dfdf,dfdf,fdf','2','Ngọt Ngào Như Hoa ','Admin','350000.0','COD'),(16,'BOOK-ORD-00297','truyen dep trai','levantruyen57@gmail.com','Äf,dfdf,dfdf,dfd,df','2','Ngọt Ngào Như Hoa ','Admin','350000.0','COD'),(17,'BOOK-ORD-00333','truyen dep trai','levantruyen57@gmail.com','D,DFDF,DFDF,SDFF,SF','2','WOOD NYMPH','abc','340000.0','COD'),(18,'BOOK-ORD-0044','truyen dep trai','levantruyen57@gmail.com','D,DFDF,DFDF,SDFF,SF','2','NỤ CƯỜI EM','abc','123000.0','COD'),(19,'BOOK-ORD-00112','truyen dep trai','levantruyen57@gmail.com','adasadsdsdssfdfdfdfdf,dfdffdfdf,dfddfff,sfdsff,sfsf','2','WOOD NYMPH','Đã Đặt Hàng','340000.0','COD'),(20,'BOOK-ORD-00791','truyen','levantruyen57@gmail.com','D,Ã¢,DFDF,SDFF,SF','2','WOOD NYMPH','Đã Đặt Hàng','340000.0','COD'),(21,'BOOK-ORD-00849','truyen','levantruyen57@gmail.com','D,Ã¢,DFDF,SDFF,SF','2','WOOD NYMPH','Đã Đặt Hàng','340000.0','COD'),(22,'FLOWER-ORD-00531','abc','abc@gmail.com','dfgfg,ffgf,fgfg,fgfg,fgf','123','LỜI YÊU NGÂY DẠI','Đã Đặt Hàng','222222.0','COD'),(23,'FLOWER-ORD-0051','truyen','levantruyen57@gmail.com','D,fgf,DFDF,SDFF,SF','2','SUMMER DELIGHT','Đã Đặt Hàng','230000.0','COD');
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `bid` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `bookName` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (43,9,0,'truyeenfgfgfg','dgdgdg',2,2),(44,11,6,'Ngọt Ngào Như Hoa ','Admin',350000,350000),(64,14,9,'LỜI YÊU NGÂY DẠI','Đã Đặt Hàng',222222,222222);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'6','Äffd','truyenn le van'),(2,'6','dffdf','truyenn le van'),(3,'6','shop ban hoa dep qua','truyenn le van'),(4,'1','dffff','tr'),(5,'1','acbcbcbcb','truyen dep trai'),(6,'1','vinh ÄÃ¹','truyen dep trai'),(7,'1','vinh du','truyen dep trai'),(8,'9','ffgfgf','abcdffdfdf'),(9,'9','abc','abcdffdfdf');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phno` varchar(45) DEFAULT NULL,
  `pw` varchar(45) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'truyen','levantruyen57@gmail.com','2','12',NULL,NULL,NULL,NULL,NULL),(2,'trb','truyefn@gmail.com','12','12',NULL,NULL,NULL,NULL,NULL),(3,'sfsff','truyenww@gmail.com','123','123',NULL,NULL,NULL,NULL,NULL),(4,'tr','truyssssen@gmail.com','123','123',NULL,NULL,NULL,NULL,NULL),(5,'truyennnnn','t@gmail.com','12345','123',NULL,NULL,NULL,NULL,NULL),(6,'truyenn le van','truyenle@gmail.com','123321123','123',NULL,NULL,NULL,NULL,NULL),(7,'tr','truyenlv.21it@vku.udn.vn','222','123',NULL,NULL,NULL,NULL,NULL),(8,'tr','a@gmail.com','12','12',NULL,NULL,NULL,NULL,NULL),(9,'abcdffdfdf','abc@gmail.com','123','123',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-20 23:45:51
