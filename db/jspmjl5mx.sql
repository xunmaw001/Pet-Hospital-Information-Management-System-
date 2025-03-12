-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmjl5mx
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmjl5mx/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmjl5mx/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmjl5mx/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615479808500 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (91,'2021-03-11 03:24:06','订单编号1','药品名称1','规格1','生产商1',1,'价格1',1,'用户名1','用户姓名1','未支付'),(92,'2021-03-11 03:24:06','订单编号2','药品名称2','规格2','生产商2',2,'价格2',2,'用户名2','用户姓名2','未支付'),(93,'2021-03-11 03:24:06','订单编号3','药品名称3','规格3','生产商3',3,'价格3',3,'用户名3','用户姓名3','未支付'),(94,'2021-03-11 03:24:06','订单编号4','药品名称4','规格4','生产商4',4,'价格4',4,'用户名4','用户姓名4','未支付'),(95,'2021-03-11 03:24:06','订单编号5','药品名称5','规格5','生产商5',5,'价格5',5,'用户名5','用户姓名5','未支付'),(96,'2021-03-11 03:24:06','订单编号6','药品名称6','规格6','生产商6',6,'价格6',6,'用户名6','用户姓名6','未支付'),(1615479808499,'2021-03-11 16:23:27','20213120232631044685','药品名称1','规格1','生产商1',1,'18',18,'11','杨小姐','已支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshixinxi`
--

DROP TABLE IF EXISTS `keshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yishengrenshu` varchar(200) DEFAULT NULL COMMENT '医生人数',
  `keshijianjie` longtext COMMENT '科室简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='科室信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshixinxi`
--

LOCK TABLES `keshixinxi` WRITE;
/*!40000 ALTER TABLE `keshixinxi` DISABLE KEYS */;
INSERT INTO `keshixinxi` VALUES (41,'2021-03-11 03:24:06','科室名称1','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian1.jpg','医生人数1','科室简介1'),(42,'2021-03-11 03:24:06','科室名称2','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian2.jpg','医生人数2','科室简介2'),(43,'2021-03-11 03:24:06','科室名称3','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian3.jpg','医生人数3','科室简介3'),(44,'2021-03-11 03:24:06','科室名称4','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian4.jpg','医生人数4','科室简介4'),(45,'2021-03-11 03:24:06','科室名称5','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian5.jpg','医生人数5','科室简介5'),(46,'2021-03-11 03:24:06','科室名称6','http://localhost:8080/jspmjl5mx/upload/keshixinxi_tupian6.jpg','医生人数6','科室简介6');
/*!40000 ALTER TABLE `keshixinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-03-11 03:24:06',1,'用户名1','留言内容1','回复内容1'),(112,'2021-03-11 03:24:06',2,'用户名2','留言内容2','回复内容2'),(113,'2021-03-11 03:24:06',3,'用户名3','留言内容3','回复内容3'),(114,'2021-03-11 03:24:06',4,'用户名4','留言内容4','回复内容4'),(115,'2021-03-11 03:24:06',5,'用户名5','留言内容5','回复内容5'),(116,'2021-03-11 03:24:06',6,'用户名6','留言内容6','回复内容6');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-11 03:24:06','标题1','简介1','http://localhost:8080/jspmjl5mx/upload/news_picture1.jpg','内容1'),(102,'2021-03-11 03:24:06','标题2','简介2','http://localhost:8080/jspmjl5mx/upload/news_picture2.jpg','内容2'),(103,'2021-03-11 03:24:06','标题3','简介3','http://localhost:8080/jspmjl5mx/upload/news_picture3.jpg','内容3'),(104,'2021-03-11 03:24:06','标题4','简介4','http://localhost:8080/jspmjl5mx/upload/news_picture4.jpg','内容4'),(105,'2021-03-11 03:24:06','标题5','简介5','http://localhost:8080/jspmjl5mx/upload/news_picture5.jpg','内容5'),(106,'2021-03-11 03:24:06','标题6','简介6','http://localhost:8080/jspmjl5mx/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','kqhewakub4ohpbutbgefrht1lr6p9kx7','2021-03-11 16:14:37','2021-03-11 17:25:15'),(2,1615479400838,'11','yonghu','用户','y405o8oofynjyjj1tefvp771nc69cgna','2021-03-11 16:16:50','2021-03-11 17:16:51'),(3,21,'医生1','yisheng','医生','q93nal823wr5gwukvdobsag90uqn73w2','2021-03-11 16:21:36','2021-03-11 17:21:36');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-11 03:24:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `yaopinxiangqing` longtext COMMENT '药品详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (81,'2021-03-11 03:24:06','药品名称1','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian1.jpg','规格1','生产商1',4,18,'药品详情1'),(82,'2021-03-11 03:24:06','药品名称2','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian2.jpg','规格2','生产商2',2,20,'药品详情2'),(83,'2021-03-11 03:24:06','药品名称3','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian3.jpg','规格3','生产商3',3,3,'药品详情3'),(84,'2021-03-11 03:24:06','药品名称4','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian4.jpg','规格4','生产商4',4,4,'药品详情4'),(85,'2021-03-11 03:24:06','药品名称5','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian5.jpg','规格5','生产商5',5,5,'药品详情5'),(86,'2021-03-11 03:24:06','药品名称6','http://localhost:8080/jspmjl5mx/upload/yaopinxinxi_tupian6.jpg','规格6','生产商6',6,6,'药品详情6');
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2021-03-11 03:24:06','医生1','123456','医生姓名1','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang1.jpg','男','13823888881'),(22,'2021-03-11 03:24:06','医生2','123456','医生姓名2','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang2.jpg','男','13823888882'),(23,'2021-03-11 03:24:06','医生3','123456','医生姓名3','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang3.jpg','男','13823888883'),(24,'2021-03-11 03:24:06','医生4','123456','医生姓名4','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang4.jpg','男','13823888884'),(25,'2021-03-11 03:24:06','医生5','123456','医生姓名5','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang5.jpg','男','13823888885'),(26,'2021-03-11 03:24:06','医生6','123456','医生姓名6','http://localhost:8080/jspmjl5mx/upload/yisheng_touxiang6.jpg','男','13823888886');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yishengxinxi`
--

