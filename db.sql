/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaoxianshangxinlizhixun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaoxianshangxinlizhixun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaoxianshangxinlizhixun`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'jiangzhuo_types','讲座类型',1,'讲座类型1',NULL,NULL,'2023-02-27 09:28:34'),(2,'jiangzhuo_types','讲座类型',2,'讲座类型2',NULL,NULL,'2023-02-27 09:28:34'),(3,'jiangzhuo_types','讲座类型',3,'讲座类型3',NULL,NULL,'2023-02-27 09:28:34'),(4,'xinliyisheng_types','心理医生类型',1,'心理医生类型1',NULL,NULL,'2023-02-27 09:28:34'),(5,'xinliyisheng_types','心理医生类型',2,'心理医生类型2',NULL,NULL,'2023-02-27 09:28:34'),(6,'xinliyisheng_types','心理医生类型',3,'心理医生类型3',NULL,NULL,'2023-02-27 09:28:34'),(7,'xinliyisheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-02-27 09:28:34'),(8,'xinliyisheng_chat_types','数据类型',1,'问题',NULL,NULL,'2023-02-27 09:28:34'),(9,'xinliyisheng_chat_types','数据类型',2,'回复',NULL,NULL,'2023-02-27 09:28:34'),(10,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-02-27 09:28:34'),(11,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-02-27 09:28:34'),(12,'xinliyisheng_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-02-27 09:28:34'),(13,'xinliyisheng_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-02-27 09:28:34'),(14,'xinliyisheng_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-02-27 09:28:34'),(15,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-02-27 09:28:34'),(16,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-02-27 09:28:34'),(17,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-02-27 09:28:34'),(18,'sex_types','性别',1,'男',NULL,NULL,'2023-02-27 09:28:34'),(19,'sex_types','性别',2,'女',NULL,NULL,'2023-02-27 09:28:34'),(20,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-02-27 09:28:34'),(21,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-02-27 09:28:34');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `xinliyisheng_id` int(11) DEFAULT NULL COMMENT '心理医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `forum_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='情感树洞';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`xinliyisheng_id`,`yonghu_id`,`forum_photo`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,2,'upload/forum1.jpg',NULL,'发布内容1',402,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(2,'帖子标题2',NULL,2,'upload/forum2.jpg',NULL,'发布内容2',315,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(3,'帖子标题3',NULL,2,'upload/forum3.jpg',NULL,'发布内容3',444,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(4,'帖子标题4',NULL,2,'upload/forum4.jpg',NULL,'发布内容4',431,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(5,'帖子标题5',NULL,1,'upload/forum5.jpg',NULL,'发布内容5',235,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(6,'帖子标题6',NULL,2,'upload/forum6.jpg',NULL,'发布内容6',247,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(7,'帖子标题7',NULL,2,'upload/forum7.jpg',NULL,'发布内容7',253,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(8,'帖子标题8',NULL,2,'upload/forum8.jpg',NULL,'发布内容8',334,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(9,'帖子标题9',NULL,3,'upload/forum9.jpg',NULL,'发布内容9',448,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(10,'帖子标题10',NULL,1,'upload/forum10.jpg',NULL,'发布内容10',148,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(11,'帖子标题11',NULL,1,'upload/forum11.jpg',NULL,'发布内容11',406,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(12,'帖子标题12',NULL,3,'upload/forum12.jpg',NULL,'发布内容12',129,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(13,'帖子标题13',NULL,2,'upload/forum13.jpg',NULL,'发布内容13',272,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(14,'帖子标题14',NULL,2,'upload/forum14.jpg',NULL,'发布内容14',228,1,'2023-02-27 09:28:54','2023-02-27 09:28:54','2023-02-27 09:28:54'),(15,NULL,NULL,1,'',NULL,'312312312',14,2,'2023-02-27 10:46:11',NULL,'2023-02-27 10:46:11'),(16,NULL,NULL,1,'http://localhost:8080/gaoxiaoxianshangxinlizhixun/upload/1677465977337.jpeg',NULL,'312312312',14,2,'2023-02-27 10:46:19',NULL,'2023-02-27 10:46:19'),(17,NULL,1,NULL,NULL,NULL,'123',14,2,'2023-02-27 10:47:41',NULL,'2023-02-27 10:47:41'),(19,NULL,NULL,NULL,'/upload/1677466196697.jpeg',1,'123123',14,2,'2023-02-27 10:49:58',NULL,'2023-02-27 10:49:58'),(20,NULL,NULL,1,'http://localhost:8080/gaoxiaoxianshangxinlizhixun/upload/1677466271950.jpeg',NULL,'123213',14,2,'2023-02-27 10:51:15',NULL,'2023-02-27 10:51:15');

/*Table structure for table `jiangzhuo` */

DROP TABLE IF EXISTS `jiangzhuo`;

CREATE TABLE `jiangzhuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiangzhuo_name` varchar(200) DEFAULT NULL COMMENT '讲座标题 Search111 ',
  `jiangzhuo_types` int(11) DEFAULT NULL COMMENT '讲座类型 Search111',
  `jiangzhuo_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiangzhuo_shichang` varchar(200) DEFAULT NULL COMMENT '讲座时长',
  `jiangzhuo_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `jiangzhuo_address` varchar(200) DEFAULT NULL COMMENT '讲座地址',
  `jiangzhuo_content` text COMMENT '讲座简介',
  `jiangzhuo_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='讲座信息';

/*Data for the table `jiangzhuo` */

insert  into `jiangzhuo`(`id`,`jiangzhuo_name`,`jiangzhuo_types`,`jiangzhuo_photo`,`jiangzhuo_shichang`,`jiangzhuo_time`,`jiangzhuo_address`,`jiangzhuo_content`,`jiangzhuo_delete`,`insert_time`,`create_time`) values (1,'讲座标题1',1,'upload/jiangzhuo1.jpg','讲座时长1','2023-02-27 09:28:54','讲座地址1','讲座简介1',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(2,'讲座标题2',2,'upload/jiangzhuo2.jpg','讲座时长2','2023-02-27 09:28:54','讲座地址2','讲座简介2',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(3,'讲座标题3',2,'upload/jiangzhuo3.jpg','讲座时长3','2023-02-27 09:28:54','讲座地址3','讲座简介3',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(4,'讲座标题4',1,'upload/jiangzhuo4.jpg','讲座时长4','2023-02-27 09:28:54','讲座地址4','讲座简介4',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(5,'讲座标题5',2,'upload/jiangzhuo5.jpg','讲座时长5','2023-02-27 09:28:54','讲座地址5','讲座简介5',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(6,'讲座标题6',3,'upload/jiangzhuo6.jpg','讲座时长6','2023-02-27 09:28:54','讲座地址6','讲座简介6',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(7,'讲座标题7',3,'upload/jiangzhuo7.jpg','讲座时长7','2023-02-27 09:28:54','讲座地址7','讲座简介7',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(8,'讲座标题8',3,'upload/jiangzhuo8.jpg','讲座时长8','2023-02-27 09:28:54','讲座地址8','讲座简介8',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(9,'讲座标题9',1,'upload/jiangzhuo9.jpg','讲座时长9','2023-02-27 09:28:54','讲座地址9','讲座简介9',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(10,'讲座标题10',2,'upload/jiangzhuo10.jpg','讲座时长10','2023-02-27 09:28:54','讲座地址10','讲座简介10',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(11,'讲座标题11',1,'upload/jiangzhuo11.jpg','讲座时长11','2023-02-27 09:28:54','讲座地址11','讲座简介11',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(12,'讲座标题12',1,'upload/jiangzhuo12.jpg','讲座时长12','2023-02-27 09:28:54','讲座地址12','讲座简介12',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(13,'讲座标题13',2,'upload/jiangzhuo13.jpg','讲座时长13','2023-02-27 09:28:54','讲座地址13','讲座简介13',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(14,'讲座标题14',1,'upload/jiangzhuo14.jpg','讲座时长14','2023-02-27 09:28:54','讲座地址14','讲座简介14',1,'2023-02-27 09:28:54','2023-02-27 09:28:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-02-27 09:28:54','公告详情1','2023-02-27 09:28:54'),(2,'公告标题2',2,'upload/news2.jpg','2023-02-27 09:28:54','公告详情2','2023-02-27 09:28:54'),(3,'公告标题3',1,'upload/news3.jpg','2023-02-27 09:28:54','公告详情3','2023-02-27 09:28:54'),(4,'公告标题4',3,'upload/news4.jpg','2023-02-27 09:28:54','公告详情4','2023-02-27 09:28:54'),(5,'公告标题5',1,'upload/news5.jpg','2023-02-27 09:28:54','公告详情5','2023-02-27 09:28:54'),(6,'公告标题6',1,'upload/news6.jpg','2023-02-27 09:28:54','公告详情6','2023-02-27 09:28:54'),(7,'公告标题7',1,'upload/news7.jpg','2023-02-27 09:28:54','公告详情7','2023-02-27 09:28:54'),(8,'公告标题8',1,'upload/news8.jpg','2023-02-27 09:28:54','公告详情8','2023-02-27 09:28:54'),(9,'公告标题9',3,'upload/news9.jpg','2023-02-27 09:28:54','公告详情9','2023-02-27 09:28:54'),(10,'公告标题10',3,'upload/news10.jpg','2023-02-27 09:28:54','公告详情10','2023-02-27 09:28:54'),(11,'公告标题11',3,'upload/news11.jpg','2023-02-27 09:28:54','公告详情11','2023-02-27 09:28:54'),(12,'公告标题12',3,'upload/news12.jpg','2023-02-27 09:28:54','公告详情12','2023-02-27 09:28:54'),(13,'公告标题13',1,'upload/news13.jpg','2023-02-27 09:28:54','公告详情13','2023-02-27 09:28:54'),(14,'公告标题14',3,'upload/news14.jpg','2023-02-27 09:28:54','公告详情14','2023-02-27 09:28:54');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ros2qshgbzalfji8y2kd8wnrmi3y4mbf','2023-02-27 09:35:56','2023-02-27 11:53:55'),(2,1,'a1','yonghu','用户','xokxpp00cczp5k47vsowy5i0wstkcmev','2023-02-27 10:01:05','2023-02-27 11:45:16'),(3,1,'a1','xinliyisheng','心理医生','7ukukz4y8fibvb1b3nzspshes5h6w3j4','2023-02-27 10:24:30','2023-02-27 11:46:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-02-27 09:28:34');

/*Table structure for table `xinliyisheng` */

DROP TABLE IF EXISTS `xinliyisheng`;

CREATE TABLE `xinliyisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xinliyisheng_name` varchar(200) DEFAULT NULL COMMENT '心理医生名称 Search111 ',
  `xinliyisheng_types` int(11) DEFAULT NULL COMMENT '心理医生类型 Search111',
  `xinliyisheng_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `xinliyisheng_jiuzhi` varchar(200) DEFAULT NULL COMMENT '就职点',
  `xinliyisheng_zhugong` varchar(200) DEFAULT NULL COMMENT '主攻方向',
  `xinliyisheng_zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `xinliyisheng_content` text COMMENT '心理医生简介',
  `xinliyisheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='心理医生';

/*Data for the table `xinliyisheng` */

insert  into `xinliyisheng`(`id`,`username`,`password`,`xinliyisheng_name`,`xinliyisheng_types`,`xinliyisheng_photo`,`xinliyisheng_jiuzhi`,`xinliyisheng_zhugong`,`xinliyisheng_zhiwei`,`xinliyisheng_content`,`xinliyisheng_delete`,`insert_time`,`create_time`) values (1,'a1','123456','心理医生名称1',3,'upload/xinliyisheng1.jpg','就职点1','主攻方向1','职位1','<p>心理医生简介1</p>',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(2,'a2','123456','心理医生名称2',1,'upload/xinliyisheng2.jpg','就职点2','主攻方向2','职位2','心理医生简介2',1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(3,'a3','123456','心理医生名称3',3,'upload/xinliyisheng3.jpg','就职点3','主攻方向3','职位3','心理医生简介3',1,'2023-02-27 09:28:54','2023-02-27 09:28:54');

/*Table structure for table `xinliyisheng_chat` */

DROP TABLE IF EXISTS `xinliyisheng_chat`;

CREATE TABLE `xinliyisheng_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `xinliyisheng_id` int(11) DEFAULT NULL COMMENT '回答人',
  `xinliyisheng_chat_issue_text` text COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `xinliyisheng_chat_reply_text` text COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `xinliyisheng_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='心理医生咨询';

/*Data for the table `xinliyisheng_chat` */

insert  into `xinliyisheng_chat`(`id`,`yonghu_id`,`xinliyisheng_id`,`xinliyisheng_chat_issue_text`,`issue_time`,`xinliyisheng_chat_reply_text`,`reply_time`,`zhuangtai_types`,`xinliyisheng_chat_types`,`insert_time`,`create_time`) values (1,1,2,'问题1','2023-02-27 09:28:54','回复1','2023-02-27 09:28:54',2,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(2,1,1,'问题2','2023-02-27 09:28:54','回复2','2023-02-27 09:28:54',2,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(3,3,2,'问题3','2023-02-27 09:28:54','回复3','2023-02-27 09:28:54',1,2,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(4,3,2,'问题4','2023-02-27 09:28:54','回复4','2023-02-27 09:28:54',1,2,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(5,3,1,'问题5','2023-02-27 09:28:54','回复5','2023-02-27 09:28:54',2,2,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(6,3,3,'问题6','2023-02-27 09:28:54','回复6','2023-02-27 09:28:54',2,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(7,1,1,'问题7','2023-02-27 09:28:54','回复7','2023-02-27 09:28:54',1,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(8,3,1,'问题8','2023-02-27 09:28:54','回复8','2023-02-27 09:28:54',2,2,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(9,3,1,'问题9','2023-02-27 09:28:54','回复9','2023-02-27 09:28:54',1,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(10,2,2,'问题10','2023-02-27 09:28:54','回复10','2023-02-27 09:28:54',2,2,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(11,1,3,'问题11','2023-02-27 09:28:54','回复11','2023-02-27 09:28:54',1,2,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(12,2,1,'问题12','2023-02-27 09:28:54','回复12','2023-02-27 09:28:54',1,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(13,3,1,'问题13','2023-02-27 09:28:54','回复13','2023-02-27 09:28:54',1,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(14,3,1,'问题14','2023-02-27 09:28:54','回复14','2023-02-27 09:28:54',2,2,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(15,1,3,'123','2023-02-27 10:08:55',NULL,NULL,1,1,'2023-02-27 10:08:56','2023-02-27 10:08:56'),(16,1,1,'1','2023-02-27 10:09:07',NULL,NULL,1,1,'2023-02-27 10:09:08','2023-02-27 10:09:08'),(17,1,1,'321','2023-02-27 10:46:01',NULL,NULL,1,1,'2023-02-27 10:46:02','2023-02-27 10:46:02'),(18,1,1,NULL,NULL,'12333','2023-02-27 10:47:12',NULL,2,'2023-02-27 10:47:12','2023-02-27 10:47:12'),(19,1,1,NULL,NULL,'333','2023-02-27 10:47:17',NULL,2,'2023-02-27 10:47:17','2023-02-27 10:47:17');

/*Table structure for table `xinliyisheng_collection` */

DROP TABLE IF EXISTS `xinliyisheng_collection`;

CREATE TABLE `xinliyisheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinliyisheng_id` int(11) DEFAULT NULL COMMENT '心理医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinliyisheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='心理医生收藏';

/*Data for the table `xinliyisheng_collection` */

insert  into `xinliyisheng_collection`(`id`,`xinliyisheng_id`,`yonghu_id`,`xinliyisheng_collection_types`,`insert_time`,`create_time`) values (2,3,3,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(4,1,3,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(6,3,3,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(7,3,2,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(8,1,3,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(10,3,2,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(13,1,1,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(14,3,3,1,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(15,2,1,1,'2023-02-27 10:45:30','2023-02-27 10:45:30'),(16,3,1,1,'2023-02-27 10:45:34','2023-02-27 10:45:34');

/*Table structure for table `xinliyisheng_liuyan` */

DROP TABLE IF EXISTS `xinliyisheng_liuyan`;

CREATE TABLE `xinliyisheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinliyisheng_id` int(11) DEFAULT NULL COMMENT '心理医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinliyisheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='心理医生留言';

/*Data for the table `xinliyisheng_liuyan` */

insert  into `xinliyisheng_liuyan`(`id`,`xinliyisheng_id`,`yonghu_id`,`xinliyisheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,1,'留言内容1','2023-02-27 09:28:54','回复信息1','2023-02-27 09:28:54','2023-02-27 09:28:54'),(2,3,3,'留言内容2','2023-02-27 09:28:54','回复信息2','2023-02-27 09:28:54','2023-02-27 09:28:54'),(3,3,3,'留言内容3','2023-02-27 09:28:54','回复信息3','2023-02-27 09:28:54','2023-02-27 09:28:54'),(4,1,1,'留言内容4','2023-02-27 09:28:54','回复信息4','2023-02-27 09:28:54','2023-02-27 09:28:54'),(5,3,2,'留言内容5','2023-02-27 09:28:54','回复信息5','2023-02-27 09:28:54','2023-02-27 09:28:54'),(6,1,1,'留言内容6','2023-02-27 09:28:54','回复信息6','2023-02-27 09:28:54','2023-02-27 09:28:54'),(7,3,3,'留言内容7','2023-02-27 09:28:54','回复信息7','2023-02-27 09:28:54','2023-02-27 09:28:54'),(8,1,1,'留言内容8','2023-02-27 09:28:54','回复信息8','2023-02-27 09:28:54','2023-02-27 09:28:54'),(9,1,3,'留言内容9','2023-02-27 09:28:54','回复信息9','2023-02-27 09:28:54','2023-02-27 09:28:54'),(10,3,3,'留言内容10','2023-02-27 09:28:54','回复信息10','2023-02-27 09:28:54','2023-02-27 09:28:54'),(11,1,1,'留言内容11','2023-02-27 09:28:54','回复信息11','2023-02-27 09:28:54','2023-02-27 09:28:54'),(12,2,1,'留言内容12','2023-02-27 09:28:54','回复信息12','2023-02-27 09:28:54','2023-02-27 09:28:54'),(13,1,3,'留言内容13','2023-02-27 09:28:54','回复信息13333333','2023-02-27 10:46:54','2023-02-27 09:28:54'),(14,2,1,'留言内容14','2023-02-27 09:28:54','回复信息14','2023-02-27 09:28:54','2023-02-27 09:28:54');

/*Table structure for table `xinliyisheng_yuyue` */

DROP TABLE IF EXISTS `xinliyisheng_yuyue`;

CREATE TABLE `xinliyisheng_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinliyisheng_id` int(11) DEFAULT NULL COMMENT '心理医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinliyisheng_yuyue_text` text COMMENT '预约原因',
  `xinliyisheng_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `xinliyisheng_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `xinliyisheng_yuyue_yesno_text` text COMMENT '审核回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='心理医生报名';

/*Data for the table `xinliyisheng_yuyue` */

insert  into `xinliyisheng_yuyue`(`id`,`xinliyisheng_id`,`yonghu_id`,`xinliyisheng_yuyue_text`,`xinliyisheng_yuyue_time`,`xinliyisheng_yuyue_yesno_types`,`xinliyisheng_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,3,1,'预约原因1','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(2,3,1,'预约原因2','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(3,1,1,'预约原因3','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(4,1,2,'预约原因4','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(5,2,1,'预约原因5','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(6,1,3,'预约原因6','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(7,1,3,'预约原因7','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(12,3,3,'预约原因12','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(13,1,3,'预约原因13','2023-02-27 09:28:54',1,NULL,'2023-02-27 09:28:54','2023-02-27 09:28:54'),(16,1,1,'123123123','2023-02-27 10:45:37',2,'123132','2023-02-27 10:45:42','2023-02-27 10:45:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-02-27 09:28:54'),(2,'a2','123456','用户姓名2',1,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-02-27 09:28:54'),(3,'a3','123456','用户姓名3',2,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-02-27 09:28:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
