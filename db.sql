/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoquwuye
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoquwuye` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoquwuye`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '维修人员',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修名称 Search111',
  `baoxiu_photo` varchar(200) DEFAULT NULL COMMENT '报修图片',
  `baoxiu_types` int(11) NOT NULL COMMENT '报修类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请报修时间',
  `baoxiu_content` text COMMENT '报修详情',
  `baoxiu_weixiu_types` int(11) NOT NULL COMMENT '是否维修',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`yonghu_id`,`yuangong_id`,`baoxiu_name`,`baoxiu_photo`,`baoxiu_types`,`insert_time`,`baoxiu_content`,`baoxiu_weixiu_types`,`create_time`) values (2,2,2,'报修1','http://localhost:8080/xiaoquwuye/upload/1639383759609.jpeg',2,'2021-12-13 16:24:01','<p>报修1的详情</p>',2,'2021-12-13 14:22:09'),(3,2,2,'报修2','http://localhost:8080/xiaoquwuye/upload/1639388097852.jpeg',2,'2021-12-13 17:35:05','<p>报修2的详情</p>',2,'2021-12-13 14:22:09');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'小区轮播图1','http://localhost:8080/xiaoquwuye/upload/1639376412807.jpeg'),(2,'小区轮播图2','http://localhost:8080/xiaoquwuye/upload/1639376430673.jpeg'),(3,'轮播图3','http://localhost:8080/xiaoquwuye/upload/1639388881901.jpeg');

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

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,NULL,'2021-12-13 13:55:59'),(2,'sex_types','性别类型名称',2,'女',NULL,NULL,'2021-12-13 13:55:59'),(3,'tongzhi_types','通知类型名称',1,'通知类型1',NULL,NULL,'2021-12-13 13:55:59'),(4,'tongzhi_types','通知类型名称',2,'通知类型2',NULL,NULL,'2021-12-13 13:56:00'),(5,'jiaofei_types','缴费类型名称',1,'电费',NULL,NULL,'2021-12-13 13:56:00'),(6,'jiaofei_types','缴费类型名称',2,'水费',NULL,NULL,'2021-12-13 13:56:00'),(7,'jiaofei_types','缴费类型名称',3,'燃气费',NULL,NULL,'2021-12-13 13:56:00'),(8,'jiaofei_shifou_types','是否缴费',1,'待缴费',NULL,NULL,'2021-12-13 13:56:00'),(9,'jiaofei_shifou_types','是否缴费',2,'已缴费',NULL,NULL,'2021-12-13 13:56:00'),(10,'fangwu_types','房屋类型名称',1,'大三室',NULL,NULL,'2021-12-13 13:56:00'),(11,'fangwu_types','房屋类型名称',2,'小三室',NULL,NULL,'2021-12-13 13:56:00'),(12,'fangwu_types','房屋类型名称',3,'大两室',NULL,NULL,'2021-12-13 13:56:00'),(13,'fangwu_types','房屋类型名称',4,'小两室',NULL,NULL,'2021-12-13 13:56:00'),(14,'baoxiu_types','报修类型名称',1,'报修类型1',NULL,NULL,'2021-12-13 13:56:00'),(15,'baoxiu_types','报修类型名称',2,'报修类型2',NULL,NULL,'2021-12-13 13:56:00'),(16,'baoxiu_weixiu_types','是否维修',1,'待维修',NULL,NULL,'2021-12-13 13:56:00'),(17,'baoxiu_weixiu_types','是否维修',2,'已维修',NULL,NULL,'2021-12-13 13:56:00'),(18,'huanjing_types','环境类型名称',1,'电梯环境',NULL,NULL,'2021-12-13 13:56:00'),(19,'huanjing_types','环境类型名称',2,'绿化环境',NULL,NULL,'2021-12-13 13:56:00'),(20,'huanjing_types','环境类型名称',3,'广场环境',NULL,NULL,'2021-12-13 13:56:00'),(21,'forum_types','帖子类型名称',1,'帖子类型1',NULL,NULL,'2021-12-13 13:56:00'),(22,'forum_types','帖子类型名称',2,'帖子类型2',NULL,NULL,'2021-12-13 13:56:00'),(23,'forum_types','帖子类型名称',3,'帖子类型3',NULL,NULL,'2021-12-13 13:56:00'),(24,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2021-12-13 13:56:00'),(25,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2021-12-13 13:56:00');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称 Search111 ',
  `fangwu_address` varchar(200) DEFAULT NULL COMMENT '房屋地址 Search111 ',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `fangwu_types` int(11) DEFAULT NULL COMMENT '房屋类型  Search111',
  `fangwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `fangwu_content` text COMMENT '房屋详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`yonghu_id`,`fangwu_name`,`fangwu_address`,`fangwu_photo`,`fangwu_types`,`fangwu_delete`,`fangwu_content`,`create_time`) values (4,2,'房屋1','房屋地址1','http://localhost:8080/xiaoquwuye/upload/1639378536182.jpeg',2,1,'<p>房屋地址1的详细介绍</p>','2021-12-13 14:56:14'),(5,2,'房屋2','房屋2的地址','http://localhost:8080/xiaoquwuye/upload/1639378686922.jpeg',2,1,'<p>房屋2的详细介绍</p>','2021-12-13 14:58:17'),(6,NULL,'房屋3','房屋3的地址','http://localhost:8080/xiaoquwuye/upload/1639378723819.jpeg',3,1,'<p>房屋3的详情</p>','2021-12-13 14:58:49');

/*Table structure for table `fangwu_collection` */

DROP TABLE IF EXISTS `fangwu_collection`;

CREATE TABLE `fangwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房屋收藏';

