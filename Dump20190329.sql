-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: webhinhanh
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `binhluan` (
  `MaTuongTac` int(11) NOT NULL AUTO_INCREMENT,
  `MaTaiKhoan` int(11) DEFAULT NULL,
  `MaHinhAnh` int(11) DEFAULT NULL,
  `BinhLuan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MaTuongTac`),
  KEY `FK_TaiKhoan_2` (`MaTaiKhoan`),
  KEY `FK_HinhAnh_2` (`MaHinhAnh`),
  CONSTRAINT `FK_HinhAnh_2` FOREIGN KEY (`MaHinhAnh`) REFERENCES `hinhanh` (`mahinhanh`),
  CONSTRAINT `FK_TaiKhoan_2` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`mataikhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binhluan`
--

LOCK TABLES `binhluan` WRITE;
/*!40000 ALTER TABLE `binhluan` DISABLE KEYS */;
INSERT INTO `binhluan` VALUES (1,61,1,'Cố lên bạn'),(2,61,1,'Mình tin cậu'),(3,56,1,'Mình Cũng tin cậu'),(4,61,4,'Tớ chọn cậu'),(5,56,4,'Tớ cũng chọn cậu'),(6,60,1,'Tớ là dũng'),(7,61,22,'pikachu tớ chọn cậu'),(8,56,22,'Tớ cũng chọn cậu'),(9,61,1,'Tớ chỉ test thôi đừng quan tâm'),(10,61,9,'ngon quá\n'),(11,60,1,'hhaha'),(12,61,1,'dungx'),(13,61,194,'hoa sen'),(14,61,201,'mắt biếc em chả nhìn thấy anh'),(15,62,200,'cái này làm hơi xấu'),(17,64,1,'Bỏ đi mà làm người'),(18,61,1,'Nga bảo gì kìa bạn tôi ơi'),(19,64,201,'em thấy anh mà'),(20,61,17,'Kiểu tóc giang thích'),(21,64,17,'giống tóc tớ vậy');
/*!40000 ALTER TABLE `binhluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bosuutap`
--

DROP TABLE IF EXISTS `bosuutap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bosuutap` (
  `MaBoSuuTap` int(11) NOT NULL AUTO_INCREMENT,
  `TenBoSuuTap` varchar(50) DEFAULT NULL,
  `AnhBoSuuTap` varchar(50) DEFAULT NULL,
  `MoTa` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`MaBoSuuTap`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bosuutap`
--

LOCK TABLES `bosuutap` WRITE;
/*!40000 ALTER TABLE `bosuutap` DISABLE KEYS */;
INSERT INTO `bosuutap` VALUES (1,'Động Vật','dog-min.jpg','Khám phá thế giới động vật qua những hình ảnh và những khoảng khắc của chúng.'),(2,'Thiên Nhiên','nature-min.jpg','Khám phá vẻ đẹp hùng vĩ của thiên nhiên qua hình ảnh.'),(3,'Đồ Ăn','food-min.jpg','Đắm chìm vào thế giới của đồ ăn qua những hình ảnh của chúng tôi.'),(4,'Công nghệ','tech-min.jpg','Cùng nhau học hỏi và khám phá công nghệ .'),(5,'Lễ Hội','holiday-min.jpg','Tìm hiểu về những lễ hội ,tập tục văn hóa nổi bật.'),(6,'Trò Chơi','game-min.jpg','Lạc vào thế giới game đầy màu sắc.'),(7,'Khác',NULL,NULL),(8,'Sách',NULL,NULL);
/*!40000 ALTER TABLE `bosuutap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chucvu` (
  `MaChucVu` int(11) NOT NULL AUTO_INCREMENT,
  `TenChucVu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaChucVu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES (1,'admin'),(2,'Người đăng ảnh'),(3,'Người xem');
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinhanh`
--

DROP TABLE IF EXISTS `hinhanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hinhanh` (
  `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT,
  `TenHinhAnh` varchar(200) DEFAULT NULL,
  `KichCo` varchar(20) DEFAULT NULL,
  `DoPhanGiai` varchar(20) DEFAULT NULL,
  `MoTaHinhAnh` varchar(50) DEFAULT NULL,
  `MaBoSuuTap` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) DEFAULT NULL,
  `AnhTaiTro` int(11) DEFAULT NULL,
  `PheDuyet` int(11) DEFAULT '0',
  `Resize` varchar(200) DEFAULT NULL,
  `NgayDang` datetime DEFAULT NULL,
  PRIMARY KEY (`MaHinhAnh`),
  KEY `FK_BoSuuTap` (`MaBoSuuTap`),
  KEY `FK_TaiKhoan` (`MaTaiKhoan`),
  CONSTRAINT `FK_BoSuuTap` FOREIGN KEY (`MaBoSuuTap`) REFERENCES `bosuutap` (`mabosuutap`),
  CONSTRAINT `FK_TaiKhoan` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`mataikhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinhanh`
--

LOCK TABLES `hinhanh` WRITE;
/*!40000 ALTER TABLE `hinhanh` DISABLE KEYS */;
INSERT INTO `hinhanh` VALUES (1,'image1.jpg','510KB','3840x2160','Những Cuốn Sách',8,56,1,1,'image1-min.jpg',NULL),(2,'image2.jpg','398KB','1920x1080','Cánh đồng hoa tim tím',2,56,NULL,1,'image2-min.jpg',NULL),(3,'image3.jpg','319KB','1920x1080','Vách núi sát biển',2,56,NULL,1,'image3-min.jpg',NULL),(4,'image4-min.jpg','446KB','3840x2160','Xe Đạp',7,56,1,1,'image4-min-min.jpg',NULL),(5,'image5.jpg','484KB','3840x2160','Từ điển',8,56,NULL,1,'image5-min.jpg',NULL),(6,'image6-min.jpg','364KB','3840x2160','Sách cũ',8,56,NULL,1,'image6-min-min.jpg',NULL),(7,'image7-min.jpg','390KB','3840x2160','Gấu Bông lạc lõng',7,56,NULL,1,'image7-min-min.jpg',NULL),(8,'image8.jpg','666KB','3840x2160','Bản đồ',8,NULL,NULL,1,'image8-min.jpg',NULL),(9,'image9-min.jpg','539KB','3840x2160','Cà phê sách',3,NULL,NULL,1,'image9-min-min.jpg',NULL),(10,'image10.jpg','462KB','3840x2160','Khúc gỗ tình yêu',8,NULL,1,1,'image10-min.jpg',NULL),(11,'image11.jpg','705KB','3840x2160','Tách cà phê màu đen',3,NULL,NULL,1,'image11-min.jpg',NULL),(12,'image12.jpg','415KB','3840x2160','Tách trà ',3,NULL,NULL,1,'image12-min.jpg',NULL),(13,'image13.jpg','464KB','3840x2160','Vòng tay hình sao',7,NULL,NULL,1,'image13-min.jpg',NULL),(14,'image14.jpg','443KB','3840x2160','Hình nộm gỗ vuông',7,NULL,1,1,'image14-min.jpg',NULL),(15,'image15.jpg','452KB','1920x1080','Núi tuyết',2,NULL,NULL,1,'image15-min.jpg',NULL),(16,'image16.jpg','291KB','1920x1080','Hoàng hôn bên bờ hồ',2,NULL,NULL,1,'image16-min.jpg',NULL),(17,'image17.jpg','64.2KB','1024x682','Cô gái với mái tóc đẹp',7,NULL,NULL,1,'image17-min.jpg',NULL),(18,'image18.jpg','155KB','1920x1080','Biến khi bình minh',2,NULL,NULL,1,'image18-min.jpg',NULL),(19,'image19.jpg','452KB','1920x1080','Thác nước mùa thu',2,NULL,NULL,1,'image19-min.jpg',NULL),(20,'image20.jpg','254KB','1920x1080','Những chiếc đèn',7,NULL,1,1,'image20-min.jpg',NULL),(21,'image21.jpg','468KB','1920x1080','Ngọn núi sát biển',2,NULL,NULL,1,'image21-min.jpg',NULL),(22,'image22.jpg','344KB','1920x1080','2 con cú dễ thương',1,NULL,NULL,1,'image22-min.jpg',NULL),(23,'image23.jpg','502KB','1920x1080','Thành phố bên biển',2,NULL,1,1,'image23-min.jpg',NULL),(24,'image24.jpg','459KB','1920x1080','Bầu trời sao đêm',2,NULL,NULL,1,'image24-min.jpg',NULL),(25,'image25.jpg','583KB','1920x1080','Lối mòn trong rừng',2,NULL,NULL,1,'image25-min.jpg',NULL),(26,'image26.jpg','539KB','3840x2400','Lối thoát hiểm',7,NULL,1,1,'image26-min.jpg',NULL),(27,'image27.jpg','286KB','3840x2400','Quả bóng ước mơ',2,NULL,NULL,1,'image27-min.jpg',NULL),(28,'image28.jpg','400KB','1920x1080','Chiếc thuyền cạnh bờ',2,NULL,NULL,1,'image28-min.jpg',NULL),(42,'angel_christmas_reflections_statue_106588_3840x2160-min.jpg','605KB','3840x2160','Búp bê noen',5,NULL,NULL,1,'angel_christmas_reflections_statue_106588_3840x2160-min-min.jpg',NULL),(43,'assassins_creed_syndicate_jacob_frye_112077_3840x2160-min.jpg','568KB','3840x2160','Assassins creed',6,NULL,NULL,1,'assassins_creed_syndicate_jacob_frye_112077_3840x2160-min-min.jpg',NULL),(44,'bengali_fire_sparks_holiday_118188_3840x2160-min.jpg','645KB','3840x2160','Pháo hoa',5,NULL,NULL,1,'bengali_fire_sparks_holiday_118188_3840x2160-min.jpg',NULL),(45,'branches_garland_spruce_118627_3840x2160-min.jpg','558KB','3840x2160','Cây thông noen',5,NULL,NULL,1,'branches_garland_spruce_118627_3840x2160-min.jpg',NULL),(46,'bread_pastries_many_76629_3840x2160-min.jpg','770KB','3840x2160','Rổ bánh mì',3,NULL,NULL,1,'bread_pastries_many_76629_3840x2160-min.jpg',NULL),(47,'button_help_keyboard_close-up_80023_3840x2160-min.jpg','656KB','3840x2160','Nút bấm help',4,NULL,NULL,1,'button_help_keyboard_close-up_80023_3840x2160-min.jpg',NULL),(48,'cat_winter_fluffy_snow_99366_3840x2160-min.jpg','595KB','3840x2160','Chú mèo tuyết',1,NULL,NULL,1,'cat_winter_fluffy_snow_99366_3840x2160-min.jpg',NULL),(49,'christmas_art_toys_118381_3840x2160-min.jpg','629KB','3840x2160','Lịch noen',5,NULL,NULL,1,'christmas_art_toys_118381_3840x2160-min.jpg',NULL),(50,'christmas_new_year_holiday_sweets_84982_3840x2160-min.jpg','478KB','3840x2160','Kẹo gừng',5,NULL,NULL,1,'christmas_new_year_holiday_sweets_84982_3840x2160-min.jpg',NULL),(51,'dog_cat_kitten_puppy_drawing_heart_96341_1920x1200.jpg','79.4KB','3840x2160','Mèo và chó',1,NULL,NULL,1,'dog_cat_kitten_puppy_drawing_heart_96341_1920x1200.jpg',NULL),(52,'doves_couple_eiffel_tower_113598_3840x2160-min.jpg','570KB','3840x2160','Chim bồ câu',1,NULL,NULL,1,'doves_couple_eiffel_tower_113598_3840x2160-min.jpg',NULL),(53,'easter_bunny_rabbits_flowers_107676_3840x2160-min.jpg','295KB','3840x2160','Thỏ sứ lễ phục sinh',5,NULL,NULL,1,'easter_bunny_rabbits_flowers_107676_3840x2160-min.jpg',NULL),(54,'elephant_boy_river_130130_3840x2160-min.jpg','492KB','3840x2160','Cậu bé cưỡi voi',1,NULL,NULL,1,'elephant_boy_river_130130_3840x2160-min.jpg',NULL),(55,'elephant_seal_friends_85440_3840x2160-min.jpg','438KB','3840x2160','Voi và hải cẩu',1,NULL,NULL,1,'elephant_seal_friends_85440_3840x2160-min.jpg',NULL),(56,'fireworks_celebration_explosion_101283_3840x2160-min.jpg','444KB','3840x2160','Pháo hoa đêm',5,NULL,NULL,1,'fireworks_celebration_explosion_101283_3840x2160-min.jpg',NULL),(57,'gadget_tablet_smartphone_icons_touch_screen_99974_3840x2160-min.jpg','545KB','3840x2160','Công nghệ tương lai',4,NULL,NULL,1,'gadget_tablet_smartphone_icons_touch_screen_99974_3840x2160-min.jpg',NULL),(58,'gamepad_xbox_console_joystick_113510_3840x2160-min.jpg','239KB','3840x2160','Tay cầm Xbox',4,NULL,NULL,1,'gamepad_xbox_console_joystick_113510_3840x2160-min.jpg',NULL),(59,'german_shepherd_dog_puppy_muzzle_108939_3840x2160-min.jpg','536KB','3840x2160','Cún con đen',1,NULL,NULL,1,'german_shepherd_dog_puppy_muzzle_108939_3840x2160-min.jpg',NULL),(60,'god_of_war_kratos_sony_santa_monica_110295_3840x2160-min.jpg','486KB','3840x2160','Chiến thần Kratos',6,NULL,NULL,1,'god_of_war_kratos_sony_santa_monica_110295_3840x2160-min.jpg',NULL),(61,'grilled_chicken_crispy_fried_70856_3840x2160-min.jpg','579KB','3840x2160','Gà quay thơm ngon',3,NULL,NULL,1,'grilled_chicken_crispy_fried_70856_3840x2160-min.jpg',NULL),(62,'halloween_pumpkin_autumn_128570_3840x2160-min.jpg','168KB','3840x2160','Lễ hội ma',5,NULL,NULL,1,'halloween_pumpkin_autumn_128570_3840x2160-min.jpg',NULL),(63,'halloween_pumpkin_spooky_127836_3840x2160-min.jpg','287KB','3840x2160','Bí ngô lễ hội ma',5,NULL,NULL,1,'halloween_pumpkin_spooky_127836_3840x2160-min.jpg',NULL),(64,'holiday_roses_bouquet_cat_white_fluffy_93305_3840x2160-min.jpg','382KB','3840x2160','Mèo và hoa',1,NULL,NULL,1,'holiday_roses_bouquet_cat_white_fluffy_93305_3840x2160-min.jpg',NULL),(65,'imac_apple_computer_table_cup_notebook_109176_3840x2160-min.jpg','157KB','3840x2160','máy tính apple',4,NULL,NULL,1,'imac_apple_computer_table_cup_notebook_109176_3840x2160-min.jpg',NULL),(66,'jelly_dessert_berries_raspberries_blackberries_95052_3840x2160-min.jpg','377KB','3840x2160','Bánh râu tây',3,NULL,NULL,1,'jelly_dessert_berries_raspberries_blackberries_95052_3840x2160-min.jpg',NULL),(67,'koala_baby_tree_eucalyptus_107755_3840x2160-min.jpg','344KB','3840x2160','Gấu túi',1,NULL,NULL,1,'koala_baby_tree_eucalyptus_107755_3840x2160-min.jpg',NULL),(68,'laptop_macbook_iphone_apple_journal_glasses_113949_3840x2160-min.jpg','283KB','3840x2160','laptop macbook',4,NULL,NULL,1,'laptop_macbook_iphone_apple_journal_glasses_113949_3840x2160-min.jpg',NULL),(69,'macaron_french_confection_dessert_98412_3840x2160-min.jpg','314KB','3840x2160','Bánh quy nhiều màu sắc',3,NULL,NULL,1,'macaron_french_confection_dessert_98412_3840x2160-min.jpg',NULL),(70,'macbook_pro_apple_iphone_laptop_smartphone_office_notebook_108418_3840x2160-min.jpg','223KB','3840x2160','Macbook và cuốn ghi chú',4,NULL,NULL,1,'macbook_pro_apple_iphone_laptop_smartphone_office_notebook_108418_3840x2160-min.jpg',NULL),(71,'mortal_kombat_scorpion_sub_zero_punch_ice_fire_97689_3840x2160-min.jpg','305KB','3840x2160','Mortal kombat',6,NULL,NULL,1,'mortal_kombat_scorpion_sub_zero_punch_ice_fire_97689_3840x2160-min.jpg',NULL),(72,'need_for_speed_rivals_nfs_rivals_need_for_speed_mclaren_p1_koenigsegg_97642_3840x2160-min.jpg','251KB','3840x2160','Đua xe',6,NULL,NULL,1,'need_for_speed_rivals_nfs_rivals_need_for_speed_mclaren_p1_koenigsegg_97642_3840x2160-min.jpg',NULL),(73,'new_year_christmas_cat_card_98535_3840x2160-min.jpg','381KB','3840x2160','Mèo noen',5,NULL,NULL,1,'new_year_christmas_cat_card_98535_3840x2160-min.jpg',NULL),(74,'panda_lesser_panda_red_panda_branch_rest_sleep_96729_3840x2160-min.jpg','350KB','3840x2160','Gấu mèo đỏ',1,60,NULL,1,'panda_lesser_panda_red_panda_branch_rest_sleep_96729_3840x2160-min.jpg',NULL),(75,'pizza_tomatoes_olives_mushrooms_cheese_dish_leaves_food_93326_3840x2160-min.jpg','332KB','3840x2160','pizza cà chua phô mai',3,60,NULL,1,'pizza_tomatoes_olives_mushrooms_cheese_dish_leaves_food_93326_3840x2160-min.jpg',NULL),(76,'ps4_game_console_sony_playstation_4_99973_3840x2160-min.jpg','316KB','3840x2160','Máy chơi game ps4',6,60,NULL,1,'ps4_game_console_sony_playstation_4_99973_3840x2160-min.jpg',NULL),(77,'phone_headphones_player_106009_3840x2160-min.jpg','181KB','3840x2160','Tai nghe xịn',4,60,NULL,1,'phone_headphones_player_106009_3840x2160-min.jpg',NULL),(78,'resident_evil_umbrella_corporation_88974_3840x2160-min.jpg','386KB','3840x2160','resident_evi',6,60,NULL,1,'resident_evil_umbrella_corporation_88974_3840x2160-min.jpg',NULL),(79,'saint_bernard_dog_kitten_puppy_grass_96291_1920x1200-min.jpg','382KB','3840x2160','Chó và mèo con',1,60,NULL,1,'saint_bernard_dog_kitten_puppy_grass_96291_1920x1200-min.jpg',NULL),(80,'sennheiser_headphones_wire_bw_105493_3840x2160-min.jpg','198KB','3840x2160','Tai nghe',4,60,NULL,1,'sennheiser_headphones_wire_bw_105493_3840x2160-min.jpg',NULL),(81,'smite_hades_art_97643_3840x2160-min.jpg','349KB','3840x2160','Hades',6,60,NULL,1,'smite_hades_art_97643_3840x2160-min.jpg',NULL),(82,'sony_a7ii_iphone_lens_105959_3840x2160-min.jpg','287KB','3840x2160','Máy ảnh sony',4,65,NULL,1,'sony_a7ii_iphone_lens_105959_3840x2160-min.jpg',NULL),(83,'sparkler_hand_glare_129421_3840x2160-min.jpg','264KB','3840x2160','Pháo bông',5,65,NULL,1,'sparkler_hand_glare_129421_3840x2160-min.jpg',NULL),(84,'spices_seasonings_red_pepper_black_pepper_pepper_star_anise_onion_ginger_garlic_walnuts_bay_leaf_78738_3840x2160-min.jpg','552KB','3840x2160','Các loại gia vị',3,65,NULL,1,'spices_seasonings_red_pepper_black_pepper_pepper_star_anise_onion_ginger_garlic_walnuts_bay_leaf_78738_3840x2160-min.jpg',NULL),(85,'star_wars_battlefront_electronic_arts_105865_3840x2160-min.jpg','368KB','3840x2160','Star war game',6,65,NULL,1,'star_wars_battlefront_electronic_arts_105865_3840x2160-min.jpg',NULL),(86,'the_elder_scrolls_v_skyrim_rock_warrior_113984_3840x2160-min.jpg','283KB','3840x2160','Skyrim',6,64,NULL,1,'the_elder_scrolls_v_skyrim_rock_warrior_113984_3840x2160-min.jpg',NULL),(87,'the_witcher_3_wild_hunt_hearts_of_stone_105826_3840x2160-min.jpg','372KB','3840x2160','The witcher',6,64,NULL,1,'the_witcher_3_wild_hunt_hearts_of_stone_105826_3840x2160-min.jpg',NULL),(88,'wolf_rock_precipice_predator_120088_1920x1200-min.jpg','245KB','3840x2160','Sói',1,64,NULL,1,'wolf_rock_precipice_predator_120088_1920x1200-min.jpg',NULL),(89,'zenit_retro_camera_photos_map_107245_3840x2160-min.jpg','315KB','3840x2160','Máy ảnh và ảnh',4,NULL,NULL,1,'zenit_retro_camera_photos_map_107245_3840x2160-min.jpg',NULL),(90,'a1.jpg',NULL,NULL,NULL,7,NULL,NULL,1,'a1-min.jpg',NULL),(101,'a8.jpg',NULL,NULL,NULL,7,NULL,NULL,1,'a8-min.jpg',NULL),(106,'autumn_field_road_landscape_86231_3840x2160.jpg','4617KB',NULL,'Cánh đồng lúa đẹp',2,56,NULL,1,'autumn_field_road_landscape_86231_3840x2160.jpg',NULL),(107,'origami_mammoth_artwork_mammals_102580_3840x2160.jpg','1620KB',NULL,'Voi ma mút',1,56,NULL,1,'origami_mammoth_artwork_mammals_102580_3840x2160.jpg',NULL),(108,'dog_mountains_sitting_121350_3840x2160.jpg','2421KB',NULL,'Chú chó đen',1,56,NULL,1,'dog_mountains_sitting_121350_3840x2160.jpg',NULL),(109,'glass_sign_drink_115571_3840x2160.jpg','2409KB',NULL,'Best day ever',7,60,NULL,1,'glass_sign_drink_115571_3840x2160.jpg',NULL),(186,'construction_helmet_arm_80718_3840x2160.jpg','1762KB',NULL,'Công nhân',7,61,NULL,1,'construction_helmet_arm_80718_3840x2160.jpg',NULL),(187,'mtk-spotlight [118].jpg','815KB',NULL,'búa',7,61,NULL,0,'resize_mtk-spotlight [118].jpg',NULL),(188,'notebook_emptiness_old_table_pen_writing_80056_3840x2160.jpg','2768KB',NULL,'Cuốn sách trắng',8,61,NULL,1,'resize_notebook_emptiness_old_table_pen_writing_80056_3840x2160.jpg',NULL),(189,'vintage_notebook_locket_perfume_writing_retro_76281_3840x2160.jpg','3737KB',NULL,'Sách cũ',8,61,NULL,1,'resize_vintage_notebook_locket_perfume_writing_retro_76281_3840x2160.jpg',NULL),(190,'sunglasses_books_beach_sun_110969_3840x2160.jpg','2510KB',NULL,'Sách bên bờ biển',8,61,NULL,1,'resize_sunglasses_books_beach_sun_110969_3840x2160.jpg',NULL),(191,'note_motivation_text_words_119310_3840x2160.jpg','2136KB',NULL,'Tôi tin  bạn',8,61,NULL,1,'resize_note_motivation_text_words_119310_3840x2160.jpg',NULL),(192,'ang2.jpg','91KB',NULL,'Cô gái có mái tóc đẹp',7,61,NULL,1,'resize_ang2.jpg',NULL),(193,'mtk-spotlight [48].jpg','1017KB',NULL,'bla',7,61,NULL,1,'resize_mtk-spotlight [48].jpg',NULL),(194,'mtk-spotlight [116].jpg','1073KB',NULL,'Hoa sen',2,61,NULL,1,'resize_mtk-spotlight [116].jpg','2018-12-29 21:51:35'),(195,'man_forest_hoodie_walk_118322_3840x2160.jpg','3270KB',NULL,'Lấy tay che áo',7,61,NULL,0,'resize_man_forest_hoodie_walk_118322_3840x2160.jpg','2018-12-29 22:41:10'),(196,'dog_sitting_foliage_118931_3840x2160.jpg','3218KB',NULL,'Con chó đang ngồi trên đống lá cây trong khu vườn',1,61,NULL,1,'resize_dog_sitting_foliage_118931_3840x2160.jpg','2019-01-02 10:07:09'),(197,'r2d2_drone_star_wars_toy_113637_3840x2400.jpg','3037KB',NULL,'Mô hình người máy ',4,61,NULL,0,'resize_r2d2_drone_star_wars_toy_113637_3840x2400.jpg','2019-01-02 23:13:50'),(198,'mtk-spotlight [50].jpg','450KB',NULL,'Một cái gì đó',7,62,NULL,0,'resize_mtk-spotlight [50].jpg','2019-01-02 23:26:39'),(199,'hello-world.png','176KB',NULL,'hello world',7,62,NULL,0,'resize_hello-world.png','2019-01-02 23:28:41'),(200,'chó.jpg','1738KB',NULL,'chú chó vẽ bằng bút chì',1,62,NULL,1,'resize_chó.jpg','2019-01-02 23:30:36'),(201,'watercolor_eye_by_yumizu_chan-d82gcgo.jpg','82KB',NULL,'Mắt biếc',7,61,NULL,1,'resize_watercolor_eye_by_yumizu_chan-d82gcgo.jpg','2019-01-02 23:46:32'),(202,'1-1494914930349.jpg','144KB',NULL,'how i met your mother',7,61,NULL,1,'resize_1-1494914930349.jpg','2019-01-03 00:00:15'),(203,'15456.jpg','1061KB',NULL,'ảnh kỷ yếu',5,65,NULL,1,'resize_15456.jpg','2019-01-03 00:05:02'),(204,'raccoon_snout_animal_lying_107094_1280x720.jpg','415KB',NULL,'Gấu trúc mĩ',1,64,NULL,0,'resize_raccoon_snout_animal_lying_107094_1280x720.jpg','2019-01-04 12:51:41');
/*!40000 ALTER TABLE `hinhanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(50) DEFAULT NULL,
  `MatKhau` varchar(200) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  `Verification` varchar(45) DEFAULT NULL,
  `MaChucVu` int(11) DEFAULT '2',
  `AnhDaiDien` varchar(500) DEFAULT 'user.png',
  `HoTen` varchar(45) DEFAULT NULL,
  `ThanhPho` varchar(45) DEFAULT NULL,
  `QuocGia` varchar(45) DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  PRIMARY KEY (`MaTaiKhoan`),
  UNIQUE KEY `TenDangNhap_UNIQUE` (`TenDangNhap`),
  KEY `FK_ChucVu` (`MaChucVu`),
  CONSTRAINT `FK_ChucVu` FOREIGN KEY (`MaChucVu`) REFERENCES `chucvu` (`machucvu`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (49,'Teacher','$2y$12$9cda55a1c7c850c23a674eTSFrDaC15A8RSjaHyy9guLHEZkT9Lqm','dungkt@wru.vn',0,'335f5352088d7d9bf74191e006d8e24c',2,'user.png',NULL,NULL,NULL,NULL,NULL),(50,'taikhoan','$2y$12$d7b1566a46dc5c4ab3719u3FSJzgkQZBySWbLwF4NtxoJ9gawk2iS','giangtx13@gmail.com',0,'2ba596643cbbbc20318224181fa46b28',2,'user.png',NULL,NULL,NULL,NULL,NULL),(51,'giangtest','$2y$12$8a0ed22870b32e681497eu7wJudH91Futk/EZiTaQSM1Z0u7w6DEC','giangtx13@gmail.com',0,'d1f491a404d6854880943e5c3cd9ca25',2,'user.png',NULL,NULL,NULL,NULL,NULL),(52,'gainggiang','$2y$10$M10FpNAaotrYXmZx89eBuuEanVkTfSEv0E5I6e9MI72nbvro2MjPm','giangtx13@gmail.com',0,'92fb0c6d1758261f10d052e6e2c1123c',2,'user.png',NULL,NULL,NULL,NULL,NULL),(53,'1122giang','$2y$10$XjRVt/2si83hoByd8n7lhOuWN4h2eP01f/3dkKeohHMqIJ6pNwN76','giangnn@gmail.com',0,'e2c420d928d4bf8ce0ff2ec19b371514',2,'user.png',NULL,NULL,NULL,NULL,NULL),(54,'1998giang','$2y$10$97onGWTq9lHxtHthDA2N3OVfVBN972QbbeU1n/t7tGs0cPNFQLyOS','giangnnn#gmail.com',0,'fccb3cdc9acc14a6e70a12f74560c026',2,'user.png',NULL,NULL,NULL,NULL,NULL),(55,'wwwgiang','$2y$10$3lwnfl50Qjlp3drg.Z9EgeP21cllP8QXAlDa3X3N7yM9a.COEtWeK','giang@www',1,'1c1d4df596d01da60385f0bb17a4a9e0',2,'user.png',NULL,NULL,NULL,NULL,NULL),(56,'testlancuoi','$2a$10$BYfnVEGX/DHLRYWDIZ6uTO2fSrmu.PLUAMIXpD453o5c1XwOiNZCy','giangtx13@gmail.com',1,'6e2713a6efee97bacb63e52c54f0ada0',2,'f375147c-15e4-4349-8518-965f01b2f868.jpg','Nguyễn Thị Linh','Hà Tây','Việt Nam','Nữ','1998-09-29'),(59,'gianggiangtx','$2y$10$H0KScha69nXydVdJAc1b7eHJz2jaD4bWQSyZfSTbiDRq.9e6lVxhq','giangtx13@gmail.com',1,'c4ca4238a0b923820dcc509a6f75849b',2,'user.png',NULL,NULL,NULL,NULL,NULL),(60,'dungpro','$2a$10$NeESTnkUkyvRTPoX26KAAeThhH5agr2RP2Wa0TVVeVmcOYUZ2tQie','giangtx13@gmail.com',1,'f7e9050c92a851b0016442ab604b0488',2,'28059402_934543870038193_8024199817860665156_n.jpg','Nguyễn Việt Dũng','Hà Nội','Việt Nam','Nam','1998-02-09'),(61,'slytherin','$2a$10$CypTxrSMS78zqtfb6PYIKuYYAitgYstRdi6f3MxpMKwxNUVI4q6s.','giangtx13@gmail.com',1,'f4552671f8909587cf485ea990207f3b',1,'DSC02249.jpg','Nguyễn Trường Giang','Hà Tây quê lụa','Việt Nam','Nam','1998-03-13'),(62,'hiep','$2y$10$pgKqTjyysdzGJHmLv0b6b.a2heDltcpPwMDLGumj0eCan5ZMo5Jke','giangtx13@gmail.com',1,'f899139df5e1059396431415e770c6dd',3,'1223.jpg','hiệp','hà nội','việt nam','Nam','1998-03-03'),(63,'dungsocute','$2a$10$SrMTpOzTzPiNpa38ESpOZe4hrbILRaNdT/Nxr2eyi0VqN5npQMKae','giangtx13@gmail.com',1,'acc3e0404646c57502b480dc052c4fe1',2,'dog-min.jpg','giang','hh','vn','Nam','1998-03-13'),(64,'ngabantoi','$2a$10$cmqNqtGSC/Hp6yYugoTnU.p1GuP6DAa1VHO/pdX1jlB1rTf.WRyQK','giangtx13@gmail.com',1,'5878a7ab84fb43402106c575658472fa',2,'7.gif',NULL,NULL,NULL,NULL,NULL),(65,'gianglinh','$2a$10$f.HtBQtZsB9fCe16bCODUuhGAnTm9RL81pCQhjKHQR7.GLspTLKF2','giangtx13@gmail.com',1,'123456',1,'13221482_591566024338653_4506206339673478280_n.jpg','Cường Trường Gianng','Hà Tây quê lụa','Việt Nam quê hương tôi','Nam','1998-03-13'),(66,'testjava','$2a$10$wfBcvTvWSZm46rwfqv8/HOBNRrBUYgHn9bJAzbjWLb5fpXBpyilq6',NULL,0,NULL,2,'user.png',NULL,NULL,NULL,NULL,NULL),(105,'giangdangtest','$2a$10$/5RkEY0KvAGO6YF9ktQwk.g.HvFxwqEGVm.Hm6heglaQ06kutwt4W','giang',0,NULL,2,'user.png',NULL,NULL,NULL,NULL,NULL),(106,'giangtesttiep','$2a$10$RSQrV7Kvmvx0yex7jCs/z.5E7ezPh9tPpNCy3ZA7U7V0qcHPoxlCC','giangtesttiep',0,NULL,2,'user.png',NULL,NULL,NULL,NULL,NULL),(110,'dk','$2a$10$/SFVnux6h1cKFGPCK.sWcuyHpNZV9mG7sb2BPKH3syIli9PD6afzy','dk',0,'AeCpclDG',2,'user.png',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thich`
--

DROP TABLE IF EXISTS `thich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `thich` (
  `MaThich` int(11) NOT NULL AUTO_INCREMENT,
  `MaTaiKhoan` int(11) DEFAULT NULL,
  `MaHinhAnh` int(11) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaThich`),
  KEY `FK_TaiKhoan_3` (`MaTaiKhoan`),
  KEY `FK_HinhAnh_3` (`MaHinhAnh`),
  CONSTRAINT `FK_HinhAnh_3` FOREIGN KEY (`MaHinhAnh`) REFERENCES `hinhanh` (`mahinhanh`),
  CONSTRAINT `FK_TaiKhoan_3` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`mataikhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thich`
--

LOCK TABLES `thich` WRITE;
/*!40000 ALTER TABLE `thich` DISABLE KEYS */;
INSERT INTO `thich` VALUES (8,61,4,1),(9,61,5,1),(21,61,6,1),(22,61,7,1),(23,56,5,1),(24,56,6,1),(25,56,106,1),(26,56,1,1),(27,60,5,1),(28,60,4,1),(29,60,3,1),(30,60,1,1),(32,61,188,1),(33,61,8,1),(34,61,107,1),(35,60,2,1),(37,61,10,1),(38,59,1,1),(39,59,10,1),(40,59,4,1),(41,59,14,1),(42,59,23,1),(43,59,2,1),(47,61,20,1),(51,62,3,1),(54,61,194,1),(55,61,27,1),(56,61,196,1),(57,61,201,1),(58,62,200,1),(59,61,203,1),(60,61,200,1),(61,61,17,1),(62,65,203,1),(64,65,2,1),(89,61,3,1),(90,61,23,1),(91,61,19,1),(92,61,1,1),(93,65,4,1),(94,65,20,1),(96,65,1,1),(97,65,23,1),(98,65,23,1),(99,65,15,1),(101,64,5,1),(102,64,6,1),(103,64,188,1),(104,64,60,1),(105,64,11,1),(106,63,1,1),(107,64,1,1),(108,64,17,1);
/*!40000 ALTER TABLE `thich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'webhinhanh'
--
/*!50003 DROP PROCEDURE IF EXISTS `Insert_TK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_TK`(TenDangNhap varchar(50),MatKhau varchar(50),Email varchar(50))
BEGIN
	insert into taikhoan(TenDangNhap, MatKhau, Email,Active) value(TenDangNhap,MatKhau,Email,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-29 21:32:29
