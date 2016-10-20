# Host: localhost  (Version: 5.6.12-log)
# Date: 2015-10-24 09:25:05
# Generator: MySQL-Front 5.3  (Build 4.214)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_info"
#

DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(15) NOT NULL COMMENT '账号',
  `admin_name` char(20) NOT NULL COMMENT '姓名',
  `password` char(32) NOT NULL COMMENT '密码',
  `phone` char(11) NOT NULL COMMENT '电话',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除状态',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员信息';

#
# Data for table "admin_info"
#

INSERT INTO `admin_info` VALUES (2,'admin','admin','9cbf8a4dcb8e30682b927f352d6559a0','',0,0,0),(3,'aaaaaa','么么么么','asdasd','12345679810',0,1442707327,1442707327);

#
# Structure for table "album"
#

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL DEFAULT '0' COMMENT '网站id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '相册名',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='相册';

#
# Data for table "album"
#

INSERT INTO `album` VALUES (1,1,'aaaa',1442052604,1442052604),(2,1,'ssss',1442974216,1442974216),(3,1,'dddd',1442979523,1442979523),(4,1,'ffff',1443014429,1443014429),(5,3,'aaa',1443101229,1443101229),(6,4,'ssss',1443101336,1443101336);

#
# Structure for table "answer"
#

DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `question_id` int(11) NOT NULL COMMENT '问题ID',
  `answer` varchar(15) NOT NULL COMMENT '答案',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1禁用,0正常',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='密保问题答案';

#
# Data for table "answer"
#

INSERT INTO `answer` VALUES (1,2,1,'aa',0,1442230591,1442230591),(2,2,2,'aa',0,1442230591,1442230591),(3,2,3,'aa',0,1442230591,1442230591),(4,3,1,'qw',0,1442231007,1442231007),(5,3,2,'qw',0,1442231007,1442231007),(6,3,3,'qw',0,1442231007,1442231007),(7,4,1,'as',0,1442232703,1442232703),(8,4,2,'as',0,1442232703,1442232703),(9,4,3,'as',0,1442232703,1442232703),(10,5,1,'as',0,1442234439,1442234439),(11,5,2,'a',0,1442234439,1442234439),(12,5,4,'as',0,1442234439,1442234439),(13,6,2,'as',0,1442234958,1442234958),(14,6,1,'as',0,1442234958,1442234958),(15,6,5,'as',0,1442234958,1442234958),(16,7,1,'as',0,1442235033,1442235033),(17,7,2,'asd',0,1442235033,1442235033),(18,7,5,'as',0,1442235033,1442235033),(19,8,1,'as',0,1442235132,1442235132),(20,8,2,'as',0,1442235132,1442235132),(21,8,4,'as',0,1442235132,1442235132),(22,9,1,'as',0,1442236085,1442236255),(23,9,2,'sddddddd',0,1442236085,1442236255),(24,9,3,'dfdddd',0,1442236085,1442236255),(25,10,1,'as',0,1442708106,1442708106),(26,10,2,'as',0,1442708106,1442708106),(27,10,3,'as',0,1442708106,1442708106),(28,11,1,'as',0,1442708900,1442708900),(29,11,2,'as',0,1442708900,1442708900),(30,11,3,'as',0,1442708900,1442708900),(31,12,2,'as',0,1442709186,1442709186),(32,12,1,'as',0,1442709186,1442709186),(33,12,3,'as',0,1442709186,1442709186),(34,13,1,'as',0,1443101293,1443101293),(35,13,2,'as',0,1443101293,1443101293),(36,13,3,'as',0,1443101293,1443101293);

#
# Structure for table "article"
#

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属网站ID',
  `content` text COMMENT '内容',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `pic_id` int(11) NOT NULL DEFAULT '0' COMMENT '图片id',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '类型',
  `author` varchar(10) DEFAULT NULL COMMENT '作者',
  `source` varchar(60) DEFAULT NULL COMMENT '来源',
  `url` varchar(100) DEFAULT NULL COMMENT '网址',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 -1:删除 0:启用 1:禁用',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='文章';