/*Data for the table `fangwu_collection` */

insert  into `fangwu_collection`(`id`,`fangwu_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,6,2,'2021-12-13 16:31:44','2021-12-13 16:31:44'),(4,4,2,'2021-12-13 16:36:26','2021-12-13 16:36:26'),(6,5,2,'2021-12-13 17:32:35','2021-12-13 17:32:35');

/*Table structure for table `fangwu_liuyan` */

DROP TABLE IF EXISTS `fangwu_liuyan`;

CREATE TABLE `fangwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='房屋留言';

/*Data for the table `fangwu_liuyan` */

insert  into `fangwu_liuyan`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (3,6,2,'留言1','回复1','2021-12-13 16:31:53','2021-12-13 16:32:35','2021-12-13 14:21:21'),(4,5,2,'留言1121','好呀好呀','2021-12-13 17:32:41','2021-12-13 17:44:47','2021-12-13 14:21:21');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (47,'标题1',2,'内容1',NULL,3,1,'2021-12-13 16:34:12',NULL,'2021-12-13 16:34:12'),(48,'帖子3',2,'帖子内容3',NULL,2,1,'2021-12-13 17:32:59',NULL,'2021-12-13 17:32:59'),(49,NULL,2,'自顶',48,NULL,2,'2021-12-13 17:33:08',NULL,'2021-12-13 17:33:08');

/*Table structure for table `huanjing` */

DROP TABLE IF EXISTS `huanjing`;

CREATE TABLE `huanjing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huanjing_name` varchar(200) DEFAULT NULL COMMENT '环境名称 Search111',
  `huanjing_photo` varchar(200) DEFAULT NULL COMMENT '环境图片',
  `huanjing_types` int(11) NOT NULL COMMENT '环境类型',
  `huanjing_content` text COMMENT '环境详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='小区环境';

/*Data for the table `huanjing` */

insert  into `huanjing`(`id`,`huanjing_name`,`huanjing_photo`,`huanjing_types`,`huanjing_content`,`insert_time`,`create_time`) values (2,'小区1号楼门前的绿化环境','http://localhost:8080/xiaoquwuye/upload/1639378793517.jpeg',2,'<p>小区门前的绿化环境</p>','2021-12-13 15:00:11','2021-12-13 15:00:11'),(3,'小区门口环境','http://localhost:8080/xiaoquwuye/upload/1639378817636.jpeg',2,'<p>小区门口环境详细介绍</p>','2021-12-13 15:00:49','2021-12-13 15:00:49');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangwu_id` int(11) NOT NULL COMMENT '房源',
  `jiaofei_name` varchar(200) DEFAULT NULL COMMENT '缴费名称 Search111',
  `jiaofei_yuefen` varchar(200) DEFAULT NULL COMMENT '缴费月份 Search111',
  `jiaofei_types` int(11) NOT NULL COMMENT '缴费类型 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额',
  `jiaofei_content` text COMMENT '缴费详情 ',
  `jiaofei_shifou_types` int(11) NOT NULL COMMENT '是否缴费',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费发布时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='缴费';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`fangwu_id`,`jiaofei_name`,`jiaofei_yuefen`,`jiaofei_types`,`new_money`,`jiaofei_content`,`jiaofei_shifou_types`,`insert_time`,`create_time`) values (2,4,'房屋2的2021年12月电费','2021-12-01',1,'200.00','<p>房屋2的2021年12月电费缴费清单</p>',1,'2021-12-13 15:08:56','2021-12-13 14:58:17'),(3,4,'房屋2的2021年11月水费缴费','2021-11-01',2,'300.00','<p>房屋2的2021年11月水费缴费详情介绍</p>',2,'2021-12-13 15:21:03','2021-12-13 14:58:17');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','i14jpm4wmgaj5ph2tei5aukp2wph9nzv','2021-12-13 14:17:20','2021-12-13 18:56:27'),(2,2,'a1','yonghu','住户','p8n7jboqx3xtrdckpk2i76jh87dtbvng','2021-12-13 15:38:08','2021-12-13 18:42:01'),(3,2,'a11','yuangong','员工','iqqstcnb1yteh2acesd8rk5hyh1z3w79','2021-12-13 16:29:33','2021-12-13 18:43:11');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tongzhi_name` varchar(200) DEFAULT NULL COMMENT '通知名称 Search111  ',
  `tongzhi_photo` varchar(200) DEFAULT NULL COMMENT '通知图片 ',
  `tongzhi_types` int(11) NOT NULL COMMENT '通知类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知发布时间 ',
  `tongzhi_content` text COMMENT '通知详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='通知';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`tongzhi_name`,`tongzhi_photo`,`tongzhi_types`,`insert_time`,`tongzhi_content`,`create_time`) values (1,'通知名称1','http://localhost:8080/xiaoquwuye/upload/1639376539330.jpg',1,'2021-12-13 13:55:59','<p>通知详情1111</p>','2021-12-13 13:55:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '住户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '住户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '住户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '住户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='住户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`new_money`,`create_time`) values (2,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/xiaoquwuye/upload/1639376475503.jpg',1,'10.00','2021-12-13 14:21:21');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号 Search111 ',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 Search111 ',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`create_time`) values (2,'a11','123456','张11','17703786911','410224199610232011','http://localhost:8080/xiaoquwuye/upload/1639376526692.jpg',1,'2021-12-13 14:22:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
