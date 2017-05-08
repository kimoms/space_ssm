/*
Navicat MySQL Data Transfer

Source Server         : space
Source Server Version : 100118
Source Host           : 172.28.82.3:3306
Source Database       : space_sm

Target Server Type    : MYSQL
Target Server Version : 100118
File Encoding         : 65001

Date: 2017-05-08 14:14:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_action
-- ----------------------------
DROP TABLE IF EXISTS `tb_action`;
CREATE TABLE `tb_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(255) NOT NULL,
  `action_ip` varchar(32) DEFAULT NULL,
  `action_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `action_user_fk` (`user_id`),
  CONSTRAINT `action_user_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_action
-- ----------------------------
INSERT INTO `tb_action` VALUES ('1', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 22:27:22', '21');
INSERT INTO `tb_action` VALUES ('2', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 22:35:29', '21');
INSERT INTO `tb_action` VALUES ('3', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-28 22:35:31', '21');
INSERT INTO `tb_action` VALUES ('4', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 22:44:04', '21');
INSERT INTO `tb_action` VALUES ('5', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 23:13:04', '21');
INSERT INTO `tb_action` VALUES ('6', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 23:13:04', '21');
INSERT INTO `tb_action` VALUES ('7', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 23:14:49', '21');
INSERT INTO `tb_action` VALUES ('8', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 23:50:45', '21');
INSERT INTO `tb_action` VALUES ('9', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 23:52:31', '21');
INSERT INTO `tb_action` VALUES ('10', '登录', '0:0:0:0:0:0:0:1', '2017-04-28 23:53:47', '21');
INSERT INTO `tb_action` VALUES ('11', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-28 23:56:06', '21');
INSERT INTO `tb_action` VALUES ('13', '注册', '0:0:0:0:0:0:0:1', '2017-04-29 00:44:47', '27');
INSERT INTO `tb_action` VALUES ('14', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 00:45:01', '27');
INSERT INTO `tb_action` VALUES ('15', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 10:54:35', '27');
INSERT INTO `tb_action` VALUES ('16', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:02:55', '27');
INSERT INTO `tb_action` VALUES ('17', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:03:00', '21');
INSERT INTO `tb_action` VALUES ('18', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:23:08', '21');
INSERT INTO `tb_action` VALUES ('19', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:23:15', '27');
INSERT INTO `tb_action` VALUES ('20', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:38:03', '27');
INSERT INTO `tb_action` VALUES ('21', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:56:22', '21');
INSERT INTO `tb_action` VALUES ('22', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:57:56', '27');
INSERT INTO `tb_action` VALUES ('23', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:58:07', '27');
INSERT INTO `tb_action` VALUES ('24', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 11:58:12', '21');
INSERT INTO `tb_action` VALUES ('25', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-29 12:00:41', '21');
INSERT INTO `tb_action` VALUES ('26', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 12:02:56', '21');
INSERT INTO `tb_action` VALUES ('27', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-29 12:03:00', '21');
INSERT INTO `tb_action` VALUES ('28', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 12:08:46', '21');
INSERT INTO `tb_action` VALUES ('29', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-29 12:09:30', '21');
INSERT INTO `tb_action` VALUES ('30', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 12:31:33', '23');
INSERT INTO `tb_action` VALUES ('31', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 12:34:24', '23');
INSERT INTO `tb_action` VALUES ('32', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 12:37:30', '23');
INSERT INTO `tb_action` VALUES ('33', '注册', '0:0:0:0:0:0:0:1', '2017-04-29 14:34:01', '28');
INSERT INTO `tb_action` VALUES ('34', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-29 14:36:12', '28');
INSERT INTO `tb_action` VALUES ('35', '注册', '0:0:0:0:0:0:0:1', '2017-04-29 14:36:47', '29');
INSERT INTO `tb_action` VALUES ('36', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-29 14:39:02', '29');
INSERT INTO `tb_action` VALUES ('37', '注册', '0:0:0:0:0:0:0:1', '2017-04-29 14:39:24', '30');
INSERT INTO `tb_action` VALUES ('38', '登录', '0:0:0:0:0:0:0:1', '2017-04-29 15:22:56', '21');
INSERT INTO `tb_action` VALUES ('39', '登录', '172.25.5.192', '2017-04-29 23:06:48', '21');
INSERT INTO `tb_action` VALUES ('40', '登录', '0:0:0:0:0:0:0:1', '2017-04-30 15:16:57', '21');
INSERT INTO `tb_action` VALUES ('41', '登录', '0:0:0:0:0:0:0:1', '2017-04-30 15:49:43', '21');
INSERT INTO `tb_action` VALUES ('42', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-30 15:57:14', '21');
INSERT INTO `tb_action` VALUES ('43', '注册', '0:0:0:0:0:0:0:1', '2017-04-30 15:57:51', '31');
INSERT INTO `tb_action` VALUES ('44', '退出登录', '0:0:0:0:0:0:0:1', '2017-04-30 16:00:29', '31');
INSERT INTO `tb_action` VALUES ('45', '登录', '0:0:0:0:0:0:0:1', '2017-04-30 16:00:37', '21');
INSERT INTO `tb_action` VALUES ('46', '登录', '0:0:0:0:0:0:0:1', '2017-04-30 16:42:27', '23');
INSERT INTO `tb_action` VALUES ('47', '登录', '0:0:0:0:0:0:0:1', '2017-05-04 17:00:17', '14');
INSERT INTO `tb_action` VALUES ('48', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-04 17:16:14', '14');
INSERT INTO `tb_action` VALUES ('49', '注册', '0:0:0:0:0:0:0:1', '2017-05-04 17:17:29', '32');
INSERT INTO `tb_action` VALUES ('50', '登录', '0:0:0:0:0:0:0:1', '2017-05-04 22:28:43', '14');
INSERT INTO `tb_action` VALUES ('51', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 14:38:26', '14');
INSERT INTO `tb_action` VALUES ('52', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-05 14:39:41', '14');
INSERT INTO `tb_action` VALUES ('53', '注册', '0:0:0:0:0:0:0:1', '2017-05-05 14:40:42', '33');
INSERT INTO `tb_action` VALUES ('54', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 14:55:04', '33');
INSERT INTO `tb_action` VALUES ('55', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 18:26:38', '14');
INSERT INTO `tb_action` VALUES ('56', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 21:24:47', '14');
INSERT INTO `tb_action` VALUES ('57', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-05 21:42:35', '14');
INSERT INTO `tb_action` VALUES ('58', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 21:42:58', '33');
INSERT INTO `tb_action` VALUES ('59', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 22:00:28', '23');
INSERT INTO `tb_action` VALUES ('60', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 22:08:42', '33');
INSERT INTO `tb_action` VALUES ('61', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 22:15:12', '14');
INSERT INTO `tb_action` VALUES ('62', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 22:17:14', '14');
INSERT INTO `tb_action` VALUES ('63', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 22:24:38', '14');
INSERT INTO `tb_action` VALUES ('64', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 22:32:16', '27');
INSERT INTO `tb_action` VALUES ('65', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 23:11:37', '33');
INSERT INTO `tb_action` VALUES ('66', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-05 23:14:27', '33');
INSERT INTO `tb_action` VALUES ('67', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 23:14:40', '14');
INSERT INTO `tb_action` VALUES ('68', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 23:22:12', '14');
INSERT INTO `tb_action` VALUES ('69', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 23:30:55', '14');
INSERT INTO `tb_action` VALUES ('70', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-05 23:31:10', '14');
INSERT INTO `tb_action` VALUES ('71', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 23:31:47', '33');
INSERT INTO `tb_action` VALUES ('72', '登录', '0:0:0:0:0:0:0:1', '2017-05-05 23:41:25', '14');
INSERT INTO `tb_action` VALUES ('73', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 11:37:02', '21');
INSERT INTO `tb_action` VALUES ('74', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 11:37:52', '21');
INSERT INTO `tb_action` VALUES ('75', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 11:38:13', '21');
INSERT INTO `tb_action` VALUES ('76', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 11:38:41', '21');
INSERT INTO `tb_action` VALUES ('77', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:02:21', '21');
INSERT INTO `tb_action` VALUES ('78', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:03:47', '21');
INSERT INTO `tb_action` VALUES ('79', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:06:32', '21');
INSERT INTO `tb_action` VALUES ('80', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:30:56', '21');
INSERT INTO `tb_action` VALUES ('81', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:31:47', '21');
INSERT INTO `tb_action` VALUES ('82', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:32:36', '21');
INSERT INTO `tb_action` VALUES ('83', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:32:49', '21');
INSERT INTO `tb_action` VALUES ('84', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:38:03', '21');
INSERT INTO `tb_action` VALUES ('85', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 12:41:05', '21');
INSERT INTO `tb_action` VALUES ('86', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:04:31', '21');
INSERT INTO `tb_action` VALUES ('87', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:11:48', '21');
INSERT INTO `tb_action` VALUES ('88', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:12:47', '21');
INSERT INTO `tb_action` VALUES ('89', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:13:33', '33');
INSERT INTO `tb_action` VALUES ('90', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:20:04', '33');
INSERT INTO `tb_action` VALUES ('91', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:21:27', '33');
INSERT INTO `tb_action` VALUES ('92', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:26:20', '33');
INSERT INTO `tb_action` VALUES ('93', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:28:45', '33');
INSERT INTO `tb_action` VALUES ('94', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 13:33:33', '33');
INSERT INTO `tb_action` VALUES ('95', '登录', '172.27.33.9', '2017-05-06 13:36:00', '14');
INSERT INTO `tb_action` VALUES ('96', '退出登录', '172.27.33.9', '2017-05-06 13:36:32', '14');
INSERT INTO `tb_action` VALUES ('97', '登录', '172.27.33.9', '2017-05-06 13:36:56', '33');
INSERT INTO `tb_action` VALUES ('98', '退出登录', '172.27.33.9', '2017-05-06 13:37:16', '33');
INSERT INTO `tb_action` VALUES ('99', '注册', '172.27.33.9', '2017-05-06 13:37:52', '34');
INSERT INTO `tb_action` VALUES ('100', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 14:23:15', '21');
INSERT INTO `tb_action` VALUES ('101', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 14:44:53', '21');
INSERT INTO `tb_action` VALUES ('102', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 15:10:42', '21');
INSERT INTO `tb_action` VALUES ('103', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 15:14:14', '21');
INSERT INTO `tb_action` VALUES ('104', '登录', '172.27.33.9', '2017-05-06 15:21:13', '14');
INSERT INTO `tb_action` VALUES ('105', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 15:27:23', '14');
INSERT INTO `tb_action` VALUES ('106', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 16:55:26', '14');
INSERT INTO `tb_action` VALUES ('107', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 16:55:58', '14');
INSERT INTO `tb_action` VALUES ('108', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 16:56:32', '14');
INSERT INTO `tb_action` VALUES ('109', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 17:24:04', '14');
INSERT INTO `tb_action` VALUES ('110', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 17:24:29', '33');
INSERT INTO `tb_action` VALUES ('111', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 17:24:47', '33');
INSERT INTO `tb_action` VALUES ('112', '注册', '0:0:0:0:0:0:0:1', '2017-05-06 17:25:34', '35');
INSERT INTO `tb_action` VALUES ('113', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 17:28:30', '34');
INSERT INTO `tb_action` VALUES ('114', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 17:29:07', '34');
INSERT INTO `tb_action` VALUES ('115', '注册', '0:0:0:0:0:0:0:1', '2017-05-06 17:30:21', '36');
INSERT INTO `tb_action` VALUES ('116', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 19:07:05', '35');
INSERT INTO `tb_action` VALUES ('117', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 19:19:13', '35');
INSERT INTO `tb_action` VALUES ('118', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-06 19:21:25', '35');
INSERT INTO `tb_action` VALUES ('119', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 19:26:20', '35');
INSERT INTO `tb_action` VALUES ('120', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 19:54:34', '35');
INSERT INTO `tb_action` VALUES ('121', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 19:59:36', '35');
INSERT INTO `tb_action` VALUES ('122', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 20:19:39', '35');
INSERT INTO `tb_action` VALUES ('123', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 20:36:30', '35');
INSERT INTO `tb_action` VALUES ('124', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 20:41:47', '35');
INSERT INTO `tb_action` VALUES ('125', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 20:53:59', '35');
INSERT INTO `tb_action` VALUES ('126', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 20:58:44', '35');
INSERT INTO `tb_action` VALUES ('127', '登录', '0:0:0:0:0:0:0:1', '2017-05-06 21:06:55', '35');
INSERT INTO `tb_action` VALUES ('128', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 11:26:28', '21');
INSERT INTO `tb_action` VALUES ('129', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 11:26:29', '21');
INSERT INTO `tb_action` VALUES ('130', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 11:41:14', '21');
INSERT INTO `tb_action` VALUES ('131', '退出登录', '0:0:0:0:0:0:0:1', '2017-05-07 11:42:08', '21');
INSERT INTO `tb_action` VALUES ('132', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 11:44:02', '21');
INSERT INTO `tb_action` VALUES ('133', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 13:53:44', '21');
INSERT INTO `tb_action` VALUES ('134', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 13:56:17', '21');
INSERT INTO `tb_action` VALUES ('135', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 13:56:25', '21');
INSERT INTO `tb_action` VALUES ('136', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 13:59:43', '21');
INSERT INTO `tb_action` VALUES ('137', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 14:01:04', '21');
INSERT INTO `tb_action` VALUES ('138', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 17:01:44', '21');
INSERT INTO `tb_action` VALUES ('139', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 23:05:17', '21');
INSERT INTO `tb_action` VALUES ('140', '登录', '0:0:0:0:0:0:0:1', '2017-05-07 23:50:06', '21');
INSERT INTO `tb_action` VALUES ('141', '登录', '0:0:0:0:0:0:0:1', '2017-05-08 12:36:00', '21');
INSERT INTO `tb_action` VALUES ('142', '登录', '0:0:0:0:0:0:0:1', '2017-05-08 12:36:00', '21');
INSERT INTO `tb_action` VALUES ('143', '登录', '0:0:0:0:0:0:0:1', '2017-05-08 12:41:34', '21');
INSERT INTO `tb_action` VALUES ('144', '登录', '0:0:0:0:0:0:0:1', '2017-05-08 13:34:16', '21');
INSERT INTO `tb_action` VALUES ('145', '登录', '0:0:0:0:0:0:0:1', '2017-05-08 13:36:47', '21');

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity` (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_title` varchar(255) NOT NULL,
  `act_introduce` text,
  `act_start_time` datetime NOT NULL,
  `act_end_time` datetime NOT NULL,
  `act_img_path` varchar(255) DEFAULT NULL,
  `act_ticket` int(11) NOT NULL DEFAULT '0',
  `act_detail` text,
  `act_add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `room_act_fk` (`room_id`),
  CONSTRAINT `room_act_fk` FOREIGN KEY (`room_id`) REFERENCES `tb_room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES ('8', '文化周末\r\n主页\r\n十年梦想  十年青春', '第500期—第503期   \r\n演出时间：逢周六晚20：00\r\n演出地点： 文化周末剧场（原莞城区文化广场报告厅）', '2017-04-13 23:20:23', '2017-04-13 23:20:26', '/upload/actimage/113.jpg', '100', '<p>离开的方式记录迪斯科解放螺丝钉看见弗雷德萨科罚金数量的看法</p>', '2017-04-13 23:21:22', '6');
INSERT INTO `tb_activity` VALUES ('12', '东莞理工学院-法国国立工艺学院 联合办学', '东莞理工学院-法国国立工艺学院 联合办学', '2017-04-28 17:06:01', '2017-05-10 17:06:09', '/upload/actimage/111.jpg', '100', '<p>活动预告活动预告</p>', '2017-04-22 17:06:51', '6');
INSERT INTO `tb_activity` VALUES ('13', '【建校25周年】杨振宁教研楼奠基', '4月22日上午，杨振宁教研楼奠基仪式在我校松山湖校区图书馆附近的选址处举行，我校名誉校长、中科院院士、诺贝尔物理学奖得主杨振宁先生及其夫人翁帆女士，校领导成洪波、李琳、杨敏林以及师生代表参加了奠基仪式。', '2017-05-30 20:29:41', '2017-06-01 20:29:47', '/upload/actimage/112.jpg', '10', '</p>4月22日上午，杨振宁教研楼奠基仪式在我校松山湖校区图书馆附近的选址处举行，我校名誉校长、中科院院士、诺贝尔物理学奖得主杨振宁先生及其夫人翁帆女士，校领导成洪波、李琳、杨敏林以及师生代表参加了奠基仪式。</p>', '2017-04-27 20:30:52', '6');

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', 'admin@163.com', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `tb_admin` VALUES ('2', 'zbw', 'zbw@163.com', 'E10ADC3949BA59ABBE56E057F20F883E');

-- ----------------------------
-- Table structure for tb_application
-- ----------------------------
DROP TABLE IF EXISTS `tb_application`;
CREATE TABLE `tb_application` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_info` text NOT NULL,
  `app_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `app_start_time` datetime NOT NULL,
  `app_end_time` datetime NOT NULL,
  `app_status` tinyint(1) NOT NULL DEFAULT '1',
  `app_is_dealed` tinyint(1) NOT NULL DEFAULT '1',
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`app_id`),
  KEY `room_app_fk` (`room_id`),
  KEY `user_app_fk` (`user_id`),
  CONSTRAINT `room_app_fk` FOREIGN KEY (`room_id`) REFERENCES `tb_room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_app_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_application
-- ----------------------------
INSERT INTO `tb_application` VALUES ('4', '啊啊啊啊啊啊啊啊啊啊', '2017-04-21 20:51:16', '2017-04-03 04:03:00', '2017-04-28 04:03:00', '1', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('5', '赖键锋，申请课室', '2017-04-21 20:54:28', '2017-04-10 04:34:00', '2017-04-26 04:35:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('6', '赖键锋，申请课室。。。。。呃呃呃', '2017-04-21 20:55:43', '2017-04-27 04:34:00', '2017-04-30 04:03:00', '0', '1', '6', '21');
INSERT INTO `tb_application` VALUES ('7', '李开复打扫家里副科级阿萨抵抗力', '2017-04-21 22:09:20', '2017-04-12 04:03:00', '2017-04-25 04:03:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('8', '范德萨of海军司令打开', '2017-04-21 22:10:56', '2017-04-19 06:53:00', '2017-04-24 04:03:00', '1', '1', '6', '21');
INSERT INTO `tb_application` VALUES ('9', '弗萨法撒', '2017-04-21 22:16:25', '2017-04-11 04:02:00', '2017-04-12 04:03:00', '0', '1', '6', '21');
INSERT INTO `tb_application` VALUES ('10', '弗萨法撒', '2017-04-21 22:17:00', '2017-04-11 04:02:00', '2017-04-12 04:03:00', '0', '1', '6', '21');
INSERT INTO `tb_application` VALUES ('12', '发大水三大方法', '2017-04-21 23:02:21', '2017-04-11 04:03:00', '2017-04-18 05:04:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('13', '举行班级活动', '2017-04-23 18:25:58', '2017-04-28 10:30:00', '2017-04-29 12:50:00', '1', '1', '6', '23');
INSERT INTO `tb_application` VALUES ('14', '休息', '2017-04-23 18:31:59', '2017-04-25 12:00:00', '2017-04-25 13:00:00', '1', '1', '10', '23');
INSERT INTO `tb_application` VALUES ('15', '啊啊啊啊啊', '2017-04-24 16:31:00', '2017-04-12 11:11:00', '2017-04-26 12:12:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('16', '软件工程二班开班会', '2017-04-28 17:43:00', '2017-04-28 03:30:00', '2017-04-28 10:30:00', '0', '1', '10', '14');
INSERT INTO `tb_application` VALUES ('17', 'aaaaaaa', '2017-04-28 22:44:52', '2017-04-19 03:03:00', '2017-04-12 03:03:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('18', '啊啊啊啊啊', '2017-04-28 23:13:35', '2017-04-06 03:04:00', '2017-04-10 05:06:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('19', '啊啊啊啊啊啊啊啊啊', '2017-04-28 23:15:11', '2017-04-02 04:03:00', '2017-04-25 04:05:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('20', '啊啊啊啊啊啊啊啊啊', '2017-04-28 23:16:23', '2017-04-02 04:03:00', '2017-04-02 09:09:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('21', '啊啊啊啊啊啊啊啊啊', '2017-04-28 23:18:48', '2017-04-05 04:03:00', '2017-04-04 04:03:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('22', '啊啊啊啊啊啊啊', '2017-04-28 23:25:54', '2017-04-18 05:04:00', '2017-04-09 05:04:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('23', '啊啊啊啊啊啊啊', '2017-04-28 23:51:02', '2017-04-12 04:03:00', '2017-04-14 05:04:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('24', '啊啊啊啊啊啊啊', '2017-04-28 23:51:18', '2017-03-07 04:03:00', '2017-03-23 05:04:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('25', '啊啊啊啊啊啊啊啊啊', '2017-04-28 23:54:40', '2017-05-02 04:03:00', '2017-05-04 04:03:00', '0', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('26', '啊啊啊啊啊啊', '2017-04-29 11:08:35', '2017-05-03 04:03:00', '2017-05-04 04:03:00', '0', '1', '19', '21');
INSERT INTO `tb_application` VALUES ('27', '啊啊啊啊啊啊', '2017-04-29 11:09:31', '2017-05-18 04:03:00', '2017-05-19 04:03:00', '1', '1', '19', '21');
INSERT INTO `tb_application` VALUES ('28', '啊啊啊啊啊啊啊啊啊啊啊', '2017-04-29 11:11:14', '2017-06-29 04:03:00', '2017-06-30 04:03:00', '0', '1', '16', '21');
INSERT INTO `tb_application` VALUES ('29', '啊啊啊啊啊啊啊', '2017-04-29 11:12:13', '2017-06-28 04:03:00', '2017-06-30 03:04:00', '0', '1', '16', '21');
INSERT INTO `tb_application` VALUES ('30', 'aaaaaaaa', '2017-04-29 11:59:06', '2017-06-07 04:03:00', '2017-06-08 04:03:00', '1', '1', '24', '21');
INSERT INTO `tb_application` VALUES ('31', '测试用', '2017-04-29 12:08:49', '2017-04-30 10:30:00', '2017-04-30 22:30:00', '0', '1', '24', '23');
INSERT INTO `tb_application` VALUES ('32', '使用', '2017-04-29 12:17:09', '2017-04-30 12:30:00', '2017-04-30 23:59:00', '0', '1', '24', '23');
INSERT INTO `tb_application` VALUES ('33', '无', '2017-04-29 12:32:22', '2017-04-30 10:30:00', '2017-04-30 12:30:00', '0', '1', '24', '23');
INSERT INTO `tb_application` VALUES ('34', '无', '2017-04-29 12:38:07', '2017-04-30 10:30:00', '2017-04-30 12:30:00', '1', '1', '21', '23');
INSERT INTO `tb_application` VALUES ('35', '无', '2017-04-29 12:38:21', '2017-04-30 10:30:00', '2017-04-30 12:30:00', '0', '1', '21', '23');
INSERT INTO `tb_application` VALUES ('36', '无', '2017-04-29 12:39:43', '2017-04-30 10:30:00', '2017-04-30 12:30:00', '0', '1', '21', '23');
INSERT INTO `tb_application` VALUES ('37', '无', '2017-04-29 12:40:08', '2017-05-01 10:30:00', '2017-05-01 12:30:00', '1', '1', '21', '23');
INSERT INTO `tb_application` VALUES ('38', '12：00-22:00', '2017-04-29 12:41:38', '2017-05-01 12:00:00', '2017-05-01 22:00:00', '0', '1', '21', '23');
INSERT INTO `tb_application` VALUES ('39', '12：50-22:00', '2017-04-29 12:48:23', '2017-04-29 12:50:00', '2017-04-29 22:00:00', '0', '1', '24', '23');
INSERT INTO `tb_application` VALUES ('40', '12：50-22:00', '2017-04-29 12:48:41', '2017-04-29 12:55:00', '2017-04-29 22:00:00', '1', '1', '24', '23');
INSERT INTO `tb_application` VALUES ('41', '毕业指导', '2017-05-04 17:08:28', '2017-05-04 18:00:00', '2017-05-05 20:00:00', '1', '1', '6', '14');
INSERT INTO `tb_application` VALUES ('43', '啊啊啊啊啊啊', '2017-05-06 12:04:11', '2017-05-06 15:43:00', '2017-06-29 05:04:00', '0', '0', '6', '21');
INSERT INTO `tb_application` VALUES ('44', '啊啊啊啊啊啊啊啊', '2017-05-06 12:07:01', '2017-05-06 23:56:00', '2017-06-22 04:05:00', '0', '0', '6', '21');
INSERT INTO `tb_application` VALUES ('45', '啊啊啊啊啊啊', '2017-05-06 12:31:13', '2017-05-07 04:03:00', '2017-05-30 04:03:00', '0', '0', '10', '21');
INSERT INTO `tb_application` VALUES ('46', '啊啊啊啊啊啊', '2017-05-06 12:31:22', '2017-05-07 04:03:00', '2017-05-10 04:03:00', '1', '1', '10', '21');
INSERT INTO `tb_application` VALUES ('47', 'eeeeeee', '2017-05-06 12:38:45', '2017-05-11 03:04:00', '2017-05-16 04:03:00', '1', '1', '6', '21');
INSERT INTO `tb_application` VALUES ('48', '啊啊啊啊', '2017-05-06 12:40:26', '2017-05-07 04:03:00', '2017-05-10 04:03:00', '0', '0', '10', '21');
INSERT INTO `tb_application` VALUES ('49', '啊啊啊啊', '2017-05-06 12:40:35', '2017-05-07 04:03:00', '2017-05-10 04:03:00', '0', '0', '10', '21');
INSERT INTO `tb_application` VALUES ('50', '啊啊啊啊', '2017-05-06 12:40:47', '2017-05-07 04:03:00', '2017-05-10 04:03:00', '0', '0', '10', '21');
INSERT INTO `tb_application` VALUES ('51', 'aaaaaaa', '2017-05-06 13:04:53', '2017-05-09 04:03:00', '2017-05-10 04:03:00', '0', '0', '10', '21');
INSERT INTO `tb_application` VALUES ('52', 'aaaaaaaaaa', '2017-05-08 12:38:27', '2017-05-11 04:03:00', '2017-05-13 03:44:00', '0', '0', '6', '21');

-- ----------------------------
-- Table structure for tb_authentication
-- ----------------------------
DROP TABLE IF EXISTS `tb_authentication`;
CREATE TABLE `tb_authentication` (
  `inf_id` int(11) NOT NULL AUTO_INCREMENT,
  `inf_type` tinyint(4) NOT NULL,
  `inf_name` varchar(50) NOT NULL,
  `inf_introduce` text,
  `inf_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `inf_status` tinyint(1) NOT NULL DEFAULT '1',
  `inf_is_dealed` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`inf_id`),
  KEY `user_auth_fk` (`user_id`),
  CONSTRAINT `user_auth_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_authentication
-- ----------------------------
INSERT INTO `tb_authentication` VALUES ('30', '1', '郑博文', '计算机学院软件二班', '2017-04-27 20:10:22', '14', '1', '1');
INSERT INTO `tb_authentication` VALUES ('31', '1', 'tjw', '班级认证', '2017-04-28 17:55:05', '24', '1', '1');
INSERT INTO `tb_authentication` VALUES ('32', '2', '刘教授', '我是教师', '2017-04-28 18:26:36', '25', '0', '1');
INSERT INTO `tb_authentication` VALUES ('38', '2', 'ssss', '少时诵诗书', '2017-04-29 14:40:28', '30', '1', '1');
INSERT INTO `tb_authentication` VALUES ('39', '1', '2013级软件工程2班', '2013级软件工程2班', '2017-05-05 22:07:39', '23', '0', '0');
INSERT INTO `tb_authentication` VALUES ('40', '3', '啊啊啊啊啊啊', '啊啊啊啊啊啊啊啊啊', '2017-05-05 22:36:56', '27', '1', '1');
INSERT INTO `tb_authentication` VALUES ('41', '2', '陶嘉伟', '但刚刚复苏个地方', '2017-05-06 13:15:37', '33', '0', '0');
INSERT INTO `tb_authentication` VALUES ('45', '1', '死神少女永恒不变', '和急乎乎远高于Uu', '2017-05-06 13:48:23', '34', '0', '0');
INSERT INTO `tb_authentication` VALUES ('46', '2', '汪汪汪', '汪汪汪\n汪汪汪', '2017-05-07 23:05:59', '21', '1', '1');

-- ----------------------------
-- Table structure for tb_barrage
-- ----------------------------
DROP TABLE IF EXISTS `tb_barrage`;
CREATE TABLE `tb_barrage` (
  `barr_id` int(11) NOT NULL AUTO_INCREMENT,
  `barr_info` varchar(255) NOT NULL,
  `barr_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `act_id` int(11) NOT NULL,
  PRIMARY KEY (`barr_id`),
  KEY `barr_act_fk` (`act_id`),
  KEY `barr_user_fk` (`user_id`),
  CONSTRAINT `barr_act_fk` FOREIGN KEY (`act_id`) REFERENCES `tb_activity` (`act_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barr_user_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_barrage
-- ----------------------------
INSERT INTO `tb_barrage` VALUES ('80', '啊啊啊啊啊啊啊', '2017-04-23 13:35:08', '21', '12');
INSERT INTO `tb_barrage` VALUES ('81', '啊啊啊啊啊啊', '2017-04-23 13:36:18', '21', '12');
INSERT INTO `tb_barrage` VALUES ('82', '反反复复吩咐', '2017-04-23 13:36:21', '21', '12');
INSERT INTO `tb_barrage` VALUES ('83', '滴答滴答滴答滴答滴答滴答滴答滴答滴答', '2017-04-23 13:36:23', '21', '12');
INSERT INTO `tb_barrage` VALUES ('84', '滴答滴答滴答滴答', '2017-04-23 13:36:25', '21', '12');
INSERT INTO `tb_barrage` VALUES ('85', '滴答滴答滴答滴答滴答滴答滴答的', '2017-04-23 13:36:38', '21', '12');
INSERT INTO `tb_barrage` VALUES ('86', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '2017-04-23 13:36:40', '21', '12');
INSERT INTO `tb_barrage` VALUES ('87', '呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜', '2017-04-23 13:36:44', '21', '12');
INSERT INTO `tb_barrage` VALUES ('88', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '2017-04-23 13:36:48', '21', '12');
INSERT INTO `tb_barrage` VALUES ('89', '啊啊啊啊啊啊啊啊啊啊啊', '2017-04-23 13:36:50', '21', '12');
INSERT INTO `tb_barrage` VALUES ('90', '啊啊啊啊啊啊啊', '2017-04-23 13:36:53', '21', '12');
INSERT INTO `tb_barrage` VALUES ('91', '啊啊啊啊啊啊啊啊啊啊啊', '2017-04-23 13:37:12', '21', '12');
INSERT INTO `tb_barrage` VALUES ('92', 'hello', '2017-04-23 13:37:19', '21', '12');
INSERT INTO `tb_barrage` VALUES ('93', '你是谁', '2017-04-23 13:37:24', '21', '12');
INSERT INTO `tb_barrage` VALUES ('94', 'whoau', '2017-04-23 13:37:31', '21', '12');
INSERT INTO `tb_barrage` VALUES ('95', 'ffffffff', '2017-04-23 14:13:11', '21', '12');
INSERT INTO `tb_barrage` VALUES ('96', '晕晕晕晕晕晕', '2017-04-23 14:19:13', '21', '12');
INSERT INTO `tb_barrage` VALUES ('97', '隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约', '2017-04-23 14:19:17', '21', '12');
INSERT INTO `tb_barrage` VALUES ('98', '0000000000000000000000', '2017-04-23 14:19:50', '21', '12');
INSERT INTO `tb_barrage` VALUES ('99', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '2017-04-23 14:26:43', '21', '12');
INSERT INTO `tb_barrage` VALUES ('100', '停停停停停停停停停', '2017-04-23 14:29:57', '21', '12');
INSERT INTO `tb_barrage` VALUES ('101', '6666666666666', '2017-04-23 14:31:42', '21', '12');
INSERT INTO `tb_barrage` VALUES ('102', '7777777', '2017-04-23 14:31:57', '21', '12');
INSERT INTO `tb_barrage` VALUES ('103', '8888888888888888', '2017-04-23 14:32:04', '21', '12');
INSERT INTO `tb_barrage` VALUES ('104', '噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢', '2017-04-23 14:32:38', '21', '12');
INSERT INTO `tb_barrage` VALUES ('105', '222222222222222', '2017-04-23 14:33:41', '21', '12');
INSERT INTO `tb_barrage` VALUES ('106', '555555555555', '2017-04-23 14:34:23', '2', '12');
INSERT INTO `tb_barrage` VALUES ('107', '吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱', '2017-04-23 14:38:06', '9', '12');
INSERT INTO `tb_barrage` VALUES ('108', '笑嘻嘻笑嘻嘻笑嘻嘻笑嘻嘻', '2017-04-23 14:39:32', '2', '12');
INSERT INTO `tb_barrage` VALUES ('109', '呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃鹅鹅鹅', '2017-04-23 14:43:11', '21', '12');
INSERT INTO `tb_barrage` VALUES ('110', '9999999999', '2017-04-23 14:43:55', '10', '12');
INSERT INTO `tb_barrage` VALUES ('111', '噢噢噢噢噢噢噢噢', '2017-04-23 14:53:25', '21', '12');
INSERT INTO `tb_barrage` VALUES ('112', '喀喀喀', '2017-04-23 22:51:31', '21', '12');
INSERT INTO `tb_barrage` VALUES ('113', '隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约', '2017-04-23 22:51:47', '21', '12');
INSERT INTO `tb_barrage` VALUES ('114', '噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢噢', '2017-04-23 22:51:53', '21', '12');
INSERT INTO `tb_barrage` VALUES ('115', '噩噩噩噩噩噩噩噩', '2017-04-23 22:51:59', '21', '12');
INSERT INTO `tb_barrage` VALUES ('116', '呜呜呜呜呜呜呜呜呜呜呜呜呜', '2017-04-23 22:52:04', '21', '12');
INSERT INTO `tb_barrage` VALUES ('117', '晕晕晕晕晕晕晕', '2017-04-23 22:52:07', '21', '12');
INSERT INTO `tb_barrage` VALUES ('118', '呜呜呜呜呜呜呜呜呜呜', '2017-04-23 22:52:09', '21', '12');
INSERT INTO `tb_barrage` VALUES ('119', '晕晕晕晕晕晕', '2017-04-23 22:52:12', '21', '12');
INSERT INTO `tb_barrage` VALUES ('120', '弹幕弹幕弹幕', '2017-04-23 22:52:42', '21', '12');
INSERT INTO `tb_barrage` VALUES ('121', '弹幕', '2017-04-23 22:53:11', '21', '12');
INSERT INTO `tb_barrage` VALUES ('122', '立刻解放飒沓大大大大大大大大', '2017-04-23 23:01:32', '21', '12');
INSERT INTO `tb_barrage` VALUES ('123', '拉夫桑的空间看看就开机开机开机开机开机开机', '2017-04-23 23:01:37', '21', '12');
INSERT INTO `tb_barrage` VALUES ('124', '我ijo撒饿大幅度的奋斗奋斗奋斗奋斗奋斗的', '2017-04-23 23:01:44', '21', '12');
INSERT INTO `tb_barrage` VALUES ('125', 'xmy', '2017-04-23 23:12:58', '23', '12');
INSERT INTO `tb_barrage` VALUES ('126', '凡达斯卡咖啡', '2017-04-23 23:43:22', '21', '12');
INSERT INTO `tb_barrage` VALUES ('127', '房贷发放房', '2017-04-23 23:45:02', '21', '12');
INSERT INTO `tb_barrage` VALUES ('128', '的撒娇分开了', '2017-04-24 16:22:57', '21', '12');
INSERT INTO `tb_barrage` VALUES ('129', '啊啊啊啊啊啊啊', '2017-04-24 16:23:02', '21', '12');
INSERT INTO `tb_barrage` VALUES ('130', '哈哈哈哈', '2017-04-25 16:45:17', '14', '12');
INSERT INTO `tb_barrage` VALUES ('131', '好厉害', '2017-04-28 13:43:58', '14', '13');
INSERT INTO `tb_barrage` VALUES ('132', '母校牛逼呀', '2017-04-28 13:44:13', '14', '13');
INSERT INTO `tb_barrage` VALUES ('133', 'dsdvgdfd', '2017-04-28 18:13:54', '21', '12');
INSERT INTO `tb_barrage` VALUES ('134', 'aaa', '2017-04-29 23:07:45', '21', '13');
INSERT INTO `tb_barrage` VALUES ('135', 'dddd', '2017-04-30 15:30:29', '21', '12');
INSERT INTO `tb_barrage` VALUES ('136', '哈哈哈哈哈哈', '2017-05-04 17:12:42', '14', '13');
INSERT INTO `tb_barrage` VALUES ('137', '的广泛地', '2017-05-04 17:24:18', '32', '12');
INSERT INTO `tb_barrage` VALUES ('138', '后果发挥工会', '2017-05-06 14:44:59', '21', '12');
INSERT INTO `tb_barrage` VALUES ('139', '款手机卡', '2017-05-06 14:52:45', '21', '12');
INSERT INTO `tb_barrage` VALUES ('140', '弹幕', '2017-05-07 23:50:11', '21', '13');
INSERT INTO `tb_barrage` VALUES ('141', '弹幕', '2017-05-07 23:50:16', '21', '13');
INSERT INTO `tb_barrage` VALUES ('142', '弹幕', '2017-05-07 23:50:29', '21', '13');
INSERT INTO `tb_barrage` VALUES ('143', '弹幕2', '2017-05-07 23:50:36', '21', '13');

-- ----------------------------
-- Table structure for tb_building
-- ----------------------------
DROP TABLE IF EXISTS `tb_building`;
CREATE TABLE `tb_building` (
  `bui_id` int(11) NOT NULL AUTO_INCREMENT,
  `bui_name` varchar(50) NOT NULL,
  `bui_introduce` text,
  `bui_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`bui_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_building
-- ----------------------------
INSERT INTO `tb_building` VALUES ('5', '6E', '教学楼', '0');
INSERT INTO `tb_building` VALUES ('6', '大礼堂', '大礼堂', '2');
INSERT INTO `tb_building` VALUES ('7', '学术报告厅', '学术报告厅', '2');
INSERT INTO `tb_building` VALUES ('9', '七栋', '计算机学院', '0');
INSERT INTO `tb_building` VALUES ('13', '8栋', '电子工程', '1');
INSERT INTO `tb_building` VALUES ('14', '9栋', '计算机学院', '1');
INSERT INTO `tb_building` VALUES ('16', '4栋', '化环', '1');
INSERT INTO `tb_building` VALUES ('17', '5栋', '机械', '1');
INSERT INTO `tb_building` VALUES ('18', '10栋', '经济学院', '0');
INSERT INTO `tb_building` VALUES ('19', '11栋', '文学院', '0');
INSERT INTO `tb_building` VALUES ('20', '12栋', '师范学院', '0');
INSERT INTO `tb_building` VALUES ('21', '13栋', '电子学院', '0');
INSERT INTO `tb_building` VALUES ('22', '14栋', '外语学院', '0');
INSERT INTO `tb_building` VALUES ('23', '7B', 'çµå­æå­¦æ¥¼', '0');
INSERT INTO `tb_building` VALUES ('24', '9B', '阿萨德', '0');
INSERT INTO `tb_building` VALUES ('25', '测试', '测试', '2');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` tinytext NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `act_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comm_act_fk` (`act_id`),
  KEY `comm_user_fk` (`user_id`),
  CONSTRAINT `comm_act_fk` FOREIGN KEY (`act_id`) REFERENCES `tb_activity` (`act_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comm_user_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('16', '参加活动', '2017-04-22 17:11:59', '12', '21');
INSERT INTO `tb_comment` VALUES ('18', '劳动法快速减肥卢卡斯的', '2017-04-22 18:02:32', '12', '21');
INSERT INTO `tb_comment` VALUES ('19', '哈哈哈哈哈哈哈哈哈哈', '2017-04-22 18:02:40', '12', '21');
INSERT INTO `tb_comment` VALUES ('22', '哈哈哈哈哈哈哈哈哈', '2017-04-27 20:44:03', '8', '21');
INSERT INTO `tb_comment` VALUES ('23', '呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃鹅鹅鹅', '2017-04-27 20:46:59', '8', '21');
INSERT INTO `tb_comment` VALUES ('24', '呜呜呜呜呜呜呜呜呜呜', '2017-04-27 20:47:28', '8', '21');
INSERT INTO `tb_comment` VALUES ('25', '停停停停停停停停停停', '2017-04-27 20:47:38', '8', '21');
INSERT INTO `tb_comment` VALUES ('26', '希望母校越办越好', '2017-04-28 13:44:47', '13', '14');
INSERT INTO `tb_comment` VALUES ('27', '我是一个评论', '2017-04-28 18:06:33', '8', '24');
INSERT INTO `tb_comment` VALUES ('28', '停停停停停停停停', '2017-04-28 18:28:14', '8', '21');
INSERT INTO `tb_comment` VALUES ('29', 'aaa', '2017-04-29 23:07:40', '13', '21');
INSERT INTO `tb_comment` VALUES ('30', '杨爷爷来了', '2017-05-04 17:13:12', '13', '14');
INSERT INTO `tb_comment` VALUES ('31', '不错不错，我喜欢', '2017-05-04 17:13:44', '13', '14');
INSERT INTO `tb_comment` VALUES ('32', '高建来了', '2017-05-04 17:13:59', '13', '14');
INSERT INTO `tb_comment` VALUES ('33', '水电费第三个', '2017-05-04 17:23:57', '12', '32');
INSERT INTO `tb_comment` VALUES ('34', '哈哈哈H', '2017-05-05 15:07:26', '8', '33');
INSERT INTO `tb_comment` VALUES ('35', 'hgfh', '2017-05-06 14:14:56', '12', '33');
INSERT INTO `tb_comment` VALUES ('36', '的萨芬', '2017-05-06 14:23:20', '12', '21');
INSERT INTO `tb_comment` VALUES ('37', '这个活动很好啊', '2017-05-06 17:07:21', '12', '14');
INSERT INTO `tb_comment` VALUES ('38', '这个活动很好啊', '2017-05-06 17:08:17', '12', '14');
INSERT INTO `tb_comment` VALUES ('39', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:17', '12', '14');
INSERT INTO `tb_comment` VALUES ('40', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:17', '12', '14');
INSERT INTO `tb_comment` VALUES ('41', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:17', '12', '14');
INSERT INTO `tb_comment` VALUES ('42', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:17', '12', '14');
INSERT INTO `tb_comment` VALUES ('43', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:17', '12', '14');
INSERT INTO `tb_comment` VALUES ('44', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:18', '12', '14');
INSERT INTO `tb_comment` VALUES ('45', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:18', '12', '14');
INSERT INTO `tb_comment` VALUES ('46', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:18', '12', '14');
INSERT INTO `tb_comment` VALUES ('47', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:18', '12', '14');
INSERT INTO `tb_comment` VALUES ('48', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:18', '12', '14');
INSERT INTO `tb_comment` VALUES ('49', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:18', '12', '14');
INSERT INTO `tb_comment` VALUES ('50', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:18', '12', '14');
INSERT INTO `tb_comment` VALUES ('51', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:19', '12', '14');
INSERT INTO `tb_comment` VALUES ('52', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:19', '12', '14');
INSERT INTO `tb_comment` VALUES ('53', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:19', '12', '14');
INSERT INTO `tb_comment` VALUES ('54', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:19', '12', '14');
INSERT INTO `tb_comment` VALUES ('55', '这个活动我喜欢，你们怎么看', '2017-05-06 17:16:19', '12', '14');

-- ----------------------------
-- Table structure for tb_comminform
-- ----------------------------
DROP TABLE IF EXISTS `tb_comminform`;
CREATE TABLE `tb_comminform` (
  `comminform_id` int(11) NOT NULL AUTO_INCREMENT,
  `comminform_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_readed` tinyint(4) NOT NULL,
  PRIMARY KEY (`comminform_id`),
  KEY `comminf_comm_fk` (`comment_id`),
  KEY `comminf_user_fk` (`user_id`),
  CONSTRAINT `comminf_comm_fk` FOREIGN KEY (`comment_id`) REFERENCES `tb_comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comminf_user_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comminform
-- ----------------------------
INSERT INTO `tb_comminform` VALUES ('1', '2017-04-27 22:12:27', '19', '21', '1');
INSERT INTO `tb_comminform` VALUES ('2', '2017-04-28 11:39:20', '16', '21', '1');
INSERT INTO `tb_comminform` VALUES ('3', '2017-04-28 18:15:39', '16', '21', '1');
INSERT INTO `tb_comminform` VALUES ('4', '2017-04-29 23:18:40', '18', '21', '1');

-- ----------------------------
-- Table structure for tb_image
-- ----------------------------
DROP TABLE IF EXISTS `tb_image`;
CREATE TABLE `tb_image` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_path` varchar(255) NOT NULL,
  `inf_id` int(11) NOT NULL,
  PRIMARY KEY (`img_id`),
  KEY `inf_img_fk` (`inf_id`),
  CONSTRAINT `inf_img_fk` FOREIGN KEY (`inf_id`) REFERENCES `tb_authentication` (`inf_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_image
-- ----------------------------
INSERT INTO `tb_image` VALUES ('25', '/WEB-INF/authImage/20170429144026243829.jpg', '38');
INSERT INTO `tb_image` VALUES ('26', '/WEB-INF/authImage/20170505220729452584.jpg', '39');
INSERT INTO `tb_image` VALUES ('27', '/WEB-INF/authImage/20170505220729462059.jpg', '39');
INSERT INTO `tb_image` VALUES ('28', '/WEB-INF/authImage/20170505223654319449.png', '40');
INSERT INTO `tb_image` VALUES ('29', '/WEB-INF/authImage/20170505223654319469.png', '40');
INSERT INTO `tb_image` VALUES ('30', '/WEB-INF/authImage/20170506131535632201.png', '41');
INSERT INTO `tb_image` VALUES ('35', '/WEB-INF/authImage/20170506134746639311.jpg', '45');
INSERT INTO `tb_image` VALUES ('36', '/WEB-INF/authImage/20170506134746664669.jpg', '45');
INSERT INTO `tb_image` VALUES ('37', '/WEB-INF/authImage/20170507230558474220.png', '46');
INSERT INTO `tb_image` VALUES ('38', '/WEB-INF/authImage/20170507230558478492.jpg', '46');
INSERT INTO `tb_image` VALUES ('39', '/WEB-INF/authImage/20170507230558475082.png', '46');

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(255) NOT NULL,
  `notice_content` text NOT NULL,
  `notice_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
INSERT INTO `tb_notice` VALUES ('6', '关于做好2017届毕业生资格审核的通知', '毕业生资格审核工作关系到每一个毕业生的切身利益，要求各学院务必对该项工作给予高度重视、精心组织、周密安排、认真落实，严把质量关，维护学校良好声誉，确保本届毕业生资格审核及颁证工作的圆满完成，为做好2017届毕业资格、学士学位授予资格审核工作，现将有关事项通知如', '2017-03-31 21:07:16');
INSERT INTO `tb_notice` VALUES ('7', '关于2017届毕业生重修考试的通知', '2017届毕业生重修考试针对2017届毕业生而设，本考试与2016-2017学年第一学期初修课程重修考试及结业复读生回校考试同步进行。如有毕业重修科目和初修课程未通过科目相同者，本轮考试只安排一场', '2017-03-31 21:08:29');
INSERT INTO `tb_notice` VALUES ('8', '关于2017年清明节放假安排的通知', '各教学单位：\r\n根据学校办公室相关通知精神，2017年清明节期间教学安排通知如下：4月2日（星期日）至4月4日（星期二）放假调休，共3天。4月1日 （星期六）补4月3日（星期一）的课程。请各教学单位教务员通知任课教师及相关学生班级。\r\n特此通知', '2017-03-31 21:09:17');
INSERT INTO `tb_notice` VALUES ('9', '尔雅通识网络公选课开课学习的通知', '打开该网站，点右上角的“登录”，输入自己的学号，初始密码为123456（登录后请修改字母加数字的密码，保管好自己的账号）。手机学习可以通过扫登录页面二维码下载APP进行', '2017-03-31 21:09:46');
INSERT INTO `tb_notice` VALUES ('10', '普通话水平测试的通知', '为提高报名工作效率，避免现场拥挤，请各班班干部组织同学，以班级为单位报名，每个班级只受理一份报名资料（以提交的第一份报名资料为准）；如个别班级只有1人报名，可自行联系其他班级，将报名资料加入其他班级，一起提交。逾期不受理报名。', '2017-03-31 21:10:35');
INSERT INTO `tb_notice` VALUES ('11', '全校公选课网上选课的通知', '在以上时间内，学生可进行网上公选课的选课、改选、补选和退选,完成操作后请再重新登录查看结果。选课系统关闭后，选课名单最终确定，任课教师和教务处不再接受学生关于公选课补选或退选的申请。', '2017-03-31 21:11:02');
INSERT INTO `tb_notice` VALUES ('12', '复读生毕业资格审核的通知', '结业复读生指未能如期毕业的学生经返校复读课程，在达到毕业或学位条件后可申请毕业资格和学士学位资格的审核，包括2012级结业生、2011级办理了延长学习年限的结业生。为做好2016-2017学年第二学期结业复读生毕业资格审核工作，指导学生正确申请毕业资格审核', '2017-03-31 21:11:33');
INSERT INTO `tb_notice` VALUES ('13', '期中教学检查的通知', '各单位对检查中发现的问题，分类分层次处理。属于本单位内部的问题，在单位内部进行协调和解决；不属于本单位管理范畴的，或单位内部难以协调解决的问题，在总结报告中向学校反映。教务处将与有关部门沟通协调，同时将问题解决情况以一定的方式反馈给相关院系', '2017-03-31 21:13:27');
INSERT INTO `tb_notice` VALUES ('14', '关于进一步做好综合性、设计性实验项目认定工作的通知', '综合性实验是指实验内容涉及本课程的综合知识或本课程知识相关的实验；设计性实验是指给定实验目的要求和实验条件，由学生自行设计实验方案并加以实现的实验。有综合性、设计性实验项目的课程比例是衡量实验教学效果和水平的重要指标，直接反映了实验教学改革成果。在评估指标中，含综合性、设计性实验项目的课程要在开出的所有实验课程中的比例必须达到80%以上。', '2017-03-31 21:20:33');

-- ----------------------------
-- Table structure for tb_profile
-- ----------------------------
DROP TABLE IF EXISTS `tb_profile`;
CREATE TABLE `tb_profile` (
  `pf_id` int(11) NOT NULL AUTO_INCREMENT,
  `pf_phone` varchar(11) DEFAULT NULL,
  `pf_birth` date DEFAULT NULL,
  `pf_avatar` varchar(255) DEFAULT NULL,
  `pf_qq` varchar(50) DEFAULT NULL,
  `pf_sex` char(1) DEFAULT NULL,
  `pf_realname` varchar(30) DEFAULT NULL,
  `pf_is_active` tinyint(1) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`pf_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_pf_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_profile
-- ----------------------------
INSERT INTO `tb_profile` VALUES ('1', null, null, '/upload/image/default1.jpg', null, null, null, null, '15');
INSERT INTO `tb_profile` VALUES ('2', null, null, '/upload/image/default1.jpg', null, null, null, '0', '1');
INSERT INTO `tb_profile` VALUES ('3', null, null, '/upload/image/default1.jpg', null, null, null, '0', '2');
INSERT INTO `tb_profile` VALUES ('4', null, null, '/upload/image/default1.jpg', null, null, null, '0', '9');
INSERT INTO `tb_profile` VALUES ('5', '13559774873', null, '/upload/image/default1.jpg', '1000000444', 'm', '点点滴滴', '1', '10');
INSERT INTO `tb_profile` VALUES ('6', null, null, '/upload/image/default1.jpg', null, null, null, '0', '12');
INSERT INTO `tb_profile` VALUES ('7', '18575320991', '1995-08-11', '/upload/image/149406104620137498503_cut.jpg', '1923574247', 'm', '郑博文', '0', '14');
INSERT INTO `tb_profile` VALUES ('8', null, null, '/upload/image/default1.jpg', null, null, null, '0', '16');
INSERT INTO `tb_profile` VALUES ('9', null, null, '/upload/image/default1.jpg', null, null, null, null, '17');
INSERT INTO `tb_profile` VALUES ('12', '12345566622', null, '/upload/image/default1.jpg', '', null, '', '0', '18');
INSERT INTO `tb_profile` VALUES ('13', null, null, '/upload/image/default1.jpg', null, null, null, '0', '19');
INSERT INTO `tb_profile` VALUES ('14', null, null, '/upload/image/default1.jpg', null, null, null, '0', '20');
INSERT INTO `tb_profile` VALUES ('15', '', '2017-04-11', '/upload/image/default2.jpg', '', 'f', '', '0', '21');
INSERT INTO `tb_profile` VALUES ('16', null, null, '/upload/image/default1.jpg', null, null, null, '0', '22');
INSERT INTO `tb_profile` VALUES ('17', null, null, '/upload/image/149354249264979645625_cut.jpg', null, null, null, '0', '23');
INSERT INTO `tb_profile` VALUES ('18', null, null, '/upload/image/149338658196198561200_cut.jpg', null, null, null, '0', '24');
INSERT INTO `tb_profile` VALUES ('19', null, null, '/upload/image/default1.jpg', null, null, null, '0', '25');
INSERT INTO `tb_profile` VALUES ('21', null, null, '/upload/image/default1.jpg', null, null, null, '0', '27');
INSERT INTO `tb_profile` VALUES ('22', null, null, '/upload/image/default1.jpg', null, null, null, '0', '28');
INSERT INTO `tb_profile` VALUES ('23', null, null, '/upload/image/default1.jpg', null, null, null, '0', '29');
INSERT INTO `tb_profile` VALUES ('24', null, null, '/upload/image/default1.jpg', null, null, null, '0', '30');
INSERT INTO `tb_profile` VALUES ('25', null, null, '/upload/image/default1.jpg', null, null, null, '0', '31');
INSERT INTO `tb_profile` VALUES ('26', '010-324324', '2017-05-09', '/upload/image/default1.jpg', '213254325', 'm', '软件工程2班', '0', '32');
INSERT INTO `tb_profile` VALUES ('27', '15832748348', '2017-05-09', '/upload/image/149399913685140157459_cut.jpg', '12432559', 'm', '陶嘉伟', '0', '33');
INSERT INTO `tb_profile` VALUES ('28', null, null, '/upload/image/default1.jpg', null, null, null, '0', '34');
INSERT INTO `tb_profile` VALUES ('29', null, null, '/upload/image/default1.jpg', null, null, null, '0', '35');
INSERT INTO `tb_profile` VALUES ('30', null, null, '/upload/image/default1.jpg', null, null, null, '0', '36');

-- ----------------------------
-- Table structure for tb_reply
-- ----------------------------
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE `tb_reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_content` tinytext NOT NULL,
  `reply_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `reply_comm_fk` (`comment_id`),
  KEY `reply_user_fk` (`user_id`),
  CONSTRAINT `reply_comm_fk` FOREIGN KEY (`comment_id`) REFERENCES `tb_comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reply_user_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_reply
-- ----------------------------
INSERT INTO `tb_reply` VALUES ('20', '噢噢噢噢噢噢噢', '2017-04-27 20:56:41', '18', '21');
INSERT INTO `tb_reply` VALUES ('21', '隐隐约约隐隐约约隐隐约约隐隐约约隐隐约约', '2017-04-27 20:57:01', '18', '21');
INSERT INTO `tb_reply` VALUES ('22', '厉害', '2017-04-27 20:57:15', '16', '21');
INSERT INTO `tb_reply` VALUES ('23', '啦啦啦', '2017-04-27 22:12:27', '19', '21');
INSERT INTO `tb_reply` VALUES ('24', '额恩', '2017-04-28 11:39:20', '16', '21');
INSERT INTO `tb_reply` VALUES ('25', '啊啊啊啊啊', '2017-04-28 18:15:39', '16', '21');
INSERT INTO `tb_reply` VALUES ('26', 'ff', '2017-04-29 23:18:39', '18', '21');

-- ----------------------------
-- Table structure for tb_room
-- ----------------------------
DROP TABLE IF EXISTS `tb_room`;
CREATE TABLE `tb_room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_number` int(11) NOT NULL,
  `room_capacity` int(11) NOT NULL,
  `bui_id` int(11) NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `room_building_fk` (`bui_id`),
  CONSTRAINT `room_building_fk` FOREIGN KEY (`bui_id`) REFERENCES `tb_building` (`bui_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_room
-- ----------------------------
INSERT INTO `tb_room` VALUES ('6', '302', '120', '5');
INSERT INTO `tb_room` VALUES ('10', '105', '100', '5');
INSERT INTO `tb_room` VALUES ('11', '303', '70', '6');
INSERT INTO `tb_room` VALUES ('12', '404', '70', '7');
INSERT INTO `tb_room` VALUES ('13', '101', '120', '5');
INSERT INTO `tb_room` VALUES ('14', '102', '100', '5');
INSERT INTO `tb_room` VALUES ('15', '103', '120', '5');
INSERT INTO `tb_room` VALUES ('16', '104', '100', '5');
INSERT INTO `tb_room` VALUES ('17', '201', '100', '5');
INSERT INTO `tb_room` VALUES ('18', '202', '120', '5');
INSERT INTO `tb_room` VALUES ('19', '203', '120', '5');
INSERT INTO `tb_room` VALUES ('20', '101', '120', '9');
INSERT INTO `tb_room` VALUES ('21', '102', '120', '9');
INSERT INTO `tb_room` VALUES ('22', '103', '120', '9');
INSERT INTO `tb_room` VALUES ('23', '104', '120', '9');
INSERT INTO `tb_room` VALUES ('24', '105', '120', '9');
INSERT INTO `tb_room` VALUES ('25', '201', '120', '9');
INSERT INTO `tb_room` VALUES ('26', '202', '100', '9');
INSERT INTO `tb_room` VALUES ('27', '203', '120', '9');
INSERT INTO `tb_room` VALUES ('28', '204', '120', '9');
INSERT INTO `tb_room` VALUES ('29', '205', '120', '9');
INSERT INTO `tb_room` VALUES ('30', '101', '60', '18');
INSERT INTO `tb_room` VALUES ('31', '201', '60', '18');

-- ----------------------------
-- Table structure for tb_sysinform
-- ----------------------------
DROP TABLE IF EXISTS `tb_sysinform`;
CREATE TABLE `tb_sysinform` (
  `sysinform_id` int(11) NOT NULL AUTO_INCREMENT,
  `sysinform_info` varchar(255) NOT NULL,
  `sysinform_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `is_readed` tinyint(4) NOT NULL,
  PRIMARY KEY (`sysinform_id`),
  KEY `sysinf_user_fk` (`user_id`),
  CONSTRAINT `sysinf_user_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sysinform
-- ----------------------------
INSERT INTO `tb_sysinform` VALUES ('1', '时间已过期', '2017-04-24 12:46:43', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('2', '无效申请', '2017-04-24 15:24:40', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('3', '你的申请已通过', '2017-04-24 16:31:37', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('4', '该课室已被申请', '2017-04-24 16:32:59', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('5', '恭喜你，认证成功!', '2017-04-24 23:34:45', '23', '1');
INSERT INTO `tb_sysinform` VALUES ('6', '你申请的实验楼6A, 场地102已被拒绝，原因是：我有一句妈卖批不知当讲不当讲', '2017-04-27 20:16:18', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('7', '恭喜你，认证成功!', '2017-04-27 20:23:07', '14', '1');
INSERT INTO `tb_sysinform` VALUES ('8', '你申请的教学楼6E, 场地105已通过!', '2017-04-28 17:43:27', '14', '1');
INSERT INTO `tb_sysinform` VALUES ('9', '你申请的教学楼6E, 场地105已通过!', '2017-04-28 17:45:10', '14', '1');
INSERT INTO `tb_sysinform` VALUES ('10', '你申请的教学楼6E, 场地105已被拒绝，原因是：已有人使用', '2017-04-28 17:45:41', '14', '1');
INSERT INTO `tb_sysinform` VALUES ('11', '恭喜你，认证成功!', '2017-04-28 17:56:05', '24', '1');
INSERT INTO `tb_sysinform` VALUES ('12', '你的认证信息不通过，原因是：没图片', '2017-04-28 18:27:29', '25', '1');
INSERT INTO `tb_sysinform` VALUES ('13', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:00:48', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('14', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用', '2017-04-29 11:01:10', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('15', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:01:15', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('16', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:01:24', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('17', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用和', '2017-04-29 11:01:36', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('18', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:01:40', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('19', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用', '2017-04-29 11:01:52', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('20', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:01:56', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('21', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用', '2017-04-29 11:02:01', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('22', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:02:06', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('23', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用', '2017-04-29 11:02:10', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('24', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:02:11', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('25', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:02:16', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('26', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用', '2017-04-29 11:02:19', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('27', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:02:20', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('28', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用', '2017-04-29 11:02:24', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('29', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:02:25', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('30', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用', '2017-04-29 11:02:28', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('31', '你申请的教学楼6E, 场地105已通过!', '2017-04-29 11:02:29', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('32', '你申请的教学楼6E, 场地105已被拒绝，原因是：该时间段已被占用', '2017-04-29 11:02:33', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('33', '你申请的教学楼6E, 场地203已通过!', '2017-04-29 11:10:16', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('34', '你申请的教学楼6E, 场地203已通过!', '2017-04-29 11:10:21', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('35', '你申请的教学楼6E, 场地203已通过!', '2017-04-29 11:10:28', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('36', '你申请的教学楼6E, 场地104已通过!', '2017-04-29 11:12:22', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('37', '你申请的教学楼6E, 场地104已通过!', '2017-04-29 11:12:26', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('38', '你申请的教学楼6E, 场地104已通过!', '2017-04-29 11:12:52', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('39', '你申请的教学楼6E, 场地203已通过!', '2017-04-29 11:13:41', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('40', '你申请的教学楼6E, 场地203已通过!', '2017-04-29 11:13:43', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('41', '你申请的教学楼6E, 场地104已通过!', '2017-04-29 11:13:44', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('42', '你申请的教学楼6E, 场地104已通过!', '2017-04-29 11:13:44', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('43', '你申请的教学楼6E, 场地104已被拒绝，原因是：不给你用', '2017-04-29 11:14:45', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('44', '你申请的教学楼6E, 场地104已被拒绝，原因是：不允许', '2017-04-29 11:53:17', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('45', '你申请的教学楼七栋, 场地105已通过!', '2017-04-29 11:59:25', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('46', '你申请的教学楼七栋, 场地105已通过!', '2017-04-29 12:00:08', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('47', '你申请的教学楼七栋, 场地105已通过!', '2017-04-29 12:01:02', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('48', '你申请的教学楼七栋, 场地105已通过!', '2017-04-29 12:15:58', '23', '1');
INSERT INTO `tb_sysinform` VALUES ('49', '你申请的教学楼七栋, 场地105已被拒绝，原因是：已被申请使用', '2017-04-29 12:17:36', '23', '1');
INSERT INTO `tb_sysinform` VALUES ('50', '你申请的教学楼七栋, 场地105已通过!', '2017-04-29 12:32:28', '23', '1');
INSERT INTO `tb_sysinform` VALUES ('51', '你申请的教学楼七栋, 场地105已被拒绝，原因是：已被申请使用', '2017-04-29 12:34:52', '23', '1');
INSERT INTO `tb_sysinform` VALUES ('52', '你申请的教学楼七栋, 场地105已被拒绝，原因是：', '2017-04-29 12:38:40', '23', '1');
INSERT INTO `tb_sysinform` VALUES ('53', '你申请的教学楼七栋, 场地102已通过!', '2017-04-29 12:40:34', '23', '1');
INSERT INTO `tb_sysinform` VALUES ('54', '你申请的教学楼七栋, 场地105已通过!', '2017-04-29 12:48:46', '23', '1');
INSERT INTO `tb_sysinform` VALUES ('55', '恭喜你，认证成功!', '2017-04-29 14:41:02', '30', '1');
INSERT INTO `tb_sysinform` VALUES ('56', '你申请的教学楼6E, 场地203已被拒绝，原因是：过期', '2017-04-30 16:34:10', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('57', '你申请的教学楼七栋, 场地102已通过!', '2017-05-04 17:21:47', '23', '0');
INSERT INTO `tb_sysinform` VALUES ('58', '你申请的教学楼七栋, 场地102已被拒绝，原因是：已被申请', '2017-05-04 17:22:15', '23', '0');
INSERT INTO `tb_sysinform` VALUES ('59', '你申请的教学楼七栋, 场地105已被拒绝，原因是：已被申请', '2017-05-04 17:22:19', '23', '0');
INSERT INTO `tb_sysinform` VALUES ('60', '你申请的教学楼七栋, 场地102已被拒绝，原因是：已被申请', '2017-05-04 17:22:30', '23', '0');
INSERT INTO `tb_sysinform` VALUES ('61', '你申请的教学楼七栋, 场地102已被拒绝，原因是：已被申请', '2017-05-04 17:22:43', '23', '0');
INSERT INTO `tb_sysinform` VALUES ('62', '你申请的教学楼6E, 场地203已通过!', '2017-05-04 17:22:48', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('63', '你申请的教学楼七栋, 场地105已通过!', '2017-05-04 17:22:51', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('64', '你申请的教学楼6E, 场地302已通过!', '2017-05-04 17:22:55', '14', '1');
INSERT INTO `tb_sysinform` VALUES ('65', '你的认证信息不通过，原因是：图片不合要求', '2017-05-05 21:46:06', '27', '1');
INSERT INTO `tb_sysinform` VALUES ('66', '恭喜你，认证成功!', '2017-05-05 22:46:44', '27', '1');
INSERT INTO `tb_sysinform` VALUES ('67', '你申请的教学楼6E, 场地302已通过!', '2017-05-06 11:38:07', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('68', '你申请的教学楼6E, 场地105已通过!', '2017-05-06 12:32:21', '21', '1');
INSERT INTO `tb_sysinform` VALUES ('69', '你申请的教学楼6E, 场地302已通过!', '2017-05-06 12:39:13', '21', '1');

-- ----------------------------
-- Table structure for tb_ticket
-- ----------------------------
DROP TABLE IF EXISTS `tb_ticket`;
CREATE TABLE `tb_ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `act_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `ticket_act_fk` (`act_id`),
  KEY `ticket_user_fk` (`user_id`),
  CONSTRAINT `ticket_act_fk` FOREIGN KEY (`act_id`) REFERENCES `tb_activity` (`act_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_user_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ticket
-- ----------------------------
INSERT INTO `tb_ticket` VALUES ('1', '2017-04-22 20:03:51', '12', '21');
INSERT INTO `tb_ticket` VALUES ('2', '2017-04-25 16:45:04', '12', '14');
INSERT INTO `tb_ticket` VALUES ('3', '2017-04-28 11:58:44', '13', '21');
INSERT INTO `tb_ticket` VALUES ('4', '2017-04-28 18:12:30', '12', '24');
INSERT INTO `tb_ticket` VALUES ('5', '2017-05-04 17:12:31', '13', '14');
INSERT INTO `tb_ticket` VALUES ('6', '2017-05-04 17:48:51', '12', '32');
INSERT INTO `tb_ticket` VALUES ('7', '2017-05-06 13:33:36', '13', '33');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'test', 'test@123.com', '123');
INSERT INTO `tb_user` VALUES ('2', 'hello', 'hello@44e.com', '3434');
INSERT INTO `tb_user` VALUES ('9', 'aaaa', 'aaa@aaa.com', '74B87337454200D4D33F80C4663DC5E5');
INSERT INTO `tb_user` VALUES ('10', 'whirlys123', 'whirlys@163.com123', '8125FB2FB394D0458748686A5385A6D8');
INSERT INTO `tb_user` VALUES ('12', 'zhengbowen', 'zhengbowen@163.com', 'A906449D5769FA7361D7ECC6AA3F6D28');
INSERT INTO `tb_user` VALUES ('14', '郑博文', '1923574247@qq.com', '80EC8A1FA30F1583A075BE4122918DEE');
INSERT INTO `tb_user` VALUES ('15', 'eeeeee', 'eee@ee.ee', 'F9639FDBA063E37F595CA922939B067D');
INSERT INTO `tb_user` VALUES ('16', 'aaaaa', 'eee@ee.eea', 'DFD5AC33EC0D20DCA3FDBE1EDDEEB7B4');
INSERT INTO `tb_user` VALUES ('17', 'gggg', 'eee@ee.eeg', 'FE5F9F3F055026A06065AE1EEC69DC0F');
INSERT INTO `tb_user` VALUES ('18', '123', '123@163.com', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `tb_user` VALUES ('19', 'whirlysfdf', 'whirlys@163.comdfd', 'F9AB20531502263AFD7DE9544E1E25DC');
INSERT INTO `tb_user` VALUES ('20', 'whirlyswfd', 'whirlys@163.comfdf', '639CBE0167A125417A51A94AB8B7E1B5');
INSERT INTO `tb_user` VALUES ('21', 'whirlys', 'admin@163.com', 'DAB4B1C84A95AA98EFF2AACB0DCBFE09');
INSERT INTO `tb_user` VALUES ('22', '', '', 'D41D8CD98F00B204E9800998ECF8427E');
INSERT INTO `tb_user` VALUES ('23', 'xmy', '1242440175@qq.com', '98641E30ACE18A76F07BD7E5FBF7CD6C');
INSERT INTO `tb_user` VALUES ('24', 'tjw', 'tjw@163.com', 'C4CA4238A0B923820DCC509A6F75849B');
INSERT INTO `tb_user` VALUES ('25', 'jet', 'jet@163.com', '54184FB4EC5E4B631D1491B6335EB6A6');
INSERT INTO `tb_user` VALUES ('27', 'aa', 'aa@aaa.com', '0CC175B9C0F1B6A831C399E269772661');
INSERT INTO `tb_user` VALUES ('28', 'admin@163.com', 'ss@ss.ss', '84610BD0B6BDFE4A6AAE99A7C76FC78F');
INSERT INTO `tb_user` VALUES ('29', 'whirlyss', 'ss@ss.sss', '16E2C12C9D75863E952E0E708D67CB5C');
INSERT INTO `tb_user` VALUES ('30', 'sss', 'admin@163.coms', '84610BD0B6BDFE4A6AAE99A7C76FC78F');
INSERT INTO `tb_user` VALUES ('31', 'bb', 'bb@1212.22', '2792795DE9197567533AEEDAB2768EA1');
INSERT INTO `tb_user` VALUES ('32', '软件二班', 'software2@163.com', '0BE9E5614D2F2C7CC204AAACDA868C01');
INSERT INTO `tb_user` VALUES ('33', '陶嘉伟', 'bbss@163.com.', '75B63CB4877FFB4A70CFB7F4D8F8DCFF');
INSERT INTO `tb_user` VALUES ('34', 'ZBW', '1324325@qq.com', '80EC8A1FA30F1583A075BE4122918DEE');
INSERT INTO `tb_user` VALUES ('35', 'tjw123', 'tjw123@163.com', '75B63CB4877FFB4A70CFB7F4D8F8DCFF');
INSERT INTO `tb_user` VALUES ('36', 'ZBW12', '1342345@qq.com', '80EC8A1FA30F1583A075BE4122918DEE');
SET FOREIGN_KEY_CHECKS=1;