#
# Data for table "article"
#

INSERT INTO `article` VALUES (1,1,'&lt;p&gt;aaaaaaaaaaa&lt;/p&gt;&lt;p&gt;aaaaaaaaaaaaa&lt;/p&gt;&lt;p&gt;aaaaaaaaaaaaaa&lt;/p&gt;','aaasdf',13,1,'ddd','sss','fff',1443512479,1443660063,0,0),(2,1,'&lt;p&gt;sssssssssss&lt;/p&gt;&lt;p&gt;sssssssss&lt;/p&gt;&lt;p&gt;sssssss&lt;/p&gt;','asss',8,2,'sss','sss','sss',1443512497,1443660053,0,0),(3,1,'&lt;p&gt;dddddddddd&lt;/p&gt;&lt;p&gt;ddddddd&lt;/p&gt;&lt;p&gt;dddddd&lt;/p&gt;&lt;p&gt;ddd&lt;/p&gt;','addddd',1,3,'ddd','ddd','ddd',1443512521,1443660045,0,0),(4,1,'&lt;p&gt;fffffff&lt;/p&gt;&lt;p&gt;fffff&lt;/p&gt;&lt;p&gt;ffffffff&lt;/p&gt;&lt;p&gt;ffffffffff&lt;/p&gt;','affff',19,4,'ff','ffff','fff',1443512541,1443660038,0,0);

#
# Structure for table "background"
#

DROP TABLE IF EXISTS `background`;
CREATE TABLE `background` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '名字',
  `pic_id` int(11) NOT NULL DEFAULT '0' COMMENT '背景图片的id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='背景';

#
# Data for table "background"
#

INSERT INTO `background` VALUES (1,'搜索aazz',2,0,0,1442309601,1442309601),(2,'淡泊明志',1,0,0,1442310582,1442310582);

#
# Structure for table "column"
#

DROP TABLE IF EXISTS `column`;
CREATE TABLE `column` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '栏目名',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '摆放顺序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目';

#
# Data for table "column"
#


#
# Structure for table "controller"
#

