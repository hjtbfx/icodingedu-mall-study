# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 10.1.10-MariaDB)
# Database: icoding-mall
# Generation Time: 2020-01-13 16:26:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table im_attribute_values
# ------------------------------------------------------------
DROP DATABASE IF EXISTS `icoding-mall`;

create database icoding-mall;

use icoding-mall;

DROP TABLE IF EXISTS `im_attribute_values`;

CREATE TABLE `im_attribute_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `attribute_title` varchar(50) NOT NULL DEFAULT '' COMMENT '属性标题',
  `attribute_value` varchar(50) NOT NULL DEFAULT '' COMMENT '属性值',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table im_buycart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_buycart`;

CREATE TABLE `im_buycart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `customer_id` varchar(50) DEFAULT NULL COMMENT '登录用户id',
  `buy_id` varchar(50) DEFAULT NULL COMMENT '未登录cookie id',
  `login_status` int(11) NOT NULL COMMENT '登录状态0-未登录,1-登录',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品id',
  `spu` varchar(50) NOT NULL DEFAULT '' COMMENT '产品唯一编码',
  `original_price` decimal(10,2) NOT NULL COMMENT '产品原价',
  `sale_price` decimal(10,2) NOT NULL COMMENT '产品售价',
  `sale_qty` int(11) NOT NULL COMMENT '销售数量',
  `sale_total_price` decimal(10,2) NOT NULL COMMENT '销售总价',
  `variants_id` int(11) NOT NULL COMMENT '属性id',
  `variants_title` varchar(100) NOT NULL DEFAULT '' COMMENT '属性标题',
  `sku` varchar(50) NOT NULL DEFAULT '' COMMENT '属性唯一编码',
  `image_src` varchar(300) NOT NULL DEFAULT '' COMMENT '属性图片src路径',
  `variants_weight` int(11) NOT NULL COMMENT '属性重量',
  `product_handle` varchar(100) NOT NULL DEFAULT '' COMMENT '产品url',
  `product_title` varchar(200) NOT NULL DEFAULT '' COMMENT '产品标题',
  `collection_id` varchar(50) NOT NULL DEFAULT '' COMMENT '集合id',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table im_carousel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_carousel`;

CREATE TABLE `im_carousel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `image_src` varchar(300) NOT NULL DEFAULT '' COMMENT '首页轮播图路径',
  `url_handle` varchar(50) NOT NULL DEFAULT '' COMMENT '跳转路径,产品,集合,专题页',
  `type` int(11) NOT NULL COMMENT '轮播类型1-产品,2-集合,3-专题页',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '轮播顺序',
  `is_show` int(11) NOT NULL DEFAULT '1' COMMENT '是否展示0-不展示,1-展示',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table im_collection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_collection`;

CREATE TABLE `im_collection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `collection_id` varchar(50) NOT NULL DEFAULT '' COMMENT '集合id',
  `url_handle` varchar(50) NOT NULL DEFAULT '' COMMENT '集合路径',
  `status` int(11) NOT NULL COMMENT '集合状态:0-下架,1-上架',
  `parent_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '一级目录默认为0,写入父极collection_id',
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '集合标题',
  `image_src` varchar(300) NOT NULL DEFAULT '' COMMENT '集合封面src路径',
  `description` varchar(2000) DEFAULT '' COMMENT '集合描述',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `im_collection` WRITE;
/*!40000 ALTER TABLE `im_collection` DISABLE KEYS */;

INSERT INTO `im_collection` (`id`, `collection_id`, `url_handle`, `status`, `parent_id`, `title`, `image_src`, `description`, `is_delete`, `version`, `create_emp`, `update_emp`, `create_time`, `update_time`)
VALUES
	(1,'c100001','furniture',1,'0','house and home','/images/collections/c100001.jpg',NULL,0,0,'gavin','gavin',1576478930,1576478930),
	(2,'c100002','clouthing',1,'0','Clothing supplies','/images/collections/c100002.jpg',NULL,0,0,'gavin','gavin',1576478930,1576478930),
	(3,'c100003','shoes',1,'0','Shoes and accessories','/images/collections/c100003.jpg',NULL,0,0,'gavin','gavin',1576478930,1576478930),
	(4,'c100004','automobile',1,'0','automotive supplies and related accessories','/images/collections/c100004.jpg',NULL,0,0,'gavin','gavin',1576478930,1576478930);

/*!40000 ALTER TABLE `im_collection` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table im_collection_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_collection_product`;

CREATE TABLE `im_collection_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `collection_id` varchar(50) NOT NULL DEFAULT '' COMMENT '集合id',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品id',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `im_collection_product` WRITE;
/*!40000 ALTER TABLE `im_collection_product` DISABLE KEYS */;

INSERT INTO `im_collection_product` (`id`, `collection_id`, `product_id`, `is_delete`, `version`, `create_emp`, `update_emp`, `create_time`, `update_time`)
VALUES
	(1,'c100001','p100001',0,0,'1576488308','',1576488308,0),
	(2,'c100001','p100002',0,0,'1576488308','',1576488308,0),
	(3,'c100001','p100003',0,0,'1576488308','',1576488308,0),
	(4,'c100001','p100004',0,0,'1576488308','',1576488308,0),
	(5,'c100001','p100005',0,0,'1576488308','',1576488308,0),
	(6,'c100001','p100006',0,0,'1576488308','',1576488308,0),
	(7,'c100001','p100007',0,0,'1576488308','',1576488308,0),
	(8,'c100001','p100008',0,0,'1576488308','',1576488308,0),
	(9,'c100001','p100009',0,0,'1576488308','',1576488308,0),
	(10,'c100001','p100010',0,0,'1576488308','',1576488308,0),
	(11,'c100001','p100011',0,0,'1576488308','',1576488308,0),
	(12,'c100001','p100012',0,0,'1576488308','',1576488308,0);

/*!40000 ALTER TABLE `im_collection_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table im_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_comments`;

CREATE TABLE `im_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `customer_id` varchar(50) NOT NULL DEFAULT '' COMMENT '客户id,展示姓名要脱敏',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '商品id',
  `product_title` varchar(200) NOT NULL DEFAULT '' COMMENT '商品title',
  `variants_id` varchar(50) DEFAULT NULL COMMENT '商品属性id',
  `variants_title` varchar(100) DEFAULT NULL COMMENT '商品属性标题',
  `comment_level` int(11) NOT NULL COMMENT '评价星级1-5星',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '评价内容',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table im_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_customer`;

CREATE TABLE `im_customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `customer_id` varchar(50) NOT NULL DEFAULT '' COMMENT '客户id',
  `first_name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓',
  `last_name` varchar(50) NOT NULL DEFAULT '' COMMENT '名',
  `gender` int(11) NOT NULL COMMENT '0-女,1-男',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮件',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `im_customer` WRITE;
/*!40000 ALTER TABLE `im_customer` DISABLE KEYS */;