DROP TABLE IF EXISTS `yishengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` varchar(200) DEFAULT NULL COMMENT '医龄',
  `shanzhanglingyu` varchar(200) DEFAULT NULL COMMENT '擅长领域',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='医生信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yishengxinxi`
--

LOCK TABLES `yishengxinxi` WRITE;
/*!40000 ALTER TABLE `yishengxinxi` DISABLE KEYS */;
INSERT INTO `yishengxinxi` VALUES (51,'2021-03-11 03:24:06','医生1','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang1.jpg','医生姓名1','男','医龄1','擅长领域1','科室名称1','个人简介1'),(52,'2021-03-11 03:24:06','医生2','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang2.jpg','医生姓名2','男','医龄2','擅长领域2','科室名称2','个人简介2'),(53,'2021-03-11 03:24:06','医生3','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang3.jpg','医生姓名3','男','医龄3','擅长领域3','科室名称3','个人简介3'),(54,'2021-03-11 03:24:06','医生4','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang4.jpg','医生姓名4','男','医龄4','擅长领域4','科室名称4','个人简介4'),(55,'2021-03-11 03:24:06','医生5','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang5.jpg','医生姓名5','男','医龄5','擅长领域5','科室名称5','个人简介5'),(56,'2021-03-11 03:24:06','医生6','http://localhost:8080/jspmjl5mx/upload/yishengxinxi_touxiang6.jpg','医生姓名6','男','医龄6','擅长领域6','科室名称6','个人简介6');
/*!40000 ALTER TABLE `yishengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yixuezhishi`
--

DROP TABLE IF EXISTS `yixuezhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yixuezhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wenzhangneirong` varchar(200) DEFAULT NULL COMMENT '文章内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医学知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yixuezhishi`
--

LOCK TABLES `yixuezhishi` WRITE;
/*!40000 ALTER TABLE `yixuezhishi` DISABLE KEYS */;
INSERT INTO `yixuezhishi` VALUES (31,'2021-03-11 03:24:06','文章标题1','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian1.jpg','文章内容1','2021-03-11'),(32,'2021-03-11 03:24:06','文章标题2','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian2.jpg','文章内容2','2021-03-11'),(33,'2021-03-11 03:24:06','文章标题3','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian3.jpg','文章内容3','2021-03-11'),(34,'2021-03-11 03:24:06','文章标题4','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian4.jpg','文章内容4','2021-03-11'),(35,'2021-03-11 03:24:06','文章标题5','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian5.jpg','文章内容5','2021-03-11'),(36,'2021-03-11 03:24:06','文章标题6','http://localhost:8080/jspmjl5mx/upload/yixuezhishi_tupian6.jpg','文章内容6','2021-03-11');
/*!40000 ALTER TABLE `yixuezhishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yizhuxinxi`
--

DROP TABLE IF EXISTS `yizhuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yizhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `chongwuming` varchar(200) DEFAULT NULL COMMENT '宠物名',
  `chongwuzhuangkuang` varchar(200) DEFAULT NULL COMMENT '宠物状况',
  `yizhu` longtext COMMENT '医嘱',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615479743217 DEFAULT CHARSET=utf8 COMMENT='医嘱信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yizhuxinxi`
--

LOCK TABLES `yizhuxinxi` WRITE;
/*!40000 ALTER TABLE `yizhuxinxi` DISABLE KEYS */;
INSERT INTO `yizhuxinxi` VALUES (71,'2021-03-11 03:24:06','用户名1','用户姓名1','宠物名1','宠物状况1','医嘱1','2021-03-11 11:24:06','医生工号1','医生姓名1','科室1'),(72,'2021-03-11 03:24:06','用户名2','用户姓名2','宠物名2','宠物状况2','医嘱2','2021-03-11 11:24:06','医生工号2','医生姓名2','科室2'),(73,'2021-03-11 03:24:06','用户名3','用户姓名3','宠物名3','宠物状况3','医嘱3','2021-03-11 11:24:06','医生工号3','医生姓名3','科室3'),(74,'2021-03-11 03:24:06','用户名4','用户姓名4','宠物名4','宠物状况4','医嘱4','2021-03-11 11:24:06','医生工号4','医生姓名4','科室4'),(75,'2021-03-11 03:24:06','用户名5','用户姓名5','宠物名5','宠物状况5','医嘱5','2021-03-11 11:24:06','医生工号5','医生姓名5','科室5'),(76,'2021-03-11 03:24:06','用户名6','用户姓名6','宠物名6','宠物状况6','医嘱6','2021-03-11 11:24:06','医生工号6','医生姓名6','科室6'),(1615479743216,'2021-03-11 16:22:22','11','杨小姐','拉布拉多','dsfdsfsdff','sdfgfdgdfgdfgdfg','2021-03-12 10:10:07','医生1','医生姓名1','');
/*!40000 ALTER TABLE `yizhuxinxi` ENABLE KEYS */;
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
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615479400839 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-11 03:24:06','用户1','123456','用户姓名1','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang1.jpg','男','13823888881'),(12,'2021-03-11 03:24:06','用户2','123456','用户姓名2','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang2.jpg','男','13823888882'),(13,'2021-03-11 03:24:06','用户3','123456','用户姓名3','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang3.jpg','男','13823888883'),(14,'2021-03-11 03:24:06','用户4','123456','用户姓名4','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang4.jpg','男','13823888884'),(15,'2021-03-11 03:24:06','用户5','123456','用户姓名5','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang5.jpg','男','13823888885'),(16,'2021-03-11 03:24:06','用户6','123456','用户姓名6','http://localhost:8080/jspmjl5mx/upload/yonghu_touxiang6.jpg','男','13823888886'),(1615479400838,'2021-03-11 16:16:40','11','123456','杨小姐','http://localhost:8080/jspmjl5mx/upload/1615479617045.jpg','女','13823866666');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyueguahao`
--