DROP TABLE IF EXISTS `controller`;
CREATE TABLE `controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(10) NOT NULL DEFAULT '' COMMENT '控件名',
  `intro` varchar(255) DEFAULT NULL COMMENT '空间描述',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `icon` varchar(40) NOT NULL DEFAULT '' COMMENT '图标',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '摆放顺序',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用 0 ： 正常 1：禁用',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0 ： 正常 1 ： 删除',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='控件';

#
# Data for table "controller"
#

INSERT INTO `controller` VALUES (1,'轮播图','去擦擦擦','/Viwepager','controller/2015-09-18/55fbe3b5df8af.jpg',0,0,0,1442052512,1442571189),(2,'横幅','啊啊啊啊啊啊啊啊iiii','/banner','controller/2015-09-18/55fbe3a8b9a39.jpg',0,0,0,1442053171,1442571176),(3,'魔方导航','啊啊啊搜索','qwwq','',0,0,1,1442064276,1442136461),(4,'','','','',0,0,1,1442064666,1442064666),(5,'','','','',0,0,1,1442064815,1442064815),(6,'亲亲','','','',0,0,1,1442065621,1442065621),(7,'亲亲','','','',0,0,1,1442065769,1442065769),(8,'轮播图','去问问问问','/Viwepager','controller/2015-09-12/55f4345792af1.jpg',0,0,1,1442067543,1442067543),(9,'轮播图','去问问问问aa','/Viwepager','controller/2015-09-13/55f528a791bad.jpg',0,0,1,1442067554,1442130087),(10,'横幅','啊啊啊啊啊啊啊啊','/banner','controller/2015-09-13/55f4ec09c67f2.jpg',1,0,1,1442114569,1442114569),(11,'横幅','啊啊啊啊啊啊啊啊','/banner','controller/2015-09-13/55f4ec1731132.jpg',2,0,1,1442114583,1442114583),(12,'横幅','啊啊啊啊啊啊啊啊','/banner','controller/2015-09-13/55f4ec4e95378.jpg',3,0,1,1442114638,1442114638),(13,'横幅','啊啊啊啊啊啊啊啊','/banner','controller/2015-09-13/55f4ec5b661ff.jpg',4,0,1,1442114651,1442114651),(14,'横幅','啊啊啊啊啊啊啊啊','/banner','controller/2015-09-13/55f4f1f990798.jpg',5,0,1,1442116089,1442116089),(15,'weqe','q wewqweqwe','qwewqe','',6,0,1,1442117042,1442117042),(16,'魔方导航','啊啊啊啊啊','wsdfghh','',7,0,1,1442117069,1442117069),(17,'魔方导航ss','啊啊啊啊啊','s','',8,0,1,1442117632,1442117632),(18,'魔方导航ssddd','啊啊啊啊啊','s','',11,0,1,1442117981,1442117981),(19,'qqq  i','dddddddddd','aaaaaaaaaa','controller/2015-09-13/55f528296402a.jpg',9,0,1,1442129939,1442412554),(20,'QQ群问问','额鹅鹅鹅','反反复复','controller/2015-09-16/55f974c125cc3.jpg',10,0,1,1442133941,1442412644),(21,'图片展示','','/PicturesShow','controller/2015-09-18/55fbe39a9c4c7.jpg',12,0,0,1442571162,1442571162),(22,'滚动公告','','/notice','controller/2015-09-18/55fbe3e83b8a3.jpg',13,0,0,1442571240,1442571240),(23,'魔方导航','','magic','controller/2015-09-27/56073e1ec932c.jpg',14,0,0,1443315230,1443315230),(24,'图文展示','','image_text','controller/2015-09-29/560a3cf7bcf7c.jpg',15,0,0,1443511543,1443511543),(25,'文章分类','','article_sort','controller/2015-09-29/560a3d5b19032.jpg',16,0,0,1443511643,1443511643),(26,'文章列表','','article_list','controller/2015-09-29/560a3df5bf50a.jpg',17,0,0,1443511797,1443511797);

#
# Structure for table "forbidden"
#

DROP TABLE IF EXISTS `forbidden`;
CREATE TABLE `forbidden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '被禁用户',
  `reason` varchar(30) NOT NULL DEFAULT '' COMMENT '禁用原因',
  `num` tinyint(1) DEFAULT '0' COMMENT '禁用次数',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '禁用时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='禁用表';

#
# Data for table "forbidden"
#


#
# Structure for table "guide"
#

DROP TABLE IF EXISTS `guide`;
CREATE TABLE `guide` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '使用教程指导',
  `guide_title` char(32) NOT NULL COMMENT '教程标题',
  `content` text COMMENT '教程内容',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "guide"
#

INSERT INTO `guide` VALUES (1,'少时诵','&lt;p&gt;aaaaaaaaaaaaaaaaaaa&lt;br/&gt;&lt;/p&gt;&lt;p&gt;aaaaaaaaaaaaaaaaaa&lt;/p&gt;&lt;p&gt;aaaaaaaaaaaaaaaaaa&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;啊啊啊啊啊啊啊谁谁谁水水水水水水水水&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;\t&lt;/p&gt;',1442832009);

#
# Structure for table "html"
#

DROP TABLE IF EXISTS `html`;
CREATE TABLE `html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` text NOT NULL COMMENT 'html内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# Data for table "html"
#