INSERT INTO `im_customer` (`id`, `customer_id`, `first_name`, `last_name`, `gender`, `email`, `password`, `is_delete`, `version`, `create_time`, `update_time`)
VALUES
	(1,'cs10001','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(2,'cs10002','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(3,'cs10003','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(4,'cs10001','gavin','huang',1,'gavin123@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(5,'cs10002','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(6,'cs10003','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(7,'cs10004','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(8,'cs10005','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(9,'cs10006','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(10,'cs10007','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(11,'cs10008','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(12,'cs10009','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(13,'cs10010','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(14,'cs10011','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(15,'cs10012','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(16,'cs10013','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(17,'cs10014','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(18,'cs10015','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(19,'cs10016','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(20,'cs10017','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(21,'cs10018','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(22,'cs10019','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(23,'cs10020','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(24,'cs10021','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(25,'cs10022','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(26,'cs10023','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(27,'cs10024','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(28,'cs10025','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(29,'cs10026','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(30,'cs10027','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(31,'cs10028','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(32,'cs10029','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(33,'cs10030','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(34,'cs10031','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(35,'cs10032','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(36,'cs10033','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(37,'cs10034','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(38,'cs10035','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(39,'cs10036','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(40,'cs10037','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(41,'cs10038','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(42,'cs10039','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(43,'cs10040','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(44,'cs10041','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(45,'cs10042','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(46,'cs10043','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(47,'cs10044','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(48,'cs10045','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(49,'cs10046','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(50,'cs10047','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(51,'cs10048','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(52,'cs10049','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(53,'cs10050','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(54,'cs10051','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(55,'cs10052','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(56,'cs10053','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(57,'cs10054','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(58,'cs10055','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(59,'cs10056','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(60,'cs10057','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424),
	(61,'cs10058','gavin','huang',1,'gavin@icodingedu.com','gavin@123',0,0,1577627424,1577627424),
	(62,'cs10059','arry','liu',1,'arry@icodingedu.com','arry@123',0,0,1577627424,1577627424),
	(63,'cs10060','coding','qing',1,'coding@icodingedu.com','coding@123',0,0,1577627424,1577627424);

/*!40000 ALTER TABLE `im_customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table im_customer_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_customer_address`;

CREATE TABLE `im_customer_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `customer_id` varchar(50) NOT NULL DEFAULT '' COMMENT '客户id',
  `first_name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓',
  `last_name` varchar(50) NOT NULL DEFAULT '' COMMENT '名',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮件',
  `company_name` varchar(50) DEFAULT NULL COMMENT '公司名',
  `country` varchar(50) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(50) NOT NULL DEFAULT '' COMMENT '省,州',
  `city` varchar(50) NOT NULL DEFAULT '' COMMENT '城市',
  `zip` varchar(50) NOT NULL DEFAULT '' COMMENT '邮编',
  `telphone` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `address1` varchar(500) NOT NULL DEFAULT '' COMMENT '详细地址1',
  `address2` varchar(500) DEFAULT NULL COMMENT '补充地址2',
  `default_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-非默认,1-默认地址',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `im_customer_address` WRITE;
/*!40000 ALTER TABLE `im_customer_address` DISABLE KEYS */;

INSERT INTO `im_customer_address` (`id`, `customer_id`, `first_name`, `last_name`, `email`, `company_name`, `country`, `province`, `city`, `zip`, `telphone`, `address1`, `address2`, `default_type`, `is_delete`, `version`, `create_time`, `update_time`)
VALUES
	(1,'cs10001','gavin','huang','gavin@icoding.com','icodingedu','china','shaanxi','xian','710001','15912345678','雁塔区',NULL,1,0,0,1577627424,1577627424),
	(2,'cs10002','arry','liu','arry@icoding.com','icodingedu','china','shaanxi','xian','710001','15912345678','雁塔区',NULL,1,0,0,1577627424,1577627424),
	(3,'cs10003','coding','qing','coding@icoding.com','icodingedu','china','shaanxi','xian','710000','15912345678','雁塔区',NULL,1,0,0,1577627424,1577627424),
	(4,'cs10004','david','xu','david@icoding.com','icodingedu','china','shaanxi','xian','710004','15912345678','雁塔区',NULL,1,0,0,1577627424,1577627424);

/*!40000 ALTER TABLE `im_customer_address` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table im_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_order`;

CREATE TABLE `im_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_sn` varchar(50) NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_email` varchar(50) NOT NULL DEFAULT '' COMMENT '用户邮箱',
  `first_name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓',
  `last_name` varchar(50) NOT NULL DEFAULT '' COMMENT '名',
  `country` varchar(50) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(50) NOT NULL DEFAULT '' COMMENT '省/州',
  `city` varchar(50) NOT NULL DEFAULT '' COMMENT '城市',
  `company` varchar(50) DEFAULT NULL COMMENT '公司',
  `address1` varchar(500) NOT NULL DEFAULT '' COMMENT '详细地址1',
  `address2` varchar(500) DEFAULT NULL COMMENT '详细地址2',
  `telphone` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `zip` varchar(50) NOT NULL DEFAULT '' COMMENT '邮编',
  `subtotal_price` decimal(10,2) NOT NULL COMMENT '购物车总价',
  `shipping_price` decimal(10,2) NOT NULL COMMENT '物流费用',
  `total_price` decimal(10,2) NOT NULL COMMENT '订单总价',
  `memo` varchar(2000) DEFAULT NULL COMMENT '订单备注',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table im_order_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_order_product`;

CREATE TABLE `im_order_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_sn` varchar(50) NOT NULL DEFAULT '' COMMENT '订单编号',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品id',
  `spu` varchar(50) NOT NULL DEFAULT '' COMMENT '产品唯一编码',
  `product_title` varchar(200) NOT NULL DEFAULT '' COMMENT '产品标题',
  `variants_id` varchar(50) NOT NULL DEFAULT '' COMMENT '属性id',
  `sku` varchar(50) NOT NULL DEFAULT '' COMMENT '属性唯一编码',
  `variants_title` varchar(200) NOT NULL DEFAULT '' COMMENT '属性标题',
  `sale_qty` int(11) NOT NULL COMMENT '购买数量',
  `sale_price` decimal(10,2) NOT NULL COMMENT '产品单价',
  `sale_total_price` decimal(10,2) NOT NULL COMMENT '产品总价',
  `image_src` varchar(300) NOT NULL DEFAULT '' COMMENT '属性商品src路径',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table im_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_product`;

CREATE TABLE `im_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品id',
  `product_title` varchar(200) NOT NULL DEFAULT '' COMMENT '产品标题',
  `url_handle` varchar(100) NOT NULL DEFAULT '' COMMENT '产品访问路径',
  `first_image_src` varchar(300) NOT NULL DEFAULT '' COMMENT '产品主图src路径',
  `second_image_src` varchar(300) NOT NULL DEFAULT '' COMMENT '产品次图src路径',
  `original_price` decimal(10,2) NOT NULL COMMENT '原价',
  `sale_price` decimal(10,2) NOT NULL COMMENT '售价',
  `spu` varchar(50) NOT NULL DEFAULT '' COMMENT '产品唯一编码',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '产品状态:0-下架,1-上架',
  `short_description` varchar(400) NOT NULL DEFAULT '' COMMENT '产品简短描述',
  `detail_description` varchar(2000) NOT NULL DEFAULT '' COMMENT '产品详细描述',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `im_product` WRITE;
/*!40000 ALTER TABLE `im_product` DISABLE KEYS */;

INSERT INTO `im_product` (`id`, `product_id`, `product_title`, `url_handle`, `first_image_src`, `second_image_src`, `original_price`, `sale_price`, `spu`, `status`, `short_description`, `detail_description`, `is_delete`, `version`, `create_emp`, `update_emp`, `create_time`, `update_time`)
VALUES
	(1,'p100001','fabric comfortable seat','fabric-comfortable-seat','me2.jpeg','me4.jpg',500.00,450.00,'AX1P3DE6U9',1,'a very comfortable cotton seat, which can be used at home and office','a very comfortable cotton seat, which can be used at home and office',0,0,'gavin','gavin',1576479709,1576479709),
	(11,'p15783390251SiS','测试产品Title','testurl','me1.jpg','me4.jpg',30.00,20.00,'spu1578339025e8IZ',1,'Product Short Description','Product Short Description',0,1,'gavin','gavin',1578339025,1578339025),
	(12,'p1578374842vo28','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu15783748427WVi',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',1,1,'gavin','gavin',1578374842,1578374842),
	(13,'p1578374923lXvQ','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374923WrD1',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',1,1,'gavin','gavin',1578374923,1578374923),
	(14,'p1578374926HJV5','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374926M1dp',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',1,1,'gavin','gavin',1578374926,1578374926),
	(15,'p1578374928PjNN','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu15783749285SNN',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374928,1578374928),
	(16,'p1578374930Dbu5','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374930UbpZ',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374930,1578374930),
	(17,'p1578374932W6ao','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374932ZrKr',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374932,1578374932),
	(18,'p1578374934hu1p','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374934YDKw',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374934,1578374934),
	(19,'p15783749362W6l','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374936J9Pb',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374936,1578374936),
	(20,'p15783749381Y9k','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374938xiPf',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374938,1578374938),
	(21,'p15783749400ed5','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374940mgA0',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374940,1578374940),
	(22,'p1578374942oxHX','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374942mlCQ',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374942,1578374942),
	(23,'p1578374945ASZe','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374945bBOT',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374945,1578374945),
	(24,'p1578374947RVEW','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374947N3Gb',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374947,1578374947),
	(25,'p1578374949pBgr','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374949yjy0',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374949,1578374949),
	(26,'p1578374950Wfb7','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374950Hfvd',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374950,1578374950),
	(27,'p1578374952MlmS','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374952g3qP',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374952,1578374952),
	(28,'p1578374954Uvvm','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374954sSw0',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374954,1578374954),
	(29,'p1578374956VEdi','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374956shLY',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374956,1578374956),
	(30,'p1578374957V2OB','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374957pVzi',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374957,1578374957),
	(31,'p1578374960vh5y','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374960TKTr',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374960,1578374960),
	(32,'p1578374962SYCh','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374962Sq1n',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374962,1578374962),
	(33,'p1578374964pMu4','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374964lNI9',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374964,1578374964),
	(34,'p1578374969WDIU','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374969oBse',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374969,1578374969),
	(35,'p1578374971dM6Y','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374971DdjZ',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374971,1578374971),
	(36,'p1578374972S1tg','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374972soZJ',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374972,1578374972),
	(37,'p1578374974pclR','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374974VvUk',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374974,1578374974),
	(38,'p15783749760Hvo','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374976Tz1p',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374976,1578374976),
	(39,'p1578374977XKF8','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374977wF2q',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374977,1578374977),
	(40,'p1578374980IxuQ','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu15783749803eEJ',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374980,1578374980),
	(41,'p15783749987UPl','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578374998fIoZ',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578374998,1578374998),
	(42,'p1578375000bvBR','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578375000pDRE',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578375000,1578375000),
	(43,'p1578375002DKEw','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578375002EXSi',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578375002,1578375002),
	(44,'p1578375004MOx5','Fashion Round Neck Plaid Long Sleeve Dress','fashion-round-neck-plaid-long-sleeve-dress','me1.jpg','me2.jpeg',30.00,20.00,'spu1578375004bRb6',1,'Fashion Round Neck Plaid Long Sleeve Dress','Fashion Round Neck Plaid Long Sleeve Dress',0,1,'gavin','gavin',1578375004,1578375004);

/*!40000 ALTER TABLE `im_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table im_product_attribute_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_product_attribute_value`;

CREATE TABLE `im_product_attribute_value` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品id',
  `attribute_id` int(11) NOT NULL COMMENT '属性id',
  `attribute_title` varchar(50) NOT NULL DEFAULT '' COMMENT '属性名(冗余字段)',
  `attribute_value` varchar(50) NOT NULL DEFAULT '' COMMENT '属性值(冗余字段)',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table im_product_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_product_images`;

CREATE TABLE `im_product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `images_id` varchar(50) NOT NULL DEFAULT '' COMMENT '图片id',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品id',
  `position` int(11) NOT NULL COMMENT '图片展示顺序',
  `src` varchar(2000) NOT NULL DEFAULT '' COMMENT '产品主图src路径',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `im_product_images` WRITE;
/*!40000 ALTER TABLE `im_product_images` DISABLE KEYS */;

INSERT INTO `im_product_images` (`id`, `images_id`, `product_id`, `position`, `src`, `is_delete`, `version`, `create_emp`, `update_emp`, `create_time`, `update_time`)
VALUES
	(1,'i100001','p100001',1,'/images/prodcut-images/i100001.jpg',0,0,'gavin','gavin',0,0),
	(2,'i100002','p100001',2,'/images/prodcut-images/i100002.jpg',0,0,'gavin','gavin',0,0),
	(3,'i100003','p100001',3,'/images/prodcut-images/i100003.jpg',0,0,'gavin','gavin',0,0),
	(4,'i100004','p100001',4,'/images/prodcut-images/i100004.jpg',0,0,'gavin','gavin',0,0),
	(5,'i100005','p100001',5,'/images/prodcut-images/i100005.jpg',0,0,'gavin','gavin',0,0),
	(6,'i100006','p100001',6,'/images/prodcut-images/i100006.jpg',0,0,'gavin','gavin',0,0),
	(34,'i1578374842y3pj1','p1578374842vo28',1,'me4.jpg',0,1,'gavin','gavin',1578374842,1578374842),
	(35,'i1578374842y3pj2','p1578374842vo28',2,'me5.jpeg',0,1,'gavin','gavin',1578374842,1578374842),
	(36,'i1578374842y3pj3','p1578374842vo28',3,'me6.jpeg',0,1,'gavin','gavin',1578374842,1578374842),
	(37,'i1578374923xEWi1','p1578374923lXvQ',1,'me4.jpg',0,1,'gavin','gavin',1578374923,1578374923),
	(38,'i1578374923xEWi2','p1578374923lXvQ',2,'me5.jpeg',0,1,'gavin','gavin',1578374923,1578374923),
	(39,'i1578374923xEWi3','p1578374923lXvQ',3,'me6.jpeg',0,1,'gavin','gavin',1578374923,1578374923),
	(40,'i15783749260TOH1','p1578374926HJV5',1,'me4.jpg',0,1,'gavin','gavin',1578374926,1578374926),
	(41,'i15783749260TOH2','p1578374926HJV5',2,'me5.jpeg',0,1,'gavin','gavin',1578374926,1578374926),
	(42,'i15783749260TOH3','p1578374926HJV5',3,'me6.jpeg',0,1,'gavin','gavin',1578374926,1578374926),
	(43,'i1578374928zWss1','p1578374928PjNN',1,'me4.jpg',0,1,'gavin','gavin',1578374928,1578374928),
	(44,'i1578374928zWss2','p1578374928PjNN',2,'me5.jpeg',0,1,'gavin','gavin',1578374928,1578374928),
	(45,'i1578374928zWss3','p1578374928PjNN',3,'me6.jpeg',0,1,'gavin','gavin',1578374928,1578374928),
	(46,'i1578374930VUDr1','p1578374930Dbu5',1,'me4.jpg',0,1,'gavin','gavin',1578374930,1578374930),
	(47,'i1578374930VUDr2','p1578374930Dbu5',2,'me5.jpeg',0,1,'gavin','gavin',1578374930,1578374930),
	(48,'i1578374930VUDr3','p1578374930Dbu5',3,'me6.jpeg',0,1,'gavin','gavin',1578374930,1578374930),
	(49,'i1578374932waXa1','p1578374932W6ao',1,'me4.jpg',0,1,'gavin','gavin',1578374932,1578374932),
	(50,'i1578374932waXa2','p1578374932W6ao',2,'me5.jpeg',0,1,'gavin','gavin',1578374932,1578374932),
	(51,'i1578374932waXa3','p1578374932W6ao',3,'me6.jpeg',0,1,'gavin','gavin',1578374932,1578374932),
	(52,'i15783749345WQI1','p1578374934hu1p',1,'me4.jpg',0,1,'gavin','gavin',1578374934,1578374934),
	(53,'i15783749345WQI2','p1578374934hu1p',2,'me5.jpeg',0,1,'gavin','gavin',1578374934,1578374934),
	(54,'i15783749345WQI3','p1578374934hu1p',3,'me6.jpeg',0,1,'gavin','gavin',1578374934,1578374934),
	(55,'i1578374936BcBR1','p15783749362W6l',1,'me4.jpg',0,1,'gavin','gavin',1578374936,1578374936),
	(56,'i1578374936BcBR2','p15783749362W6l',2,'me5.jpeg',0,1,'gavin','gavin',1578374936,1578374936),
	(57,'i1578374936BcBR3','p15783749362W6l',3,'me6.jpeg',0,1,'gavin','gavin',1578374936,1578374936),
	(58,'i1578374938Rh4R1','p15783749381Y9k',1,'me4.jpg',0,1,'gavin','gavin',1578374938,1578374938),
	(59,'i1578374938Rh4R2','p15783749381Y9k',2,'me5.jpeg',0,1,'gavin','gavin',1578374938,1578374938),
	(60,'i1578374938Rh4R3','p15783749381Y9k',3,'me6.jpeg',0,1,'gavin','gavin',1578374938,1578374938),
	(61,'i1578374940d26F1','p15783749400ed5',1,'me4.jpg',0,1,'gavin','gavin',1578374940,1578374940),
	(62,'i1578374940d26F2','p15783749400ed5',2,'me5.jpeg',0,1,'gavin','gavin',1578374940,1578374940),
	(63,'i1578374940d26F3','p15783749400ed5',3,'me6.jpeg',0,1,'gavin','gavin',1578374940,1578374940),
	(64,'i1578374942ZxZn1','p1578374942oxHX',1,'me4.jpg',0,1,'gavin','gavin',1578374942,1578374942),
	(65,'i1578374942ZxZn2','p1578374942oxHX',2,'me5.jpeg',0,1,'gavin','gavin',1578374942,1578374942),
	(66,'i1578374942ZxZn3','p1578374942oxHX',3,'me6.jpeg',0,1,'gavin','gavin',1578374942,1578374942),
	(67,'i1578374945SxZO1','p1578374945ASZe',1,'me4.jpg',0,1,'gavin','gavin',1578374945,1578374945),
	(68,'i1578374945SxZO2','p1578374945ASZe',2,'me5.jpeg',0,1,'gavin','gavin',1578374945,1578374945),
	(69,'i1578374945SxZO3','p1578374945ASZe',3,'me6.jpeg',0,1,'gavin','gavin',1578374945,1578374945),
	(70,'i1578374947mkEa1','p1578374947RVEW',1,'me4.jpg',0,1,'gavin','gavin',1578374947,1578374947),
	(71,'i1578374947mkEa2','p1578374947RVEW',2,'me5.jpeg',0,1,'gavin','gavin',1578374947,1578374947),
	(72,'i1578374947mkEa3','p1578374947RVEW',3,'me6.jpeg',0,1,'gavin','gavin',1578374947,1578374947),
	(73,'i1578374949DsH71','p1578374949pBgr',1,'me4.jpg',0,1,'gavin','gavin',1578374949,1578374949),
	(74,'i1578374949DsH72','p1578374949pBgr',2,'me5.jpeg',0,1,'gavin','gavin',1578374949,1578374949),
	(75,'i1578374949DsH73','p1578374949pBgr',3,'me6.jpeg',0,1,'gavin','gavin',1578374949,1578374949),
	(76,'i1578374950IQyI1','p1578374950Wfb7',1,'me4.jpg',0,1,'gavin','gavin',1578374950,1578374950),
	(77,'i1578374950IQyI2','p1578374950Wfb7',2,'me5.jpeg',0,1,'gavin','gavin',1578374950,1578374950),
	(78,'i1578374950IQyI3','p1578374950Wfb7',3,'me6.jpeg',0,1,'gavin','gavin',1578374950,1578374950),
	(79,'i1578374952lNIg1','p1578374952MlmS',1,'me4.jpg',0,1,'gavin','gavin',1578374952,1578374952),
	(80,'i1578374952lNIg2','p1578374952MlmS',2,'me5.jpeg',0,1,'gavin','gavin',1578374952,1578374952),
	(81,'i1578374952lNIg3','p1578374952MlmS',3,'me6.jpeg',0,1,'gavin','gavin',1578374952,1578374952),
	(82,'i1578374954KHs61','p1578374954Uvvm',1,'me4.jpg',0,1,'gavin','gavin',1578374954,1578374954),
	(83,'i1578374954KHs62','p1578374954Uvvm',2,'me5.jpeg',0,1,'gavin','gavin',1578374954,1578374954),
	(84,'i1578374954KHs63','p1578374954Uvvm',3,'me6.jpeg',0,1,'gavin','gavin',1578374954,1578374954),
	(85,'i1578374956PhmB1','p1578374956VEdi',1,'me4.jpg',0,1,'gavin','gavin',1578374956,1578374956),
	(86,'i1578374956PhmB2','p1578374956VEdi',2,'me5.jpeg',0,1,'gavin','gavin',1578374956,1578374956),
	(87,'i1578374956PhmB3','p1578374956VEdi',3,'me6.jpeg',0,1,'gavin','gavin',1578374956,1578374956),
	(88,'i15783749575ifA1','p1578374957V2OB',1,'me4.jpg',0,1,'gavin','gavin',1578374957,1578374957),
	(89,'i15783749575ifA2','p1578374957V2OB',2,'me5.jpeg',0,1,'gavin','gavin',1578374957,1578374957),
	(90,'i15783749575ifA3','p1578374957V2OB',3,'me6.jpeg',0,1,'gavin','gavin',1578374957,1578374957),
	(91,'i1578374960orS41','p1578374960vh5y',1,'me4.jpg',0,1,'gavin','gavin',1578374960,1578374960),
	(92,'i1578374960orS42','p1578374960vh5y',2,'me5.jpeg',0,1,'gavin','gavin',1578374960,1578374960),
	(93,'i1578374960orS43','p1578374960vh5y',3,'me6.jpeg',0,1,'gavin','gavin',1578374960,1578374960),
	(94,'i15783749623v201','p1578374962SYCh',1,'me4.jpg',0,1,'gavin','gavin',1578374962,1578374962),
	(95,'i15783749623v202','p1578374962SYCh',2,'me5.jpeg',0,1,'gavin','gavin',1578374962,1578374962),
	(96,'i15783749623v203','p1578374962SYCh',3,'me6.jpeg',0,1,'gavin','gavin',1578374962,1578374962),
	(97,'i1578374964iKaO1','p1578374964pMu4',1,'me4.jpg',0,1,'gavin','gavin',1578374964,1578374964),
	(98,'i1578374964iKaO2','p1578374964pMu4',2,'me5.jpeg',0,1,'gavin','gavin',1578374964,1578374964),
	(99,'i1578374964iKaO3','p1578374964pMu4',3,'me6.jpeg',0,1,'gavin','gavin',1578374964,1578374964),
	(100,'i15783749693V8b1','p1578374969WDIU',1,'me4.jpg',0,1,'gavin','gavin',1578374969,1578374969),
	(101,'i15783749693V8b2','p1578374969WDIU',2,'me5.jpeg',0,1,'gavin','gavin',1578374969,1578374969),
	(102,'i15783749693V8b3','p1578374969WDIU',3,'me6.jpeg',0,1,'gavin','gavin',1578374969,1578374969),
	(103,'i1578374971qO1t1','p1578374971dM6Y',1,'me4.jpg',0,1,'gavin','gavin',1578374971,1578374971),
	(104,'i1578374971qO1t2','p1578374971dM6Y',2,'me5.jpeg',0,1,'gavin','gavin',1578374971,1578374971),
	(105,'i1578374971qO1t3','p1578374971dM6Y',3,'me6.jpeg',0,1,'gavin','gavin',1578374971,1578374971),
	(106,'i15783749724gTp1','p1578374972S1tg',1,'me4.jpg',0,1,'gavin','gavin',1578374972,1578374972),
	(107,'i15783749724gTp2','p1578374972S1tg',2,'me5.jpeg',0,1,'gavin','gavin',1578374972,1578374972),
	(108,'i15783749724gTp3','p1578374972S1tg',3,'me6.jpeg',0,1,'gavin','gavin',1578374972,1578374972),
	(109,'i15783749746ArZ1','p1578374974pclR',1,'me4.jpg',0,1,'gavin','gavin',1578374974,1578374974),
	(110,'i15783749746ArZ2','p1578374974pclR',2,'me5.jpeg',0,1,'gavin','gavin',1578374974,1578374974),
	(111,'i15783749746ArZ3','p1578374974pclR',3,'me6.jpeg',0,1,'gavin','gavin',1578374974,1578374974),
	(112,'i1578374976oC0t1','p15783749760Hvo',1,'me4.jpg',0,1,'gavin','gavin',1578374976,1578374976),
	(113,'i1578374976oC0t2','p15783749760Hvo',2,'me5.jpeg',0,1,'gavin','gavin',1578374976,1578374976),
	(114,'i1578374976oC0t3','p15783749760Hvo',3,'me6.jpeg',0,1,'gavin','gavin',1578374976,1578374976),
	(115,'i1578374977bC4u1','p1578374977XKF8',1,'me4.jpg',0,1,'gavin','gavin',1578374977,1578374977),
	(116,'i1578374977bC4u2','p1578374977XKF8',2,'me5.jpeg',0,1,'gavin','gavin',1578374977,1578374977),
	(117,'i1578374977bC4u3','p1578374977XKF8',3,'me6.jpeg',0,1,'gavin','gavin',1578374977,1578374977),
	(118,'i1578374980pMXq1','p1578374980IxuQ',1,'me4.jpg',0,1,'gavin','gavin',1578374980,1578374980),
	(119,'i1578374980pMXq2','p1578374980IxuQ',2,'me5.jpeg',0,1,'gavin','gavin',1578374980,1578374980),
	(120,'i1578374980pMXq3','p1578374980IxuQ',3,'me6.jpeg',0,1,'gavin','gavin',1578374980,1578374980),
	(121,'i1578374998sS001','p15783749987UPl',1,'me4.jpg',0,1,'gavin','gavin',1578374998,1578374998),
	(122,'i1578374998sS002','p15783749987UPl',2,'me5.jpeg',0,1,'gavin','gavin',1578374998,1578374998),
	(123,'i1578374998sS003','p15783749987UPl',3,'me6.jpeg',0,1,'gavin','gavin',1578374998,1578374998),
	(124,'i1578375000PlJV1','p1578375000bvBR',1,'me4.jpg',0,1,'gavin','gavin',1578375000,1578375000),
	(125,'i1578375000PlJV2','p1578375000bvBR',2,'me5.jpeg',0,1,'gavin','gavin',1578375000,1578375000),
	(126,'i1578375000PlJV3','p1578375000bvBR',3,'me6.jpeg',0,1,'gavin','gavin',1578375000,1578375000),
	(127,'i1578375002KWWV1','p1578375002DKEw',1,'me4.jpg',0,1,'gavin','gavin',1578375002,1578375002),
	(128,'i1578375002KWWV2','p1578375002DKEw',2,'me5.jpeg',0,1,'gavin','gavin',1578375002,1578375002),
	(129,'i1578375002KWWV3','p1578375002DKEw',3,'me6.jpeg',0,1,'gavin','gavin',1578375002,1578375002),
	(130,'i1578375004QO521','p1578375004MOx5',1,'me4.jpg',0,1,'gavin','gavin',1578375004,1578375004),
	(131,'i1578375004QO522','p1578375004MOx5',2,'me5.jpeg',0,1,'gavin','gavin',1578375004,1578375004),
	(132,'i1578375004QO523','p1578375004MOx5',3,'me6.jpeg',0,1,'gavin','gavin',1578375004,1578375004);

/*!40000 ALTER TABLE `im_product_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table im_product_inventory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_product_inventory`;

CREATE TABLE `im_product_inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `variants_id` varchar(50) NOT NULL DEFAULT '' COMMENT '属性id',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品id',
  `inventory` int(11) NOT NULL COMMENT '库存数量',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_emp` varchar(50) NOT NULL COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `im_product_inventory` WRITE;
/*!40000 ALTER TABLE `im_product_inventory` DISABLE KEYS */;

INSERT INTO `im_product_inventory` (`id`, `variants_id`, `product_id`, `inventory`, `is_delete`, `version`, `create_emp`, `update_emp`, `create_time`, `update_time`)
VALUES
	(1,'v1578374842q1G11','p1578374842vo28',40,0,1,'gavin','gavin',1578374842,1578374842);

/*!40000 ALTER TABLE `im_product_inventory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table im_product_variants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `im_product_variants`;

CREATE TABLE `im_product_variants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `variants_id` varchar(50) NOT NULL DEFAULT '' COMMENT '属性id',
  `variants_title` varchar(100) NOT NULL DEFAULT '' COMMENT '属性名称,多个属性值用/隔开',
  `sku` varchar(50) NOT NULL DEFAULT '' COMMENT '属性唯一编码',
  `original_price` decimal(10,2) NOT NULL COMMENT '原价',
  `sale_price` decimal(10,2) NOT NULL COMMENT '售价',
  `variants_weight` int(11) NOT NULL COMMENT '重量单位g',
  `option_name1` varchar(50) NOT NULL DEFAULT '' COMMENT '属性名1',
  `option_name2` varchar(50) DEFAULT NULL COMMENT '属性名2',
  `option_name3` varchar(50) DEFAULT NULL COMMENT '属性名3',
  `option_value1` varchar(50) NOT NULL DEFAULT '' COMMENT '属性值1',
  `option_value2` varchar(50) DEFAULT NULL COMMENT '属性值2',
  `option_value3` varchar(50) DEFAULT NULL COMMENT '属性值3',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品id',
  `image_src` varchar(300) NOT NULL DEFAULT '' COMMENT '属性图片src路径',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除标识0-未删,1-删除',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '创建员工',
  `update_emp` varchar(50) NOT NULL DEFAULT '' COMMENT '更新员工',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `im_product_variants` WRITE;
/*!40000 ALTER TABLE `im_product_variants` DISABLE KEYS */;

INSERT INTO `im_product_variants` (`id`, `variants_id`, `variants_title`, `sku`, `original_price`, `sale_price`, `variants_weight`, `option_name1`, `option_name2`, `option_name3`, `option_value1`, `option_value2`, `option_value3`, `product_id`, `image_src`, `is_delete`, `version`, `create_emp`, `update_emp`, `create_time`, `update_time`)
VALUES
	(1,'v100001','gray / s','V1P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'gray','s',NULL,'p100001','/images/variants/v100001.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(3,'v100002','gray / m','V2P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'gray','m',NULL,'p100001','/images/variants/v100002.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(4,'v100003','gray / l','V3P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'gray','l',NULL,'p100001','/images/variants/v100003.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(5,'v100004','red / s','V4P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'red','s',NULL,'p100001','/images/variants/v100004.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(6,'v100005','red / m','V5P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'red','m',NULL,'p100001','/images/variants/v100005.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(7,'v100006','red / l','V6P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'red','l',NULL,'p100001','/images/variants/v100006.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(8,'v100007','black / s','V7P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'black','s',NULL,'p100001','/images/variants/v100007.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(9,'v100008','black / m','V8P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'black','m',NULL,'p100001','/images/variants/v100008.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(10,'v100009','black / l','V9P6U3G8EN',500.00,450.00,20000,'color','size',NULL,'black','l',NULL,'p100001','/images/variants/v100009.jpg',0,0,'gavin','gavin',1576482168,1576482168),
	(126,'v1578374842q1G11','red / s','sku15783748422aGY1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374842vo28','me1.jpg',0,1,'gavin','gavin',1578374842,1578374842),
	(127,'v1578374842q1G12','red / m','sku15783748422aGY2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374842vo28','me1.jpg',0,1,'gavin','gavin',1578374842,1578374842),
	(128,'v1578374842q1G13','red / l','sku15783748422aGY3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374842vo28','me1.jpg',0,1,'gavin','gavin',1578374842,1578374842),
	(129,'v1578374842q1G14','yellow / s','sku15783748422aGY4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374842vo28','me1.jpg',0,1,'gavin','gavin',1578374842,1578374842),
	(130,'v1578374842q1G15','yellow / m','sku15783748422aGY5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374842vo28','me1.jpg',0,1,'gavin','gavin',1578374842,1578374842),
	(131,'v1578374842q1G16','yellow / l','sku15783748422aGY6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374842vo28','me1.jpg',0,1,'gavin','gavin',1578374842,1578374842),
	(132,'v1578374923celF1','red / s','sku1578374923uRM71',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374923lXvQ','me1.jpg',0,1,'gavin','gavin',1578374923,1578374923),
	(133,'v1578374923celF2','red / m','sku1578374923uRM72',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374923lXvQ','me1.jpg',0,1,'gavin','gavin',1578374923,1578374923),
	(134,'v1578374923celF3','red / l','sku1578374923uRM73',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374923lXvQ','me1.jpg',0,1,'gavin','gavin',1578374923,1578374923),
	(135,'v1578374923celF4','yellow / s','sku1578374923uRM74',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374923lXvQ','me1.jpg',0,1,'gavin','gavin',1578374923,1578374923),
	(136,'v1578374923celF5','yellow / m','sku1578374923uRM75',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374923lXvQ','me1.jpg',0,1,'gavin','gavin',1578374923,1578374923),
	(137,'v1578374923celF6','yellow / l','sku1578374923uRM76',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374923lXvQ','me1.jpg',0,1,'gavin','gavin',1578374923,1578374923),
	(138,'v15783749265Ay91','red / s','sku1578374926xVYA1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374926HJV5','me1.jpg',0,1,'gavin','gavin',1578374926,1578374926),
	(139,'v15783749265Ay92','red / m','sku1578374926xVYA2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374926HJV5','me1.jpg',0,1,'gavin','gavin',1578374926,1578374926),
	(140,'v15783749265Ay93','red / l','sku1578374926xVYA3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374926HJV5','me1.jpg',0,1,'gavin','gavin',1578374926,1578374926),
	(141,'v15783749265Ay94','yellow / s','sku1578374926xVYA4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374926HJV5','me1.jpg',0,1,'gavin','gavin',1578374926,1578374926),
	(142,'v15783749265Ay95','yellow / m','sku1578374926xVYA5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374926HJV5','me1.jpg',0,1,'gavin','gavin',1578374926,1578374926),
	(143,'v15783749265Ay96','yellow / l','sku1578374926xVYA6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374926HJV5','me1.jpg',0,1,'gavin','gavin',1578374926,1578374926),
	(144,'v1578374928zdtt1','red / s','sku1578374928PQbb1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374928PjNN','me1.jpg',0,1,'gavin','gavin',1578374928,1578374928),
	(145,'v1578374928zdtt2','red / m','sku1578374928PQbb2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374928PjNN','me1.jpg',0,1,'gavin','gavin',1578374928,1578374928),
	(146,'v1578374928zdtt3','red / l','sku1578374928PQbb3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374928PjNN','me1.jpg',0,1,'gavin','gavin',1578374928,1578374928),
	(147,'v1578374928zdtt4','yellow / s','sku1578374928PQbb4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374928PjNN','me1.jpg',0,1,'gavin','gavin',1578374928,1578374928),
	(148,'v1578374928zdtt5','yellow / m','sku1578374928PQbb5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374928PjNN','me1.jpg',0,1,'gavin','gavin',1578374928,1578374928),
	(149,'v1578374928zdtt6','yellow / l','sku1578374928PQbb6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374928PjNN','me1.jpg',0,1,'gavin','gavin',1578374928,1578374928),
	(150,'v1578374930X7vk1','red / s','sku1578374930pNcs1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374930Dbu5','me1.jpg',0,1,'gavin','gavin',1578374930,1578374930),
	(151,'v1578374930X7vk2','red / m','sku1578374930pNcs2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374930Dbu5','me1.jpg',0,1,'gavin','gavin',1578374930,1578374930),
	(152,'v1578374930X7vk3','red / l','sku1578374930pNcs3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374930Dbu5','me1.jpg',0,1,'gavin','gavin',1578374930,1578374930),
	(153,'v1578374930X7vk4','yellow / s','sku1578374930pNcs4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374930Dbu5','me1.jpg',0,1,'gavin','gavin',1578374930,1578374930),
	(154,'v1578374930X7vk5','yellow / m','sku1578374930pNcs5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374930Dbu5','me1.jpg',0,1,'gavin','gavin',1578374930,1578374930),
	(155,'v1578374930X7vk6','yellow / l','sku1578374930pNcs6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374930Dbu5','me1.jpg',0,1,'gavin','gavin',1578374930,1578374930),
	(156,'v1578374932WRGR1','red / s','sku15783749325lel1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374932W6ao','me1.jpg',0,1,'gavin','gavin',1578374932,1578374932),
	(157,'v1578374932WRGR2','red / m','sku15783749325lel2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374932W6ao','me1.jpg',0,1,'gavin','gavin',1578374932,1578374932),
	(158,'v1578374932WRGR3','red / l','sku15783749325lel3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374932W6ao','me1.jpg',0,1,'gavin','gavin',1578374932,1578374932),
	(159,'v1578374932WRGR4','yellow / s','sku15783749325lel4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374932W6ao','me1.jpg',0,1,'gavin','gavin',1578374932,1578374932),
	(160,'v1578374932WRGR5','yellow / m','sku15783749325lel5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374932W6ao','me1.jpg',0,1,'gavin','gavin',1578374932,1578374932),
	(161,'v1578374932WRGR6','yellow / l','sku15783749325lel6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374932W6ao','me1.jpg',0,1,'gavin','gavin',1578374932,1578374932),
	(162,'v1578374934ePja1','red / s','sku1578374934QIY31',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374934hu1p','me1.jpg',0,1,'gavin','gavin',1578374934,1578374934),
	(163,'v1578374934ePja2','red / m','sku1578374934QIY32',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374934hu1p','me1.jpg',0,1,'gavin','gavin',1578374934,1578374934),
	(164,'v1578374934ePja3','red / l','sku1578374934QIY33',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374934hu1p','me1.jpg',0,1,'gavin','gavin',1578374934,1578374934),
	(165,'v1578374934ePja4','yellow / s','sku1578374934QIY34',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374934hu1p','me1.jpg',0,1,'gavin','gavin',1578374934,1578374934),
	(166,'v1578374934ePja5','yellow / m','sku1578374934QIY35',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374934hu1p','me1.jpg',0,1,'gavin','gavin',1578374934,1578374934),
	(167,'v1578374934ePja6','yellow / l','sku1578374934QIY36',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374934hu1p','me1.jpg',0,1,'gavin','gavin',1578374934,1578374934),
	(168,'v1578374936cu3Q1','red / s','sku1578374936KGnY1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p15783749362W6l','me1.jpg',0,1,'gavin','gavin',1578374936,1578374936),
	(169,'v1578374936cu3Q2','red / m','sku1578374936KGnY2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p15783749362W6l','me1.jpg',0,1,'gavin','gavin',1578374936,1578374936),
	(170,'v1578374936cu3Q3','red / l','sku1578374936KGnY3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p15783749362W6l','me1.jpg',0,1,'gavin','gavin',1578374936,1578374936),
	(171,'v1578374936cu3Q4','yellow / s','sku1578374936KGnY4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p15783749362W6l','me1.jpg',0,1,'gavin','gavin',1578374936,1578374936),
	(172,'v1578374936cu3Q5','yellow / m','sku1578374936KGnY5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p15783749362W6l','me1.jpg',0,1,'gavin','gavin',1578374936,1578374936),
	(173,'v1578374936cu3Q6','yellow / l','sku1578374936KGnY6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p15783749362W6l','me1.jpg',0,1,'gavin','gavin',1578374936,1578374936),
	(174,'v15783749387YSW1','red / s','sku1578374938znVy1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p15783749381Y9k','me1.jpg',0,1,'gavin','gavin',1578374938,1578374938),
	(175,'v15783749387YSW2','red / m','sku1578374938znVy2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p15783749381Y9k','me1.jpg',0,1,'gavin','gavin',1578374938,1578374938),
	(176,'v15783749387YSW3','red / l','sku1578374938znVy3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p15783749381Y9k','me1.jpg',0,1,'gavin','gavin',1578374938,1578374938),
	(177,'v15783749387YSW4','yellow / s','sku1578374938znVy4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p15783749381Y9k','me1.jpg',0,1,'gavin','gavin',1578374938,1578374938),
	(178,'v15783749387YSW5','yellow / m','sku1578374938znVy5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p15783749381Y9k','me1.jpg',0,1,'gavin','gavin',1578374938,1578374938),
	(179,'v15783749387YSW6','yellow / l','sku1578374938znVy6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p15783749381Y9k','me1.jpg',0,1,'gavin','gavin',1578374938,1578374938),
	(180,'v1578374940jvJ11','red / s','sku1578374940dTXz1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p15783749400ed5','me1.jpg',0,1,'gavin','gavin',1578374940,1578374940),
	(181,'v1578374940jvJ12','red / m','sku1578374940dTXz2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p15783749400ed5','me1.jpg',0,1,'gavin','gavin',1578374940,1578374940),
	(182,'v1578374940jvJ13','red / l','sku1578374940dTXz3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p15783749400ed5','me1.jpg',0,1,'gavin','gavin',1578374940,1578374940),
	(183,'v1578374940jvJ14','yellow / s','sku1578374940dTXz4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p15783749400ed5','me1.jpg',0,1,'gavin','gavin',1578374940,1578374940),
	(184,'v1578374940jvJ15','yellow / m','sku1578374940dTXz5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p15783749400ed5','me1.jpg',0,1,'gavin','gavin',1578374940,1578374940),
	(185,'v1578374940jvJ16','yellow / l','sku1578374940dTXz6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p15783749400ed5','me1.jpg',0,1,'gavin','gavin',1578374940,1578374940),
	(186,'v1578374942XaXk1','red / s','sku1578374942lblY1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374942oxHX','me1.jpg',0,1,'gavin','gavin',1578374942,1578374942),
	(187,'v1578374942XaXk2','red / m','sku1578374942lblY2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374942oxHX','me1.jpg',0,1,'gavin','gavin',1578374942,1578374942),
	(188,'v1578374942XaXk3','red / l','sku1578374942lblY3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374942oxHX','me1.jpg',0,1,'gavin','gavin',1578374942,1578374942),
	(189,'v1578374942XaXk4','yellow / s','sku1578374942lblY4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374942oxHX','me1.jpg',0,1,'gavin','gavin',1578374942,1578374942),
	(190,'v1578374942XaXk5','yellow / m','sku1578374942lblY5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374942oxHX','me1.jpg',0,1,'gavin','gavin',1578374942,1578374942),
	(191,'v1578374942XaXk6','yellow / l','sku1578374942lblY6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374942oxHX','me1.jpg',0,1,'gavin','gavin',1578374942,1578374942),
	(192,'v1578374945rTxc1','red / s','sku1578374945X0721',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374945ASZe','me1.jpg',0,1,'gavin','gavin',1578374945,1578374945),
	(193,'v1578374945rTxc2','red / m','sku1578374945X0722',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374945ASZe','me1.jpg',0,1,'gavin','gavin',1578374945,1578374945),
	(194,'v1578374945rTxc3','red / l','sku1578374945X0723',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374945ASZe','me1.jpg',0,1,'gavin','gavin',1578374945,1578374945),
	(195,'v1578374945rTxc4','yellow / s','sku1578374945X0724',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374945ASZe','me1.jpg',0,1,'gavin','gavin',1578374945,1578374945),
	(196,'v1578374945rTxc5','yellow / m','sku1578374945X0725',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374945ASZe','me1.jpg',0,1,'gavin','gavin',1578374945,1578374945),
	(197,'v1578374945rTxc6','yellow / l','sku1578374945X0726',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374945ASZe','me1.jpg',0,1,'gavin','gavin',1578374945,1578374945),
	(198,'v1578374947EZZe1','red / s','sku1578374947qbcW1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374947RVEW','me1.jpg',0,1,'gavin','gavin',1578374947,1578374947),
	(199,'v1578374947EZZe2','red / m','sku1578374947qbcW2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374947RVEW','me1.jpg',0,1,'gavin','gavin',1578374947,1578374947),
	(200,'v1578374947EZZe3','red / l','sku1578374947qbcW3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374947RVEW','me1.jpg',0,1,'gavin','gavin',1578374947,1578374947),
	(201,'v1578374947EZZe4','yellow / s','sku1578374947qbcW4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374947RVEW','me1.jpg',0,1,'gavin','gavin',1578374947,1578374947),
	(202,'v1578374947EZZe5','yellow / m','sku1578374947qbcW5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374947RVEW','me1.jpg',0,1,'gavin','gavin',1578374947,1578374947),
	(203,'v1578374947EZZe6','yellow / l','sku1578374947qbcW6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374947RVEW','me1.jpg',0,1,'gavin','gavin',1578374947,1578374947),
	(204,'v1578374949W73j1','red / s','sku1578374949RPs51',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374949pBgr','me1.jpg',0,1,'gavin','gavin',1578374949,1578374949),
	(205,'v1578374949W73j2','red / m','sku1578374949RPs52',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374949pBgr','me1.jpg',0,1,'gavin','gavin',1578374949,1578374949),
	(206,'v1578374949W73j3','red / l','sku1578374949RPs53',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374949pBgr','me1.jpg',0,1,'gavin','gavin',1578374949,1578374949),
	(207,'v1578374949W73j4','yellow / s','sku1578374949RPs54',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374949pBgr','me1.jpg',0,1,'gavin','gavin',1578374949,1578374949),
	(208,'v1578374949W73j5','yellow / m','sku1578374949RPs55',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374949pBgr','me1.jpg',0,1,'gavin','gavin',1578374949,1578374949),
	(209,'v1578374949W73j6','yellow / l','sku1578374949RPs56',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374949pBgr','me1.jpg',0,1,'gavin','gavin',1578374949,1578374949),
	(210,'v1578374950rymJ1','red / s','sku1578374950d6hV1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374950Wfb7','me1.jpg',0,1,'gavin','gavin',1578374950,1578374950),
	(211,'v1578374950rymJ2','red / m','sku1578374950d6hV2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374950Wfb7','me1.jpg',0,1,'gavin','gavin',1578374950,1578374950),
	(212,'v1578374950rymJ3','red / l','sku1578374950d6hV3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374950Wfb7','me1.jpg',0,1,'gavin','gavin',1578374950,1578374950),
	(213,'v1578374950rymJ4','yellow / s','sku1578374950d6hV4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374950Wfb7','me1.jpg',0,1,'gavin','gavin',1578374950,1578374950),
	(214,'v1578374950rymJ5','yellow / m','sku1578374950d6hV5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374950Wfb7','me1.jpg',0,1,'gavin','gavin',1578374950,1578374950),
	(215,'v1578374950rymJ6','yellow / l','sku1578374950d6hV6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374950Wfb7','me1.jpg',0,1,'gavin','gavin',1578374950,1578374950),
	(216,'v1578374952kpCP1','red / s','sku15783749520wIo1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374952MlmS','me1.jpg',0,1,'gavin','gavin',1578374952,1578374952),
	(217,'v1578374952kpCP2','red / m','sku15783749520wIo2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374952MlmS','me1.jpg',0,1,'gavin','gavin',1578374952,1578374952),
	(218,'v1578374952kpCP3','red / l','sku15783749520wIo3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374952MlmS','me1.jpg',0,1,'gavin','gavin',1578374952,1578374952),
	(219,'v1578374952kpCP4','yellow / s','sku15783749520wIo4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374952MlmS','me1.jpg',0,1,'gavin','gavin',1578374952,1578374952),
	(220,'v1578374952kpCP5','yellow / m','sku15783749520wIo5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374952MlmS','me1.jpg',0,1,'gavin','gavin',1578374952,1578374952),
	(221,'v1578374952kpCP6','yellow / l','sku15783749520wIo6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374952MlmS','me1.jpg',0,1,'gavin','gavin',1578374952,1578374952),
	(222,'v1578374954kPOU1','red / s','sku1578374954nLuD1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374954Uvvm','me1.jpg',0,1,'gavin','gavin',1578374954,1578374954),
	(223,'v1578374954kPOU2','red / m','sku1578374954nLuD2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374954Uvvm','me1.jpg',0,1,'gavin','gavin',1578374954,1578374954),
	(224,'v1578374954kPOU3','red / l','sku1578374954nLuD3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374954Uvvm','me1.jpg',0,1,'gavin','gavin',1578374954,1578374954),
	(225,'v1578374954kPOU4','yellow / s','sku1578374954nLuD4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374954Uvvm','me1.jpg',0,1,'gavin','gavin',1578374954,1578374954),
	(226,'v1578374954kPOU5','yellow / m','sku1578374954nLuD5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374954Uvvm','me1.jpg',0,1,'gavin','gavin',1578374954,1578374954),
	(227,'v1578374954kPOU6','yellow / l','sku1578374954nLuD6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374954Uvvm','me1.jpg',0,1,'gavin','gavin',1578374954,1578374954),
	(228,'v1578374956cN531','red / s','sku1578374956w0YK1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374956VEdi','me1.jpg',0,1,'gavin','gavin',1578374956,1578374956),
	(229,'v1578374956cN532','red / m','sku1578374956w0YK2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374956VEdi','me1.jpg',0,1,'gavin','gavin',1578374956,1578374956),
	(230,'v1578374956cN533','red / l','sku1578374956w0YK3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374956VEdi','me1.jpg',0,1,'gavin','gavin',1578374956,1578374956),
	(231,'v1578374956cN534','yellow / s','sku1578374956w0YK4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374956VEdi','me1.jpg',0,1,'gavin','gavin',1578374956,1578374956),
	(232,'v1578374956cN535','yellow / m','sku1578374956w0YK5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374956VEdi','me1.jpg',0,1,'gavin','gavin',1578374956,1578374956),
	(233,'v1578374956cN536','yellow / l','sku1578374956w0YK6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374956VEdi','me1.jpg',0,1,'gavin','gavin',1578374956,1578374956),
	(234,'v1578374957c8lU1','red / s','sku1578374957XsoP1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374957V2OB','me1.jpg',0,1,'gavin','gavin',1578374957,1578374957),
	(235,'v1578374957c8lU2','red / m','sku1578374957XsoP2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374957V2OB','me1.jpg',0,1,'gavin','gavin',1578374957,1578374957),
	(236,'v1578374957c8lU3','red / l','sku1578374957XsoP3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374957V2OB','me1.jpg',0,1,'gavin','gavin',1578374957,1578374957),
	(237,'v1578374957c8lU4','yellow / s','sku1578374957XsoP4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374957V2OB','me1.jpg',0,1,'gavin','gavin',1578374957,1578374957),
	(238,'v1578374957c8lU5','yellow / m','sku1578374957XsoP5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374957V2OB','me1.jpg',0,1,'gavin','gavin',1578374957,1578374957),
	(239,'v1578374957c8lU6','yellow / l','sku1578374957XsoP6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374957V2OB','me1.jpg',0,1,'gavin','gavin',1578374957,1578374957),
	(240,'v1578374960G99T1','red / s','sku1578374960YJ8M1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374960vh5y','me1.jpg',0,1,'gavin','gavin',1578374960,1578374960),
	(241,'v1578374960G99T2','red / m','sku1578374960YJ8M2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374960vh5y','me1.jpg',0,1,'gavin','gavin',1578374960,1578374960),
	(242,'v1578374960G99T3','red / l','sku1578374960YJ8M3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374960vh5y','me1.jpg',0,1,'gavin','gavin',1578374960,1578374960),
	(243,'v1578374960G99T4','yellow / s','sku1578374960YJ8M4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374960vh5y','me1.jpg',0,1,'gavin','gavin',1578374960,1578374960),
	(244,'v1578374960G99T5','yellow / m','sku1578374960YJ8M5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374960vh5y','me1.jpg',0,1,'gavin','gavin',1578374960,1578374960),
	(245,'v1578374960G99T6','yellow / l','sku1578374960YJ8M6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374960vh5y','me1.jpg',0,1,'gavin','gavin',1578374960,1578374960),
	(246,'v1578374962P9d61','red / s','sku1578374962uSE21',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374962SYCh','me1.jpg',0,1,'gavin','gavin',1578374962,1578374962),
	(247,'v1578374962P9d62','red / m','sku1578374962uSE22',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374962SYCh','me1.jpg',0,1,'gavin','gavin',1578374962,1578374962),
	(248,'v1578374962P9d63','red / l','sku1578374962uSE23',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374962SYCh','me1.jpg',0,1,'gavin','gavin',1578374962,1578374962),
	(249,'v1578374962P9d64','yellow / s','sku1578374962uSE24',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374962SYCh','me1.jpg',0,1,'gavin','gavin',1578374962,1578374962),
	(250,'v1578374962P9d65','yellow / m','sku1578374962uSE25',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374962SYCh','me1.jpg',0,1,'gavin','gavin',1578374962,1578374962),
	(251,'v1578374962P9d66','yellow / l','sku1578374962uSE26',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374962SYCh','me1.jpg',0,1,'gavin','gavin',1578374962,1578374962),
	(252,'v1578374964Wn811','red / s','sku1578374964c0Ho1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374964pMu4','me1.jpg',0,1,'gavin','gavin',1578374964,1578374964),
	(253,'v1578374964Wn812','red / m','sku1578374964c0Ho2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374964pMu4','me1.jpg',0,1,'gavin','gavin',1578374964,1578374964),
	(254,'v1578374964Wn813','red / l','sku1578374964c0Ho3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374964pMu4','me1.jpg',0,1,'gavin','gavin',1578374964,1578374964),
	(255,'v1578374964Wn814','yellow / s','sku1578374964c0Ho4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374964pMu4','me1.jpg',0,1,'gavin','gavin',1578374964,1578374964),
	(256,'v1578374964Wn815','yellow / m','sku1578374964c0Ho5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374964pMu4','me1.jpg',0,1,'gavin','gavin',1578374964,1578374964),
	(257,'v1578374964Wn816','yellow / l','sku1578374964c0Ho6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374964pMu4','me1.jpg',0,1,'gavin','gavin',1578374964,1578374964),
	(258,'v1578374969bqCO1','red / s','sku1578374969fSKE1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374969WDIU','me1.jpg',0,1,'gavin','gavin',1578374969,1578374969),
	(259,'v1578374969bqCO2','red / m','sku1578374969fSKE2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374969WDIU','me1.jpg',0,1,'gavin','gavin',1578374969,1578374969),
	(260,'v1578374969bqCO3','red / l','sku1578374969fSKE3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374969WDIU','me1.jpg',0,1,'gavin','gavin',1578374969,1578374969),
	(261,'v1578374969bqCO4','yellow / s','sku1578374969fSKE4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374969WDIU','me1.jpg',0,1,'gavin','gavin',1578374969,1578374969),
	(262,'v1578374969bqCO5','yellow / m','sku1578374969fSKE5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374969WDIU','me1.jpg',0,1,'gavin','gavin',1578374969,1578374969),
	(263,'v1578374969bqCO6','yellow / l','sku1578374969fSKE6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374969WDIU','me1.jpg',0,1,'gavin','gavin',1578374969,1578374969),
	(264,'v1578374971zhZL1','red / s','sku1578374971aQzF1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374971dM6Y','me1.jpg',0,1,'gavin','gavin',1578374971,1578374971),
	(265,'v1578374971zhZL2','red / m','sku1578374971aQzF2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374971dM6Y','me1.jpg',0,1,'gavin','gavin',1578374971,1578374971),
	(266,'v1578374971zhZL3','red / l','sku1578374971aQzF3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374971dM6Y','me1.jpg',0,1,'gavin','gavin',1578374971,1578374971),
	(267,'v1578374971zhZL4','yellow / s','sku1578374971aQzF4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374971dM6Y','me1.jpg',0,1,'gavin','gavin',1578374971,1578374971),
	(268,'v1578374971zhZL5','yellow / m','sku1578374971aQzF5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374971dM6Y','me1.jpg',0,1,'gavin','gavin',1578374971,1578374971),
	(269,'v1578374971zhZL6','yellow / l','sku1578374971aQzF6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374971dM6Y','me1.jpg',0,1,'gavin','gavin',1578374971,1578374971),
	(270,'v1578374972Zrxq1','red / s','sku1578374972mQvb1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374972S1tg','me1.jpg',0,1,'gavin','gavin',1578374972,1578374972),
	(271,'v1578374972Zrxq2','red / m','sku1578374972mQvb2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374972S1tg','me1.jpg',0,1,'gavin','gavin',1578374972,1578374972),
	(272,'v1578374972Zrxq3','red / l','sku1578374972mQvb3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374972S1tg','me1.jpg',0,1,'gavin','gavin',1578374972,1578374972),
	(273,'v1578374972Zrxq4','yellow / s','sku1578374972mQvb4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374972S1tg','me1.jpg',0,1,'gavin','gavin',1578374972,1578374972),
	(274,'v1578374972Zrxq5','yellow / m','sku1578374972mQvb5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374972S1tg','me1.jpg',0,1,'gavin','gavin',1578374972,1578374972),
	(275,'v1578374972Zrxq6','yellow / l','sku1578374972mQvb6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374972S1tg','me1.jpg',0,1,'gavin','gavin',1578374972,1578374972),
	(276,'v1578374974B42m1','red / s','sku1578374974xFIi1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374974pclR','me1.jpg',0,1,'gavin','gavin',1578374974,1578374974),
	(277,'v1578374974B42m2','red / m','sku1578374974xFIi2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374974pclR','me1.jpg',0,1,'gavin','gavin',1578374974,1578374974),
	(278,'v1578374974B42m3','red / l','sku1578374974xFIi3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374974pclR','me1.jpg',0,1,'gavin','gavin',1578374974,1578374974),
	(279,'v1578374974B42m4','yellow / s','sku1578374974xFIi4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374974pclR','me1.jpg',0,1,'gavin','gavin',1578374974,1578374974),
	(280,'v1578374974B42m5','yellow / m','sku1578374974xFIi5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374974pclR','me1.jpg',0,1,'gavin','gavin',1578374974,1578374974),
	(281,'v1578374974B42m6','yellow / l','sku1578374974xFIi6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374974pclR','me1.jpg',0,1,'gavin','gavin',1578374974,1578374974),
	(282,'v1578374976Malj1','red / s','sku1578374976yyUK1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p15783749760Hvo','me1.jpg',0,1,'gavin','gavin',1578374976,1578374976),
	(283,'v1578374976Malj2','red / m','sku1578374976yyUK2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p15783749760Hvo','me1.jpg',0,1,'gavin','gavin',1578374976,1578374976),
	(284,'v1578374976Malj3','red / l','sku1578374976yyUK3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p15783749760Hvo','me1.jpg',0,1,'gavin','gavin',1578374976,1578374976),
	(285,'v1578374976Malj4','yellow / s','sku1578374976yyUK4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p15783749760Hvo','me1.jpg',0,1,'gavin','gavin',1578374976,1578374976),
	(286,'v1578374976Malj5','yellow / m','sku1578374976yyUK5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p15783749760Hvo','me1.jpg',0,1,'gavin','gavin',1578374976,1578374976),
	(287,'v1578374976Malj6','yellow / l','sku1578374976yyUK6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p15783749760Hvo','me1.jpg',0,1,'gavin','gavin',1578374976,1578374976),
	(288,'v1578374977WfcH1','red / s','sku1578374977VJeV1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374977XKF8','me1.jpg',0,1,'gavin','gavin',1578374977,1578374977),
	(289,'v1578374977WfcH2','red / m','sku1578374977VJeV2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374977XKF8','me1.jpg',0,1,'gavin','gavin',1578374977,1578374977),
	(290,'v1578374977WfcH3','red / l','sku1578374977VJeV3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374977XKF8','me1.jpg',0,1,'gavin','gavin',1578374977,1578374977),
	(291,'v1578374977WfcH4','yellow / s','sku1578374977VJeV4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374977XKF8','me1.jpg',0,1,'gavin','gavin',1578374977,1578374977),
	(292,'v1578374977WfcH5','yellow / m','sku1578374977VJeV5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374977XKF8','me1.jpg',0,1,'gavin','gavin',1578374977,1578374977),
	(293,'v1578374977WfcH6','yellow / l','sku1578374977VJeV6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374977XKF8','me1.jpg',0,1,'gavin','gavin',1578374977,1578374977),
	(294,'v1578374980EUvX1','red / s','sku1578374980XUr71',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578374980IxuQ','me1.jpg',0,1,'gavin','gavin',1578374980,1578374980),
	(295,'v1578374980EUvX2','red / m','sku1578374980XUr72',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578374980IxuQ','me1.jpg',0,1,'gavin','gavin',1578374980,1578374980),
	(296,'v1578374980EUvX3','red / l','sku1578374980XUr73',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578374980IxuQ','me1.jpg',0,1,'gavin','gavin',1578374980,1578374980),
	(297,'v1578374980EUvX4','yellow / s','sku1578374980XUr74',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578374980IxuQ','me1.jpg',0,1,'gavin','gavin',1578374980,1578374980),
	(298,'v1578374980EUvX5','yellow / m','sku1578374980XUr75',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578374980IxuQ','me1.jpg',0,1,'gavin','gavin',1578374980,1578374980),
	(299,'v1578374980EUvX6','yellow / l','sku1578374980XUr76',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578374980IxuQ','me1.jpg',0,1,'gavin','gavin',1578374980,1578374980),
	(300,'v1578374998CCqs1','red / s','sku1578374998lHx21',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p15783749987UPl','me1.jpg',0,1,'gavin','gavin',1578374998,1578374998),
	(301,'v1578374998CCqs2','red / m','sku1578374998lHx22',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p15783749987UPl','me1.jpg',0,1,'gavin','gavin',1578374998,1578374998),
	(302,'v1578374998CCqs3','red / l','sku1578374998lHx23',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p15783749987UPl','me1.jpg',0,1,'gavin','gavin',1578374998,1578374998),
	(303,'v1578374998CCqs4','yellow / s','sku1578374998lHx24',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p15783749987UPl','me1.jpg',0,1,'gavin','gavin',1578374998,1578374998),
	(304,'v1578374998CCqs5','yellow / m','sku1578374998lHx25',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p15783749987UPl','me1.jpg',0,1,'gavin','gavin',1578374998,1578374998),
	(305,'v1578374998CCqs6','yellow / l','sku1578374998lHx26',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p15783749987UPl','me1.jpg',0,1,'gavin','gavin',1578374998,1578374998),
	(306,'v15783750007M5r1','red / s','sku1578375000EaEi1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578375000bvBR','me1.jpg',0,1,'gavin','gavin',1578375000,1578375000),
	(307,'v15783750007M5r2','red / m','sku1578375000EaEi2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578375000bvBR','me1.jpg',0,1,'gavin','gavin',1578375000,1578375000),
	(308,'v15783750007M5r3','red / l','sku1578375000EaEi3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578375000bvBR','me1.jpg',0,1,'gavin','gavin',1578375000,1578375000),
	(309,'v15783750007M5r4','yellow / s','sku1578375000EaEi4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578375000bvBR','me1.jpg',0,1,'gavin','gavin',1578375000,1578375000),
	(310,'v15783750007M5r5','yellow / m','sku1578375000EaEi5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578375000bvBR','me1.jpg',0,1,'gavin','gavin',1578375000,1578375000),
	(311,'v15783750007M5r6','yellow / l','sku1578375000EaEi6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578375000bvBR','me1.jpg',0,1,'gavin','gavin',1578375000,1578375000),
	(312,'v15783750026UOP1','red / s','sku15783750025CW41',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578375002DKEw','me1.jpg',0,1,'gavin','gavin',1578375002,1578375002),
	(313,'v15783750026UOP2','red / m','sku15783750025CW42',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578375002DKEw','me1.jpg',0,1,'gavin','gavin',1578375002,1578375002),
	(314,'v15783750026UOP3','red / l','sku15783750025CW43',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578375002DKEw','me1.jpg',0,1,'gavin','gavin',1578375002,1578375002),
	(315,'v15783750026UOP4','yellow / s','sku15783750025CW44',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578375002DKEw','me1.jpg',0,1,'gavin','gavin',1578375002,1578375002),
	(316,'v15783750026UOP5','yellow / m','sku15783750025CW45',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578375002DKEw','me1.jpg',0,1,'gavin','gavin',1578375002,1578375002),
	(317,'v15783750026UOP6','yellow / l','sku15783750025CW46',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578375002DKEw','me1.jpg',0,1,'gavin','gavin',1578375002,1578375002),
	(318,'v1578375004TgCK1','red / s','sku15783750044Fbl1',30.00,20.00,500,'color','size',NULL,'red','s',NULL,'p1578375004MOx5','me1.jpg',0,1,'gavin','gavin',1578375004,1578375004),
	(319,'v1578375004TgCK2','red / m','sku15783750044Fbl2',30.00,20.00,500,'color','size',NULL,'red','m',NULL,'p1578375004MOx5','me1.jpg',0,1,'gavin','gavin',1578375004,1578375004),
	(320,'v1578375004TgCK3','red / l','sku15783750044Fbl3',30.00,20.00,500,'color','size',NULL,'red','l',NULL,'p1578375004MOx5','me1.jpg',0,1,'gavin','gavin',1578375004,1578375004),
	(321,'v1578375004TgCK4','yellow / s','sku15783750044Fbl4',30.00,20.00,500,'color','size',NULL,'yellow','s',NULL,'p1578375004MOx5','me1.jpg',0,1,'gavin','gavin',1578375004,1578375004),
	(322,'v1578375004TgCK5','yellow / m','sku15783750044Fbl5',30.00,20.00,500,'color','size',NULL,'yellow','m',NULL,'p1578375004MOx5','me1.jpg',0,1,'gavin','gavin',1578375004,1578375004),
	(323,'v1578375004TgCK6','yellow / l','sku15783750044Fbl6',30.00,20.00,500,'color','size',NULL,'yellow','l',NULL,'p1578375004MOx5','me1.jpg',0,1,'gavin','gavin',1578375004,1578375004);

/*!40000 ALTER TABLE `im_product_variants` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
