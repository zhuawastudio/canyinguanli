/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - canyinguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`canyinguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `canyinguanli`;

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '菜品编号  Search111 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '菜品名称  Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '菜品照片',
  `caipin_types` int(11) DEFAULT NULL COMMENT '菜品类型 Search111',
  `caipin_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `caipin_kucun_number` int(11) DEFAULT NULL COMMENT '菜品库存',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '菜品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `caipin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `caipin_content` text COMMENT '菜品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='菜品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`caipin_uuid_number`,`caipin_name`,`caipin_photo`,`caipin_types`,`caipin_price`,`caipin_kucun_number`,`caipin_old_money`,`caipin_new_money`,`caipin_clicknum`,`caipin_content`,`shangxia_types`,`caipin_delete`,`create_time`) values (1,'165095202548823','菜品名称1','http://localhost:8080/canyinguanli/upload/caipin1.jpg',2,455,101,'864.24','435.99',335,'菜品介绍1',1,1,'2022-04-26 13:47:05'),(2,'165095202548928','菜品名称2','http://localhost:8080/canyinguanli/upload/caipin2.jpg',1,232,95,'684.13','102.04',306,'菜品介绍2',1,1,'2022-04-26 13:47:05'),(3,'165095202548925','菜品名称3','http://localhost:8080/canyinguanli/upload/caipin3.jpg',2,237,103,'539.20','140.05',107,'菜品介绍3',1,1,'2022-04-26 13:47:05'),(4,'165095202548964','菜品名称4','http://localhost:8080/canyinguanli/upload/caipin4.jpg',1,342,104,'555.35','77.67',27,'菜品介绍4',1,1,'2022-04-26 13:47:05'),(5,'165095202548913','菜品名称5','http://localhost:8080/canyinguanli/upload/caipin5.jpg',2,202,105,'532.06','284.87',23,'菜品介绍5',1,1,'2022-04-26 13:47:05');

/*Table structure for table `caipin_collection` */

DROP TABLE IF EXISTS `caipin_collection`;

CREATE TABLE `caipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='菜品收藏';

/*Data for the table `caipin_collection` */

insert  into `caipin_collection`(`id`,`caipin_id`,`yonghu_id`,`caipin_collection_types`,`insert_time`,`create_time`) values (2,2,1,1,'2022-04-26 13:47:05','2022-04-26 13:47:05'),(3,3,2,1,'2022-04-26 13:47:05','2022-04-26 13:47:05'),(4,4,3,1,'2022-04-26 13:47:05','2022-04-26 13:47:05'),(5,5,2,1,'2022-04-26 13:47:05','2022-04-26 13:47:05');

/*Table structure for table `caipin_commentback` */

DROP TABLE IF EXISTS `caipin_commentback`;

CREATE TABLE `caipin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜品评价';

/*Data for the table `caipin_commentback` */

