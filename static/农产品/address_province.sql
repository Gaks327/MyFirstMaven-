/*
 Navicat Premium Data Transfer

 Source Server         : lalala
 Source Server Type    : MySQL
 Source Server Version : 50625
 Source Host           : localhost:3306
 Source Schema         : message

 Target Server Type    : MySQL
 Target Server Version : 50625
 File Encoding         : 65001

 Date: 22/05/2019 15:32:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_province
-- ----------------------------
DROP TABLE IF EXISTS `address_province`;
CREATE TABLE `address_province`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份编码',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份名称',
  `chinaname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省份信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of address_province
-- ----------------------------
INSERT INTO `address_province` VALUES (1, '110000', '北京', 'beijing');
INSERT INTO `address_province` VALUES (2, '120000', '天津', 'tianjin');
INSERT INTO `address_province` VALUES (3, '130000', '河北', 'hebei');
INSERT INTO `address_province` VALUES (4, '140000', '山西', 'shanxi');
INSERT INTO `address_province` VALUES (5, '150000', '内蒙古', 'neimongol');
INSERT INTO `address_province` VALUES (6, '210000', '辽宁', 'liaoning');
INSERT INTO `address_province` VALUES (7, '220000', '吉林', 'jilin');
INSERT INTO `address_province` VALUES (8, '230000', '黑龙江', 'heilongjiang');
INSERT INTO `address_province` VALUES (9, '310000', '上海', 'shanghai');
INSERT INTO `address_province` VALUES (10, '320000', '江苏', 'jiangsu');
INSERT INTO `address_province` VALUES (11, '330000', '浙江', 'zhejiang');
INSERT INTO `address_province` VALUES (12, '340000', '安徽', 'anhui');
INSERT INTO `address_province` VALUES (13, '350000', '福建', 'fujian');
INSERT INTO `address_province` VALUES (14, '360000', '江西', 'jiangxi');
INSERT INTO `address_province` VALUES (15, '370000', '山东', 'shandong');
INSERT INTO `address_province` VALUES (16, '410000', '河南', 'henan');
INSERT INTO `address_province` VALUES (17, '420000', '湖北', 'hubei');
INSERT INTO `address_province` VALUES (18, '430000', '湖南', 'hunan');
INSERT INTO `address_province` VALUES (19, '440000', '广东', 'guangdong');
INSERT INTO `address_province` VALUES (20, '450000', '广西', 'guangxi');
INSERT INTO `address_province` VALUES (21, '460000', '海南', 'hainan');
INSERT INTO `address_province` VALUES (22, '500000', '重庆', 'chongqing');
INSERT INTO `address_province` VALUES (23, '510000', '四川', 'sichuan');
INSERT INTO `address_province` VALUES (24, '520000', '贵州', 'guizhou');
INSERT INTO `address_province` VALUES (25, '530000', '云南', 'yunnan');
INSERT INTO `address_province` VALUES (26, '540000', '西藏', 'xizang');
INSERT INTO `address_province` VALUES (27, '610000', '陕西', 'shaanxi');
INSERT INTO `address_province` VALUES (28, '620000', '甘肃', 'gansu');
INSERT INTO `address_province` VALUES (29, '630000', '青海', 'qinghai');
INSERT INTO `address_province` VALUES (30, '640000', '宁夏', 'ningxia');
INSERT INTO `address_province` VALUES (31, '650000', '新疆', 'xinjiang');
INSERT INTO `address_province` VALUES (32, '710000', '台湾', 'taiwan');
INSERT INTO `address_province` VALUES (33, '810000', '香港', 'hongkong');
INSERT INTO `address_province` VALUES (34, '820000', '澳门', 'macau');

SET FOREIGN_KEY_CHECKS = 1;
