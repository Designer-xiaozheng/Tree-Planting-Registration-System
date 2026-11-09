DROP TABLE IF EXISTS `ordinary_users`;
CREATE TABLE `ordinary_users`(
	   `ordinary_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '普通用户ID',
`full_name` varchar(64) comment '姓名',
`gender` varchar(64) comment '性别',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ordinary_users_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '普通用户';

DROP TABLE IF EXISTS `adoption_information`;
CREATE TABLE `adoption_information`(
	   `adoption_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '领养信息ID',
`title_name` varchar(64) comment '标题名称',
`release_time` date comment '发布时间',
`pet_status` varchar(64) comment '宠物状态',
`pet_name` varchar(64) comment '宠物名称',
`pet_species` varchar(64) comment '宠物种类',
`pet_sex` varchar(64) comment '宠物性别',
`pet_age` varchar(64) comment '宠物年龄',
`pet_pictures` varchar(255) comment '宠物图片',
`detailed_information` text comment '详细信息',
`remark_information` text comment '备注信息',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (adoption_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '领养信息';
insert into `adoption_information` values (1,'标题名称1','2022-3-27','宠物状态1','宠物名称1','宠物种类1','宠物性别1','宠物年龄1','/api/upload/image_1615205529502.jpg','详细信息1','备注信息1','461','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_information` values (2,'标题名称2','2022-3-27','宠物状态2','宠物名称2','宠物种类2','宠物性别2','宠物年龄2','/api/upload/image_1615205529458.jpg','详细信息2','备注信息2','924','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_information` values (3,'标题名称3','2022-3-27','宠物状态3','宠物名称3','宠物种类3','宠物性别3','宠物年龄3','/api/upload/image_1615205529502.jpg','详细信息3','备注信息3','165','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_information` values (4,'标题名称4','2022-3-27','宠物状态4','宠物名称4','宠物种类4','宠物性别4','宠物年龄4','/api/upload/image_1615205529514.jpg','详细信息4','备注信息4','549','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_information` values (5,'标题名称5','2022-3-27','宠物状态5','宠物名称5','宠物种类5','宠物性别5','宠物年龄5','/api/upload/image_1615205529458.jpg','详细信息5','备注信息5','38','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_information` values (6,'标题名称6','2022-3-27','宠物状态6','宠物名称6','宠物种类6','宠物性别6','宠物年龄6','/api/upload/image_1615205529458.jpg','详细信息6','备注信息6','578','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_information` values (7,'标题名称7','2022-3-27','宠物状态7','宠物名称7','宠物种类7','宠物性别7','宠物年龄7','/api/upload/image_1615205529456.jpg','详细信息7','备注信息7','343','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_information` values (8,'标题名称8','2022-3-27','宠物状态8','宠物名称8','宠物种类8','宠物性别8','宠物年龄8','/api/upload/image_1615205529502.jpg','详细信息8','备注信息8','591','0','2022-03-27 09:05:09','2022-03-27 09:05:09');

DROP TABLE IF EXISTS `adoption_record`;
CREATE TABLE `adoption_record`(
	   `adoption_record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '领养记录ID',
`pet_name` varchar(64) comment '宠物名称',
`pet_sex` varchar(64) comment '宠物性别',
`pet_age` varchar(64) comment '宠物年龄',
`adopter` int(11) DEFAULT 0 comment '领养人',
`contact_number` varchar(16) comment '联系电话',
`adoption_status` varchar(64) comment '领养状态',
`return_visit_status` varchar(64) comment '回访状态',
`reasons_for_adoption` text comment '领养原由',
`reply_message` text comment '回复信息',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (adoption_record_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '领养记录';
insert into `adoption_record` values (1,'宠物名称1','宠物性别1','宠物年龄1',0,'18945782351','领养状态1','回访状态1','领养原由1','回复信息1','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_record` values (2,'宠物名称2','宠物性别2','宠物年龄2',0,'18945782352','领养状态2','回访状态2','领养原由2','回复信息2','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_record` values (3,'宠物名称3','宠物性别3','宠物年龄3',0,'18945782353','领养状态3','回访状态3','领养原由3','回复信息3','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_record` values (4,'宠物名称4','宠物性别4','宠物年龄4',0,'18945782354','领养状态4','回访状态4','领养原由4','回复信息4','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_record` values (5,'宠物名称5','宠物性别5','宠物年龄5',0,'18945782355','领养状态5','回访状态5','领养原由5','回复信息5','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_record` values (6,'宠物名称6','宠物性别6','宠物年龄6',0,'18945782356','领养状态6','回访状态6','领养原由6','回复信息6','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_record` values (7,'宠物名称7','宠物性别7','宠物年龄7',0,'18945782357','领养状态7','回访状态7','领养原由7','回复信息7','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `adoption_record` values (8,'宠物名称8','宠物性别8','宠物年龄8',0,'18945782358','领养状态8','回访状态8','领养原由8','回复信息8','0','2022-03-27 09:05:09','2022-03-27 09:05:09');

DROP TABLE IF EXISTS `return_visit_record`;
CREATE TABLE `return_visit_record`(
	   `return_visit_record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回访记录ID',
`pet_name` varchar(64) comment '宠物名称',
`pet_sex` varchar(64) comment '宠物性别',
`pet_age` varchar(64) comment '宠物年龄',
`adopter` int(11) DEFAULT 0 comment '领养人',
`return_visit_photos` varchar(255) comment '回访照片',
`return_visit_description` text comment '回访描述',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (return_visit_record_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '回访记录';
insert into `return_visit_record` values (1,'宠物名称1','宠物性别1','宠物年龄1',0,'点此播放','回访描述1','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `return_visit_record` values (2,'宠物名称2','宠物性别2','宠物年龄2',0,'点此播放','回访描述2','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `return_visit_record` values (3,'宠物名称3','宠物性别3','宠物年龄3',0,'点此播放','回访描述3','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `return_visit_record` values (4,'宠物名称4','宠物性别4','宠物年龄4',0,'点此播放','回访描述4','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `return_visit_record` values (5,'宠物名称5','宠物性别5','宠物年龄5',0,'点此播放','回访描述5','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `return_visit_record` values (6,'宠物名称6','宠物性别6','宠物年龄6',0,'点此播放','回访描述6','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `return_visit_record` values (7,'宠物名称7','宠物性别7','宠物年龄7',0,'点此播放','回访描述7','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `return_visit_record` values (8,'宠物名称8','宠物性别8','宠物年龄8',0,'点此播放','回访描述8','0','2022-03-27 09:05:09','2022-03-27 09:05:09');

DROP TABLE IF EXISTS `classification_management`;
CREATE TABLE `classification_management`(
	   `classification_management_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类管理ID',
`pet_species` varchar(64) comment '宠物种类',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (classification_management_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '分类管理';
insert into `classification_management` values (1,'宠物种类1','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `classification_management` values (2,'宠物种类2','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `classification_management` values (3,'宠物种类3','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `classification_management` values (4,'宠物种类4','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `classification_management` values (5,'宠物种类5','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `classification_management` values (6,'宠物种类6','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `classification_management` values (7,'宠物种类7','0','2022-03-27 09:05:09','2022-03-27 09:05:09');
insert into `classification_management` values (8,'宠物种类8','0','2022-03-27 09:05:09','2022-03-27 09:05:09');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` varchar(500) DEFAULT NULL COMMENT '添加字段：',
  `field_set` varchar(500) DEFAULT NULL COMMENT '修改字段：',
  `field_get` varchar(500) DEFAULT NULL COMMENT '查询字段：',
  `table_nav_name` varchar(255) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(255) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定制授权';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '论坛id',
  `display` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `praise_len` int(10) unsigned DEFAULT '0' COMMENT '点赞数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(125) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `img` text COMMENT '封面图',
  `content` longtext COMMENT '正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '发帖人头像：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '论坛分类：[0,1000]用来搜索指定类型的论坛帖',
  PRIMARY KEY (`forum_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='论坛：';
insert into `forum` values ('1','100','1','小明','0','149','测试标题','关键字1','描述','#','标签','/static/img/img_temp.jpg','<h1>fafgwagbagbwgwag</h1>',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'http://localhost:5000/upload/jingdian (11)_15.jpg','0');
insert into `forum` values ('2','100','2','小明','0','30','测试标题2','关键字2','dec','#','标签','/static/img/img_temp.jpg','测试文章内容2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('3','100','2','小红','0','42','测试标题3','关键字3','dec2','#','标签','/static/img/img_temp.jpg','测试文章内容3',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('4','100','2','小红','0','22','测试标题4','关键字4','dec3','#','标签','/static/img/img_temp.jpg','测试文章内容4',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
DROP TABLE IF EXISTS `forum_type`;
CREATE TABLE `forum_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类图标：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='论坛频道：用于汇总浏览论坛，在不同频道下展示不同论坛。';
insert into `forum_type` values ('1','休闲','描述','/article/list?type_id=1','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('2','娱乐','企业信息描述描述描述描述','/article/list?type_id=2','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('3','开心','操作帮助描述描述描述','/article/list?type_id=3','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `auth` values ('1','管理员','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','1','1','1','1','full_name,gender','full_name,gender','full_name,gender',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('2','管理员','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','1','1','1','1','full_name,gender','full_name,gender','full_name,gender',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('3','管理员','领养信息','adoption_information','领养信息','/adoption_information/table','','_blank','1','1','1','1','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{"can_show_comment":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('4','管理员','领养信息','adoption_information','领养信息详情','/adoption_information/view','','_blank','1','1','1','1','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('5','管理员','领养信息','adoption_information','领养信息','/adoption_information/list','top','_blank','1','1','1','1','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('6','管理员','领养信息','adoption_information','领养信息详情','/adoption_information/details','','_blank','1','1','1','1','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('7','管理员','领养记录','adoption_record','领养记录','/adoption_record/table','','_blank','1','1','1','1','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('8','管理员','领养记录','adoption_record','领养记录详情','/adoption_record/view','','_blank','1','1','1','1','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('9','管理员','领养记录','adoption_record','领养记录编辑','/adoption_record/edit','','_blank','1','1','1','1','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('10','管理员','回访记录','return_visit_record','回访记录','/return_visit_record/table','','_blank','1','1','1','1','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('11','管理员','回访记录','return_visit_record','回访记录详情','/return_visit_record/view','','_blank','1','1','1','1','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('12','管理员','分类管理','classification_management','分类管理','/classification_management/table','','_blank','1','1','1','1','pet_species','pet_species','pet_species',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('13','管理员','分类管理','classification_management','分类管理详情','/classification_management/view','','_blank','1','1','1','1','pet_species','pet_species','pet_species',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('14','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('15','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('16','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('17','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('18','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('19','管理员','论坛','forum','交流中心','/forum/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('20','管理员','论坛','forum','交流中心','/forum/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('21','管理员','论坛','forum','交流中心','/forum/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('22','管理员','论坛','forum','交流中心','/forum/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('23','管理员','论坛分类','forum_type','交流中心分类','/forum_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('24','管理员','论坛分类','forum_type','交流中心分类','/forum_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('25','管理员','新闻','article','宠物知识','/article/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('26','管理员','新闻','article','宠物知识','/article/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('27','管理员','新闻','article','宠物知识','/article/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('28','管理员','新闻','article','宠物知识','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('29','管理员','新闻分类','article_type','知识分类','/article_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('30','管理员','新闻分类','article_type','知识分类','/article_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('31','游客','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','1','0','0','0','full_name,gender','full_name,gender','full_name,gender',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('32','游客','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','1','0','0','0','full_name,gender','full_name,gender','full_name,gender',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('33','游客','领养信息','adoption_information','领养信息','/adoption_information/table','','_blank','0','0','0','0','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{"can_show_comment":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('34','游客','领养信息','adoption_information','领养信息详情','/adoption_information/view','','_blank','0','0','0','0','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('35','游客','领养信息','adoption_information','领养信息','/adoption_information/list','top','_blank','0','0','0','1','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('36','游客','领养信息','adoption_information','领养信息详情','/adoption_information/details','','_blank','0','0','0','1','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('37','游客','领养记录','adoption_record','领养记录','/adoption_record/table','','_blank','0','0','0','0','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('38','游客','领养记录','adoption_record','领养记录详情','/adoption_record/view','','_blank','0','0','0','0','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('39','游客','领养记录','adoption_record','领养记录编辑','/adoption_record/edit','','_blank','0','0','0','0','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('40','游客','回访记录','return_visit_record','回访记录','/return_visit_record/table','','_blank','0','0','0','0','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('41','游客','回访记录','return_visit_record','回访记录详情','/return_visit_record/view','','_blank','0','0','0','0','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('42','游客','分类管理','classification_management','分类管理','/classification_management/table','','_blank','0','0','0','0','pet_species','pet_species','pet_species',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('43','游客','分类管理','classification_management','分类管理详情','/classification_management/view','','_blank','0','0','0','0','pet_species','pet_species','pet_species',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('44','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('45','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('46','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('47','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('48','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('49','游客','论坛','forum','交流中心','/forum/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('50','游客','论坛','forum','交流中心','/forum/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('51','游客','论坛','forum','交流中心','/forum/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('52','游客','论坛','forum','交流中心','/forum/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('53','游客','论坛分类','forum_type','交流中心分类','/forum_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('54','游客','论坛分类','forum_type','交流中心分类','/forum_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('55','游客','新闻','article','宠物知识','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('56','游客','新闻','article','宠物知识','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('57','游客','新闻','article','宠物知识','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('58','游客','新闻','article','宠物知识','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('59','游客','新闻分类','article_type','知识分类','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('60','游客','新闻分类','article_type','知识分类','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('61','普通用户','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','0','0','0','0','full_name,gender','full_name,gender','full_name,gender',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('62','普通用户','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','0','0','0','0','full_name,gender','full_name,gender','full_name,gender',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('63','普通用户','领养信息','adoption_information','领养信息','/adoption_information/table','','_blank','0','0','0','0','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{"can_show_comment":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('64','普通用户','领养信息','adoption_information','领养信息详情','/adoption_information/view','','_blank','0','0','0','0','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('65','普通用户','领养信息','adoption_information','领养信息','/adoption_information/list','top','_blank','0','0','1','1','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('66','普通用户','领养信息','adoption_information','领养信息详情','/adoption_information/details','','_blank','0','0','1','1','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information','title_name,release_time,pet_status,pet_name,pet_species,pet_sex,pet_age,pet_pictures,detailed_information,remark_information',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('67','普通用户','领养记录','adoption_record','领养记录','/adoption_record/table','','_blank','0','0','0','1','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('68','普通用户','领养记录','adoption_record','领养记录详情','/adoption_record/view','','_blank','0','0','0','1','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('69','普通用户','领养记录','adoption_record','领养记录编辑','/adoption_record/edit','','_blank','1','1','1','1','reasons_for_adoption,pet_sex,pet_age,adopter,contact_number,pet_name','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message','pet_name,pet_sex,pet_age,adopter,contact_number,adoption_status,return_visit_status,reasons_for_adoption,reply_message',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('70','普通用户','回访记录','return_visit_record','回访记录','/return_visit_record/table','','_blank','0','0','0','0','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('71','普通用户','回访记录','return_visit_record','回访记录详情','/return_visit_record/view','','_blank','0','0','0','0','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description','pet_name,pet_sex,pet_age,adopter,return_visit_photos,return_visit_description',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('72','普通用户','分类管理','classification_management','分类管理','/classification_management/table','','_blank','0','0','0','0','pet_species','pet_species','pet_species',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('73','普通用户','分类管理','classification_management','分类管理详情','/classification_management/view','','_blank','0','0','0','0','pet_species','pet_species','pet_species',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('74','普通用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('75','普通用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('76','普通用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('77','普通用户','评论','comment','我的评论','/comment/list','','_blank','1','0','0','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('78','普通用户','评论','comment','评论详情','/comment/details','','_blank','1','0','0','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('79','普通用户','论坛','forum','交流中心','/forum/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('80','普通用户','论坛','forum','交流中心','/forum/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('81','普通用户','论坛','forum','交流中心','/forum/list','','_blank','1','0','0','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('82','普通用户','论坛','forum','交流中心','/forum/details','','_blank','1','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('83','普通用户','论坛分类','forum_type','交流中心分类','/forum_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('84','普通用户','论坛分类','forum_type','交流中心分类','/forum_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('85','普通用户','新闻','article','宠物知识','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('86','普通用户','新闻','article','宠物知识','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('87','普通用户','新闻','article','宠物知识','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('88','普通用户','新闻','article','宠物知识','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('89','普通用户','新闻分类','article_type','知识分类','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `auth` values ('90','普通用户','新闻分类','article_type','知识分类','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `user_group` values ('3','100','普通用户',null,'ordinary_users','ordinary_users_id','0','3',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1615205504080.jpg','96',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1615205504073.jpg','328',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1615205504080.jpg','731',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
insert into `article` values ('1','《犬诗十卷》第二卷·宠物狗（原创）','宠物','576','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>长颈鹿说：“轻轻地点一下标题，你就能打开心灵世界之门，在那里看到一片片无际的森林以及一片片翠绿的树叶！”</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/236/w640h396/20210326/490c-kmvwsvy1575409.jpg"></p><p>《鹿径路标》系列原创</p><p>＆＆&nbsp;第二百零八期 ＆＆</p><p>※※※※※※※※※※※※※※※※※</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/85/w534h351/20210326/f49d-kmvwsvy1575413.jpg"></p><p>自媒体编辑：苏櫶邑</p><p>编者按：</p><p>犬，即是人类忠实的朋友，也是家庭和社会的辛勤工作者。</p><p>犬，与人类情同手足，友谊深厚。贡献社会，功不可没。使命神圣，不可或缺。</p><p>闪烁于其身的人性光芒，指引着脚步行进的方向。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/200/w640h360/20210326/131e-kmvwsvy1575415.jpg"></p><p>以一诗为一卷，笔者共创作了十卷以狗为题材的寓言诗歌，题目为《犬诗十卷》，自《鹿径路标》系列原创第207期起，分期发表，每期一卷，发至《鹿径路标》系列原创第216期为止。</p><p>本期《鹿径路标》系列原创，发表笔者创作的寓言诗歌《犬诗十卷》第二卷：宠物狗。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/182/w433h549/20210326/ed86-kmvwsvy1575416.jpg"></p><p>《犬诗十卷》第二卷·宠物狗·原创</p><p>* 苏櫶邑</p><p>它是一个宠物&nbsp;&nbsp;几乎被人类宠坏了筋骨</p><p>原本灵敏的神经开始有些麻木</p><p>物种灭绝或者濒临灭绝突显物以稀为贵</p><p>谁在暗中作祟以死暧昧</p><p>花花世界&nbsp;&nbsp;人类不想成为硕果仅存的孤独玫瑰</p><p>于是乎&nbsp;&nbsp;拥有爱心的人越来越多趋之若鹜</p><p>蛇蝎蠢猪狮子猎豹孔雀鱼流氓兔</p><p>以及那两种会说人话的怪鸟&nbsp;&nbsp;八哥和鹦鹉</p><p>全都被拉进了朋友圈&nbsp;&nbsp;宠物就像风掀怒海开始泛滥</p><p>你不爱宠物吗&nbsp;&nbsp;不相信世界上真的有人不爱宠物</p><p>为了避免发生识别错误&nbsp;&nbsp;有必要加一个漂亮的标注</p><p>宠物狗是一条犬科宠物</p><p>它为它所属的物种感到欢欣鼓舞</p><p>因为它完成了一项其它物种不可能完成的任务</p><p>它写了一篇日记&nbsp;&nbsp;对生活进行详实记录</p><p>这篇通俗读物&nbsp;&nbsp;被家人和邻居奉为名著反复阅读</p><p>它被视为家庭成员&nbsp;&nbsp;倍受宠爱成为翘楚</p><p>尽管户籍还没有注册</p><p>生为一家人&nbsp;&nbsp;死为一家亲</p><p>人类户籍管理&nbsp;&nbsp;应该升级提速</p><p>它可以使用它姐姐的某些称呼</p><p>譬如&nbsp;&nbsp;称姐姐的爸为父称姐姐的妈为母</p><p>说明一下&nbsp;&nbsp;它姐姐是它养父养母的掌上明珠</p><p>姐姐叫大鹭&nbsp;&nbsp;它叫二鹭</p><p>它与家人同居一室共住一屋</p><p>夏天有空调&nbsp;&nbsp;屋里凉爽爽</p><p>冬天有地热&nbsp;&nbsp;屋里暖乎乎</p><p>浴霸叫它欲罢不能&nbsp;&nbsp;一天一淋浴&nbsp;&nbsp;上帝给它编制它都不愿意去</p><p>它享用商标驰名全球的狗粮</p><p>狗粮啊让味蕾欲死欲仙的狗粮啊</p><p>你拥有风起云涌的世界</p><p>你拥有泛起浪花的麦香</p><p>你拥有海洋&nbsp;&nbsp;海洋里有海参有鲍鱼还有横行霸道的螃蟹</p><p>你拥有醉人的琼浆&nbsp;&nbsp;琼浆包括人头马竹叶青五粮液</p><p>你拥有解渴的玉液&nbsp;&nbsp;玉液分门别类为可口可乐健力宝王老吉</p><p>你拥有勾起它童年回忆的棵棵青松翠柏和卷起浪花的涓涓小河</p><p>哦&nbsp;&nbsp;民以食为天的内涵适用于整个生命界</p><p>从外表看&nbsp;&nbsp;宠物狗没做任何工作</p><p>都是人类围绕着它忙碌</p><p>深深的感触终使它对生活的理解有所斩获</p><p>其实它似乎拥有工作&nbsp;&nbsp;每时每刻都处在工作之中</p><p>它的工作&nbsp;&nbsp;不就是人类在为它工作的过程之中得到开心快乐吗</p><p>透彻的领悟使它骄傲&nbsp;&nbsp;它不是那只不抓老鼠却想要鱼吃的馋猫懒猫</p><p>它自豪&nbsp;&nbsp;它是一只带给人间快乐的乖乖天使</p><p>一条宠物狗呀一条可爱的宠物狗呀</p><p>怎么总在人性的心痒之处挠来挠去</p><p>黎明的雄鸡唱完了最后一句</p><p>开始用叩首感谢的礼仪&nbsp;&nbsp;领取人类撒在地上的米粒</p><p>撒米于地唤鸡捡食</p><p>那是对雄鸡迎取旭日的物资奖励</p><p>那是对雄鸡一种不礼貌的赏赐</p><p>雄鸡羡慕宠物狗</p><p>饭来张口衣来伸手&nbsp;&nbsp;无所事事却生活无忧</p><p>黎明的雄鸡唱完了最后一句</p><p>叮嘱忙于生计的人类不要把鸡忘记</p><p>关于宠物狗的日记&nbsp;&nbsp;关注还在继续阅读还在继续热评还在继续转发还在继续收藏还在继续点赞还在继续</p><p>宠物狗激动地流出眼泪</p><p>万万没有想到&nbsp;&nbsp;人类之于宠物的关爱如此任性如此积极</p><p>鼓励的话语&nbsp;&nbsp;就像大海后浪推前浪的波涛一句接着一句</p><p>山响的鼓掌&nbsp;&nbsp;就像夏季天上的滚雷一声接着一声经久不息</p><p>朋友啊可爱的朋友</p><p>谁能援助它一条信息</p><p>告知它举办关于工作日记的竞赛地址</p><p>它要报名参加这场盛大的赛事</p><p>独占鳌头非它莫属&nbsp;&nbsp;这种自信来自于它尊重热爱人类的底气</p><p>它要永久珍藏它的这篇日记</p><p>她是一朵玫瑰关于春天的美丽回忆</p><p>回忆是一场渗透白色土壤的丝雨</p><p>她跳动蝴蝶的舞步&nbsp;&nbsp;奔跑在午夜的花雨里</p><p>（作于2021·3·18 ）</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/668/w424h244/20210326/ead4-kmvwsvy1575412.jpg"></p><p>【作者声明】</p><p>1、本文系作者原创，已受著作权及区块链技术保护，切勿剽窃抄袭，违法必究。</p><p>2、本文部分图片来自于网络，如涉及侵权，请联系作者删除。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/663/w421h242/20210326/cda6-kmvwsvy1575408.jpg"></p><p>【读者朋友】</p><p>《鹿径路标·208》已愉快到站，感谢您用阅读一路陪伴。</p><p>我在《鹿径路标·209》车站恭候您，不见不散！</p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('2','小猫室内睡觉遭宠物狗闯门撕咬，狗主反怼猫主：你家猫咋不牵绳','宠物','793','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>近日，江苏南京的街头，一名女子带着宠物狗散步，突然，这条未拴绳的宠物狗冲向路边的一家店铺，对着店内一只正在睡觉的猫开始撕咬。店主人陆先生闻声赶来，一脚将狗踢走，并怒斥狗主人，上次遛狗时，就未拴绳，导致宠物狗咬了自家的猫，这次为何还不拴绳？没想到，狗主人不但不道歉，还骂骂咧咧地反怼陆先生，你家猫怎么不牵绳呢？</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/318/w640h478/20210324/4d6f-kmvwsvx7136186.jpg"></p><p>对此，网友吵成一片，有的网友认为，女子不给狗拴绳，造成狗咬了猫，就应该诚恳道歉，反问猫不拴绳，属于强词夺理。也有网友认为，狗主人的话不无道理，陆先生也有过错，应该将猫放在笼子里，或者拴绳，防止猫抓伤进店的客人。</p><p>我国的《动物防疫法》早就规定，带狗出门，应该佩戴好犬牌、犬绳，防止犬类伤人或传染疾病。女子遛狗不给狗牵绳本就不对，为什么能这么理直气壮地反怼别人呢？原因就在于她的从众心理。很多宠物犬主人并不遵守相关法律的规定，往往出门时不给狗牵绳，任宠物犬到处乱跑。在这些狗主人看来，让狗散跑才能达到“遛”的目的。女子也是这样的想法，她觉得大家都这么做，凭什么只说我一个。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/319/w640h479/20210324/9383-kmvwsvx7136194.jpg"></p><p>而她斥责陆先生不给猫牵绳的行为，实则是为了掩饰自己过错。众所周知，猫是一种性格相对温顺的动物，很少有主动对人发起攻击的时候。即便它们有时候用爪子抓伤主人，伤害其实也不大。我国的《动物防疫法》，也未规定一定要给猫牵绳，所以，陆先生的猫拴不拴绳，和女子的狗拴不拴绳这两件事不能做类比。</p><p>女子的狗冲进陆先生的店，给陆先生和他的猫都造成了惊吓，女子就应该诚恳道歉，争取得到陆先生的谅解，事情才能和平解决。同时她应该吸取教训，下次出门给狗牵绳，避免给其他人和动物造成伤害。</p><p>遛狗不牵绳，其实是一种非常不好的习惯。狗的智商只相当于人类5、6岁的孩子，对自己的行为，并不能做出正确的判断，加上一些狗会突发狂犬病，如果咬伤人或其他动物，将会带来更严重的后果。</p><p>去年，山东高密15岁的大军高烧不退，还有怕水怕风、极度恐惧等症状，当他被送到当地医院治疗时，医生诊断，大军得的正是狂犬病。几个小时后，大军在病房里停止了呼吸。据家人回忆，一年前，大军和妈妈在小区散步时，一条未牵绳的大型宠物犬冲过来，咬伤了大军妈妈，大军见状很生气，打了宠物犬。但这条狗被打后也咬伤了大军的右手，可大军并未就医治疗。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/328/w640h488/20210324/cadc-kmvwsvx7136190.jpg"></p><p>大军的死，最直接的原因，主要是宠物狗的主人未能约束住自己的狗。像这样遛狗不牵绳造成悲剧的案例很多，然而，却未能引起宠物狗主人们的重视，他们依旧我行我素，放任自己的狗到处乱跑、对人狂吠，甚至咬伤人和其他动物。</p><p>针对这种状况，全国人大常委会于今年年初，进一步强调了遛狗必须牵狗绳的规定，并指示，如果狗主人拒绝牵绳，执法部门可对其进行罚款。对于那些屡教不改的，地方农业主管部门可委托动物诊疗机构，对狗进行无害化处理，所需费用由狗主人承担。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/320/w640h480/20210324/e60c-kmvwsvx7136191.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('3','养狗狗真的有益处吗？宠物或许会让您的生活更健康','宠物','44','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>有越来越多的家庭都拥有了自己的宠物，无论是独居的老人，还是父母为了陪伴自己的孩子……它们都选择了宠物。其中养狗和爱狗的人占了一大部分，不仅仅是因为狗狗会对你忠心耿耿，更重要的是养狗的人能懂得狗狗在人类生活中的重要性。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/450/w750h500/20210324/9f81-kmvwsvx7135079.jpg"></p><p>狗狗与主人之间的情感交流是双向的，你负责喂养和照顾它们，它们可以给你带来更过的关爱和快乐。养狗其实是对我们的身心都非常有好处的，只要我们科学的喂养。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/422/w750h472/20210324/5711-kmvwsvx7135031.jpg"></p><p>如何科学喂养宠物？只要做到以下三点就可以了。</p><p>1、 定期检查、注射疫苗。因为狗狗的寿命本身就比人类要短，所以健康对他们来说是很重要的。定期检查可以降低狗狗生病的风险，同时每年都要定期注射狂犬疫苗，确保主人的健康。</p><p>2、 做好狗狗的卫生工作，包括口腔卫生。可以一周或半个月给狗狗进行一次清洁。洗澡是必不可少的，除此以外还应该注意毛发的梳理、耳朵内的清洁和指甲的修剪。狗狗口腔内是很容易滋生细菌导致牙斑、牙周疾病和口臭的，可以使用宠物牙膏每周使用1---2次即可。</p><p>3、 经常运动，习惯遛弯。狗狗每天关在家里可能会降低狗狗的寿命，失去活泼的状态。应该多带狗狗在户外玩耍，让身体得到充分的活动和舒展。定时遛弯也能帮助狗狗养成定时排便的习惯。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/34/w500h334/20210324/43af-kmvwsvx7135036.jpg"></p><p><br></p><p>那么养宠物又能给我们的生活带来那些改变呢？先简单的说三点吧。</p><p>1、 增强锻炼。在遛狗的同时，我们不知不觉自己也做了个更多的运动。</p><p>2、 降低抑郁的可能性。研究表明养宠物能降低得抑郁症的概率，对60岁以上的老人来说有一个宠物可以降低四倍抑郁的风险。</p><p>3、 可以使我们感到更幸福。结束了一天忙碌的工作，回到家后看到可爱的狗狗朝你扑来可能是一天中最幸福的时刻了。狗狗可以降低生活带给我们的压力，也可以使我们的性格变得更加善解人意。</p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('4','【关注】宠物医疗保险来了！一个月交33块钱，看病可赔付这些钱','宠物','183','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p><br></p><p><span style="background-color: rgb(0, 0, 0); color: rgb(51, 51, 51);"><img src="http://p.ivideo.sina.com.cn/video/384/195/676/384195676_400_300.jpg"></span></p><p class="ql-align-center"><br></p><p class="ql-align-center"><img src="http://f.sinaimg.cn/sinakd2021327s/234/w661h373/20210327/62e6-kmvwsvy4407882.gif"></p><p>贝贝是一只快13岁的宠物狗，它的主人刘先生带着它去过许许多多的地方，留下了很多美好的回忆。去年9月份，贝贝被诊断出恶性癌症，刘先生带它进行了全面的检查，制定了价格不菲的诊疗方案。<strong>在过去的6个月里，为了给贝贝治病，刘先生花了近4万元。</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021327s/234/w661h373/20210327/a2d5-kmvwsvy4407881.gif"></p><p>随着养猫养狗的人数逐渐增加，像贝贝一样被当作家人的宠物也越来越多，人们愿意给自己的宠物提供更多的健康保障，但随之而来的是高昂的宠物医疗费用。</p><p>《2020中国宠物医疗行业白皮书》指出，从宠物消费结构看，各细分品类中，<strong>宠物诊疗支出增长6.2%，为消费增速最快的品类。</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021327s/525/w885h440/20210327/17b4-kmvwsvy4709311.png"></p><p><strong>新瑞鹏宠物医疗集团市场部营销总监陈致爽</strong>：以每年的消费来看，除了常规的驱虫、疫苗、洗牙等消费之外，还有其它的一些突发性的、急慢性疾病的消费，平均每年一只宠物的平均医疗消费大概是3000元。</p><p><strong>目前全国城镇猫犬数量超过1亿只，宠物市场的规模在未来还将继续增加。</strong>可以预计，宠物医疗的市场蛋糕也将随之越做越大。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021327s/523/w880h443/20210327/73af-kmvwsvy4709368.png"></p><p><strong>深圳宠物医疗协会会长喻信益</strong>：宠物医疗这个板块，在整个宠物产业链里面，是一个很重要的板块，因为它技术含量比较高，宠物医疗板块占比整个宠物产业应该23%，目前已经将近500个亿的产值。&nbsp;</p><p class="ql-align-center"><strong>02</strong></p><p class="ql-align-center"><strong>宠物医疗险应运而生科技助力保险公司实现理赔</strong></p><p>虽然越来越多的人愿意为宠物的医疗买单，但是高昂的费用也让很多人希望可以有相应的保险来减轻经济压力，宠物医疗险应运而生。</p><p>江文珊养了一只猫和一只狗，随着宠物年龄的增长，她开始担心宠物发生意外，或者身体状况变差，于是她在去年购买了宠物险。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021327s/528/w885h443/20210327/4f7a-kmvwsvy4709993.png"></p><p><strong>深圳市民&nbsp;江文珊：</strong>我大概是买了第二个等级，每个月33.6元，它保的范围是累计终身15000元封顶，单次1500元封顶。我朋友她有一只黑色的虎斑法斗，进行了一个治疗，整个过程差不多花了4300元，她就把各个材料上传，上传之后大概15天，就给她赔付了1500元。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021327s/234/w661h373/20210327/34ba-kmvwsvy4407950.gif"></p><p>宠物医疗保险，一般是宠主按照保险合同约定，为被保险宠物支付保费，被保险宠物死亡、伤残、患病或者达到合同约定的年龄和期限之后，保险人支付保费的商业行为。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021327s/523/w880h443/20210327/8739-kmvwsvy4709729.png"></p><p><strong>平安产险董事长特别助理&nbsp;郭晓涛：</strong>中国市场传统上来看，宠物保险是以意外险和责任险为主的，可是发达的国家，发达市场上是以宠物的健康险和医疗险为主的。</p><p>根据艾媒咨询《2021年上半年中国宠物经济产业发展现状与市场调研分析报告》显示，66.6%的中国养宠人群会定期为宠物进行体检，13.9%的养宠人群表示只有宠物生病才会为宠物进行体检。其中，48.8%的宠主能够接受1000元以内的宠物医疗费用；27.9%的宠主表示能接受1000-2000元的费用；16%的宠主接受2000-3000元的花费；能接受3000元以上的宠主占比为7.2%。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021327s/234/w661h373/20210327/39dc-kmvwsvy4407992.gif"></p><p>目前，在宠物保险的认知问题上，<strong>价格过高、投保流程复杂和内容无法满足需求成为了普遍存在的三大痛点。</strong>随着多家保险公司的入局，可以相信在不远的未来，随着这项业务的不断推广，越来越多的宠物主将给自己的爱宠购</p><p>买到合适的宠物险，可以更好地为宠物提供医疗服务。&nbsp;&nbsp;</p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('5','男子上网买只宠物猪，三天后晒出买家秀，卖家看到不淡定了','宠物','442','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>大千世界，无奇不有。随着人们生活水平的提高，不少人为了增加生活乐趣，都会养一些宠物，尤其是一些单身人士，觉得养宠物可以陪伴自己，没那么孤单。不久前，有个男子在网上买了一只宠物猪，可是几天后的评价，让卖家欲哭无泪。</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/700/w300h400/20210328/0f9b-kmvwsvy7669051.jpg"></p><p>据悉，男子独自一人在城市里生活，常常表示很孤独，于是便去网上买了只宠物猪来陪伴自己，他还特意挑选了一只非常迷你的猪，卖家说这只猪长不大的，非常乖巧。</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/700/w300h400/20210328/b498-kmvwsvy7669044.jpg"></p><p>男子收到小猪之后，发现它真的很迷你，整个身子肥嘟嘟的，十分可爱。男子还给小猪取了个名字，叫做小胖墩，每天回到家中就可以看到小胖墩跑来跑去，男子觉得十分欢乐。</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/649/w300h349/20210328/bc52-kmvwsvy8584406.jpg"></p><p>不过，几天后男子去网上评价，还发了一张图片，让卖家不淡定了。原来，男子评价的配图居然是一个烤乳猪，男子还在评论里留言，说这个小猪很淘气，已经被他给宰了，做成烤乳猪，十分可口。</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/139/w572h367/20210328/8a75-kmvwsvy7669048.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('6','俄罗斯夫妻驯养狞猫，猛兽成为乖巧宠物，“战斗民族”名不虚传','宠物','285','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>俄罗斯人一直被我们称之为“战斗民族”，他们天性勇猛好斗，在野外敢于和猛兽搏斗。由于俄罗斯人“战斗民族”的特性，任何猛兽在他们面前都变得不再可怕，因此俄罗斯人养的宠物种类比我们要丰富的多，狼、熊、老虎这些猛兽都有可能成为俄罗斯人的家宠。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10109/160/w576h384/20210326/0a07-kmvwsvy1387880.jpg"></p><p>一对俄罗斯夫妻在家中养了一群小猫咪，在这些猫咪中，有一只猫的个头格外大。这只个头较大的猫，面部特征和平常的猫有很大的差异，嘴里面有两颗巨大的犬齿，看起来十分的与众不同。实际上这只个头较大的猫咪，并非是普通的家猫，而是野生的狞猫。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10109/366/w576h590/20210326/c50b-kmvwsvy1388039.jpg"></p><p>狞猫是一种体型中等的猫科动物，它们的长相和猞猁、薮猫差不多，很多人经常会把这三种动物弄混。狞猫、猞猁、薮猫的耳朵上都有一撮毛，但是猞猁的个头较大，身体更加粗壮，狞猫的耳朵是黑色的，薮猫的身体像豹子一样，布满了斑点。狞猫主要分布在非洲和中东地区，它们性格凶猛身体灵活，能够猎杀小型羚羊，捕猎低空飞行的鸟类。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10109/458/w576h682/20210326/f007-kmvwsvy1388192.jpg"></p><p>狞猫是一种比较容易被人类驯化的野兽，在来到俄罗斯夫妻家中不久，狞猫就融入到了这个大家庭里面。同其他猫科动物不同，狞猫对于食物非常的挑剔，从来不肯吃自己不爱吃的食物。在收养狞猫之后，主人需要给它买合适的野味，比如一些鸟类或者小型哺乳动物。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10109/168/w576h392/20210326/41d4-kmvwsvy1388416.jpg"></p><p>除了这只狞猫之外，俄罗斯夫妻家中还养了很多只其他种类的家猫，野外的狞猫也会猎杀其他小猫，不过一旦进入家养的环境，狞猫就会变得很合群。这只狞猫同其他的小猫的关系看起来很不错，它们甚至会依偎在一起休息，彼此之间都没有任何防备。根据主人的描述，这只狞猫非常的关爱其他的小猫，就像一个成年大哥哥一样。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10109/116/w576h340/20210326/3ca0-kmvwsvy1388659.jpg"></p><p>狞猫和藏獒一样，只认一个主人，不过狞猫和藏獒不同的是，狞猫在只认一个主人的同时，还会接纳很多朋友。在俄罗斯夫妻两人之间，狞猫选择了女主人作为自己的主人，而它和男主人的关系，更像是朋友一样。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10109/160/w576h384/20210326/618a-kmvwsvy1388961.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('7','女子花了4200块钱买了带证书的布偶猫,结果竟被宠物店套路了?','宠物','945','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>在繁忙的都市里，不少年轻人都想养个宠物作伴，有的人喜欢养狗，有的人喜欢养猫，鉴于大都市对狗的限制，很多人选择了养猫，小编也养着两只猫一只白色布偶猫，一只黑色山东狮子猫，两只猫花了八百块从网上宠物店买来，硬是花了两周时间学宠物救治知识把两只星期猫救活养大了。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/13/w540h273/20210327/eb06-kmvwsvy6318314.jpg"></p><p>你可能有很多疑问，布偶猫有这么便宜吗？当然，布偶猫带血统证书的怎么也需要七八千，因为小编只是喜欢猫，不想花太多钱去买带证书的猫，所以就避开了宠物店的一些坑。但是有人买猫就比较在乎证书，当然既然买了带血统的猫，也会带给自己不少的问题。</p><p>杭州小宋在一家宠物店精品店花了4200块钱买了一只布偶猫，小宋第一次看到就喜欢上了这只猫随即就买下了，而她则表示主要是冲着血统证书，店家表示有血统，小宋也没有多想就带着回家了，过了十多天突然才想起来自己买的猫是有血统证书的，于是小宋就去跟宠物店要。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/132/w640h292/20210327/7d15-kmvwsvy6318317.jpg"></p><p>真假血统证书</p><p>宠物店的说法让小宋蒙圈了，宠物店的工作人员说买的这只小猫是没有血统证书的，有证书的是猫爸爸，小宋当时理解错了把有血统理解成有血统证书，在之后双方进行了一番协商之后，宠物店退给了小宋800块钱和一袋猫粮，小宋也接受了。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/118/w640h278/20210327/168a-kmvwsvy6318315.jpg"></p><p>在之后宠物店把猫爸爸血统证书发给小宋看，小宋再次产生了质疑，证书上没有标记猫爸爸的照片，只标记了颜色是蓝双，而店里见到的猫爸爸颜色却是海双，也就是说宠物店发给小宋的照片和本身猫爸爸并不是一只猫。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/118/w640h278/20210327/3db0-kmvwsvy6318319.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('8','《犬诗十卷》第二卷·宠物狗（原创）','宠物','158','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>长颈鹿说：“轻轻地点一下标题，你就能打开心灵世界之门，在那里看到一片片无际的森林以及一片片翠绿的树叶！”</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/236/w640h396/20210326/490c-kmvwsvy1575409.jpg"></p><p>《鹿径路标》系列原创</p><p>＆＆&nbsp;第二百零八期 ＆＆</p><p>※※※※※※※※※※※※※※※※※</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/85/w534h351/20210326/f49d-kmvwsvy1575413.jpg"></p><p>自媒体编辑：苏櫶邑</p><p>编者按：</p><p>犬，即是人类忠实的朋友，也是家庭和社会的辛勤工作者。</p><p>犬，与人类情同手足，友谊深厚。贡献社会，功不可没。使命神圣，不可或缺。</p><p>闪烁于其身的人性光芒，指引着脚步行进的方向。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/200/w640h360/20210326/131e-kmvwsvy1575415.jpg"></p><p>以一诗为一卷，笔者共创作了十卷以狗为题材的寓言诗歌，题目为《犬诗十卷》，自《鹿径路标》系列原创第207期起，分期发表，每期一卷，发至《鹿径路标》系列原创第216期为止。</p><p>本期《鹿径路标》系列原创，发表笔者创作的寓言诗歌《犬诗十卷》第二卷：宠物狗。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/182/w433h549/20210326/ed86-kmvwsvy1575416.jpg"></p><p>《犬诗十卷》第二卷·宠物狗·原创</p><p>* 苏櫶邑</p><p>它是一个宠物&nbsp;&nbsp;几乎被人类宠坏了筋骨</p><p>原本灵敏的神经开始有些麻木</p><p>物种灭绝或者濒临灭绝突显物以稀为贵</p><p>谁在暗中作祟以死暧昧</p><p>花花世界&nbsp;&nbsp;人类不想成为硕果仅存的孤独玫瑰</p><p>于是乎&nbsp;&nbsp;拥有爱心的人越来越多趋之若鹜</p><p>蛇蝎蠢猪狮子猎豹孔雀鱼流氓兔</p><p>以及那两种会说人话的怪鸟&nbsp;&nbsp;八哥和鹦鹉</p><p>全都被拉进了朋友圈&nbsp;&nbsp;宠物就像风掀怒海开始泛滥</p><p>你不爱宠物吗&nbsp;&nbsp;不相信世界上真的有人不爱宠物</p><p>为了避免发生识别错误&nbsp;&nbsp;有必要加一个漂亮的标注</p><p>宠物狗是一条犬科宠物</p><p>它为它所属的物种感到欢欣鼓舞</p><p>因为它完成了一项其它物种不可能完成的任务</p><p>它写了一篇日记&nbsp;&nbsp;对生活进行详实记录</p><p>这篇通俗读物&nbsp;&nbsp;被家人和邻居奉为名著反复阅读</p><p>它被视为家庭成员&nbsp;&nbsp;倍受宠爱成为翘楚</p><p>尽管户籍还没有注册</p><p>生为一家人&nbsp;&nbsp;死为一家亲</p><p>人类户籍管理&nbsp;&nbsp;应该升级提速</p><p>它可以使用它姐姐的某些称呼</p><p>譬如&nbsp;&nbsp;称姐姐的爸为父称姐姐的妈为母</p><p>说明一下&nbsp;&nbsp;它姐姐是它养父养母的掌上明珠</p><p>姐姐叫大鹭&nbsp;&nbsp;它叫二鹭</p><p>它与家人同居一室共住一屋</p><p>夏天有空调&nbsp;&nbsp;屋里凉爽爽</p><p>冬天有地热&nbsp;&nbsp;屋里暖乎乎</p><p>浴霸叫它欲罢不能&nbsp;&nbsp;一天一淋浴&nbsp;&nbsp;上帝给它编制它都不愿意去</p><p>它享用商标驰名全球的狗粮</p><p>狗粮啊让味蕾欲死欲仙的狗粮啊</p><p>你拥有风起云涌的世界</p><p>你拥有泛起浪花的麦香</p><p>你拥有海洋&nbsp;&nbsp;海洋里有海参有鲍鱼还有横行霸道的螃蟹</p><p>你拥有醉人的琼浆&nbsp;&nbsp;琼浆包括人头马竹叶青五粮液</p><p>你拥有解渴的玉液&nbsp;&nbsp;玉液分门别类为可口可乐健力宝王老吉</p><p>你拥有勾起它童年回忆的棵棵青松翠柏和卷起浪花的涓涓小河</p><p>哦&nbsp;&nbsp;民以食为天的内涵适用于整个生命界</p><p>从外表看&nbsp;&nbsp;宠物狗没做任何工作</p><p>都是人类围绕着它忙碌</p><p>深深的感触终使它对生活的理解有所斩获</p><p>其实它似乎拥有工作&nbsp;&nbsp;每时每刻都处在工作之中</p><p>它的工作&nbsp;&nbsp;不就是人类在为它工作的过程之中得到开心快乐吗</p><p>透彻的领悟使它骄傲&nbsp;&nbsp;它不是那只不抓老鼠却想要鱼吃的馋猫懒猫</p><p>它自豪&nbsp;&nbsp;它是一只带给人间快乐的乖乖天使</p><p>一条宠物狗呀一条可爱的宠物狗呀</p><p>怎么总在人性的心痒之处挠来挠去</p><p>黎明的雄鸡唱完了最后一句</p><p>开始用叩首感谢的礼仪&nbsp;&nbsp;领取人类撒在地上的米粒</p><p>撒米于地唤鸡捡食</p><p>那是对雄鸡迎取旭日的物资奖励</p><p>那是对雄鸡一种不礼貌的赏赐</p><p>雄鸡羡慕宠物狗</p><p>饭来张口衣来伸手&nbsp;&nbsp;无所事事却生活无忧</p><p>黎明的雄鸡唱完了最后一句</p><p>叮嘱忙于生计的人类不要把鸡忘记</p><p>关于宠物狗的日记&nbsp;&nbsp;关注还在继续阅读还在继续热评还在继续转发还在继续收藏还在继续点赞还在继续</p><p>宠物狗激动地流出眼泪</p><p>万万没有想到&nbsp;&nbsp;人类之于宠物的关爱如此任性如此积极</p><p>鼓励的话语&nbsp;&nbsp;就像大海后浪推前浪的波涛一句接着一句</p><p>山响的鼓掌&nbsp;&nbsp;就像夏季天上的滚雷一声接着一声经久不息</p><p>朋友啊可爱的朋友</p><p>谁能援助它一条信息</p><p>告知它举办关于工作日记的竞赛地址</p><p>它要报名参加这场盛大的赛事</p><p>独占鳌头非它莫属&nbsp;&nbsp;这种自信来自于它尊重热爱人类的底气</p><p>它要永久珍藏它的这篇日记</p><p>她是一朵玫瑰关于春天的美丽回忆</p><p>回忆是一场渗透白色土壤的丝雨</p><p>她跳动蝴蝶的舞步&nbsp;&nbsp;奔跑在午夜的花雨里</p><p>（作于2021·3·18 ）</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/668/w424h244/20210326/ead4-kmvwsvy1575412.jpg"></p><p>【作者声明】</p><p>1、本文系作者原创，已受著作权及区块链技术保护，切勿剽窃抄袭，违法必究。</p><p>2、本文部分图片来自于网络，如涉及侵权，请联系作者删除。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/663/w421h242/20210326/cda6-kmvwsvy1575408.jpg"></p><p>【读者朋友】</p><p>《鹿径路标·208》已愉快到站，感谢您用阅读一路陪伴。</p><p>我在《鹿径路标·209》车站恭候您，不见不散！</p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('9','小猫室内睡觉遭宠物狗闯门撕咬，狗主反怼猫主：你家猫咋不牵绳','宠物','224','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>近日，江苏南京的街头，一名女子带着宠物狗散步，突然，这条未拴绳的宠物狗冲向路边的一家店铺，对着店内一只正在睡觉的猫开始撕咬。店主人陆先生闻声赶来，一脚将狗踢走，并怒斥狗主人，上次遛狗时，就未拴绳，导致宠物狗咬了自家的猫，这次为何还不拴绳？没想到，狗主人不但不道歉，还骂骂咧咧地反怼陆先生，你家猫怎么不牵绳呢？</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/318/w640h478/20210324/4d6f-kmvwsvx7136186.jpg"></p><p>对此，网友吵成一片，有的网友认为，女子不给狗拴绳，造成狗咬了猫，就应该诚恳道歉，反问猫不拴绳，属于强词夺理。也有网友认为，狗主人的话不无道理，陆先生也有过错，应该将猫放在笼子里，或者拴绳，防止猫抓伤进店的客人。</p><p>我国的《动物防疫法》早就规定，带狗出门，应该佩戴好犬牌、犬绳，防止犬类伤人或传染疾病。女子遛狗不给狗牵绳本就不对，为什么能这么理直气壮地反怼别人呢？原因就在于她的从众心理。很多宠物犬主人并不遵守相关法律的规定，往往出门时不给狗牵绳，任宠物犬到处乱跑。在这些狗主人看来，让狗散跑才能达到“遛”的目的。女子也是这样的想法，她觉得大家都这么做，凭什么只说我一个。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/319/w640h479/20210324/9383-kmvwsvx7136194.jpg"></p><p>而她斥责陆先生不给猫牵绳的行为，实则是为了掩饰自己过错。众所周知，猫是一种性格相对温顺的动物，很少有主动对人发起攻击的时候。即便它们有时候用爪子抓伤主人，伤害其实也不大。我国的《动物防疫法》，也未规定一定要给猫牵绳，所以，陆先生的猫拴不拴绳，和女子的狗拴不拴绳这两件事不能做类比。</p><p>女子的狗冲进陆先生的店，给陆先生和他的猫都造成了惊吓，女子就应该诚恳道歉，争取得到陆先生的谅解，事情才能和平解决。同时她应该吸取教训，下次出门给狗牵绳，避免给其他人和动物造成伤害。</p><p>遛狗不牵绳，其实是一种非常不好的习惯。狗的智商只相当于人类5、6岁的孩子，对自己的行为，并不能做出正确的判断，加上一些狗会突发狂犬病，如果咬伤人或其他动物，将会带来更严重的后果。</p><p>去年，山东高密15岁的大军高烧不退，还有怕水怕风、极度恐惧等症状，当他被送到当地医院治疗时，医生诊断，大军得的正是狂犬病。几个小时后，大军在病房里停止了呼吸。据家人回忆，一年前，大军和妈妈在小区散步时，一条未牵绳的大型宠物犬冲过来，咬伤了大军妈妈，大军见状很生气，打了宠物犬。但这条狗被打后也咬伤了大军的右手，可大军并未就医治疗。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/328/w640h488/20210324/cadc-kmvwsvx7136190.jpg"></p><p>大军的死，最直接的原因，主要是宠物狗的主人未能约束住自己的狗。像这样遛狗不牵绳造成悲剧的案例很多，然而，却未能引起宠物狗主人们的重视，他们依旧我行我素，放任自己的狗到处乱跑、对人狂吠，甚至咬伤人和其他动物。</p><p>针对这种状况，全国人大常委会于今年年初，进一步强调了遛狗必须牵狗绳的规定，并指示，如果狗主人拒绝牵绳，执法部门可对其进行罚款。对于那些屡教不改的，地方农业主管部门可委托动物诊疗机构，对狗进行无害化处理，所需费用由狗主人承担。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/320/w640h480/20210324/e60c-kmvwsvx7136191.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('10','浙江警察学院通报教师半年虐杀猫狗300只的处分 网友直呼：太轻了！','宠物','450','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p class="ql-align-center"><img src="http://p5.itc.cn/images01/20200920/e7883a3931dd4f80882a27223ff8ed34.jpeg"></p><p class="ql-align-center"><img src="http://p1.itc.cn/images01/20200920/a479255c88d54a00bbef81109feb15cf.jpeg"></p><p class="ql-align-center"><img src="http://p8.itc.cn/images01/20200920/62c55a460d2e4d38bc056906fbed714c.jpeg"></p><p class="ql-align-center"><img src="http://p0.itc.cn/images01/20200920/b8bb4530f1104481b7a262c8d0f0bc3f.jpeg"></p><p class="ql-align-center"><img src="http://p3.itc.cn/images01/20200920/36dd7c5b210d44e1ac5028df321e0707.jpeg"></p><p class="ql-align-center"><img src="http://p9.itc.cn/images01/20200920/996ecf51ca9d40068b9e43044414d7fb.jpeg"></p><p class="ql-align-center"><img src="http://p9.itc.cn/images01/20200920/779e29a215e043f581db0b31d027be3f.jpeg"></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('11','4种人畜病菌都是宠物带来的，做不好日常卫生，可能会传染给家人','宠物','367','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>在日常生活当中，大家时常都能见到家养小动物的身影，这些小动物不仅仅是小宠物，同样也是家人，互相陪伴，带给我们无尽的欢乐。有些人虽然也非常喜欢小动物，但是他们担心动物身上会携带病菌，从而选择不养宠物。但是小动物身上的病菌真的对人体有害吗？</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/spider2021324/302/w640h462/20210324/483e-kmvwsvx6707929.jpg"></p><p>答案肯定是会。宠物身上确实携带病菌，所以许多人会定期带自己的宠物去打疫苗，或者定期杀虫。相信大家都有接触过小动物的经历，短期接触可能不会有什么问题，但是要是长期接触的话就不一定了，所以对于那些家里养有宠物的人来说，该如何更好的防止被病菌传染呢？</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/spider2021324/320/w640h480/20210324/0dca-kmvwsvx6707928.jpg"></p><p>要知道现在家养的宠物大多都会往床上跑，只不过有些人并不愿意让自己家的宠物上床玩耍。其实在其他一些西方国家猫狗这类宠物上床都是非常普遍的事情。要是不让狗狗上床还是一件比较容易的事，而对于一些宠物猫来说，不让它们上床那简直有点难于上青天，于是猫主人们也都开始享受和猫咪一起躺在一张床上了。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/spider2021324/203/w640h363/20210324/dc95-kmvwsvx6707998.jpg"></p><p>此前，有科学家从宠物主人家中的多个地方提取了化验物来进行细菌化验，结果显示猫咪身上所携带的细菌要远比狗狗身上的要多得多，而且很多细菌都还是人畜共患的。想要干净卫生而且还不患病的养宠物，首先需要从宠物的吃食上面着手，研究发现宠物饭盆中含有大量的大肠杆菌和沙门氏菌，这些细菌非常容易引起人们的腹泻，而且这类细菌往往都是从大便里面带出来的，基本上都是因为猫咪或者狗狗在舔完屁股以后才带到饭盆中的。为了自己家人的健康同时也为了宠物的健康，最好是每周都要用100度的开水来浸泡食盆之类的用品，进行消毒10分钟左右。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/spider2021324/238/w640h398/20210324/09c0-kmvwsvx6707999.jpg"></p><p>不仅是宠物的吃食，还有宠物的玩具上面一般都会附带有很多大肠杆菌和肺炎细菌，有的甚至还包括一些霉菌，酵母菌，葡萄球菌等各类细菌。有的猫咪生皮肤病以后猫主人都会带着去宠物医院做检查，会时常听到球菌这个名字，其实，这种细菌存在于生活中的各个角落，可以时常给宠物的玩具做一下清洗消毒，通过太阳暴晒的方法来达到杀菌的目的。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/spider2021324/267/w640h427/20210324/cd64-kmvwsvx6708030.jpg"></p><p>还有一个最重要的那就是铲屎官接触最多的“猫砂”，之所以说猫砂中细菌危害最大也是因为猫咪不仅仅是在猫砂中拉便便。而且，猫咪还喜欢经常爪子上带有猫砂，会被带到满屋子都是，这样一来满屋子都是猫砂和细菌了。想要减少家里细菌量数，就必须要时常修剪猫狗的脚毛，这样不仅能防止它们滑倒，还能防止它们将细菌到处携带。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/spider2021324/180/w640h340/20210324/1fe6-kmvwsvx6708033.jpg"></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('12','养狗狗真的有益处吗？宠物或许会让您的生活更健康','宠物','405','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>有越来越多的家庭都拥有了自己的宠物，无论是独居的老人，还是父母为了陪伴自己的孩子……它们都选择了宠物。其中养狗和爱狗的人占了一大部分，不仅仅是因为狗狗会对你忠心耿耿，更重要的是养狗的人能懂得狗狗在人类生活中的重要性。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/450/w750h500/20210324/9f81-kmvwsvx7135079.jpg"></p><p>狗狗与主人之间的情感交流是双向的，你负责喂养和照顾它们，它们可以给你带来更过的关爱和快乐。养狗其实是对我们的身心都非常有好处的，只要我们科学的喂养。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/422/w750h472/20210324/5711-kmvwsvx7135031.jpg"></p><p>如何科学喂养宠物？只要做到以下三点就可以了。</p><p>1、 定期检查、注射疫苗。因为狗狗的寿命本身就比人类要短，所以健康对他们来说是很重要的。定期检查可以降低狗狗生病的风险，同时每年都要定期注射狂犬疫苗，确保主人的健康。</p><p>2、 做好狗狗的卫生工作，包括口腔卫生。可以一周或半个月给狗狗进行一次清洁。洗澡是必不可少的，除此以外还应该注意毛发的梳理、耳朵内的清洁和指甲的修剪。狗狗口腔内是很容易滋生细菌导致牙斑、牙周疾病和口臭的，可以使用宠物牙膏每周使用1---2次即可。</p><p>3、 经常运动，习惯遛弯。狗狗每天关在家里可能会降低狗狗的寿命，失去活泼的状态。应该多带狗狗在户外玩耍，让身体得到充分的活动和舒展。定时遛弯也能帮助狗狗养成定时排便的习惯。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/34/w500h334/20210324/43af-kmvwsvx7135036.jpg"></p><p><br></p><p>那么养宠物又能给我们的生活带来那些改变呢？先简单的说三点吧。</p><p>1、 增强锻炼。在遛狗的同时，我们不知不觉自己也做了个更多的运动。</p><p>2、 降低抑郁的可能性。研究表明养宠物能降低得抑郁症的概率，对60岁以上的老人来说有一个宠物可以降低四倍抑郁的风险。</p><p>3、 可以使我们感到更幸福。结束了一天忙碌的工作，回到家后看到可爱的狗狗朝你扑来可能是一天中最幸福的时刻了。狗狗可以降低生活带给我们的压力，也可以使我们的性格变得更加善解人意。</p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('13','十二星座专属宠物猫，天秤座是布偶猫，巨蟹座是波斯猫！','宠物','19','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>猫咪作为宠物受欢迎的程度不亚于狗狗，颜值高还聪明，我们一起看看十二星座专属宠物猫是什么吧，天秤座是布偶猫，巨蟹座是波斯猫白羊座：金吉拉猫白羊座专属宠物猫是金吉拉猫，它们的性格高傲，喜欢独自行动，不是特别的粘人，和它们用平等的关系相处，白羊座这样爽朗的性格跟他们在一起会成为好朋友的哦。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/217/w640h377/20210328/4ea7-kmvwsvy7076819.png"></p><p>金牛座：加菲猫金牛座专属宠物猫是加菲猫，它们的长相很呆萌，样子很可爱，重要的是很金牛座的性格一样文静温顺，很喜欢跟人亲近，长相也是超级有辨识度的呢。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/325/w640h485/20210328/338d-kmvwsvy7076847.png"></p><p>双子座：挪威森林猫双子座专属宠物猫是挪威森林猫，它们不光长得好看而且很机敏，警觉性和敏捷性都很强。跟着双子座这样聪明好动的主人，相信你们很快就能打成一片哦。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/248/w640h408/20210328/f918-kmvwsvy7076906.png"></p><p>巨蟹座：波斯猫巨蟹座专属宠物猫是波斯猫，它们的颜值和温柔的性格在猫界是出了名的，尤其是眼睛的颜色简直太美了，叫声都是纤细动听的，喜欢安静。跟巨蟹座这个温柔的猫主人是很好的搭配哦。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/197/w640h357/20210328/246b-kmvwsvy7076924.png"></p><p>狮子座：英国短毛猫狮子座专属宠物猫是英国短毛猫，毛茸茸的手感和圆乎乎的身体非常可爱，喜欢黏着主人，脾气还特别好。狮子座这么英雄主义的性格一定能好好爱护你的小宠物的。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/784/w503h281/20210328/71a8-kmvwsvy7076945.png"></p><p>处女座：无毛猫处女座专属宠物猫是斯芬克斯无毛猫，爱干净又洁癖的处女座非常适合养它们哦，不存在掉毛的风险，性情温顺老实，跟处女座相似的地方就是都很高贵，像个女王。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/243/w640h403/20210328/8590-kmvwsvy7076968.png"></p><p>天秤座：布偶猫天秤座专属宠物猫是布偶猫，简直就是颜值界的扛把子小公主一样的存在，漂亮的让人挪不开眼。就像天秤座一样温文尔雅，还是个特别粘人的小宠物，总喜欢讨好主人。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/729/w640h889/20210328/9cd5-kmvwsvy7076983.png"></p><p>天蝎座：暹罗猫天蝎座专属宠物猫是暹罗猫，它们特别的个性，不光是长相特别容易辨识，而且性格也是特别高傲，跟天蝎座这个小主人一样霸气侧漏，而且一般都是贵族喜欢养暹罗猫呢。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/188/w639h349/20210328/c9fa-kmvwsvy7077004.png"></p><p>射手座：孟加拉豹猫射手座专属宠物猫是孟加拉豹猫，顾名思义长得很像豹子，而且活泼好动，总是闲不下来，给它们一个玩具可以自己玩一整天，也适合射手座这样不喜欢粘人还长期不在家养的宠物猫呢。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/203/w640h363/20210328/ddb4-kmvwsvy7077029.png"></p><p>摩羯座：美国短毛猫摩羯座专属宠物猫是美国短毛猫，它们虽然长着老虎一样的斑纹，可是性格却温和，不爱发脾气还非常的忠诚。摩羯座这种好脾气的星座养一只好脾气的猫再合适不过了。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/216/w640h376/20210328/556d-kmvwsvy7077058.png"></p><p>水瓶座：俄罗斯蓝猫水瓶座专属宠物猫是俄罗斯蓝猫，特别的好养活，就算你家中有其他的宠物也能很和平，有点害羞有点内向。而且跟水瓶座很像的地方就是喜欢自由特别独立，讨厌被人限制。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/174/w463h511/20210328/5b6f-kmvwsvy7077095.png"></p><p>双鱼座：苏格兰折耳猫双鱼座专属宠物猫是苏格兰折耳猫，它们粘人总想要你的关怀和抚摸，你在工作的时候静静地不打扰你，在你孤独的时候它们会一如既往的陪伴，萌萌的又可爱很适合双鱼座哦。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10106/249/w640h409/20210328/7c73-kmvwsvy7077138.png"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('14','蓝猫被送到宠物店，主人只不过离开了几分钟，眼眶里已经含泪','宠物','69','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>蓝猫这个叫法，其实是会引起误会的，因为世界上存在着三大蓝猫，俄罗斯蓝猫，沙特尔蓝猫，以及英短蓝猫，而平常我们所说的蓝猫，其实仅仅只有英短蓝猫。很多人会讶异，明明是灰猫，怎么能叫蓝猫呢？其实这里的蓝，特指的是英国蓝，虽然小编也不怎么明白，难道英国人的蓝色和我们中国人的蓝色不一样吗？</p><p><img src="http://n.sinaimg.cn/sinakd20200329ac/458/w751h507/20200329/897b-irpunah0895263.png"></p><p>某位铲屎官养了一只蓝猫，平日里对它十分宠溺，走哪里都带着它，经常是带它出去遛弯，一天，铲屎官带着蓝猫去宠物店，自己不过离开了几分钟，再回来，看到蓝猫的样子，着实是哭笑不得~~~</p><p><img src="http://n.sinaimg.cn/sinakd20200329ac/477/w764h513/20200329/8ede-irpunah0895270.png"></p><p>此时的蓝猫已经眼眶含泪，小模样委屈极了，并且就那么死死盯着铲屎官。</p><p>猫：铲屎的，你说实话，你是不是不要我了？</p><p><img src="http://n.sinaimg.cn/sinakd20200329ac/388/w765h423/20200329/86ec-irpunah0895286.png"></p><p>这件事被分享到网络上后，许多人纷纷调侃道。“求猫咪的心理阴影面积”</p><p>“猫咪有着一颗玻璃心”</p><p>“好傻的猫咪，长得好肥呀”</p><p>“这就是我为什么不买猫咪的原因”</p><p>“最喜欢的就是蓝猫，圆圆乎乎的”</p><p><img src="http://n.sinaimg.cn/sinakd20200329ac/476/w762h514/20200329/df9b-irpunah0895279.png"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('15','养狗狗真的有益处吗？宠物或许会让您的生活更健康','宠物','530','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>有越来越多的家庭都拥有了自己的宠物，无论是独居的老人，还是父母为了陪伴自己的孩子……它们都选择了宠物。其中养狗和爱狗的人占了一大部分，不仅仅是因为狗狗会对你忠心耿耿，更重要的是养狗的人能懂得狗狗在人类生活中的重要性。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/450/w750h500/20210324/9f81-kmvwsvx7135079.jpg"></p><p>狗狗与主人之间的情感交流是双向的，你负责喂养和照顾它们，它们可以给你带来更过的关爱和快乐。养狗其实是对我们的身心都非常有好处的，只要我们科学的喂养。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/422/w750h472/20210324/5711-kmvwsvx7135031.jpg"></p><p>如何科学喂养宠物？只要做到以下三点就可以了。</p><p>1、 定期检查、注射疫苗。因为狗狗的寿命本身就比人类要短，所以健康对他们来说是很重要的。定期检查可以降低狗狗生病的风险，同时每年都要定期注射狂犬疫苗，确保主人的健康。</p><p>2、 做好狗狗的卫生工作，包括口腔卫生。可以一周或半个月给狗狗进行一次清洁。洗澡是必不可少的，除此以外还应该注意毛发的梳理、耳朵内的清洁和指甲的修剪。狗狗口腔内是很容易滋生细菌导致牙斑、牙周疾病和口臭的，可以使用宠物牙膏每周使用1---2次即可。</p><p>3、 经常运动，习惯遛弯。狗狗每天关在家里可能会降低狗狗的寿命，失去活泼的状态。应该多带狗狗在户外玩耍，让身体得到充分的活动和舒展。定时遛弯也能帮助狗狗养成定时排便的习惯。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/34/w500h334/20210324/43af-kmvwsvx7135036.jpg"></p><p><br></p><p>那么养宠物又能给我们的生活带来那些改变呢？先简单的说三点吧。</p><p>1、 增强锻炼。在遛狗的同时，我们不知不觉自己也做了个更多的运动。</p><p>2、 降低抑郁的可能性。研究表明养宠物能降低得抑郁症的概率，对60岁以上的老人来说有一个宠物可以降低四倍抑郁的风险。</p><p>3、 可以使我们感到更幸福。结束了一天忙碌的工作，回到家后看到可爱的狗狗朝你扑来可能是一天中最幸福的时刻了。狗狗可以降低生活带给我们的压力，也可以使我们的性格变得更加善解人意。</p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('16','泰国宠物博览会','宠物','913','0',"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ",null,null,null,'<p>近日，泰国国际宠物博览会在曼谷举行。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/5930-kmvwsvy3839919.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物犬。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/fa60-kmvwsvy3840173.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物犬。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/a527-kmvwsvy3840328.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物犬。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/4383-kmvwsvy3840513.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物乌龟。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/b03d-kmvwsvy3840821.jpg"></p><p>3月26日，一名小女孩在泰国曼谷国际宠物博览会上和宠物鸟玩耍。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/32ac-kmvwsvy3841059.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物鸟。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/3cdf-kmvwsvy3841154.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物犬。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/126e-kmvwsvy3841211.jpg"></p><p>3月26日，一名女子在泰国曼谷国际宠物博览会上和宠物猴子玩耍。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/dc3d-kmvwsvy3841367.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物犬。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/275/w2048h1427/20210326/e287-kmvwsvy3841689.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物犬。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/0e2f-kmvwsvy3842131.jpg"></p><p>这是3月26日在泰国曼谷国际宠物博览会上拍摄的宠物犬。新华社/法新</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210326s/211/w2048h1363/20210326/3673-kmvwsvy3842279.jpg"></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article_type` values ('1','100','宠物','0',null,null,null,"2022-03-27 01:05:10.000 ","2022-03-27 01:05:10.000 ");