DROP TABLE IF EXISTS `yuyueguahao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `chongwuming` varchar(200) DEFAULT NULL COMMENT '宠物名',
  `chongwuzhuangkuang` varchar(200) DEFAULT NULL COMMENT '宠物状况',
  `yuyueriqi` datetime DEFAULT NULL COMMENT '预约日期',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615479675210 DEFAULT CHARSET=utf8 COMMENT='预约挂号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyueguahao`
--

LOCK TABLES `yuyueguahao` WRITE;
/*!40000 ALTER TABLE `yuyueguahao` DISABLE KEYS */;
INSERT INTO `yuyueguahao` VALUES (61,'2021-03-11 03:24:06','用户名1','用户姓名1','手机号码1','宠物名1','宠物状况1','2021-03-11 11:24:06','医生工号1','医生姓名1','科室名称1','是',''),(62,'2021-03-11 03:24:06','用户名2','用户姓名2','手机号码2','宠物名2','宠物状况2','2021-03-11 11:24:06','医生工号2','医生姓名2','科室名称2','是',''),(63,'2021-03-11 03:24:06','用户名3','用户姓名3','手机号码3','宠物名3','宠物状况3','2021-03-11 11:24:06','医生工号3','医生姓名3','科室名称3','是',''),(64,'2021-03-11 03:24:06','用户名4','用户姓名4','手机号码4','宠物名4','宠物状况4','2021-03-11 11:24:06','医生工号4','医生姓名4','科室名称4','是',''),(65,'2021-03-11 03:24:06','用户名5','用户姓名5','手机号码5','宠物名5','宠物状况5','2021-03-11 11:24:06','医生工号5','医生姓名5','科室名称5','是',''),(66,'2021-03-11 03:24:06','用户名6','用户姓名6','手机号码6','宠物名6','宠物状况6','2021-03-11 11:24:06','医生工号6','医生姓名6','科室名称6','是',''),(1615479675209,'2021-03-11 16:21:14','11','杨小姐','13823866666','拉布拉多','dsfdsfsdff','2020-03-13 09:00:00','医生1','医生姓名1','科室名称1','是','');
/*!40000 ALTER TABLE `yuyueguahao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 11:49:09