INSERT INTO `html` VALUES (1,'\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t<div class=\"article_list_container0 controller\" data-id=\"26\"><div class=\"controller-title\">文章列表<br><span>News</span></div><div class=\"article_info\"><ul class=\"article_list\"><li><a class=\"article_link main_article\" href\'阿斯顿顶顶顶顶顶顶.html\'=\"\" data-url=\"/microweb/index.php/Home/Panel/article_info.html?article_id=4&amp;column_id=1\"><div class=\"first_article\" style=\"background-image:url(/microweb/Uploads/template/2015-09-20/55fe5aa0a53b7.jpg); background-repeat: no-repeat; background-size:cover\"><div class=\"article_title\">affff</div></div></a></li><hr><li><a class=\"article-link sub_article\" href=\"阿斯顿顶顶顶顶顶顶.html\" data-url=\"/microweb/index.php/Home/Panel/article_info.html?article_id=3&amp;column_id=1\"><div class=\"article_text\"><ul><li class=\"article_title\">addddd</li></ul></div><div class=\"img_container\"><img src=\"/microweb/Uploads/column/2015-09-12/55f3edfe76176.jpg\"></div></a></li><hr><li><a class=\"article-link sub_article\" href=\"阿斯顿顶顶顶顶顶顶.html\" data-url=\"/microweb/index.php/Home/Panel/article_info.html?article_id=2&amp;column_id=1\"><div class=\"article_text\"><ul><li class=\"article_title\">asss</li></ul></div><div class=\"img_container\"><img src=\"/microweb/Uploads/img/2015-09-12/55f3fa039ef2b.jpg\"></div></a></li><hr><li><a class=\"article-link sub_article\" href=\"阿斯顿顶顶顶顶顶顶.html\" data-url=\"/microweb/index.php/Home/Panel/article_info.html?article_id=1&amp;column_id=1\"><div class=\"article_text\"><ul><li class=\"article_title\">aaasdf</li></ul></div><div class=\"img_container\"><img src=\"/microweb/Uploads/template/2015-09-13/55f4cb2008d04.jpg\"></div></a></li></ul></div></div>\n\t'),(2,''),(3,''),(4,''),(5,''),(6,''),(7,''),(8,''),(9,''),(10,''),(11,''),(12,''),(13,''),(14,''),(15,''),(16,''),(17,'\n\t\t\n\t\t\t\t<div style=\"width: 100%;display: inline-block;min-height: 240px;overflow: hidden;\" class=\"controller\" data-id=\"21\"><div class=\"showPic showRight\"><img src=\"/microweb/Uploads/img/2015-09-22/560102c42b41e.png\"></div><div class=\"NavRight\" style=\"margin-top: 0px;\"><img src=\"/microweb/Uploads/template/2015-09-13/55f4c9a51b9d1.jpg\"><img src=\"/microweb/Uploads/template/2015-09-13/55f4c9907fb5f.jpg\"><img src=\"/microweb/Uploads/template/2015-09-20/55fe5aa0a53b7.jpg\"><img src=\"/microweb/Uploads/img/2015-09-22/560102c42b41e.png\"><img src=\"/microweb/Uploads/img/2015-09-22/560102c42c4bb.jpg\"></div></div>\n\t\t\t\n\t'),(18,''),(19,''),(20,''),(21,''),(22,''),(23,''),(24,''),(25,''),(26,'');

#
# Structure for table "message"
#

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '建站人',
  `way` tinyint(1) NOT NULL DEFAULT '0' COMMENT '方式0:用户给后台;n:回复的信息id',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '发送时间',
  `content` varchar(140) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言';

#
# Data for table "message"
#

INSERT INTO `message` VALUES (1,2,0,1442405046,'啊啊啊aaaaaaaaaaaaaaa\na\n\n\n\naaaaaaaaaaaaaa\n\n\naaaaaaaaaaaaa\n\n\naaaaaaaaaaaaaaaaaa\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\na'),(2,2,0,1442411115,'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),(3,2,0,1442411123,'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),(4,2,1,1442709922,'qqqq'),(5,1,0,1443101123,'aaaa'),(6,1,1,1443101161,'aaaaaaddd');

