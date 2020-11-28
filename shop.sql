/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.54 : Database - shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shop`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `CART_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CART_P_FILENAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CART_P_NAME` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CART_P_PRICE` decimal(10,2) DEFAULT NULL,
  `CART_QUANTITY` int(11) DEFAULT NULL,
  `CART_P_STOCK` int(11) DEFAULT NULL,
  `CART_P_ID` int(11) DEFAULT NULL,
  `CART_U_ID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CART_VALID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CART_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cart` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `CATE_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `CATE_NAME` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '名字',
  `CATE_PARENT_ID` decimal(10,0) NOT NULL COMMENT '父ID',
  PRIMARY KEY (`CATE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `category` */

insert  into `category`(`CATE_ID`,`CATE_NAME`,`CATE_PARENT_ID`) values (16,'键盘','0'),(17,'鼠标','0'),(18,'耳机','0'),(19,'打印机','0'),(20,'数字摄像机','0'),(21,'罗技','16'),(22,'双飞燕','16'),(23,'雷柏','16'),(24,'罗技','17'),(25,'双飞燕','17'),(26,'雷柏','17'),(27,'森海塞尔','18'),(28,'铁三角','18'),(29,'惠普','19'),(30,'爱普生','19'),(31,'gopro','20'),(32,'大疆','20'),(33,'华为','20');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `PRODUCT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(128) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(512) DEFAULT NULL,
  `PRODUCT_PRICE` decimal(10,2) NOT NULL,
  `PRODUCT_STOCK` decimal(10,0) DEFAULT NULL,
  `PRODUCT_FID` decimal(10,0) DEFAULT NULL,
  `PRODUCT_CID` decimal(10,0) DEFAULT NULL,
  `PRODUCT_FILENAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`PRODUCT_ID`,`PRODUCT_NAME`,`PRODUCT_DESCRIPTION`,`PRODUCT_PRICE`,`PRODUCT_STOCK`,`PRODUCT_FID`,`PRODUCT_CID`,`PRODUCT_FILENAME`) values (5,'罗技G502','罗技G502鼠标','339.00','7','17','24','Snipaste_2020-11-09_12-29-52.png'),(8,'罗技（G）G610机械键盘 有线机械键盘 游戏机械键盘 全尺寸背光机械键吃鸡键盘 Cherry红轴','好键�?','499.00','1000','16','21','Snipaste_2020-11-28_14-16-46.png'),(9,'双飞燕（A4TECH) WK-100 键盘 有线键盘 办公键盘 USB笔记本台式机通用键盘 104�? ','【经久�?�磨，镭雕字符�?�防溅水，打字舒适�?�防溅水，全尺寸设计，即插即用双飞燕WK-100键盘有线键盘办公键盘防水104�?','49.00','1000','16','22','Snipaste_2020-11-28_15-46-12.png'),(10,'雷柏（Rapoo�? V500PRO 机械键盘 有线键盘 游戏键盘 104键混光键�? 吃鸡键盘','�?11.27-11.29雷柏闪购】热卖单品直降！智能音频眼镜新品�?世登场，兼顾蓝牙耳机，高清�?�话�?','118.00','1000','16','23','Snipaste_2020-11-28_15-47-49.png'),(11,'罗技（G）G403HERO有线游戏鼠标 机械配重竞技 RGB炫彩背光宏编程电竞吃鸡cf英雄联盟 G403hero','1ms报告速率�?10克拆卸配重，1680万色智能炫光','329.00','997','17','24','Snipaste_2020-11-28_15-49-49.png'),(12,'双飞燕（A4TECH) OP-520NU 鼠标 有线鼠标 办公鼠标 便携鼠标 对称鼠标 黑色 自营','【双手�?�用，舒适体验�?�，设置快捷，使用方便，双手通用的全尺寸舒�?�设计双飞燕OP-520NU','36.00','1000','17','25','Snipaste_2020-11-28_15-50-47.png'),(13,'雷柏（Rapoo�? N1200S 有线鼠标 办公鼠标 对称鼠标 笔记本鼠�? 电脑鼠标 台式机鼠�? 黑色','�?11.27-11.29雷柏闪购】热卖单品直降！智能音频眼镜新品�?世登场，兼顾蓝牙耳机，高清�?�话�?','9.00','996','17','26','Snipaste_2020-11-28_15-51-39.png'),(14,'森海塞尔（Sennheiser�? MOMENTUM True2真无线蓝牙�?�机主动降噪高保真入耳式运动 黑色 Momentum TWS2代电竞手机游�?','真无线，蓝牙5.1，主动降噪，低延迟，7+21长续航，运动，音乐，办公，出�?','2399.00','1000','18','27','Snipaste_2020-11-28_15-52-34.png'),(15,'铁三�? CK350iS 立体声入耳式耳机 手机耳机 电脑游戏耳机 带麦可�?�话 苹果安卓通用 学生网课 黑色','【JD自营】�?�经典升级�?�来】�?�店铺TOP型号�?10mm单元塑�?�强劲锐利的声场与低音！','199.00','999','18','28','Snipaste_2020-11-28_15-53-22.png'),(16,'GoPro HERO9 Black 5K运动相机 Vlog数码摄像�? 水下潜水户外骑行滑雪直播相机 增强防抖 裸机防水','【旗舰HERO9�?5K超高清视频录制，前后双屏,6期免�?,每天不到20�?','3400.00','1000','20','31','Snipaste_2020-11-28_15-54-43.png'),(17,'DJI 大疆 DJI Pocket 2 灵眸口袋云台相机 迷你手持云台相机 高清增稳vlog摄像�? 无损防抖 美颜拍摄','【新品发布�?��??3期免息�?�大疆Pocket2口袋智能小相机�??6400万有效像素，8倍变焦，�?键剪辑，自动美颜�?','2499.00','1000','20','32','Snipaste_2020-11-28_15-55-44.png'),(18,'华为智�?? 海雀智能摄像头HQ8智能家居监控器无线高清网络摄像头家用全景智能摄像�?1080P画质AI智能看护','【华为智选智能摄像头，到手价仅需199�?360°全景巡航|1080P超清画质|�?键直呼|','199.00','1000','20','33','Snipaste_2020-11-28_15-56-34.png');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `USER_ID` varchar(32) NOT NULL COMMENT '用户ID',
  `USER_NAME` varchar(20) NOT NULL COMMENT '用户名称',
  `USER_PASSWORD` varchar(20) NOT NULL COMMENT '用户密码',
  `USER_SEX` varchar(1) NOT NULL COMMENT '性别',
  `USER_BIRTHDAY` datetime DEFAULT NULL COMMENT '出生日期',
  `USER_IDENITY_CODE` varchar(60) DEFAULT NULL COMMENT '扩展字段',
  `USER_EMAIL` varchar(60) DEFAULT NULL COMMENT '电子邮箱',
  `USER_MOBILE` varchar(11) DEFAULT NULL COMMENT '电话',
  `USER_ADDRESS` varchar(200) NOT NULL COMMENT '地址',
  `USER_STATUS` decimal(6,0) NOT NULL COMMENT '状态 1||2（管理员）',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`USER_ID`,`USER_NAME`,`USER_PASSWORD`,`USER_SEX`,`USER_BIRTHDAY`,`USER_IDENITY_CODE`,`USER_EMAIL`,`USER_MOBILE`,`USER_ADDRESS`,`USER_STATUS`) values ('admin','admin','admin','T','2020-11-21 11:38:34',NULL,'admin@qq.com','11111111111','admin','2'),('dalishi','大力士','123456','T','1989-11-01 00:00:00',NULL,'1352029569@qq.com','15538809752','家','1'),('leitailong','雷太龙','123456','T','1988-09-09 00:00:00',NULL,'1352029569@qq.com','15538809752','未知','1'),('lvzhili','吕志丽','123456','T','1999-01-01 00:00:00',NULL,'1352029969@qq.com','15538809752','公司','1'),('wangke','王珂','123456','T','1997-01-11 00:00:00',NULL,'1352029569@qq.com','15538809752','家','1'),('wangkun','王坤','123456','T','1997-01-11 00:00:00',NULL,'1352029569@qq.com','15538809752','家','1'),('yincongfei','尹聪菲','123456','T','1996-07-26 10:25:27',NULL,'3445433435@qq.com','13734235454','学校','1'),('zhangsanfeng','张三丰','123456','T','1989-11-01 00:00:00',NULL,'1352029569@qq.com','15538809752','家','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
