/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t379`;
CREATE DATABASE IF NOT EXISTS `t379` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t379`;

DROP TABLE IF EXISTS `banji`;
CREATE TABLE IF NOT EXISTS `banji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `banji_uuid_number` varchar(200) DEFAULT NULL COMMENT '教室编号',
  `banji_loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `banji_louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `banji_name` varchar(200) DEFAULT NULL COMMENT '教室名称  Search111 ',
  `banji_content` longtext COMMENT '教室备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='教室';

DELETE FROM `banji`;
INSERT INTO `banji` (`id`, `banji_uuid_number`, `banji_loudong`, `banji_louceng`, `banji_name`, `banji_content`, `insert_time`, `create_time`) VALUES
	(1, '1679880152079', '楼栋1', '楼层1', '教室名称1', '教室备注1', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(2, '1679880152098', '楼栋2', '楼层2', '教室名称2', '教室备注2', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(3, '1679880152110', '楼栋3', '楼层3', '教室名称3', '教室备注3', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(4, '1679880152097', '楼栋4', '楼层4', '教室名称4', '教室备注4', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(5, '1679880152163', '楼栋5', '楼层5', '教室名称5', '教室备注5', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(6, '1679880152089', '楼栋6', '楼层6', '教室名称6', '教室备注6', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(7, '1679880152146', '楼栋7', '楼层7', '教室名称7', '教室备注7', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(8, '1679880152127', '楼栋8', '楼层8', '教室名称8', '教室备注8', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(9, '1679880152160', '楼栋9', '楼层9', '教室名称9', '教室备注9', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(10, '1679880152144', '楼栋10', '楼层10', '教室名称10', '教室备注10', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(11, '1679880152108', '楼栋11', '楼层11', '教室名称11', '教室备注11', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(12, '1679880152139', '楼栋12', '楼层12', '教室名称12', '教室备注12', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(13, '1679880152071', '楼栋13', '楼层13', '教室名称13', '教室备注13', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(14, '1679880152107', '楼栋14', '楼层14', '教室名称14', '教室备注14', '2023-03-27 01:22:32', '2023-03-27 01:22:32');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-27 01:21:30'),
	(2, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-27 01:21:30'),
	(3, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-27 01:21:31'),
	(4, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-27 01:21:31'),
	(5, 'yuanbu_types', '院部', 1, '院部1', NULL, NULL, '2023-03-27 01:21:31'),
	(6, 'yuanbu_types', '院部', 2, '院部2', NULL, NULL, '2023-03-27 01:21:31'),
	(7, 'kaoshi_types', '考试类型', 1, '考试类型1', NULL, NULL, '2023-03-27 01:21:31'),
	(8, 'kaoshi_types', '考试类型', 2, '考试类型2', NULL, NULL, '2023-03-27 01:21:31'),
	(9, 'kaoshi_types', '考试类型', 3, '考试类型3', NULL, NULL, '2023-03-27 01:21:31'),
	(10, 'kaoshi_types', '考试类型', 4, '考试类型4', NULL, NULL, '2023-03-27 01:21:31'),
	(11, 'kaoshi_baoming_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-03-27 01:21:31'),
	(12, 'kaoshi_baoming_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-03-27 01:21:31'),
	(13, 'kaoshi_baoming_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-03-27 01:21:31'),
	(14, 'yuanbu_types', '院部', 3, '院部3', NULL, '', '2023-03-27 02:07:52');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 1, '2023-03-27 01:22:32', '公告详情1', '2023-03-27 01:22:32'),
	(2, '公告名称2', 1, '2023-03-27 01:22:32', '公告详情2', '2023-03-27 01:22:32'),
	(3, '公告名称3', 2, '2023-03-27 01:22:32', '公告详情3', '2023-03-27 01:22:32'),
	(4, '公告名称4', 2, '2023-03-27 01:22:32', '公告详情4', '2023-03-27 01:22:32'),
	(5, '公告名称5', 1, '2023-03-27 01:22:32', '公告详情5', '2023-03-27 01:22:32'),
	(6, '公告名称6', 2, '2023-03-27 01:22:32', '公告详情6', '2023-03-27 01:22:32'),
	(7, '公告名称7', 2, '2023-03-27 01:22:32', '公告详情7', '2023-03-27 01:22:32'),
	(8, '公告名称8', 2, '2023-03-27 01:22:32', '公告详情8', '2023-03-27 01:22:32'),
	(9, '公告名称9', 1, '2023-03-27 01:22:32', '公告详情9', '2023-03-27 01:22:32'),
	(10, '公告名称10', 1, '2023-03-27 01:22:32', '公告详情10', '2023-03-27 01:22:32'),
	(11, '公告名称11', 1, '2023-03-27 01:22:32', '公告详情11', '2023-03-27 01:22:32'),
	(12, '公告名称12', 2, '2023-03-27 01:22:32', '公告详情12', '2023-03-27 01:22:32'),
	(13, '公告名称13', 1, '2023-03-27 01:22:32', '公告详情13', '2023-03-27 01:22:32'),
	(14, '公告名称14', 2, '2023-03-27 01:22:32', '<p>公告详情14回家回家就</p>', '2023-03-27 01:22:32');

DROP TABLE IF EXISTS `kaoshi`;
CREATE TABLE IF NOT EXISTS `kaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `kaoshi_name` varchar(200) DEFAULT NULL COMMENT '考试名称  Search111 ',
  `kaoshi_quyu` varchar(200) DEFAULT NULL COMMENT '考试区域  Search111 ',
  `kaoshi_types` int DEFAULT NULL COMMENT '考试类型 Search111',
  `kaoshi_renshu` int DEFAULT NULL COMMENT '考试人数',
  `kaoshi_time` timestamp NULL DEFAULT NULL COMMENT '考试时间',
  `kaoshi_content` longtext COMMENT '考试介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='考试';

