-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot80q0m
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot80q0m/upload/1614006017445.png'),(2,'picture2','http://localhost:8080/springboot80q0m/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot80q0m/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinqiugou`
--

DROP TABLE IF EXISTS `discussshangpinqiugou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinqiugou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614006254510 DEFAULT CHARSET=utf8 COMMENT='商品求购评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinqiugou`
--

LOCK TABLES `discussshangpinqiugou` WRITE;
/*!40000 ALTER TABLE `discussshangpinqiugou` DISABLE KEYS */;
INSERT INTO `discussshangpinqiugou` VALUES (111,'2021-02-22 07:47:30',1,1,'评论内容1','回复内容1'),(112,'2021-02-22 07:47:30',2,2,'评论内容2','回复内容2'),(113,'2021-02-22 07:47:30',3,3,'评论内容3','回复内容3'),(114,'2021-02-22 07:47:30',4,4,'评论内容4','回复内容4'),(115,'2021-02-22 07:47:30',5,5,'评论内容5','回复内容5'),(116,'2021-02-22 07:47:30',6,6,'评论内容6','回复内容6'),(1614006254509,'2021-02-22 15:04:13',1614006070035,1614005930715,'撒地方水电费撒地方',NULL);
/*!40000 ALTER TABLE `discussshangpinqiugou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614006223360 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (101,'2021-02-22 07:47:30',1,1,'评论内容1','回复内容1'),(102,'2021-02-22 07:47:30',2,2,'评论内容2','回复内容2'),(103,'2021-02-22 07:47:30',3,3,'评论内容3','回复内容3'),(104,'2021-02-22 07:47:30',4,4,'评论内容4','回复内容4'),(105,'2021-02-22 07:47:30',5,5,'评论内容5','回复内容5'),(106,'2021-02-22 07:47:30',6,6,'评论内容6','回复内容6'),(1614006223359,'2021-02-22 15:03:42',1614006117699,1614005930715,'sadf sdf 的飞洒个的飞洒给对方是个的飞洒',NULL);
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ershoudingdan`
--

DROP TABLE IF EXISTS `ershoudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ershoudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `ershoujia` varchar(200) DEFAULT NULL COMMENT '二手价',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614006237388 DEFAULT CHARSET=utf8 COMMENT='二手订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ershoudingdan`
--

LOCK TABLES `ershoudingdan` WRITE;
/*!40000 ALTER TABLE `ershoudingdan` DISABLE KEYS */;
INSERT INTO `ershoudingdan` VALUES (51,'2021-02-22 07:47:30','商品编号1','商品名称1','商品类别1','二手价1','卖家账号1','用户名1','姓名1','收货地址1','13823888881','未支付'),(52,'2021-02-22 07:47:30','商品编号2','商品名称2','商品类别2','二手价2','卖家账号2','用户名2','姓名2','收货地址2','13823888882','未支付'),(53,'2021-02-22 07:47:30','商品编号3','商品名称3','商品类别3','二手价3','卖家账号3','用户名3','姓名3','收货地址3','13823888883','未支付'),(54,'2021-02-22 07:47:30','商品编号4','商品名称4','商品类别4','二手价4','卖家账号4','用户名4','姓名4','收货地址4','13823888884','未支付'),(55,'2021-02-22 07:47:30','商品编号5','商品名称5','商品类别5','二手价5','卖家账号5','用户名5','姓名5','收货地址5','13823888885','未支付'),(56,'2021-02-22 07:47:30','商品编号6','商品名称6','商品类别6','二手价6','卖家账号6','用户名6','姓名6','收货地址6','13823888886','未支付'),(1614006237387,'2021-02-22 15:03:56','1614006083060','第三方水电费g','数码电子','800','456','123','十大','是大法官发给单方事故放到','13233221122','已支付');
/*!40000 ALTER TABLE `ershoudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maijia`
--

DROP TABLE IF EXISTS `maijia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614005958603 DEFAULT CHARSET=utf8 COMMENT='卖家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maijia`
--

LOCK TABLES `maijia` WRITE;
/*!40000 ALTER TABLE `maijia` DISABLE KEYS */;
INSERT INTO `maijia` VALUES (21,'2021-02-22 07:47:30','卖家1','123456','卖家姓名1','13823888881','773890001@qq.com','440300199101010001'),(22,'2021-02-22 07:47:30','卖家2','123456','卖家姓名2','13823888882','773890002@qq.com','440300199202020002'),(23,'2021-02-22 07:47:30','卖家3','123456','卖家姓名3','13823888883','773890003@qq.com','440300199303030003'),(24,'2021-02-22 07:47:30','卖家4','123456','卖家姓名4','13823888884','773890004@qq.com','440300199404040004'),(25,'2021-02-22 07:47:30','卖家5','123456','卖家姓名5','13823888885','773890005@qq.com','440300199505050005'),(26,'2021-02-22 07:47:30','卖家6','123456','卖家姓名6','13823888886','773890006@qq.com','440300199606060006'),(1614005958602,'2021-02-22 14:59:18','456','456','第三方','13233445544','42342@qq.com','112233445566778899');
/*!40000 ALTER TABLE `maijia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614006262861 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2021-02-22 07:47:30',1,'用户名1','留言内容1','回复内容1'),(92,'2021-02-22 07:47:30',2,'用户名2','留言内容2','回复内容2'),(93,'2021-02-22 07:47:30',3,'用户名3','留言内容3','回复内容3'),(94,'2021-02-22 07:47:30',4,'用户名4','留言内容4','回复内容4'),(95,'2021-02-22 07:47:30',5,'用户名5','留言内容5','回复内容5'),(96,'2021-02-22 07:47:30',6,'用户名6','留言内容6','回复内容6'),(1614006262860,'2021-02-22 15:04:22',1614005930715,'123','阿斯蒂芬水电费士大夫撒旦','放到恢复规划回复的好地方');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='网站公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-02-22 07:47:30','标题1第三方刚发的广东佛山g','简介1打分大师傅给放到广东佛山广东深','http://localhost:8080/springboot80q0m/upload/news_picture1.jpg','<p>内容1的飞洒个地方官单方事故多个单方事故第三方刚发的</p>'),(82,'2021-02-22 07:47:30','标题2','简介2','http://localhost:8080/springboot80q0m/upload/news_picture2.jpg','内容2'),(83,'2021-02-22 07:47:30','标题3','简介3','http://localhost:8080/springboot80q0m/upload/news_picture3.jpg','内容3'),(84,'2021-02-22 07:47:30','标题4','简介4','http://localhost:8080/springboot80q0m/upload/news_picture4.jpg','内容4'),(85,'2021-02-22 07:47:30','标题5','简介5','http://localhost:8080/springboot80q0m/upload/news_picture5.jpg','内容5'),(86,'2021-02-22 07:47:30','标题6','简介6','http://localhost:8080/springboot80q0m/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614005972275 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2021-02-22 07:47:30','商品类别1'),(32,'2021-02-22 07:47:30','商品类别2'),(33,'2021-02-22 07:47:30','商品类别3'),(34,'2021-02-22 07:47:30','商品类别4'),(35,'2021-02-22 07:47:30','商品类别5'),(36,'2021-02-22 07:47:30','商品类别6'),(1614005972274,'2021-02-22 14:59:31','数码电子');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinqiugou`
--

DROP TABLE IF EXISTS `shangpinqiugou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinqiugou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `kejieshoujiage` varchar(200) DEFAULT NULL COMMENT '可接受价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinmiaoshu` longtext COMMENT '商品描述',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614006070036 DEFAULT CHARSET=utf8 COMMENT='商品求购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinqiugou`
--

LOCK TABLES `shangpinqiugou` WRITE;
/*!40000 ALTER TABLE `shangpinqiugou` DISABLE KEYS */;
INSERT INTO `shangpinqiugou` VALUES (61,'2021-02-22 07:47:30','标题1','http://localhost:8080/springboot80q0m/upload/shangpinqiugou_tupian1.jpg','商品类别1','新旧程度1','可接受价格1','用户名1','品牌1','商品描述1','是',''),(62,'2021-02-22 07:47:30','标题2','http://localhost:8080/springboot80q0m/upload/shangpinqiugou_tupian2.jpg','商品类别2','新旧程度2','可接受价格2','用户名2','品牌2','商品描述2','是',''),(63,'2021-02-22 07:47:30','标题3','http://localhost:8080/springboot80q0m/upload/shangpinqiugou_tupian3.jpg','商品类别3','新旧程度3','可接受价格3','用户名3','品牌3','商品描述3','是',''),(64,'2021-02-22 07:47:30','标题4','http://localhost:8080/springboot80q0m/upload/shangpinqiugou_tupian4.jpg','商品类别4','新旧程度4','可接受价格4','用户名4','品牌4','商品描述4','是',''),(65,'2021-02-22 07:47:30','标题5','http://localhost:8080/springboot80q0m/upload/shangpinqiugou_tupian5.jpg','商品类别5','新旧程度5','可接受价格5','用户名5','品牌5','商品描述5','是',''),(66,'2021-02-22 07:47:30','标题6','http://localhost:8080/springboot80q0m/upload/shangpinqiugou_tupian6.jpg','商品类别6','新旧程度6','可接受价格6','用户名6','品牌6','商品描述6','是',''),(1614006070035,'2021-02-22 15:01:10','阿斯蒂芬稍等防守打法萨德','http://localhost:8080/springboot80q0m/upload/1614006049730.jpg','数码电子','8成','1000左右','123','苹果','打分个地方官奋斗过水电费个的飞洒','是','对方过后发给和法国队和发给');
/*!40000 ALTER TABLE `shangpinqiugou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `shangpinguige` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yuanjia` varchar(200) DEFAULT NULL COMMENT '原价',
  `ershoujia` int(11) DEFAULT NULL COMMENT '二手价',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614006117700 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-02-22 07:47:30','商品编号1','商品名称1','商品类别1','商品规格1','http://localhost:8080/springboot80q0m/upload/shangpinxinxi_tupian1.jpg','新旧程度1','品牌1','原价1',1,'卖家账号1','卖家姓名1','商品介绍1','是','',1,1),(42,'2021-02-22 07:47:30','商品编号2','商品名称2','商品类别2','商品规格2','http://localhost:8080/springboot80q0m/upload/shangpinxinxi_tupian2.jpg','新旧程度2','品牌2','原价2',2,'卖家账号2','卖家姓名2','商品介绍2','是','',2,2),(43,'2021-02-22 07:47:30','商品编号3','商品名称3','商品类别3','商品规格3','http://localhost:8080/springboot80q0m/upload/shangpinxinxi_tupian3.jpg','新旧程度3','品牌3','原价3',3,'卖家账号3','卖家姓名3','商品介绍3','是','',3,3),(44,'2021-02-22 07:47:30','商品编号4','商品名称4','商品类别4','商品规格4','http://localhost:8080/springboot80q0m/upload/shangpinxinxi_tupian4.jpg','新旧程度4','品牌4','原价4',4,'卖家账号4','卖家姓名4','商品介绍4','是','',4,4),(45,'2021-02-22 07:47:30','商品编号5','商品名称5','商品类别5','商品规格5','http://localhost:8080/springboot80q0m/upload/shangpinxinxi_tupian5.jpg','新旧程度5','品牌5','原价5',5,'卖家账号5','卖家姓名5','商品介绍5','是','',5,5),(46,'2021-02-22 07:47:30','商品编号6','商品名称6','商品类别6','商品规格6','http://localhost:8080/springboot80q0m/upload/shangpinxinxi_tupian6.jpg','新旧程度6','品牌6','原价6',6,'卖家账号6','卖家姓名6','商品介绍6','是','',6,6),(1614006117699,'2021-02-22 15:01:57','1614006083060','第三方水电费g','数码电子','单方事故的飞洒','http://localhost:8080/springboot80q0m/upload/1614006093129.jpg','全新','的飞洒','1900',800,'456','第三方','<p>发给很反感的恢复规划法国队和发货发给很反感的</p>','是','管理员审核通过才会在前台展示',1,1);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614006226133 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614006226132,'2021-02-22 15:03:45',1614005930715,1614006117699,'shangpinxinxi','第三方水电费g','http://localhost:8080/springboot80q0m/upload/1614006093129.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','lkui4a0k0csywdx4opxd3ji0767iaz66','2021-02-22 14:58:18','2021-02-22 08:05:16'),(2,1614005930715,'123','yonghu','用户','1eookso5d5sv0z6bvv2sjup7ygkvvnyz','2021-02-22 15:00:34','2021-02-22 08:03:36'),(3,1614005958602,'456','maijia','卖家','sjeepoyu57ul9f9a9ckvzubksl9zmafv','2021-02-22 15:01:19','2021-02-22 08:04:47');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-22 07:47:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614006204909 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-22 07:47:30','用户1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-02-22 07:47:30','用户2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-02-22 07:47:30','用户3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-02-22 07:47:30','用户4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-02-22 07:47:30','用户5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-02-22 07:47:30','用户6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com','440300199606060006'),(1614005930715,'2021-02-22 14:58:50','123','123','发给','21','男','13455667788','646456@qq.com','112233445566778899'),(1614006204908,'2021-02-22 15:03:24','789','789','规范','21',NULL,'13455667788','54646@qq.com','112233221122332211');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23  9:54:24