insert  into `caipin_commentback`(`id`,`caipin_id`,`yonghu_id`,`caipin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2022-04-26 13:47:05','回复信息1','2022-04-26 13:47:05','2022-04-26 13:47:05'),(2,2,3,'评价内容2','2022-04-26 13:47:05','回复信息2','2022-04-26 13:47:05','2022-04-26 13:47:05'),(3,3,1,'评价内容3','2022-04-26 13:47:05','回复信息3','2022-04-26 13:47:05','2022-04-26 13:47:05'),(4,4,1,'评价内容4','2022-04-26 13:47:05','回复信息4','2022-04-26 13:47:05','2022-04-26 13:47:05'),(5,5,3,'评价内容5','2022-04-26 13:47:05','回复信息5','2022-04-26 13:47:05','2022-04-26 13:47:05'),(6,2,1,'评论111','2022-04-26 14:25:29','回复12','2022-04-26 14:25:59','2022-04-26 14:25:29');

/*Table structure for table `caipin_order` */

DROP TABLE IF EXISTS `caipin_order`;

CREATE TABLE `caipin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '预定数量',
  `caipin_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `caipin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜品订单';

/*Data for the table `caipin_order` */

insert  into `caipin_order`(`id`,`caipin_order_uuid_number`,`caipin_id`,`yonghu_id`,`buy_number`,`caipin_order_time`,`caipin_order_true_price`,`caipin_order_types`,`caipin_order_payment_types`,`insert_time`,`create_time`) values (1,'1650953748207',2,1,7,'2022-04-27 11:10:00','714.28',5,1,'2022-04-26 14:15:48','2022-04-26 14:15:48');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/canyinguanli/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/canyinguanli/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/canyinguanli/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'caipin_types','菜品类型',1,'菜品类型1',NULL,NULL,'2022-04-26 13:42:12'),(2,'caipin_types','菜品类型',2,'菜品类型2',NULL,NULL,'2022-04-26 13:42:12'),(3,'caipin_types','菜品类型',3,'菜品类型3',NULL,NULL,'2022-04-26 13:42:12'),(4,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-26 13:42:12'),(5,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-26 13:42:12'),(6,'caipin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-26 13:42:12'),(7,'caipin_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-26 13:42:12'),(8,'caipin_order_types','订单类型',3,'已出餐',NULL,NULL,'2022-04-26 13:42:12'),(9,'caipin_order_types','订单类型',4,'已取餐',NULL,NULL,'2022-04-26 13:42:12'),(10,'caipin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-04-26 13:42:12'),(11,'caipin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-26 13:42:12'),(12,'caipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-26 13:42:12'),(13,'gongyingshang_types','物品类型',1,'物品类型1',NULL,NULL,'2022-04-26 13:42:12'),(14,'gongyingshang_types','物品类型',2,'物品类型2',NULL,NULL,'2022-04-26 13:42:12'),(15,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-26 13:42:12'),(16,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-26 13:42:12'),(17,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-04-26 13:42:12'),(18,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-04-26 13:42:12'),(19,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.94','2022-04-26 13:42:12'),(20,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-26 13:42:12'),(21,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-26 13:42:12'),(22,'news_types','公告类型',3,'活动信息',NULL,NULL,'2022-04-26 13:42:12'),(23,'single_seach_types','单页数据类型',1,'酒店介绍',NULL,NULL,'2022-04-26 13:42:12'),(24,'single_seach_types','单页数据类型',2,'联系我们',NULL,NULL,'2022-04-26 13:42:12'),(25,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-26 13:42:12'),(26,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-26 13:42:12');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`yuangong_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',NULL,1,'2022-04-26 13:47:05','2022-04-26 13:47:05','2022-04-26 13:47:05'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',NULL,1,'2022-04-26 13:47:05','2022-04-26 13:47:05','2022-04-26 13:47:05'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',NULL,1,'2022-04-26 13:47:05','2022-04-26 13:47:05','2022-04-26 13:47:05'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',NULL,1,'2022-04-26 13:47:05','2022-04-26 13:47:05','2022-04-26 13:47:05'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',NULL,1,'2022-04-26 13:47:05','2022-04-26 13:47:05','2022-04-26 13:47:05'),(6,NULL,1,NULL,NULL,'评论内容12',5,2,'2022-04-26 14:18:34',NULL,'2022-04-26 14:18:34'),(7,NULL,NULL,NULL,1,'管理1111',5,2,'2022-04-26 14:23:35',NULL,'2022-04-26 14:23:35'),(8,NULL,1,NULL,NULL,'1',5,2,'2022-04-26 14:25:39',NULL,'2022-04-26 14:25:39'),(9,NULL,NULL,1,NULL,'123',5,2,'2022-04-26 14:26:14',NULL,'2022-04-26 14:26:14');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称 Search111 ',
  `gongyingshang_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongyingshang_email` varchar(200) DEFAULT NULL COMMENT '供应物品',
  `gongyingshang_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `gongyingshang_money` decimal(10,2) DEFAULT NULL COMMENT '供应价格',
  `gongyingshang_content` text COMMENT '供应物品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`gongyingshang_name`,`gongyingshang_phone`,`gongyingshang_email`,`gongyingshang_types`,`gongyingshang_money`,`gongyingshang_content`,`create_time`) values (1,'供应商名称1','17703786901','供应物品1',1,'200.81','供应物品简介1','2022-04-26 13:47:05'),(2,'供应商名称2','17703786902','供应物品2',2,'520.06','供应物品简介2','2022-04-26 13:47:05'),(3,'供应商名称3','17703786903','供应物品3',1,'292.71','供应物品简介3','2022-04-26 13:47:05'),(4,'供应商名称4','17703786904','供应物品4',1,'635.34','供应物品简介4','2022-04-26 13:47:05'),(5,'供应商名称5','17703786905','供应物品5',1,'320.50','供应物品简介5','2022-04-26 13:47:05');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/canyinguanli/upload/news1.jpg','2022-04-26 13:47:05','公告详情1','2022-04-26 13:47:05'),(2,'公告标题2',3,'http://localhost:8080/canyinguanli/upload/news2.jpg','2022-04-26 13:47:05','公告详情2','2022-04-26 13:47:05'),(3,'公告标题3',3,'http://localhost:8080/canyinguanli/upload/news3.jpg','2022-04-26 13:47:05','公告详情3','2022-04-26 13:47:05'),(4,'公告标题4',3,'http://localhost:8080/canyinguanli/upload/news4.jpg','2022-04-26 13:47:05','公告详情4','2022-04-26 13:47:05'),(5,'公告标题5',3,'http://localhost:8080/canyinguanli/upload/news5.jpg','2022-04-26 13:47:05','公告详情5','2022-04-26 13:47:05');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (1,'酒店介绍',1,'<p><span style=\"background-color: rgb(252, 253, 254); color: rgb(96, 98, 102);\">酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍</span></p>','2022-04-26 14:05:56'),(2,'联系我们',2,'<p>联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们12我们联系1我们联系3112323123123123123</p>','2022-04-26 14:06:08');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','8frc9v5uxbpgau89vv6fnhlxmx6tcfd6','2022-04-26 14:01:57','2022-04-26 15:29:11'),(2,1,'a1','yonghu','用户','0b5p8xlywpivxz7azdd8vle569e9otld','2022-04-26 14:06:27','2022-04-26 15:24:38'),(3,1,'a1','yuangong','员工','hbn9ew1k8jdlc18xwvolgd7421rpijj9','2022-04-26 14:25:47','2022-04-26 15:25:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/canyinguanli/upload/yonghu1.jpg',2,'1@qq.com','8382.54','2590.16','1779.67',1,'2022-04-26 13:47:05'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/canyinguanli/upload/yonghu2.jpg',1,'2@qq.com','737.01','957.24','248.37',1,'2022-04-26 13:47:05'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/canyinguanli/upload/yonghu3.jpg',2,'3@qq.com','722.17','862.37','275.15',1,'2022-04-26 13:47:05');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199610232001','http://localhost:8080/canyinguanli/upload/yuangong1.jpg',2,'1@qq.com','2022-04-26 13:47:05'),(2,'a2','123456','员工姓名2','17703786902','410224199610232002','http://localhost:8080/canyinguanli/upload/yuangong2.jpg',2,'2@qq.com','2022-04-26 13:47:05'),(3,'a3','123456','员工姓名3','17703786903','410224199610232003','http://localhost:8080/canyinguanli/upload/yuangong3.jpg',2,'3@qq.com','2022-04-26 13:47:05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
