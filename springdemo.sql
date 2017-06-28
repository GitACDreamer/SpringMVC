/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : springdemo

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-06-28 15:54:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `pub_date` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpxk2jtysqn41oop7lvxcp6dqq` (`user_id`),
  CONSTRAINT `FKpxk2jtysqn41oop7lvxcp6dqq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'This blog tell you how to write an article that makes an spring mvc web application.', '2017-06-28 00:00:00', 'How to make an article', '1');
INSERT INTO `blog` VALUES ('2', 'QQ Metting GOGOGO', '2017-06-28 00:00:00', 'QQ Metting', '1');
INSERT INTO `blog` VALUES ('4', 'aa', '2017-06-28 15:50:59', 'aa', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `nickname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Le', 'Land', 'Leland', '123456');
INSERT INTO `user` VALUES ('2', 'Wu', 'Hong', 'SongYoung', '1234567');
INSERT INTO `user` VALUES ('5', 'test', 'test', 'test', '1111');