DELETE FROM `kaoshi`;
INSERT INTO `kaoshi` (`id`, `kaoshi_uuid_number`, `kaoshi_name`, `kaoshi_quyu`, `kaoshi_types`, `kaoshi_renshu`, `kaoshi_time`, `kaoshi_content`, `insert_time`, `create_time`) VALUES
	(1, '1679880152136', '考试名称1', '考试区域1', 2, 25, '2023-03-27 01:22:32', '考试介绍1', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(2, '1679880152114', '考试名称2', '考试区域2', 4, 494, '2023-03-27 01:22:32', '考试介绍2', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(3, '1679880152153', '考试名称3', '考试区域3', 1, 245, '2023-03-27 01:22:32', '考试介绍3', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(4, '1679880152087', '考试名称4', '考试区域4', 2, 59, '2023-03-27 01:22:32', '考试介绍4', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(5, '1679880152162', '考试名称5', '考试区域5', 2, 296, '2023-03-27 01:22:32', '考试介绍5', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(6, '1679880152107', '考试名称6', '考试区域6', 2, 40, '2023-03-27 01:22:32', '考试介绍6', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(7, '1679880152157', '考试名称7', '考试区域7', 2, 379, '2023-03-27 01:22:32', '考试介绍7', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(8, '1679880152116', '考试名称8', '考试区域8', 3, 109, '2023-03-27 01:22:32', '考试介绍8', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(9, '1679880152094', '考试名称9', '考试区域9', 1, 180, '2023-03-27 01:22:32', '考试介绍9', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(10, '1679880152102', '考试名称10', '考试区域10', 2, 158, '2023-03-27 01:22:32', '考试介绍10', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(11, '1679880152075', '考试名称11', '考试区域11', 1, 249, '2023-03-27 01:22:32', '考试介绍11', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(12, '1679880152167', '考试名称12', '考试区域12', 1, 431, '2023-03-27 01:22:32', '考试介绍12', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(13, '1679880152076', '考试名称13', '考试区域13', 4, 194, '2023-03-27 01:22:32', '考试介绍13', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(14, '1679880152089', '考试名称14', '考试区域14', 1, 260, '2023-03-27 01:22:32', '考试介绍14', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(17, '1679882711806', '考试9999', '区域89999', 3, 88, '2024-03-27 02:05:33', '<p>广东省广泛的个</p>', '2023-03-27 02:05:38', '2023-03-27 02:05:38');

DROP TABLE IF EXISTS `kaoshi_baoming`;
CREATE TABLE IF NOT EXISTS `kaoshi_baoming` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kaoshi_id` int DEFAULT NULL COMMENT '考试',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `kaoshi_baoming_uuid_number` varchar(200) DEFAULT NULL COMMENT '监考报名编号',
  `kaoshi_baoming_name` varchar(200) DEFAULT NULL COMMENT '监考报名名称  Search111 ',
  `kaoshi_baoming_content` longtext COMMENT '报名缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `kaoshi_baoming_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `kaoshi_baoming_yesno_text` longtext COMMENT '审核意见',
  `kaoshi_baoming_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='监考报名';

DELETE FROM `kaoshi_baoming`;
INSERT INTO `kaoshi_baoming` (`id`, `kaoshi_id`, `laoshi_id`, `kaoshi_baoming_uuid_number`, `kaoshi_baoming_name`, `kaoshi_baoming_content`, `insert_time`, `kaoshi_baoming_yesno_types`, `kaoshi_baoming_yesno_text`, `kaoshi_baoming_shenhe_time`, `create_time`) VALUES
	(1, 1, 3, '1679880152088', '监考报名名称1', '报名缘由1', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(2, 2, 1, '1679880152161', '监考报名名称2', '报名缘由2', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(3, 3, 1, '1679880152149', '监考报名名称3', '报名缘由3', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(4, 4, 1, '1679880152133', '监考报名名称4', '报名缘由4', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(5, 5, 3, '1679880152137', '监考报名名称5', '报名缘由5', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(6, 6, 3, '1679880152166', '监考报名名称6', '报名缘由6', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(7, 7, 2, '1679880152110', '监考报名名称7', '报名缘由7', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(8, 8, 3, '1679880152117', '监考报名名称8', '报名缘由8', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(9, 9, 1, '1679880152099', '监考报名名称9', '报名缘由9', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(10, 10, 3, '1679880152091', '监考报名名称10', '报名缘由10', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(11, 11, 3, '1679880152088', '监考报名名称11', '报名缘由11', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(12, 12, 1, '1679880152151', '监考报名名称12', '报名缘由12', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(13, 13, 3, '1679880152114', '监考报名名称13', '报名缘由13', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(14, 14, 3, '1679880152121', '监考报名名称14', '报名缘由14', '2023-03-27 01:22:32', 1, NULL, NULL, '2023-03-27 01:22:32'),
	(15, 17, 1, '1679882817903', '标题111', '<p>固定的房东说根深蒂固</p>', '2023-03-27 02:07:11', 2, '同意监考报名', '2023-03-27 02:09:50', '2023-03-27 02:07:11');

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yuanbu_types` int DEFAULT NULL COMMENT '院部 Search111 ',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='老师';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `username`, `password`, `laoshi_uuid_number`, `laoshi_name`, `laoshi_phone`, `laoshi_id_number`, `laoshi_photo`, `sex_types`, `yuanbu_types`, `laoshi_email`, `create_time`) VALUES
	(1, '老师1', '123456', '1679880152089', '老师姓名1', '17703786901', '410224199010102001', 'upload/laoshi1.jpg', 2, 1, '1@qq.com', '2023-03-27 01:22:32'),
	(2, '老师2', '123456', '1679880152140', '老师姓名2', '17703786902', '410224199010102002', 'upload/laoshi2.jpg', 1, 2, '2@qq.com', '2023-03-27 01:22:32'),
	(3, '老师3', '123456', '1679880152087', '老师姓名3', '17703786903', '410224199010102003', 'upload/laoshi3.jpg', 1, 1, '3@qq.com', '2023-03-27 01:22:32');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'xyl6ttmjzkan5zi2vs4ya81z6ef009kv', '2023-03-27 01:25:15', '2024-08-12 09:03:18'),
	(2, 1, 'a1', 'xuesheng', '学生', 'u9x3i361etkpunxbz1plyl3cid7sej31', '2023-03-27 01:57:39', '2024-08-12 09:04:33'),
	(3, 7, 'a5', 'xuesheng', '学生', 'ljyl86g4ojevd3k7v1xuag3w3c8p287a', '2023-03-27 02:04:11', '2023-03-27 03:04:11'),
	(4, 1, 'a1', 'laoshi', '老师', 'fhn5knyf3e44789x0eoj16q6j5sd9dw0', '2023-03-27 02:04:53', '2024-08-12 09:04:20');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-27 01:21:30');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `username`, `password`, `xuesheng_uuid_number`, `xuesheng_name`, `xuesheng_phone`, `xuesheng_id_number`, `xuesheng_photo`, `sex_types`, `xuesheng_email`, `create_time`) VALUES
	(1, '学生1', '123456', '1679880152103', '学生姓名1', '17703786901', '410224199010102001', 'upload/xuesheng1.jpg', 1, '1@qq.com', '2023-03-27 01:22:32'),
	(2, '学生2', '123456', '1679880152168', '学生姓名2', '17703786902', '410224199010102002', 'upload/xuesheng2.jpg', 1, '2@qq.com', '2023-03-27 01:22:32'),
	(3, '学生3', '123456', '1679880152125', '学生姓名3', '17703786903', '410224199010102003', 'upload/xuesheng3.jpg', 2, '3@qq.com', '2023-03-27 01:22:32');

DROP TABLE IF EXISTS `xuesheng_kaoshifenpei`;
CREATE TABLE IF NOT EXISTS `xuesheng_kaoshifenpei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kaoshi_id` int DEFAULT NULL COMMENT '考试',
  `banji_id` int DEFAULT NULL COMMENT '教室',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `xuesheng_kaoshifenpei_name` varchar(200) DEFAULT NULL COMMENT '座位号  Search111 ',
  `xuesheng_kaoshifenpei_content` longtext COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='考试分配';

DELETE FROM `xuesheng_kaoshifenpei`;
INSERT INTO `xuesheng_kaoshifenpei` (`id`, `kaoshi_id`, `banji_id`, `xuesheng_id`, `xuesheng_kaoshifenpei_name`, `xuesheng_kaoshifenpei_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 2, '座位号1', '备注1', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(2, 2, 2, 1, '座位号2', '备注2', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(3, 3, 3, 2, '座位号3', '备注3', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(4, 4, 4, 2, '座位号4', '备注4', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(5, 5, 5, 3, '座位号5', '备注5', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(6, 6, 6, 2, '座位号6', '备注6', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(7, 7, 7, 2, '座位号7', '备注7', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(8, 8, 8, 2, '座位号8', '备注8', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(9, 9, 9, 2, '座位号9', '备注9', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(10, 10, 10, 2, '座位号10', '备注10', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(11, 11, 11, 3, '座位号11', '备注11', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(12, 12, 12, 3, '座位号12', '备注12', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(13, 13, 13, 3, '座位号13', '备注13', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(14, 14, 14, 3, '座位号14', '备注14', '2023-03-27 01:22:32', '2023-03-27 01:22:32'),
	(15, 17, 14, 1, '999', '<p>郭德纲的三个</p>', '2023-03-27 02:10:50', '2023-03-27 02:10:50'),
	(16, 17, 14, 2, '88', '<p>郭德纲</p>', '2023-03-27 02:11:10', '2023-03-27 02:11:10');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
