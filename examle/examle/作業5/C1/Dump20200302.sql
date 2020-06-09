CREATE DATABASE `AI_Bartender` /*!40100 DEFAULT CHARACTER SET utf8*/ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `AI_Bartender`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: AI_Bartender
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `PO`
--

DROP TABLE IF EXISTS `PO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PO` (
  `id` varchar(20) NOT NULL,
  `total` int NOT NULL,
  `owner` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `freightId` varchar(50) DEFAULT NULL,
  `freightName` varchar(50) DEFAULT NULL,
  `createUser` varchar(50) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateUser` varchar(50) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PO.ownerToUsers.email` (`owner`),
  KEY `FK_PO.createUserToUsers.email` (`createUser`),
  KEY `FK_PO.updateUserToUsers.email` (`updateUser`),
  KEY `FK_POStatus.poStatusToPO.status` (`status`),
  CONSTRAINT `FK_PO.createUserToUsers.email` FOREIGN KEY (`createUser`) REFERENCES `Users` (`email`),
  CONSTRAINT `FK_PO.ownerToUsers.email` FOREIGN KEY (`owner`) REFERENCES `Users` (`email`),
  CONSTRAINT `FK_PO.updateUserToUsers.email` FOREIGN KEY (`updateUser`) REFERENCES `Users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PO`
--

LOCK TABLES `PO` WRITE;
/*!40000 ALTER TABLE `PO` DISABLE KEYS */;
/*!40000 ALTER TABLE `PO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PODetail`
--

DROP TABLE IF EXISTS `PODetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PODetail` (
  `poId` varchar(20) NOT NULL,
  `wineId` varchar(10) NOT NULL,
  `price` int NOT NULL,
  `unit` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  `subtotal` int NOT NULL,
  PRIMARY KEY (`poId`,`wineId`),
  KEY `FK_PODetail.wineIdToWine.id` (`wineId`),
  CONSTRAINT `FK_PODetail.poIdToPO.id` FOREIGN KEY (`poId`) REFERENCES `PO` (`id`),
  CONSTRAINT `FK_PODetail.wineIdToWine.id` FOREIGN KEY (`wineId`) REFERENCES `Wine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PODetail`
--

LOCK TABLES `PODetail` WRITE;
/*!40000 ALTER TABLE `PODetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `PODetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POStatus`
--

DROP TABLE IF EXISTS `POStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `POStatus` (
  `poId` varchar(20) NOT NULL,
  `poStatus` varchar(50) NOT NULL,
  `updateUser` varchar(50) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`poId`,`poStatus`),
  KEY `FK_POStatus.poStatusToPO.status` (`poStatus`),
  KEY `FK_POStatus.updateUserToUsers.email` (`updateUser`),
  CONSTRAINT `FK_POStatus.poIdToPO.id` FOREIGN KEY (`poId`) REFERENCES `PO` (`id`),
  CONSTRAINT `FK_POStatus.poStatusToPO.status` FOREIGN KEY (`poStatus`) REFERENCES `PO` (`status`),
  CONSTRAINT `FK_POStatus.updateUserToUsers.email` FOREIGN KEY (`updateUser`) REFERENCES `Users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POStatus`
--

LOCK TABLES `POStatus` WRITE;
/*!40000 ALTER TABLE `POStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `POStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SommelierChoice`
--

DROP TABLE IF EXISTS `SommelierChoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SommelierChoice` (
  `id` varchar(10) NOT NULL,
  `dish` varchar(50) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_SommelierChoice.idToWine.id` FOREIGN KEY (`id`) REFERENCES `Wine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SommelierChoice`
--

LOCK TABLES `SommelierChoice` WRITE;
/*!40000 ALTER TABLE `SommelierChoice` DISABLE KEYS */;
INSERT INTO `SommelierChoice` VALUES ('AU1002','猪肉','Gift/Sad'),('AU1003','牛肉','Gift/Sad'),('AU1013','海鲜','Party/Romance'),('CL1001','牛肉','Gift/Sad'),('CL1005','猪肉','Gift/Sad'),('CL1008','羊肉','Gift/Sad'),('CL1011','雞肉','Party/Romance'),('FR1006','羊肉','Gift/Sad'),('FR1007','牛肉','Gift/Sad'),('FR1009','蔬食','Party/Romance'),('FR1012','蔬食','Party/Romance'),('FR1013','雞肉','Party/Romance'),('FR1014','蔬食','Party/Romance'),('FR1015','海鲜','Party/Romance'),('US1003','羊肉','Gift/Sad'),('US1007','猪肉','Gift/Sad'),('US1014','海鲜','Party/Romance'),('US1015','雞肉','Party/Romance');
/*!40000 ALTER TABLE `SommelierChoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `email` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `createUser` varchar(50) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateUser` varchar(50) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`email`),
  KEY `FK_Users.createUserToUsers.email` (`createUser`),
  KEY `FK_Users.updateUserToUsers.email` (`updateUser`),
  CONSTRAINT `FK_Users.createUserToUsers.email` FOREIGN KEY (`createUser`) REFERENCES `Users` (`email`),
  CONSTRAINT `FK_Users.updateUserToUsers.email` FOREIGN KEY (`updateUser`) REFERENCES `Users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('admin','管理者','1234','0912-123-456','台北市','2020-03-02','管理者','active','admin','2020-03-02 20:00:00','admin','2020-03-02 20:00:00');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wine`
--

DROP TABLE IF EXISTS `Wine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Wine` (
  `id` varchar(10) NOT NULL,
  `enName` varchar(200) DEFAULT NULL,
  `chName` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `percent` decimal(16,2) DEFAULT NULL,
  `ml` int DEFAULT NULL,
  `price` int NOT NULL,
  `unit` varchar(10) NOT NULL,
  `place` varchar(100) NOT NULL,
  `grape` varchar(100) NOT NULL,
  `feature` varchar(5000) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `imgPath` varchar(200) DEFAULT NULL,
  `createUser` varchar(50) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateUser` varchar(50) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Wine.createUserToUsers.email` (`createUser`),
  KEY `FK_Wine.updateUserToUsers.email` (`updateUser`),
  CONSTRAINT `FK_Wine.createUserToUsers.email` FOREIGN KEY (`createUser`) REFERENCES `Users` (`email`),
  CONSTRAINT `FK_Wine.updateUserToUsers.email` FOREIGN KEY (`updateUser`) REFERENCES `Users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wine`
--

LOCK TABLES `Wine` WRITE;
/*!40000 ALTER TABLE `Wine` DISABLE KEYS */;
INSERT INTO `Wine` VALUES ('AU1001','BENCHMARK CABERNET SAUVIGNON','格萊堡 標竿卡本內紅葡萄酒','紅酒',14.50,750,535,'瓶','Australia','希哈 Syrah | Shiraz','標竿系列的高品質及風味口感向來為人稱讚。酒莊只選取最好地塊的葡萄釀造，務求帶給人們品質優異，果香濃郁，酒體均衡的佳釀。 \n帶有藍莓、黑加崙、黑醋栗及辛香料等香氣。中等略厚重的酒體，入口後可感受濃郁果香及辛香料氣息。單寧圓潤，尾韻細緻優雅。','已上架','imgs/AU1001.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1002','Chateau Tanunda Shiraz Cabernet Franc','塔南達酒莊 希哈卡本內紅酒','紅酒',14.50,750,580,'瓶','Australia','卡本內佛朗 Cabernet Franc\n希哈 Syrah | Shiraz','伴隨著黑醋栗，黑莓和香草的香味。充滿活力，黑色莓果香味。 韻味細長，細緻的單寧味來自十六個月法國新和舊的橡木桶中陳化。當場開瓶風味佳也可以珍藏酒窖長達至十年。','已上架','imgs/AU1002.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1003','Penfolds Bin 8 Cabernet Shiraz','奔富 BIN 8 卡本內希哈紅酒','紅酒',14.50,750,1100,'瓶','Australia','卡本內蘇維翁 Cabernet Sauvignon\n希哈 Syrah | Shiraz','香氣: 初始的香味主要是充足的胡椒粉和薄荷味道，解析來是香草和糖化水果/红枣和甘草的香味。 橡木的香氣非常柔和，淡淡，平和的。\n風味: 新鲜活潑，完整、充分、平衡是主要的特点，形成了良好悠長的酒體。在黑巧克力、摩卡咖啡的風味之後，泥土和蘑菇的複雜性仍然和諧地展現出來。 红色水果風味增添了誘人的單寧、酸度以及色調。','已上架','imgs/AU1003.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1004','Mitolo Jester Cabernet Sauvignon','米多羅 名丑卡本內紅葡萄酒','紅酒',13.50,750,935,'瓶','Australia','卡本內蘇維翁 Cabernet Sauvignon\n希哈 Syrah | Shiraz','顏色：深紅寶石色澤\n風味：20%葡萄果實採用義大利Amarone傳統手法風乾，並於尚品客熟成之法國桶陳年9個月，因而被暱稱為”迷你版尚品客”。滿溢新鮮黑醋栗、紫羅蘭以及典型菸草葉與薄荷草本氣息；酒體飽滿，帶有紅櫻桃、黑醋栗等香氣，交雜了誘人的黑色巧克力與菸草風味，單寧架構溫暖宜人。','已上架','imgs/AU1004.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1005','Wolf Blass Grey Label Cabernet Shiraz','禾富 灰牌卡本內希哈紅酒','紅酒',13.50,750,1199,'瓶','Australia','卡本內蘇維翁 Cabernet Sauvignon\n希哈 Syrah | Shiraz','色澤: 深寶石紅色，邊緣略有一些紫色光暈。\n\n香氣: 主要為強烈的黑色果實芬芳，如黑櫻桃與黑醋栗，微妙的礦物氣息與橡木桶香氣加深了酒體的複雜表現。\n\n口感: 藍莓及紅莓果的滋味層層表現而出，隨之而來的是礦物氣息、甜型香料與橡木桶香氣的表現。口感厚實而優雅，精巧的單寧帶來滑順的餘韻。\n釀造: 各批次採收的葡萄分別熟成；在60%舊橡木桶、12%新法國橡木桶、12%舊美國桶和8%新美國橡木桶中陳釀15個月。.','已上架','imgs/AU1005.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1006','Mitolo Serpico Cabernet Sauvignon','米多羅 尚品客卡本內紅葡萄酒','紅酒',13.50,750,2125,'瓶','Australia','卡本內蘇維翁 Cabernet Sauvignon','顏色：深紅寶石色澤\n風味：尚品客之名源自70年代紐約一名不與惡勢力同流合污的警官，米多羅尚品客藉此寓意，打破成規，採用傳統義大利Amarone風乾手法釀造，欲打造一款超凡獨特的澳洲卡本內，為米多羅酒莊的旗艦卡本內酒款。手工採摘葡萄果實先於控制溫度及濕度下風乾6週才進行釀造，並於全新橡木桶陳年10個月(80%法國桶；20%美國桶)；香氣濃郁奔放，帶有黑醋栗、菸葉、雪松木、香料等多層次香氣；口感華麗複雜而強勁，充滿多層次黑莓果、金黃巧克力和香料氣息，綿長餘韻帶有一絲草本氣息在口中迴盪不已，擁有8-12年的陳年潛力。','已上架','imgs/AU1006.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1007','Penfolds Bin 389 Cabernet Shiraz','奔富 BIN 389 卡本內希哈紅酒','紅酒',13.50,750,2500,'瓶','Australia','卡本內蘇維翁 Cabernet Sauvignon\n希哈 Syrah | Shiraz','香氣: 第一印象 ? 當然是 Penfolds 的佳釀 ! 在不同桶發酵時可能有細微差别， 整體細緻果酸味支撑，還有淡淡的橡木特色，也許是所有列出的味道都有吧 ！散發出更加濃郁的奶油蛋塔味、焦糖布丁味道，還有肉汁的味道， 接著有黑布丁、小羊雜和瀝青味。 此外還散發著日本李子、無花果和榲桲醬的果香，芬香撲鼻。\n風味: 迷人、充滿誘惑的。小酌一口， 可以感覺到持續的複雜風味和質地。濃厚的果香籠罩著， 還有豐富黏密的味道——燕麥、大麥、小麥胚…濃郁黏稠，豐富多汁，令人垂涎的果酸結合 2015 年份格外柔和的單寧。細微到難以查覺的橡木特色，一款美妙平衡的佳釀。','已上架','imgs/AU1007.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1008','Penfolds Bin 707 Cabernet Sauvignon','奔富 BIN 707 卡本內紅酒','紅酒',13.50,750,15000,'瓶','Australia','卡本內蘇維翁 Cabernet Sauvignon','香氣: 熱帶風情。異常濃郁的香氣——像在舊花園内新鮮的深紅玫瑰、薰衣草與依蘭。酒液香氣在酒杯裡慢慢改變，慢慢與具辨識度的Bin 707 品種風範相契合。然而進度不快......需要置於玻璃杯中直至醒酒完成！100% 全新橡木；。20 個月？已經完美融入至佳釀裡了。\n風味: 口感一致。均衡且富有表現力。許多風味 —— ‘純粹天然’的味道（藍莓水果），‘衍生品’（蘭姆酒、葡萄乾巧克力/ 新鮮烘焙的義大利節日糕點/ 不含奶黄的蛋糕）。單寧—— 集中、細顆粒、無角、無塊狀的。橡木——相互協調柔和！平易近人，可以立刻飲用，或窖藏 10 年甚至 20 年。','已上架','imgs/AU1008.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1009','SHAW+SMITH ADELAIDE HILLS SAUVIGNON BLANC','澳洲 蕭-史密斯酒莊 蘇維濃白酒','白酒',12.00,750,600,'瓶','Australia','白蘇維翁 Sauvignon Blanc','阿德萊德山白蘇維翁。 口感濃郁，帶有百香果，水梨的活潑香氣，通常還帶有大量新鮮的酸橙水果味，擁有內斂的熱帶水果味和令人垂涎的酸度。','已上架','imgs/AU1009.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1010','Jacobs Creek Chardonnay','傑卡斯 經典夏多內白酒','白酒',13.00,750,380,'瓶','Australia','夏多內 Chardonnay','色澤: 光澤淡金黃色、夾帶些微綠色\n\n香氣: 細微烘烤橡木的氣息，帶有新鮮哈密瓜和核果芳香\n\n口感: 柔和圓潤，帶有甜瓜、輕盈果香、烘烤橡木味道，乳脂般回味','已上架','imgs/AU1010.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1011','Penfolds Koonunga Hill Chardonnay','奔富 庫濃格 夏多內白酒','白酒',13.00,750,680,'瓶','Australia','夏多內 Chardonnay','奔富酒莊酒窖系列Bin Series 多依循當初存放酒款的酒窖編碼而命名，因而有了Bin 707、Bin 389 等稱號。由一手打造出澳洲頂級酒Grange的傳奇釀酒師─ Max Schubert始釀的Bin 389，部分酒液在前一年釀過Grange的橡木桶中陳年，價格卻只要其十分之一左右，因此又被稱做「Baby Grange」。自1960年第一個創始年份上市以來，Bin 389一直是愛酒人士首推的超值酒款！BIN 389結合Cabernet Sauvignon的優雅及Shiraz的濃郁，充分表現出奔富的註冊商標-果香與橡木均衡，帶有豐富的品種特色及中長期的儲存潛力。','已上架','imgs/AU1011.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1012','Mitolo Jester Vermentino','米多羅 名丑維蒙蒂諾白葡萄酒','白酒',13.00,750,840,'瓶','Australia','維蒙蒂諾Vermentino','顏色：細緻的淡稻草色澤\n風味：帶有濃郁蘋果花、芭樂以及百香果香氣，還有些許的草本植物、馬鞭草氣味；口感新鮮活潑，滿溢檸檬冰砂以及熱帶水果氣息，新鮮多汁的口感與其完整的酸度結構達到美好均衡，非常適合搭餐享用。','已上架','imgs/AU1012.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1013','Heartland Stickleback Pinot Gris 2012','赫蘭酒莊 刺魚 灰皮諾精釀白酒 2012','白酒',12.00,750,585,'瓶','Australia','灰皮諾Pinot Gris','呈現淺檸檬綠色，釋放甜瓜，梨子，蘋果等迷人香氣，口感鮮活，帶有柑橘與香料元素．灰皮諾的微量單寧增添了酒體的緊致與結構，少許維歐涅則造就了圓潤芳醇的口感，酸度爽脆的尾韻平衡了繽紛的水果風味，為一款中等酒體，無經橡木桶的干白酒。','已上架','imgs/AU1013.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1014','d\'Arenberg The Dry Dam Riesling 2019','達令堡酒莊 澳洲甘泉麗絲玲白酒 2019','白酒',10.00,750,774,'瓶','Australia','夏多內 Chardonnay','花香和淡淡的柑橘調性，漸漸帶出辛香料、青蘋果、玫瑰花瓣和新鮮花梗新切面透出的香氣。酒體舒展開後，土壤中的礦物氣味也慢慢地展現。此酒口感年輕，骨架結構優雅且豐腴，飽含青蘋果、葡萄柚、甜瓜皮和熱帶水果的豐富口感。甘甜餘韻極為持久。','已上架','imgs/AU1014.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('AU1015','Thomson Estate Lookout Ridge Chardonnay 2018','湯姆森莊園夏多內白葡萄酒(2018)','白酒',13.50,750,599,'瓶','Australia','夏多內 Chardonnay','湯姆森莊園最初由澳大利亞葡萄酒先驅之一沃爾特湯姆森於1838年創立。\n目前莊園由Byrne家族擁有和經營，Byrne家族在南澳大利亞釀造葡萄酒已有3代，釀酒團隊由前Penfolds高級釀酒師Peter Gajewski和葡萄酒大師Phil Reedman組成。\n旗下的葡萄酒款在著名的比賽中屢次贏得無數的獎項和讚譽。\n\n3 個主要葡萄園 :\nClare Valley Vineyard:該地區最古老的葡萄產區，位於南澳大利亞克萊爾山谷北端最好的鄉村賽馬場對面。\nScotts Creek Vineyard:Penfolds Grange的葡萄便是產於此產區，它有潛力生產出具有最佳成熟度和風味的優質水果。\nGlen Devlin Vineyard:自20世紀60年代以來，Byrne家族擁有的第一個葡萄園\n\n香氣:新鮮的白桃和熱帶水果加上香味濃郁的柑橘花，突出了這款Chardonnay葡萄酒\n口感:令人耳目一新的石頭水果和甜瓜口感，帶有奶油般的口感和餘味','已上架','imgs/AU1015.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1001','LAS CONDES MERLOT','康帝城市 莊園梅洛紅酒','紅酒',13.00,750,476,'瓶','Chlie','梅洛 Merlot','康帝城市莊園梅洛紅葡萄酒嚴選自智利著名產區中央河谷的特定葡萄園區。由於四季分明的特色：濕冷多雨的冬季、溫暖乾燥的夏季，炎熱高溫的白晝以及夜晚氣溫急速下降，豐富葡萄的層次與口感。採收季節時充沛的陽光、乾爽無雨的夏日，讓葡萄能完美熟成。葡萄採收後，靜置於低溫控制的不鏽鋼筒中7天後進行發酵，擷取更純粹優雅的色澤、香氣與口感。裝瓶後有2~3年的陳年潛力。\n\n顏色：飽滿的紅寶石色澤\n\n酒質：充滿成熟水果的香味，有著梅子、櫻桃與草莓的果香，並帶有一絲肉桂的香料味，入口可感受更豐沛的水果特性，均衡得宜的單寧讓酒體更加細緻悠長\n\n試飲溫度：16oC~18oC','已上架','imgs/CL1001.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1002','EMILIANA ADOBE SYRAH','艾米亞娜 奧多比希哈紅葡萄酒','紅酒',13.90,750,500,'瓶','Chlie','希哈 Syrah | Shiraz','深邃的紅寶石色澤，具有豐富的黑醋栗與新鮮櫻桃的香氣，伴隨著煙燻和辛香料以及迷人的黑胡椒氣息。 口感中呈現相當豐富卻細緻的單寧感，這是一款風味相當多元、易飲，餘韻悠長的酒款。','已上架','imgs/CL1002.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1003','Lapostolle Canto De Apalta','拉博絲特 康藤紅葡萄酒','紅酒',12.90,750,825,'瓶','Chlie','卡本內蘇維翁 Cabernet Sauvignon\n卡門內爾 Carménère\n梅洛 Merlot','明亮的紫紅酒體色澤；令人愉悅的紅色及黑色成熟水果香氣，伴隨著些許的辛香料氣息。口感優雅均衡，尾韻綿長。適合搭配紅肉料理','已上架','imgs/CL1003.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1004','UNDURRAGA TERROIR HUNTER LEYDA PINOT NOIR 2017','智利 恩圖拉堡酒莊 TH探索者 勒伊達 黑皮諾紅酒 2017','紅酒',13.50,750,1000,'瓶','Chlie',' 黑皮諾','香氣 ：櫻桃和草本香味的黑皮諾，帶有濃郁的紅櫻桃香氣，甜美的野菜，樸實的香氣和淡淡的橙皮香氣。 \n口感：質地細膩，身體中等，具有充滿活力的礦物質酸度和緊緻的單寧，為口感提供存在感，並帶來長久的水果驅動下餘味。 \n釀造： 葡萄經過挑選除梗後進行6-8天的短暫冷浸漬過程，漿果初始發酵，形成了葡萄酒中特別突出的水果芳香特徵。接下來，酒精在25-27度發酵，持續12天並使用莖稈發酵，以便在獲得更大的芳香複雜性和結構。之後60％轉移到選擇的法國橡木桶中，其中10％為新橡木，完成乳酸發酵並且陳釀12個月。 \n風土： Leyda Valley是智利聖安東尼奧山谷葡萄酒產區的一個小分區，位於智利首都聖地亞哥以西55英里（90公里）處。 這個涼爽氣候的地區受到太平洋寒冷的洪堡海流的影響，因此生產出由黑比諾和夏多內明亮，充滿活力的葡萄酒。 該地區也有出產有名的白蘇為翁和希哈 。','已上架','imgs/CL1004.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1005','UNDURRAGA FOUNDER\'S COLLECTION CARMENERE 2016','智利 恩圖拉堡酒莊 莊主珍藏 卡門內爾紅酒 2016','紅酒',14.00,750,1200,'瓶','Chlie',' 卡門內爾 Carménère','顏色： 深紅色，紫羅蘭色調。 \n香氣 ： 成熟紅色水果並富表現力黑色水果香氣以及香料氣味，如黑胡椒和迷迭香。 \n口感： 酒體光滑的口味濃縮香料和摩卡香顯現到持久的尾韻。 \n釀造： 葡萄首先經歷了一次低溫發酵後浸漬提取顏色和香氣最大值。 然後在小型不銹鋼罐中發酵16天，約27 °C左右。這款酒的陳釀於法國橡木桶16個月25％新橡木桶75%使用二次橡木桶。 \n風土： 位於智利中部的空加瓜谷，是南美洲最有被看好的葡萄酒產區之一。溫暖，海風吹過，乾燥，有河流和偶爾降雨的氣候。空加瓜谷享有智利的“納帕谷”的聲譽。','已上架','imgs/CL1005.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1006','DOMUS AUREA CABERNET SAUVIGNON','多慕斯酒莊 車庫酒王旗艦紅酒15(十八羅漢)','紅酒',14.00,750,2300,'瓶','Chlie','卡本內佛朗 Cabernet Franc\n卡本內蘇維翁 Cabernet Sauvignon\n小維多 Petit Verdot\n梅洛 Merlot','香氣 ：濃郁的深色莓果香、櫻桃、胡椒、巧克力、香草、香料、橄欖等氣息。 \n口感：酒體飽滿結實、芬芳層次堆疊，品質卓越非凡。\n釀造： 經由20個月法國橡木桶與18個月瓶中熟成。\n風土： 坐落於安地斯山腳下的Domus Aurea酒莊，是由家族擁有的單一園酒莊；葡萄園名為Clos Quebrada de Macúl，是Maípo Valley最優質的葡萄園之一。占地45英畝的Clos Quebrada de Macúl葡萄園，被分為五個區塊；採收是以單株葡萄藤的成熟度進行收成。因此酒莊每年收成所花費的時間與成本極為高昂，這一切都是為了得到最好、熟成狀況最優良的葡萄。多次人工篩選後的葡萄，在輕柔搾汁萃取顏色與單寧後，以開放式發酵槽分別發酵。','已上架','imgs/CL1006.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1007','Montes Purple Angel','蒙帝斯 紫色天使紅酒','紅酒',15.00,750,2299,'瓶','Chlie','卡門內爾 Carménère\n小維多 Petit Verdot','JS 99: 詹姆士‧沙克林是世界三大葡萄酒品評家之一，99分說明這是一款品質極為優異的，很少有智利葡萄酒能得到這麼高的分數！「紫天使有著複雜完美香氣，黑莓、黑胡椒、丁香、玫瑰等香味讓人沉醉。酒體飽滿，結購緊緻，單寧非常絲滑，回味超長是我品嘗過的最好的一個年份的紫天使！非常經典！現在即可飲用，也可以繼續窖藏。」  ','已上架','imgs/CL1007.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1008','Almaviva 2017','智利王 亞瑪維紅酒 2017','紅酒',14.50,750,4999,'瓶','Chlie','卡本內蘇維翁 Cabernet Sauvignon\n卡門內爾 Carménère\n波爾多混釀 Bordeaux Blend','JS 2017年度百大第一名 \"這隻酒帶有宜人、繁複多變的菸草、黑梅香味，還略有礦石與花香和巧克力的香氣。剛強的骨架賦予這支酒飽滿、堅實的酒體。口感略帶有胡椒等香料的氣息。儘管我也非常愛2014年份的酒，但這支酒的單寧更細緻。整支酒的平衡度很高，各種氣味均完美結合在其中。69%卡本內蘇維翁、24%佳美娜、5%卡本內佛朗和2%小維多。再陳年五年會更佳，但現在飲用也很好。','已上架','imgs/CL1008.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1009','Emiliana Adobe Sauvignon Blanc','艾米亞娜 奧多比白蘇維翁白酒','白酒',13.40,750,500,'瓶','Chlie','白蘇維翁 Sauvignon Blanc','明亮清澈的黃綠色澤，香氣相當的複雜並展現出萊姆與葡萄柚的氣息，並帶有些微的草本風味。 口感相當的爽口，具有豐富的果香，酸度相當平衡。\n釀造：採用最天然的釀造元素與有機生長的葡萄，只為了反應最高品質的葡萄風味，展現對環境與工作者的尊重。\n熟陳：陳放3個月於不鏽鋼槽中。\n適飲溫度：10~12℃','已上架','imgs/CL1009.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1010','Luis Felipe Edwards Reserva Chardonnay','路易菲利普 特級陳年夏多內白葡萄酒','白酒',13.00,750,580,'瓶','Chlie','夏多內 Chardonnay\n維歐尼耶Viognier','展現桃子與香草的風味，與一絲絲的桶香完美的融合，擁有良好的複雜口感，奶滑的尾韻，拌著爽口的酸度(11月到3月)的生長季節日夜溫差可達攝氏22度，由正午的35度降至黎明前的13度，葡萄穩定緩慢的成長，風味與香氣十足。於2月底至3月初採摘，發酵18-24天，於法國橡木槽中陳放二至三個月。','已上架','imgs/CL1010.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1011','Undurraga Late Harvest','智利 恩圖拉堡酒莊 晚摘甜白葡萄酒','白酒',13.50,375,420,'瓶','Chlie','85% 榭密雍 15%格烏茲塔明娜','顏色： 濃郁的金色。 \n香氣 ：強烈的成熟水果香氣。 \n口感：口感中的高濃度和無與倫比的精緻度使其與鵝肝醬和甜點相得益彰。 \n釀造： 6月份葡萄收穫，距離正常的索甸葡萄收穫後約70天。它們故意成熟並暴露於通常稱為貴腐菌Botrytis的真菌。發酵過程在不銹鋼桶中進行，溫度範圍為17 ℃ -19℃。發酵持續18天;之後在橡木桶中陳釀六個月。 \n風土： 土壤的來源是沖積土，質地平均肥沃，排水良好。氣候屬於濕潤的地中海氣候。冬天很溫和;夏天溫暖乾燥，有涼爽的夜晚。這些條件確保生產出健康的葡萄，精緻的紋理和突出的香氣。年降雨量平均為350毫米。','已上架','imgs/CL1011.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1012','Emiliana Novasviognier','艾米亞娜 諾亞維歐尼耶白葡萄酒','白酒',13.50,750,670,'瓶','Chlie','維歐尼耶Viognier','酒液呈現較深邃的金黃色澤，具有白色花朵的氣味，混和著杏桃、櫻桃與軟糖的香氣。 口感圓潤、新鮮與柔滑，有相當優良的酸度與風味持續度。\n1998年Rafel與Jose Guilisasti兄弟預見全世界的葡萄酒消費者開始想更加了解他們所飲用的葡萄酒，不只是為了健康，更是懂得尊重他們的生活周遭與環境。 \"在釀造最優質的酒款並尊重自然環境之間取得和諧的平衡\"是釀酒哲學。 \n酒廠擁有1374公頃的葡萄園，全數獲得瑞士IMO有機認證，而其中更有768公頃獲得德國Demeter的自然動力法認證，是全智利第一家獲得ISO 14001環境管理認證的葡萄酒廠。','已上架','imgs/CL1012.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1013','Las Condes Chardonnay','康帝城市 莊園雪多利白酒','白酒',13.00,750,425,'瓶','Chlie','夏多內 Chardonnay\n','康帝城市莊園夏多內白葡萄酒嚴選自智利著名產區中央河谷的特定葡萄園區。由於四季分明的特色：濕冷多雨的冬季、溫暖乾燥的夏季，炎熱高溫的白晝以及夜晚氣溫急速下降，豐富葡萄的層次與口感。採收季節時充沛的陽光、乾爽無雨的夏日，讓葡萄能完美熟成。葡萄採收後，在低溫控制的不鏽鋼筒中進行發酵，以獲得更豐富的香氣與口感。挑選部分的酒體於法國橡木桶中陳放，增加酒體的複雜多變性。裝瓶後有2~3年的陳年潛力。 顏 色：明亮的金黃色澤酒 質：有著熱帶水果的奔放香氣，清爽的酸度讓酒體在嘴中更加平衡，尾韻充滿清脆舒爽的果味，更加綿長細密。','已上架','imgs/CL1013.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1014','Ochagavia Reserva Chardonnay','歐哲威 陳釀夏多內白葡萄酒','白酒',13.00,750,550,'瓶','Chlie','夏多內 Chardonnay\n','歐哲威1851陳釀夏多內白葡萄酒主要源自卡薩布蘭加谷地的葡萄園，是距離太平洋最近的位置，此區冷涼的氣候十分適合白葡萄成長。葡萄採收後在溫控不鏽鋼桶中進行發酵，溫度介於10oC~12oC之間，不進行乳酸發酵以保持天然的酸度和果香。發酵完成後存放在全新至兩年之間的法國與美國橡木桶中熟成4個月。散發濃郁的綜合水果香氣，如無花果、鳳梨、百香果等，口感清新、柔順且非常均衡，能品嘗出成熟的果香及香草、太妃糖細膩的質地，是款濃郁豐醇的佳釀。','已上架','imgs/CL1014.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('CL1015','Luis Felipe Edwards Reserva Chardonnay','路易菲利普 特級陳年夏多內白葡萄酒','白酒',13.00,750,580,'瓶','Chlie','夏多內 Chardonnay\n維歐尼耶Viognier','展現桃子與香草的風味，與一絲絲的桶香完美的融合，擁有良好的複雜口感，奶滑的尾韻，拌著爽口的酸度(11月到3月)的生長季節日夜溫差可達攝氏22度，由正午的35度降至黎明前的13度，葡萄穩定緩慢的成長，風味與香氣十足。於2月底至3月初採摘，發酵18-24天，於法國橡木槽中陳放二至三個月。','已上架','imgs/CL1015.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1001','AUSSIERES ROUGE','拉菲奧希耶 精選紅酒','紅酒',13.50,750,600,'瓶','France','卡本內蘇維翁 Cabernet Sauvignon\n希哈 Syrah | Shiraz','非常開放且表達性夠的氣味，充份展現了每一種葡萄品種的香氣，並帶有雪松木、櫻桃氣味及些許辛辣味，口感圓潤柔順，有著許多水果味支撐著風味佳且成熟的單寧，餘韻留存 ','已上架','imgs/FR1001.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1002','LOUIS LATOUR PINOT NOIR \"DOMAINE DE VALMOISSINE\"','路易拉圖 法瑪星黑皮諾紅酒15/16 ','紅酒',13.50,750,699,'瓶','France','黑皮諾Pinot Noir','葡萄園的南方向陽處，提供和高登特級園相同的完美果實成熟度。葡萄產量極為稀少，以確保完美的成熟度和集中度，綜合各要素而成就了最高品質的佳釀，演繹高雅且令人難以忘懷的細緻面貌。','已上架','imgs/FR1002.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1003','MAISON JOSEPH DROUHIN BEAUJOLAIS VILLAGES NOUVEAU 2019','約瑟夫杜亨 薄酒萊村莊級新酒19','紅酒',13.50,750,750,'瓶','France','加美Gamay','口感 : 酒質細膩、口感濃郁圓潤，帶紫羅蘭花香、黑莓等深色水果味道。  風土： 2019的夏天賞了薄酒萊產區一個完美的氣候，部分降雨使較乾燥的區域得到救贖，使葡萄園擁有良好的水氣。','已上架','imgs/FR1003.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1004','BENJAMIN LEROUX BOURGOGNE ROUGE','班傑明拉魯 勃根地紅酒','紅酒',13.50,750,1275,'瓶','France','黑皮諾Pinot Noir','Benjamin所釀製的酒款之所以會如此地吸引人，主要其釀酒初衷並非為釀造高分或讓酒評家們讚譽有加的美酒，他強調：一瓶美酒僅維持短暫的絢麗，但人們藉由品飲他的葡萄酒而留下的美好時光與共享幸福快樂的回憶卻是永恆。','已上架','imgs/FR1004.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1005','CHATEAU LE PUY EMILIEN 2016','樂譜酒莊 艾米利紅葡萄酒 2016','紅酒',13.50,750,1550,'瓶','France','卡本內蘇維翁 Cabernet Sauvignon\n卡門內爾 Carménère\n梅洛 Merlot','色澤：帶有清透紅寶石色澤。香氣：富含紅色漿果與黑醋粟等芬芳氣息，隱約透有烤杏仁與蘑菇香氣。風味：口感圓潤飽滿、細膩，單寧柔順如絲，若儲存得宜，亦有陳年的潛力！風土：停用化學藥劑；不添加二氧化硫；海上熟成葡萄酒等等。採用自然動力法種植葡萄，葡萄樹齡超過50年。','已上架','imgs/FR1005.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1006','LOU DUMONT NUITS SAINT GEORGES 2014','露蒂夢酒莊 天地人夜聖喬治村莊級紅酒 2014','紅酒',13.50,750,1800,'瓶','France','黑皮諾Pinot Noir','露蒂夢酒莊的莊主仲田晃司（Koji Nakada）先生曾是一名日本的侍酒師，他希望透過葡萄酒架起一座法國和亞洲文化溝通的橋梁，於是在2000年七夕和妻子一起創建了露蒂夢酒莊。為了建立一座面向世界尤其是亞洲的國際酒莊，仲田晃司先生聘請了多位來自日本、韓國、法國這三種不同背景文化的葡萄酒專家為露蒂夢酒莊莊工作。2003年，露蒂夢酒莊從原來的夜-聖喬治（Nuits-Saint-Georges）搬到了哲維瑞-香貝丹，自此以後，酒莊的葡萄酒都在自家的釀酒廠釀造，在自家的酒窖中熟成，酒莊的規模也在不斷擴大。','已上架','imgs/FR1006.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1007','CH. NÉNIN\n','法國 芮寧莊園2012','紅酒',13.50,750,2440,'瓶','France','梅洛 Merlot\n波爾多混釀 Bordeaux Blend','黑醋栗和黑莓的味道明顯，通過微妙的海浪和玫瑰花瓣氣味而更細緻香味更強。 入口酒體中等，細膩的單寧，非常均衡，雖然沒有巨大的深度，目前感覺有點嚴肅; 但有很棒的尾韻和柔滑的質地。','已上架','imgs/FR1007.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1008','JABOULET HERMITAGE \"LA CHAPELLE\" ','佳布列艾米達吉 小教堂紅酒','紅酒',13.50,750,4900,'瓶','France','希哈 Syrah | Shiraz','清澈的紅寶石色，酒體適中，果醬、甘草、燒烤和煙燻的氣息非常馥郁；入口有甘草、黑莓、草莓果醬、煙燻培根和深度烘焙咖啡的味道，且層次感很強，單寧豐富，酸度中等平衡，強勁而濃郁；回味悠長有黑巧克力的味道，是一款經典（百大名酒）的羅納河谷佳釀。','已上架','imgs/FR1008.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1009','MICHEL LYNCH BORDEAUX WHITE 2018','米林其 波爾多白葡萄酒 2018','白酒',13.50,750,630,'瓶','France','白蘇維翁 Sauvignon Blanc','色澤：細緻的淡黃色閃耀著綠色的光輝。香氣：波爾多自豪的優異年份，展現優雅迷人的熱帶水果、椰子和白色花香氣。風味：風味絕佳，同時具備飽滿、新鮮、出色的平衡感中， 蘊含著柑橘、荔枝， 餘韻悠長。風土：波爾多呈現多樣貌的風土人文傳統，也得以釀製出卓越、馥郁果香的迷人白酒。\n波爾多Pauillac超級五級酒堡Château Lynch-Bages旗下酒款、國泰航空、F1賽車 指定用酒、Marriott、Starwood 頂級飯店集團指定用酒、神之雫漫畫第24集以莊主Cazes先生為主要人物串場。','已上架','imgs/FR1009.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1010','COTE DU RHONE BELLERUCHE BLANC 2017','夏伯帝酒莊 隆河貝拉芙白葡萄酒 2017','白酒',13.50,750,660,'瓶','France','克萊雷特白 Clairette blanche\n格納希白 Grenache Blanc','色澤：酒色呈晶透淡黃色。\n香氣：聞有果香、英國山楂花以及白色花香。\n風味：口感清新而均衡。\n適飲溫度：攝氏13度\n釀造：不經過乳酸發酵，未在木桶陳年，採收完的冬季過後裝瓶。','已上架','imgs/FR1010.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1011','LOUIS LATOUR GRAND ARDECHE CHARDONNAY, VDP','路易拉圖 特級阿德榭夏多內白酒16','白酒',13.50,750,835,'瓶','France','夏多內 Chardonnay','路易拉圖特級阿德榭雪多利白葡萄酒是路易拉圖酒廠勇於創新的成功例子。阿德榭穩定的氣候及豐富的陽光得以使這些葡萄完美的成熟；乾燥的密斯特拉風也抑制了黴菌的產生。座落於隆河谷地的西邊界，一個名為Alba-la-Romaine的歷史村莊內，特級阿德謝的葡萄園區在此區所受到的待遇如同金丘的特級葡萄園一般，所挑選出完全熟成的葡萄經過輕柔的榨汁後儲存於在伯恩製造的路易拉圖專屬木桶中。豐富而經典的雪多利風格，表現得以使許多其他昂貴的布根地葡萄感到羞愧。','已上架','imgs/FR1011.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1012','SIMONNET FEBVRE CHABLIS','西蒙 法勃夏布利白酒16','白酒',13.50,750,1190,'瓶','France','夏多內 Chardonnay','西蒙‧法勃酒廠自1840年成立以來，便是法國夏布利地區最優質的夏布利酒莊之一，專注於頂級夏布利的釀造，擁有此區各種等級的葡萄園，包含了一級葡萄園及特級葡萄園等，旗下產品獲獎無數。2003併入法國勃根地著名酒商路易拉圖酒廠(Masion Louis Latour)旗下後，成功席捲英國市場。結合傳統的釀造理論與現代化的釀造技術，西蒙‧法勃酒廠是夏布利白酒的最佳選擇。 ','已上架','imgs/FR1012.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1013','LOUIS LATOUR MONTAGNY 1ER CRU','路易拉圖 蒙塔尼一級園葛朗石白酒17','白酒',13.50,750,1235,'瓶','France','夏多內 Chardonnay','路易拉圖蒙塔尼一級白葡萄酒的獨到處就是其葡萄園的石灰質土壤和向陽坡度的地形。「葛朗石(La Grande Roche)」葡萄園更是靠近山坡的頂端，使得這片葡萄園裡的葡萄能夠受到充足的日曬，每顆葡萄都能有很好的成熟度。葡萄酒在不鏽鋼桶裡釀造，以保持新鮮的果香味。這款白酒有著豐富的花香，和新鮮水果乾與堅果的氣味。具有兩到三年的陳年潛力，屆時酒體結構會加地均衡與完美。 法國路易拉圖酒廠Masion Louis Latour 傳統與品質的堅持‧革新與創造的遠見 家族代代傳承經營的路易拉圖酒廠 (Maison Louis Latour)，是法國布根地伯恩產區五大著名酒商之一。','已上架','imgs/FR1013.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1014','PAUL JABOULET AINE CHEVALIER DE STERIMBERG HERMITAGE BLANC','佳布列 艾米達吉史坦堡騎士白酒','白酒',13.50,750,3000,'瓶','France','Marsanne - Roussanne','淺黃色透著明亮的光彩，香氣豐富濃郁，一開始成熟洋梨，蜂蜜及焦糖的迷人氣息，接踵而來的是細緻的木頭芬芳，豐厚溫暖的口感，散發著蜂蠟與礦石氣息，尾韻悠雅細緻，酒體濃稠飽滿','已上架','imgs/FR1014.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('FR1015','FERRATON PERE ET FILS CÔTES-DU-RHÔNE \"SAMORËNS\" BLANC','菲拉頓酒莊 隆河丘白酒 17','白酒',13.50,750,5399,'瓶','France','隆河混釀白酒Rhône White Blend','陳釀：葡萄酒在大桶中陳釀， \n並在冬季結束時裝瓶。 \n風味： \n顏色－有點淡淡的金色和銀色。 \n香氣－白花和白色水果的香氣。 \n口感－非常平衡的葡萄酒， \n克萊雷帶來新鮮感， \n格納希娜帶來柔軟酒體。 \n釀造： \n在沒有蘋果乳酸發酵的大桶中成熟。 \n在冬季結束時提前裝瓶。 \n風土： \n基本上是粘土 - 石灰石土壤。','已上架','imgs/FR1015.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1001','TINROOF CABERNET SAUVIGNON','加州酒窖 卡本內蘇維濃紅葡萄酒','紅酒',13.30,750,535,'瓶','USA','卡本內蘇維翁 Cabernet Sauvignon','加州酒窖卡本內蘇維濃紅酒展現出新鮮松木與迷迭香的自然氣息，以及深色黑醋栗的漿果香氣。 酒體結構優美柔順，具有細緻的單寧以及悠長的尾韻。 口感豐富與芳香。\n加州酒窖的卡本內蘇維濃主要來自加州涼爽海岸區域的精選葡萄園。 在此區有一些獨特的微型氣候以及肥沃的沖積土壤，因此相當適合優質卡本內蘇維濃葡萄的生長。','已上架','imgs/US1001.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1002','BEAULIEU VINEYARD CALIFORNIA CABERNET 16','美麗莊園 加州經典梅洛紅葡萄酒16','紅酒',13.50,750,650,'瓶','USA','梅洛 Merlot','香氣：這款2016年份的梅洛呈現果香與辛香料討喜的完美融和，是日常品飲的完美選擇；美好的紅色果香，佐以帶有椒類清香的木桶氣味，取悅飲者的嗅覺。\n\n口感：口感鮮活明亮，充滿成熟李子與黑櫻桃風味，咖啡與烘烤橡木的香氣結合略帶勁道的單寧帶出長而令人滿足的尾韻。\n\n風土：美麗莊園的加州系列梅洛出自於中央和北方海岸產區的精選葡萄園，加州的沿岸的葡萄園受惠於海風帶來的涼爽空氣，細緻優雅；而內陸的山區葡萄園則帶有壯碩濃郁的風味；每顆葡萄反映了不同區域多樣化的微氣候風土，優化學分析 雅與濃郁的相異調性，共構成風味上的完美深度。\n\n釀造：驚人的親和力，來自於這款梅洛葡萄圓潤多汁的本質；為了捕捉這些美好，我們在成熟期的頂點收成，此時風味處於完美的平衡；加入少量的小希哈與希哈增添風味的深度，一半的酒以法國、美國及匈牙利橡木桶熟成，賦予最終的混釀烘烤香氣與異國香料氣味。','已上架','imgs/US1002.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1003','RAVENSWOOD ZINFANDEL','金芬教父 金芬黛紅酒','紅酒',13.50,750,790,'瓶','USA','金芬黛Zinfandel','真正能代表加州，且全然展露加州精神的葡萄品種，非金芬黛（Zinfandel）莫屬。 \n19世紀引進加州種植，開始釀酒，性喜陽光，且耐乾熱，有美妙的甜度，因此口感圓熟。 \n可年輕享用，亦有陳年實力，相當具有特色，絕對是來自加州最佳葡萄酒的先鋒','已上架','imgs/US1003.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1004','STAG\'S LEAP NAPA VALLEY CABERNET SAUVIGNON 15','鹿躍酒莊 納帕谷地卡本內蘇維翁紅酒15','紅酒',13.50,750,1800,'瓶','USA','卡本內佛朗 Cabernet Franc\n卡本內蘇維翁 Cabernet Sauvignon\n梅洛 Merlot\n馬爾貝克 Malbec','鮮豔的紅寶石色澤，香氣美妙，展現誘人的黑色、紅色水果與胡椒的辛香料氣息。 這些香氛與橡木桶的氣味完美的融合在這可口的酒款之中，鮮美的藍莓與黑莓風味呈現出一種經典的氣味與年輕的優雅感，單寧豐富卻十分細緻。 本酒款現在飲用相當美味，但也值得數年的窖藏所帶來的成熟韻味。','已上架','imgs/US1004.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1005','BEAULIEU VINEYARD NAPA VALLEY CABERNET 14','美麗莊園 納帕谷卡本內蘇維翁紅葡萄酒14','紅酒',13.50,750,1800,'瓶','USA','卡本內蘇維翁 Cabernet Sauvignon\n國產多瑞加 Touriga Nacional\n小希哈 Petite Syrah','香氣：豐富鮮活的黑莓、黑櫻桃和覆盆莓及些微的紫羅蘭、摩卡香氣。尾韻的主調以巧克力的香氣最為突出。奶油麵包、香料、肉桂、焦糖等香氣來自於烘烤橡木桶後的桶陳歲月。\n\n口感：2014 年的納帕卡本內表現精湛，深沉而濃郁。單寧細緻紮實，為口感帶來厚實卻柔順的結構及豐富的質地。此年份可以即開即飲，也相當具有陳年實力。\n\n風土：主要葡萄來自納帕谷中的(Napa Valley) 盧瑟福(Rutherford), 卡利斯托加(Calistoga)與聖海倫娜(St. Helena)產區。不同的產區有著不同的氣候與多樣化的土壤，加上種植不同品種的卡本內葡萄，造就了 BV 卡本內的複雜與多樣性。\n\n釀造：破皮壓榨後將葡萄汁在不鏽鋼桶中完全發酵，然後移到 60 加倫的橡木桶裡做乳酸發酵並存放 15 個月。我們混條幾個卡本內品種去增加葡萄酒中段質地及拉長尾韻表現，同時強化口感風味及香氣。','已上架','imgs/US1005.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1006','RIDGE GEYSERVILLE 2017','利吉 蓋世山莊園紅酒2017','紅酒',13.50,750,1900,'瓶','USA','卡利濃 Carignan\n小希哈 Petite Syrah\n金芬黛Zinfandel','色澤：暗深紅寶石酒色。\n\n香氣：熟成黑櫻桃、李子、甜橡木、薄荷及帶礫石調性的土壤氣息。\n\n風味：入口馥郁的黑莓在口中漫開，滑順、柔軟的單寧滑順，清新的度與富有層的果味帶來悠長迷人的尾韻。\n\n風土：猛烈的冬季風暴的來襲，宣佈久旱結束，雖補充了地下水源，卻也延遲了發芽，直至五月底才開花。緊接在炙熱的9月初，涼爽的氣候導致熟成緩慢。\n\n釀造：來自24 處地塊的葡萄果實採取獨立發酵，只採用那些表現出葡萄園特色果實。可即飲，陳年後更可將酒款複雜度推向另一境界，陳年潛力約15年。','已上架','imgs/US1006.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1007','GOLDENEYE ANDERSON VALLEY PINOT NOIR','達克宏酒莊 黃金眼系列 黑皮諾紅葡萄酒16','紅酒',14.50,750,2200,'瓶','USA','黑皮諾Pinot Noir','香氣 ：明亮的酸度和細緻悠長的口感，滿足整個口腔，野生草莓、櫻桃、皮革及些許的茴香以及薄荷繚繞鼻尖。\n\n口感：多汁的紅色果實、野生蘑菇、最好的法國橡木桶陳釀的枴杖糖香料味及些許的香草味在口裡蔓延，結構細緻圓潤，單寧飽滿，創造出口感複雜多變，引人入勝的酒款。\n\n釀造：於100%法國橡木桶陳年16個月。\n\n風土： Anderson Valley氣候涼爽，距離太平洋沿岸只有 15-30 公里，Navarro河穿過整個產區，兩侧的山脈形成了引導海洋季風的狹長走道，山谷中霧氣瀰漫，因而整個產區氣候溫和，夜間涼爽，日夜溫差大使得葡萄保有絕佳的酸度，非常適合冷涼葡萄的生長，造就了葡萄酒具有香氣濃郁、酒體飽滿平衡、層次細膩優雅等特徵！尊重風土，力求釀出來的葡萄酒充分反映葡萄園的特色，因此Anderson Valley也被譽為是世界上種植出最佳Pinot Noir的產區之一。','已上架','imgs/US1007.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1008','BEAULIEU VINEYARD PRIVATE RESERVE CABERNET 15','美麗莊園 GDL創辦人卡本內蘇維翁紅酒15','紅酒',15.00,750,5950,'瓶','USA','卡本內蘇維翁 Cabernet Sauvignon\n小維多 Petit Verdot\n梅洛 Merlot\n馬爾貝克 Malbec','香氣：一連串的紅色與深色莓果的香氣撲鼻而來，爾後帶出一絲玫瑰與紫羅蘭的氣息。\n\n風味：GDL經典的「濃郁、厚實」口感包覆了整個味蕾，前段香氣中的黑醋栗、覆盆子、黑櫻桃與紅醋栗不斷湧現，中段的則是些許木質、肉桂與摩卡風味，後段的香草與烤土司香氣則是來自全新法國橡木桶作用。厚實的單寧與酸度進一步提升酒體的結構。\n\n風土：盧瑟福(Rutherford)又有「加州的波雅克」的別稱，所釀出的卡本內相較其他產區，更具結構及陳年潛力。而GDL酒款的葡萄皆來自位於盧瑟福的1號園與2號園；這兩塊葡萄園曾經是Georges de Latour先生在1900年親手栽種的葡萄園。這裡的土壤就是著名的「Rutherford Dust」，由沉積沙礫與沖積扇組成，土壤深厚但排水性佳，有助降低產量，適合釀出風味濃縮的酒款。因此，酒莊在卡本內的選種，特別選種低產量、皮厚與長壽的品種(品種6, 4, 169 與 7)，藉以貫徹BV美麗莊園的百年風格。\n\n釀造：22個月法國橡木桶(9成新桶)。55%的葡萄是在全新法國橡木桶中發酵，提升酒體質地與木桶風味；剩餘的45%則是在不銹鋼發酵槽與直立式大型木槽中發酵，保存更多果實本身的新鮮風味。浸皮的時間掌握與乳酸發酵的開始需要仰賴總釀酒師的經驗。在濾皮後，會經過22個月的桶陳。','已上架','imgs/US1008.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1009','ELECTRA CALIFORNIA MOSCATO','美國加州 夸蒂白酒','白酒',4.50,750,460,'瓶','USA','蜜斯嘉Moscato','酒廠最著名的天使甜酒 Electra 系列以 100% 蜜思嘉葡萄釀製，酒精濃度僅 4-5%，甜美易飲，冰涼後其口感清脆，像是在舌尖上彈跳的電流一般的質地而命名，飲用時就像是沐浴在春風中一樣清爽舒暢無負擔。 葡萄酒漫畫 「侍酒師」內特別介紹這家來自加州的「蜜思嘉甜酒之王」。','已上架','imgs/US1009.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1010','MCMANIS VIOGNIER','美尼斯 維歐涅白酒','白酒',13.50,750,585,'瓶','USA','維歐尼耶Viognier','由美尼斯酒莊所出產的2013年維歐涅精釀白酒，有著透明晶亮的稻草色，融合核果類水果及水果雞尾酒的香氣，在口中綻放出桃子、西洋梨及杏桃的香氣。綿長的尾韻夾帶著些許的礦物香氣，且令人回味無窮。','已上架','imgs/US1010.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1011','RM PRIVATE SELECTION CHARDONNAY','羅伯蒙岱維酒莊 特選夏多內白酒','白酒',13.50,750,650,'瓶','USA','夏多內 Chardonnay','多汁的鳳梨、成熟的梨子水果，與溫暖的蘋果派和烤榛果的口味融合在這款令人難以置信的濃郁葡萄酒中，它清爽的酸度提升了綿密的奶油口感，美味豐富的尾韻中帶有果香以及烘烤的氣息，非常迷人。','已上架','imgs/US1011.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1012','EROICA RIESLING 2016','聖美堡酒莊 英雄樂章麗絲玲白葡萄酒16','白酒',12.00,750,899,'瓶','USA','麗絲玲 Riesling','淺稻草黃色澤，散出柔和的鵝黃色酒緣。 \n迷人的白桃香氣融合了花朵的氣息，底層飄出的萊姆清香和濕石頭般冷調的礦物氣息。 \n酒體中等，口感清脆有力；延續白桃的鮮果風格、另外多了爽口的萊姆果酸，清香而富有個性；尾段的礦石氣味增添了多重層次，使整體變化更趨複雜。殘留些許細微Riesling的自然果糖風味，在入喉後回甘而至、細膩而優雅；表現出眾脫俗、不失兩大酒莊的名家風範！ \nOff-Dry的風格不論是搭配餐點或是單獨品飲都非常適合。','已上架','imgs/US1012.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1013','NEWTON 紅酒 LABEL CHARDONNAY','紐頓 紅標夏多內白酒','白酒',13.50,750,1020,'瓶','USA','夏多內 Chardonnay','紐頓紅標夏多內白酒能展現出鮮活的個性與純粹的果香，應完全歸功於周全的葡萄種植養護與嚴謹的釀造過程。當白花、香脆蘋果與烤麵包香氣，在味蕾上轉化成豐富果味的清新風味在嘴內散開時，口中立即充滿柑橘、西洋梨與杏果滋味，最後則是穩重的橡木幻化成清泉般的微酸口感。','已上架','imgs/US1013.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1014','DUCKHORN NAPA VALLEY SAUVIGNO BLANC','達克宏酒莊 那帕白蘇維翁白葡萄酒18','白酒',13.50,750,1275,'瓶','USA','榭密雍 Sémillon\n白蘇維翁 Sauvignon Blanc','香氣 ：入口充滿成熟檸檬、荔枝以及白色水果氣味，緊接著甜瓜、鳳梨、杏桃、柑橘以及蜜漬柑橘等豐富熱帶水果香氣。\n\n口感：清新爽口的酸度以及多汁的尾韻口感達到完美平衡，帶給人充滿明亮以及充滿活力的深刻印象。\n\n釀造： 其釀造過程同時使用了不鏽鋼桶以及法國橡木桶陳放5個月(92%不鏽鋼桶、8%新法國橡木桶)，增添了成熟柑橘以及熱帶水果的風味。\n\n風土： 自1982年以來Duckhorn 達克宏酒莊便開始釀造達克宏那帕白蘇維翁白葡萄酒，混合了自那帕谷(Napa Valley)採收的Sauvignon Blanc以及Sémillon，增添了口感的深度以及複雜性。','已上架','imgs/US1014.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00'),('US1015','NEWTON UNFILTE紅酒 CHARDONNAY','紐頓 未過濾型夏多內白酒','白酒',13.50,750,2080,'瓶','USA','夏多內 Chardonnay','選自卡尼羅斯葡萄園的葡萄 未過濾型葡萄酒的特性是，口感濃郁強勁、層次豐富，風味厚重，而有著海風與晨霧維持其氣溫涼爽的卡尼羅斯地區，就是最適合培育風味濃郁的夏多內葡萄，當然，用來釀造紐頓未過濾型夏多內葡萄酒的葡萄就是來自卡尼羅斯地區。紐頓未過濾型夏多內葡萄酒在開瓶後，就可聞到柑橘花朵、椰子、奶油糖與烤杏仁的香氣，在味蕾上，則可品嚐出奶油與橡木混合成桃子、芒果、蜂蜜的各層次風味，再加上蜂蜜與一絲礦物風味，以及些許橘子果醬、牛奶糖、忍冬味道，最末則是恰到好處的酸度與綿長的餘味。','已上架','imgs/US1015.png','admin','2020-02-29 23:20:00','admin','2020-02-29 23:20:00');
/*!40000 ALTER TABLE `Wine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-02 20:08:39