#
# Structure for table "node_info"
#

DROP TABLE IF EXISTS `node_info`;
CREATE TABLE `node_info` (
  `id` varchar(15) NOT NULL COMMENT '后台导航表',
  `node_name` varchar(20) NOT NULL COMMENT '导航名',
  `node_url` varchar(100) DEFAULT NULL,
  `depth` tinyint(4) NOT NULL COMMENT '导航分类（主导航、子导航）',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '导航排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：正常 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "node_info"
#

INSERT INTO `node_info` VALUES ('01','首页','Admin/Index',1,0,0),('02','用户管理','Admin/User',1,1,0),('0201','用户信息',NULL,2,0,0),('020101','用户列表','Admin/User/index',3,0,0),('03','微站管理','Admin/Station',1,2,0),('0301','微站信息',NULL,2,0,0),('030101','微站列表','Admin/Station/index',3,0,0),('04','前端管理','Admin/Reception',1,3,0),('0401','前端信息',NULL,2,0,0),('040101','背景管理','Admin/Reception/index',3,0,0),('040102','栏目管理','Admin/Reception/column',3,0,0),('040103','控件管理','Admin/Reception/widget',3,0,0),('040104','主题管理','Admin/Reception/theme',3,0,0),('05','网站管理','Admin/Website',1,4,0),('0501','网站信息',NULL,2,0,0),('050101','管理团队','Admin/Website/index',3,0,0),('050102','密保问题','Admin/Website/security',3,0,0),('050103','使用教程','Admin/Website/tutorial',3,0,0),('06','留言管理','Admin/Message',1,5,0),('0601','留言信息',NULL,2,0,0),('060101','信息列表','Admin/Message/index',3,0,0);

#
# Structure for table "photo"
#

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL DEFAULT '0' COMMENT '相册id',
  `pic_id` int(11) NOT NULL DEFAULT '0' COMMENT '图片id',
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='用户图片表';

#
# Data for table "photo"
#

INSERT INTO `photo` VALUES (1,1,7,1442052611),(2,1,8,1442052611),(3,1,4,1442052611),(4,1,19,1442906820),(5,1,20,1442906820),(6,1,21,1442906820),(7,1,13,1442906820),(8,2,12,1442974231),(9,2,11,1442974231),(10,2,22,1442974231),(11,2,19,1442974231),(12,2,20,1442974231),(13,2,21,1442974231),(14,2,13,1442974231),(15,3,12,1442979536),(16,3,11,1442979536),(17,6,11,1443101412),(18,6,10,1443101412),(19,6,19,1443101412),(20,6,20,1443101412),(21,6,21,1443101412);

#
# Structure for table "picture"
#

DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `savename` varchar(40) NOT NULL DEFAULT '' COMMENT '文件名',
  `savepath` varchar(25) NOT NULL DEFAULT '' COMMENT '文件夹名',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5码',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '文件大小',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `used` int(11) DEFAULT NULL COMMENT '相同图片使用次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='图片表';

#
# Data for table "picture"
#

INSERT INTO `picture` VALUES (1,'55f3edfe76176.jpg','column/2015-09-12/','0bb2631cbde90b099a4db27a9ff1f2c2',13400,0,0,0,NULL),(2,'55f3ef6f22943.jpg','column/2015-09-12/','15e4ea6badf1d33860afe6fb86bfcae3',22562,0,0,0,3),(3,'55f3f096d560f.jpg','column/2015-09-12/','3eca67b4f00eaee202ed5a8dc1183ba1',19382,0,0,0,NULL),(4,'55f3f2e31f01d.jpg','template/2015-09-12/','7c38aa6e12b07f4796a25ee98d42f916',14844,0,1442050787,1442050787,1),(5,'55f3f4f45a482.jpg','template/2015-09-12/','0bb2631cbde90b099a4db27a9ff1f2c2',13400,0,1442051316,1442051316,NULL),(6,'55f3f561e3e82.jpg','template/2015-09-12/','15e4ea6badf1d33860afe6fb86bfcae3',22562,0,1442051425,1442051425,2),(7,'55f3fa039da04.jpg','img/2015-09-12/','8fa337bddc3d18334b2aeab6ee5f1400',30649,0,1442052611,1442052611,3),(8,'55f3fa039ef2b.jpg','img/2015-09-12/','803e41abebde3f873da2b5a7caf513df',30456,0,1442052611,1442052611,6),(9,'55f4c93495ec5.jpg','template/2015-09-13/','3eca67b4f00eaee202ed5a8dc1183ba1',19382,0,1442105652,1442105652,NULL),(10,'55f4c9907fb5f.jpg','template/2015-09-13/','25557c8cb94da8dcaa567b2a536ce932',25090,0,1442105744,1442105744,NULL),(11,'55f4c9a51b9d1.jpg','template/2015-09-13/','2eaba8524d849632d7938094698baa70',28867,0,1442105765,1442105765,7),(12,'55f4ca5bd7e68.jpg','template/2015-09-13/','a1d0292daa1e88270dcebf48697cdd6c',15415,0,0,1442105947,3),(13,'55f4cb2008d04.jpg','template/2015-09-13/','87aafdb048134989eef4a4720a6c927d',25048,0,1442106144,1442106144,NULL),(14,'55f4d71627783.jpg','template/2015-09-13/','15e4ea6badf1d33860afe6fb86bfcae3',22562,0,1442109206,1442109206,2),(15,'55f4dabef15c3.png','template/2015-09-13/','30c3dd2c10942da8cd6fd548b1624c4f',102158,0,1442110142,1442110142,1),(16,'55f4dbc57ae2b.jpg','template/2015-09-13/','4e3fb09fa5c66a11826df96e5c0089d0',58577,0,1442110405,1442110405,NULL),(17,'55f4dca532fe5.jpg','template/2015-09-13/','21c7349994d414524efb1b9073dc5814',360966,0,1442110629,1442110629,NULL),(18,'55f7e6fd6e4b9.jpg','template/2015-09-15/','15e4ea6badf1d33860afe6fb86bfcae3',22562,0,1442309885,1442309885,NULL),(19,'55fe5aa0a53b7.jpg','template/2015-09-20/','a9658df9c0da92aaac8b54259dd0e067',13503,0,1442732704,1442732704,NULL),(20,'560102c42b41e.png','img/2015-09-22/','ae27f21fd1162a4d0f1589caa6d1db02',816782,0,1442906820,1442906820,3),(21,'560102c42c4bb.jpg','img/2015-09-22/','265bb5b3d1aa6fa493eac57cf6c82b6b',7233,0,1442906820,1442906820,3),(22,'56020a170619b.jpg','img/2015-09-23/','825172f9d6403336b1b51df159c79346',24981,0,1442974230,1442974230,1);

#
# Structure for table "problem"
#

DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `question` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1禁用,0正常',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='密保问题';

#
# Data for table "problem"
#

INSERT INTO `problem` VALUES (1,'去他去a',0,1442133962,1442412264),(2,'是顶顶顶顶顶大大大',0,1442134047,1442134078),(3,'哦哦哦哦哦哦',0,1442134144,1442134144),(4,'子子子子哦哦哦',0,1442134369,1442134369),(5,'UUUUUu',1,1442135385,1442135385),(6,'UUUUUu',0,1442135403,1442135403),(7,'UU',0,1442135416,1442135452),(8,'哦哦',0,1442136836,1442136836),(9,'烦烦',0,1442136881,1442136896),(10,'888',1,1442136948,1442136948),(11,'ii450',1,1442137333,1442137333),(12,'aaaaaa',0,1442707828,1442707828),(13,'sssss',0,1442707898,1442707898),(14,'qqqqqqqq',0,1442708412,1442708412);

#
# Structure for table "site_info"
#

DROP TABLE IF EXISTS `site_info`;
CREATE TABLE `site_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '网站ID',
  `site_name` varchar(32) NOT NULL COMMENT '网站名',
  `user_id` int(11) NOT NULL COMMENT '所属用户ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态(0:正常，1：删除)',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `url` varchar(32) NOT NULL COMMENT '网站的url',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '网站文件夹大小 (字节数)',
  `click_num` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `theme` int(11) NOT NULL,
  `back` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户网站';

#
# Data for table "site_info"
#

INSERT INTO `site_info` VALUES (1,'test',1,0,1442052591,1442052591,'123456',0,0,0,'0'),(2,'aaaaa',1,0,1442569614,1442569614,'www.aa.com',0,0,0,NULL),(3,'sssss',1,0,1443101209,1443101209,'123456a',0,0,0,NULL),(4,'aaaa',13,0,1443101331,1443101331,'123456d',0,0,0,'0');

#
# Structure for table "theme"
#

DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_id` int(11) DEFAULT '0' COMMENT '图片id',
  `addr` varchar(40) DEFAULT '' COMMENT '主题模板id',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='主题';

#
# Data for table "theme"
#

INSERT INTO `theme` VALUES (1,4,'',1,1442050787,1442050787),(2,5,'aaaaa',0,1442050787,1442050787),(3,6,'',1,1442050787,1442050787),(4,9,'test',0,0,0),(5,10,'ssss',0,0,0),(6,11,'ssss',0,0,0),(7,12,'',0,1442105947,0),(8,13,'',0,1442106144,1442106144),(9,14,'',1,1442109206,1442109206),(10,15,'',1,1442110142,1442110142),(11,16,'',0,1442110405,1442110405),(12,17,'',0,1442110629,1442110629),(13,18,'',1,1442309885,1442309885),(14,19,'aaa',0,1442732704,1442732704);

#
# Structure for table "topic"
#

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '栏目名',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '摆放顺序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态(0:正常，1：删除)',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态(0：开启，1：禁用)',
  `url` varchar(40) DEFAULT '',
  `icon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='栏目';

#
# Data for table "topic"
#

INSERT INTO `topic` VALUES (1,'阿斯',2,1442049534,1442136498,0,0,'阿斯顿顶顶顶顶',11),(2,'去玩儿',3,1442049903,1442128911,0,0,'qweeeeeaaa',7),(3,'呜呜呜呜呜呜呜',1,1442050198,1442128946,0,0,'eeeeeeeeee',3),(4,'qweaa亲亲',4,1442112901,1442128838,0,0,'qweeeeeeeeeee',2),(5,'aa',5,1442130471,1442411372,0,0,'ssiiiii',8),(6,'QQ群',6,1442133899,1442133899,0,0,'www',11),(7,'hhhh',7,1442741396,1442741396,0,0,'gggg',12);

#
# Structure for table "type"
#

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章的类型表',
  `site_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(10) DEFAULT '' COMMENT '类型名',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='文章类型';

#
# Data for table "type"
#

INSERT INTO `type` VALUES (1,1,'aaa',1443511820,1443511820,1),(2,1,'sss',1443511825,1443511825,2),(3,1,'ddd',1443511829,1443511829,3),(4,1,'ffff',1443511832,1443511832,4);

#
# Structure for table "user_column"
#

DROP TABLE IF EXISTS `user_column`;
CREATE TABLE `user_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL COMMENT '网站ID',
  `html_id` int(11) NOT NULL COMMENT 'html_id',
  `name` varchar(8) NOT NULL DEFAULT '' COMMENT '栏目名',
  `forbidden` tinyint(1) NOT NULL COMMENT '是否开启',
  `sort` tinyint(3) NOT NULL COMMENT '排序',
  `url` varchar(20) NOT NULL COMMENT '网页URL',
  `icon` int(11) DEFAULT '0' COMMENT '用户图片的ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# Data for table "user_column"
#

INSERT INTO `user_column` VALUES (1,1,1,'阿斯顿',0,1,'阿斯顿顶顶顶顶顶顶',1),(2,1,2,'去玩儿',0,2,'qweeeee',2),(3,1,3,'呜呜呜呜呜呜呜',0,3,'eeeeeeeeeeeee',3),(4,2,4,'阿斯',0,1,'阿斯顿顶顶顶顶',11),(5,2,5,'去玩儿',0,2,'qweeeeeaaa',7),(6,2,6,'呜呜呜呜呜呜呜',0,3,'eeeeeeeeee',3),(7,2,7,'qweaa亲亲',0,4,'qweeeeeeeeeee',2),(8,2,8,'aa',0,5,'ssiiiii',8),(9,2,9,'QQ群',0,6,'www',11),(10,3,10,'阿斯',0,1,'阿斯顿顶顶顶顶',11),(11,3,11,'去玩儿',0,2,'qweeeeeaaa',7),(12,3,12,'呜呜呜呜呜呜呜',0,3,'eeeeeeeeee',3),(13,3,13,'qweaa亲亲',0,4,'qweeeeeeeeeee',2),(14,3,14,'aa',0,5,'ssiiiii',8),(15,3,15,'QQ群',0,6,'www',11),(16,3,16,'hhhh',0,7,'gggg',12),(17,4,17,'阿斯',0,1,'阿斯顿顶顶顶顶',11),(18,4,18,'去玩儿',0,2,'qweeeeeaaa',7),(19,4,19,'呜呜呜呜呜呜呜',0,3,'eeeeeeeeee',3),(20,4,20,'qweaa亲亲',0,4,'qweeeeeeeeeee',2),(21,4,21,'aa',0,5,'ssiiiii',8),(22,4,22,'QQ群',0,6,'www',11),(23,4,23,'hhhh',0,7,'gggg',12),(24,1,24,'qq',0,4,'www',11),(25,1,25,'rr',0,5,'333',2),(26,1,26,'ggg',0,6,'hhh',19);

#
# Structure for table "user_info"
#

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nickname` char(20) DEFAULT NULL COMMENT '用户昵称',
  `account` char(15) NOT NULL COMMENT '账户',
  `password` char(32) NOT NULL COMMENT '密码',
  `phone` char(11) DEFAULT NULL COMMENT '电话',
  `email` varchar(40) DEFAULT NULL COMMENT '邮箱',
  `head_img` char(40) DEFAULT NULL COMMENT '头像地址',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除状态',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1禁用,0未禁用',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户信息';

#
# Data for table "user_info"
#

INSERT INTO `user_info` VALUES (1,'','123456789','9cbf8a4dcb8e30682b927f352d6559a0','12345678910','qqqq@qq.com','personal/2015-09-13/55f4e522341c2.jpg',0,0,NULL,1442327378),(2,NULL,'123456789a','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442230591,1442404870),(3,NULL,'123456798','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442231007,1442231007),(4,NULL,'123456789l','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442232703,1442327378),(5,NULL,'123456789h','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442234439,1442327378),(6,NULL,'123456789p','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442234958,1442327378),(7,NULL,'123456ass','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442235033,1442235033),(8,NULL,'123456hhhh','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442235132,1442235132),(9,NULL,'123456789b','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442236085,1442327378),(10,NULL,'12345678911','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442708106,1442708106),(11,NULL,'12345678978','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1442708900,1442708900),(12,'','12345678923','9cbf8a4dcb8e30682b927f352d6559a0','','',NULL,0,0,1442709186,1442709186),(13,NULL,'123456789g','9cbf8a4dcb8e30682b927f352d6559a0',NULL,NULL,NULL,0,0,1443101293,1443101293);
