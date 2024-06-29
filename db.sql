/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmey517
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmey517` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmey517`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmey517/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmey517/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmey517/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusswenzhangxinxi` */

DROP TABLE IF EXISTS `discusswenzhangxinxi`;

CREATE TABLE `discusswenzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619580933573 DEFAULT CHARSET=utf8 COMMENT='文章信息评论表';

/*Data for the table `discusswenzhangxinxi` */

insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-04-28 10:55:57',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (72,'2021-04-28 10:55:57',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (73,'2021-04-28 10:55:57',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (74,'2021-04-28 10:55:57',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (75,'2021-04-28 10:55:57',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (76,'2021-04-28 10:55:57',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619580335756,'2021-04-28 11:25:35',31,11,'1','好诗','6666');
insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619580933572,'2021-04-28 11:35:33',31,1619580839690,'001','古人的思想很到位','');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619581085587 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (42,'2021-04-28 10:55:57','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (43,'2021-04-28 10:55:57','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (44,'2021-04-28 10:55:57','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (45,'2021-04-28 10:55:57','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (46,'2021-04-28 10:55:57','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619580973271,'2021-04-28 11:36:12','323222','用户可以在这里发布信息进行交流分享的。。。',0,1619580839690,'001','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619580986231,'2021-04-28 11:36:25',NULL,'55555',1619580973271,1619580839690,'001',NULL);
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619581085586,'2021-04-28 11:38:05',NULL,'5555',1619580973271,1619580839690,'001',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619581001143 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (61,'2021-04-28 10:55:57',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (62,'2021-04-28 10:55:57',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (63,'2021-04-28 10:55:57',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (64,'2021-04-28 10:55:57',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (65,'2021-04-28 10:55:57',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (66,'2021-04-28 10:55:57',6,'用户名6','留言内容6','回复内容6用户有问题可以在小程序端进行留言反馈问题，这里可以进行回复的');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619581001142,'2021-04-28 11:36:41',1619580839690,'001','有什么问题或者意见反馈也可以在这里给管理员反馈的。。。','好的欢迎反馈。。。');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619580899653 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619580899652,'2021-04-28 11:34:59',1619580839690,31,'wenzhangxinxi','春天诗句大全','http://localhost:8080/ssmey517/upload/wenzhangxinxi_tupian1.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','iswlfkcmpz31ubm45lfz2yyr0ebmjfl7','2021-04-28 11:10:49','2021-04-28 12:36:49');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','vkvoxdgxv4nn8jtfta9z92xjeh6fq163','2021-04-28 11:10:57','2021-04-28 12:25:23');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619580839690,'001','yonghu','用户','lfao4rqracxwrkp9h76mz4z0ngxgdc94','2021-04-28 11:34:06','2021-04-28 12:37:10');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-28 10:55:57');

/*Table structure for table `wenzhangleixing` */

DROP TABLE IF EXISTS `wenzhangleixing`;

CREATE TABLE `wenzhangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangleixing` varchar(200) NOT NULL COMMENT '文章类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='文章类型';

/*Data for the table `wenzhangleixing` */

insert  into `wenzhangleixing`(`id`,`addtime`,`wenzhangleixing`) values (21,'2021-04-28 10:55:57','文章');
insert  into `wenzhangleixing`(`id`,`addtime`,`wenzhangleixing`) values (22,'2021-04-28 10:55:57','小说');
insert  into `wenzhangleixing`(`id`,`addtime`,`wenzhangleixing`) values (23,'2021-04-28 10:55:57','诗句');

/*Table structure for table `wenzhangxinxi` */

DROP TABLE IF EXISTS `wenzhangxinxi`;

CREATE TABLE `wenzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `wenzhangleixing` varchar(200) NOT NULL COMMENT '文章类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zishu` varchar(200) DEFAULT NULL COMMENT '字数',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='文章信息';

/*Data for the table `wenzhangxinxi` */

insert  into `wenzhangxinxi`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangleixing`,`tupian`,`zishu`,`zuozhe`,`fabushijian`,`wenzhangneirong`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-04-28 10:55:57','春天诗句大全','诗句','http://localhost:8080/ssmey517/upload/wenzhangxinxi_tupian1.jpg','15000','王飞','2021-04-30 10:55:57','<p><img style=\"width:100%;\" src=\"http://localhost:8080/ssmey517/upload/1619580529772.jpg\"></p><p><br></p><p><span style=\"background-color: rgb(240, 239, 226); color: rgb(15, 15, 15);\">人生若只如初见，何事秋风悲画扇。等闲变却故人心，却道故人心易变。(一作：却道故心人易变)</span></p><p><span style=\"background-color: rgb(240, 239, 226); color: rgb(15, 15, 15);\">骊山语罢清宵半，泪雨霖铃终不怨。何如薄幸锦衣郎，比翼连枝当日愿。(一作：泪雨零 / 夜雨霖)</span></p><p><strong>译文</strong></p><p>人生如果都像初次相遇那般相处该多美好，那样就不会有现在的离别相思凄凉之苦了。</p><p>如今轻易地变了心，你却反而说情人间就是容易变心的。</p><p>想当初唐皇与贵妃的山盟海誓犹在耳边，却又最终作决绝之别，即使如此，也生不得怨。</p><p>但你又怎比得上当年的唐明皇呢，他总还是与<a href=\"https://so.gushiwen.org/authorv_1dd595d8089c.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">杨玉环</a>有过比翼鸟、连理枝的誓愿。</p><p><strong>注释</strong></p><p>柬：给……信札。</p><p>“何事”句：用汉朝<a href=\"https://so.gushiwen.org/authorv_b7a9f8f3e404.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">班婕妤</a>被弃的典故。班婕妤为汉成帝妃，被赵飞燕谗害，退居冷宫，后有诗《怨歌行》，以秋扇闲置为喻抒发被弃之怨情。南北朝梁刘孝绰《班婕妤怨》诗又点明“妾身似秋扇”，后遂以秋扇见捐喻女子被弃。这里是说本应当相亲相爱，但却成了相离相弃。</p><p>故人：指情人。却道故人心易变（出自娱园本），一作“却道故心人易变”。</p><p>“骊山”二句：用唐明皇与杨玉环的爱情典故。《太真外传》载，唐明皇与杨玉环曾于七月七日夜，在骊山华清宫长生殿里盟誓，愿世世为夫妻。<a href=\"https://so.gushiwen.org/authorv_85097dd0c645.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">白居易</a>《长恨歌》：“在天愿作比翼鸟，在地愿作连理枝。”对此作了生动的描写。后安史乱起，明皇入蜀，于马嵬坡赐死杨玉环。杨死前云：“妾诚负国恩，死无恨矣。”又，明皇此后于途中闻雨声、铃声而悲伤，遂作《雨霖铃》曲以寄哀思。这里借用此典说即使是最后作决绝之别，也不生怨。</p><p>薄幸：薄情。锦衣郎：指唐明皇。<span style=\"color: rgb(25, 83, 125);\">▲</span></p><p><br></p><p><span class=\"ql-cursor\">﻿</span>词题说这是一首拟古之作，其所拟之《决绝词》本是古诗中的一种，是以女子的口吻控诉男子的薄情，从而表态与之决绝。如古辞《白头吟》、唐<a href=\"https://so.gushiwen.org/authorv_201a0677dee4.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">元稹</a>《古决绝词三首》等。<a href=\"https://so.gushiwen.org/authorv_01611cc80faf.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">纳兰性德</a>的这首拟作是借用汉唐典故而抒发“闺怨”之情。</p><p>用“决绝”这个标题，很可能就是写与初恋情人的绝交这样一个场景的。这首词确实也是模拟被抛弃的女性的口吻来写的。</p><p>“人生若只如初见”：初相遇的时候，一切都是美好的，所有的时光，都是快乐的。即使偶有一些不如意的地方，也甘心消受，因为抱着憧憬，所以相信一切只会越来越好。所有的困难，都是微不足道，与意中人的相处也应像初见那般甜蜜温馨，深情快乐，可蓦然回首，曾经沧海，早已是，换了人间。。</p><p>“何事秋风悲画扇”一句用汉朝<a href=\"https://so.gushiwen.org/authorv_b7a9f8f3e404.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">班婕妤</a>被弃的典故。扇子是夏天用来驱走炎热，到了秋天就没人理睬了，古典诗词多用扇子的来比喻被冷落的女性。这里是说本应当相亲相爱，但却成了相离相弃。又将词情从美好的回忆一下子拽到了残酷的现实当中。</p><p>“等闲变却故人心，却道故人心易变”二句：因为此词是模拟女性的口吻写的，所以从这两句写出了主人公深深地自责与悔恨。纳兰不是一个负心汉，只是当时十多岁的少年还没主宰自己的命运。其实像<a href=\"https://so.gushiwen.org/authorv_ba71637288c6.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">李隆基</a>这样的大唐皇帝都保不住心爱的恋人，更何况是纳兰。</p><p>“骊山语罢清宵半，夜雨霖铃终不怨”： 这一句来自于唐明皇和杨贵妃的典故，《太真外传》中记载，唐明皇与<a href=\"https://so.gushiwen.org/authorv_1dd595d8089c.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">杨玉环</a>曾于七月七日夜，在骊山华清宫长生殿里盟誓，愿世世为夫妻。<a href=\"https://so.gushiwen.org/authorv_85097dd0c645.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">白居易</a>《长恨歌》中的“ 在天愿作比翼鸟，在地愿作连理枝。”更是对此作了生动的描写，当时这二人的感情被传为佳话。后安史乱起，明皇入蜀，在马嵬坡无奈处死杨玉环。杨玉环死前云：“妾诚负国恩，死无恨矣。明皇后来在途中听到雨声、铃声而悲伤，遂作《雨霖铃》曲以寄哀思。这里借用此典说即使是最后作决绝之别，也不生怨。</p><p>“何如薄幸锦衣郎，比翼连枝当日愿”：这里化用唐<a href=\"https://so.gushiwen.org/authorv_bc94c92721b8.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(25, 83, 125);\">李商隐</a>《马嵬》“如何四纪为天子，不及卢家有莫愁”的句意。女子将二人比作明皇与贵妃，可是你又怎么比得上当年的唐明皇呢，他总还是与杨玉环有过比翼鸟、连理枝的誓愿!意思是纵死而分离，也还是刻骨地念念不忘旧情。整首诗到这里就结束了，但女子的哀怨之情却持久的缠绵在读者心中，久久不曾消退。</p><p>这首词以一个女子的口吻，抒写了被丈夫抛弃的幽怨之情。词情哀怨凄婉，屈曲缠绵。“秋风悲画扇”即是悲叹自己遭弃的命运，“骊山”之语暗指原来浓情蜜意的时刻，“夜雨霖铃”写像唐玄宗和杨贵妃那样的亲密爱人也最终肠断马嵬坡，“比翼连枝”出自《长恨歌》诗句，写曾经的爱情誓言已成为遥远的过去。而这“闺怨”的背后，似乎更有着深层的痛楚，“闺怨”只是一种假托。故有人认为此篇别有隐情，词人是用男女间的爱情为喻，说明与朋友也应该始终如一，生死不渝。</p>',2,1,'2021-04-28 11:37:24',11);
insert  into `wenzhangxinxi`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangleixing`,`tupian`,`zishu`,`zuozhe`,`fabushijian`,`wenzhangneirong`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (32,'2021-04-28 10:55:57','文章标题2','文章','http://localhost:8080/ssmey517/upload/wenzhangxinxi_tupian2.jpg','字数2','作者2','2021-04-28 10:55:57','<p>文章内容2</p>',2,2,'2021-04-28 11:37:55',6);
insert  into `wenzhangxinxi`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangleixing`,`tupian`,`zishu`,`zuozhe`,`fabushijian`,`wenzhangneirong`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (33,'2021-04-28 10:55:57','文章标题3','小说','http://localhost:8080/ssmey517/upload/wenzhangxinxi_tupian3.jpg','字数3','作者3','2021-04-28 10:55:57','<p>文章内容3</p>',3,3,'2021-04-28 11:32:47',4);
insert  into `wenzhangxinxi`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangleixing`,`tupian`,`zishu`,`zuozhe`,`fabushijian`,`wenzhangneirong`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (34,'2021-04-28 10:55:57','文章标题4','文章','http://localhost:8080/ssmey517/upload/wenzhangxinxi_tupian4.jpg','字数4','作者4','2021-04-28 10:55:57','<p>文章内容4</p>',4,4,'2021-04-28 11:37:49',6);
insert  into `wenzhangxinxi`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangleixing`,`tupian`,`zishu`,`zuozhe`,`fabushijian`,`wenzhangneirong`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (35,'2021-04-28 10:55:57','文章标题5','小说','http://localhost:8080/ssmey517/upload/wenzhangxinxi_tupian5.jpg','字数5','作者5','2021-04-28 10:55:57','<p>文章内容5</p>',5,5,'2021-04-28 11:33:01',6);
insert  into `wenzhangxinxi`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangleixing`,`tupian`,`zishu`,`zuozhe`,`fabushijian`,`wenzhangneirong`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (36,'2021-04-28 10:55:57','文章标题6','诗句','http://localhost:8080/ssmey517/upload/wenzhangxinxi_tupian6.jpg','字数6','作者6','2021-04-28 10:55:57','<p>文章内容6</p>',6,6,'2021-04-28 11:33:06',7);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619580839691 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (11,'2021-04-28 10:55:57','1','1','姓名1','男','http://localhost:8080/ssmey517/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (12,'2021-04-28 10:55:57','用户2','123456','姓名2','男','http://localhost:8080/ssmey517/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (13,'2021-04-28 10:55:57','用户3','123456','姓名3','男','http://localhost:8080/ssmey517/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (14,'2021-04-28 10:55:57','用户4','123456','姓名4','男','http://localhost:8080/ssmey517/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (15,'2021-04-28 10:55:57','用户5','123456','姓名5','男','http://localhost:8080/ssmey517/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (16,'2021-04-28 10:55:57','用户6','123456','姓名6','男','http://localhost:8080/ssmey517/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (1619580839690,'2021-04-28 11:33:59','001','001','李倩','女','http://localhost:8080/ssmey517/upload/1619580887675.jpg','441214121412141','15214121411');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
