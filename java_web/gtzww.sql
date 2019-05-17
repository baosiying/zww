/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : gtzww

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2019-05-17 21:37:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(22) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(22) NOT NULL AUTO_INCREMENT,
  `bname` varchar(25) NOT NULL,
  `writer` varchar(25) NOT NULL,
  `breif` varchar(100) NOT NULL,
  `type` int(22) NOT NULL,
  `finish` varchar(22) NOT NULL,
  `starttime` varchar(50) NOT NULL,
  `endtime` varchar(50) DEFAULT NULL,
  `bpermission` int(22) NOT NULL,
  `monthlynumber` int(100) DEFAULT NULL,
  `recommend` int(100) DEFAULT NULL,
  `words` int(100) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `bpath` varchar(100) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for `disbook`
-- ----------------------------
DROP TABLE IF EXISTS `disbook`;
CREATE TABLE `disbook` (
  `bid` int(22) NOT NULL AUTO_INCREMENT,
  `bname` varchar(25) NOT NULL,
  `writer` varchar(25) NOT NULL,
  `breif` varchar(100) NOT NULL,
  `type` int(22) NOT NULL,
  `finish` varchar(22) NOT NULL,
  `starttime` varchar(50) NOT NULL,
  `endtime` varchar(50) DEFAULT NULL,
  `bpermission` int(22) NOT NULL,
  `monthlynumber` int(100) DEFAULT NULL,
  `recommend` int(100) DEFAULT NULL,
  `words` int(100) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `bpath` varchar(100) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of disbook
-- ----------------------------

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` int(50) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(30) NOT NULL AUTO_INCREMENT,
  `uaccount` varchar(30) NOT NULL,
  `upassword` varchar(40) NOT NULL,
  `uname` varchar(22) NOT NULL,
  `uimage` varchar(32) DEFAULT NULL,
  `monthlynumber` int(22) DEFAULT NULL,
  `recommend` int(22) DEFAULT NULL,
  `ugrade` int(22) NOT NULL,
  `egrade` int(22) NOT NULL,
  `ucollectb` varchar(50) DEFAULT NULL,
  `urb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `writer`
-- ----------------------------
DROP TABLE IF EXISTS `writer`;
CREATE TABLE `writer` (
  `wid` int(50) NOT NULL AUTO_INCREMENT,
  `wname` varchar(20) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `works` varchar(50) DEFAULT NULL,
  `wnumber` int(20) DEFAULT NULL,
  `creatwords` int(50) DEFAULT NULL,
  `creatdays` int(50) DEFAULT NULL,
  `sign` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writer
-- ----------------------------
