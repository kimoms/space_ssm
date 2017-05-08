/*
Navicat MySQL Data Transfer

Source Server         : 172.28.82.3_3306
Source Server Version : 50505
Source Host           : 172.28.82.3:3306
Source Database       : space_sm

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-04-30 19:40:50
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
