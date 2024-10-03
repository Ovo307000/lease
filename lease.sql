/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : lease

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 19/08/2023 23:38:48
*/

create database if not exists `lease`;
use `lease`;

SET NAMES utf8mb4;
SET
    FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apartment_facility
-- ----------------------------
DROP TABLE IF EXISTS `apartment_facility`;
CREATE TABLE `apartment_facility`
(
    `id`           bigint    NOT NULL AUTO_INCREMENT,
    `apartment_id` bigint    NULL DEFAULT NULL COMMENT '公寓id',
    `facility_id`  bigint    NULL DEFAULT NULL COMMENT '设施id',
    `create_time`  timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`  timestamp NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`   tinyint   NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 231
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '公寓&配套关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apartment_facility
-- ----------------------------
INSERT INTO `apartment_facility`
VALUES
    (
        11, 4, 24, '2023-06-19 23:20:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        12, 4, 26, '2023-06-19 23:20:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        13, 4, 24, '2023-06-19 23:21:42', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        14, 4, 25, '2023-06-19 23:21:42', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        15, 4, 26, '2023-06-19 23:21:42', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        16, 5, 26, '2023-06-20 08:47:57', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        17, 5, 27, '2023-06-20 08:47:57', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        18, 6, 26, '2023-06-20 08:53:00', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        19, 6, 27, '2023-06-20 08:53:00', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        20, 7, 26, '2023-06-20 08:53:35', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        21, 7, 27, '2023-06-20 08:53:35', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        22, 8, 26, '2023-06-20 08:53:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        23, 8, 27, '2023-06-20 08:53:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        24, 8, 26, '2023-06-20 08:54:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        25, 8, 27, '2023-06-20 08:54:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        26, 9, 26, '2023-06-20 09:13:52', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        27, 9, 27, '2023-06-20 09:13:52', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        28, 9, 26, '2023-06-20 09:15:41', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        29, 9, 27, '2023-06-20 09:15:41', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        30, 9, 26, '2023-06-20 10:15:43', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        31, 9, 27, '2023-06-20 10:15:43', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        32, 9, 26, '2023-06-20 10:17:44', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        33, 9, 27, '2023-06-20 10:17:44', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        34, 10, 24, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        35, 10, 25, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        36, 10, 26, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        37, 11, 24, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        38, 11, 25, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        39, 11, 26, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        40, 10, 24, '2023-06-21 10:21:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        41, 10, 25, '2023-06-21 10:21:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        42, 10, 24, '2023-06-21 10:22:10', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        43, 10, 25, '2023-06-21 10:22:10', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        44, 9, 24, '2023-07-18 16:29:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        45, 9, 26, '2023-07-18 16:29:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        46, 9, 25, '2023-07-18 16:29:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        47, 10, 24, '2023-07-18 16:30:04', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        48, 10, 25, '2023-07-18 16:30:04', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        49, 9, 24, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        50, 9, 25, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        51, 9, 26, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        52, 9, 24, '2023-07-22 13:52:19', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        53, 9, 25, '2023-07-22 13:52:19', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        54, 9, 26, '2023-07-22 13:52:19', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        55, 9, 24, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        56, 9, 25, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        57, 9, 26, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        58, 9, 40, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        59, 9, 41, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        60, 9, 42, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        61, 9, 43, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        62, 9, 44, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        63, 9, 45, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        64, 9, 46, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        65, 9, 47, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        66, 9, 57, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        67, 10, 24, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        68, 10, 25, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        69, 10, 26, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        70, 10, 40, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        71, 10, 41, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        72, 10, 43, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        73, 10, 44, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        74, 10, 42, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        75, 10, 57, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        76, 10, 46, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        77, 9, 24, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        78, 9, 25, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        79, 9, 26, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        80, 9, 40, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        81, 9, 41, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        82, 9, 42, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        83, 9, 43, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        84, 9, 44, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        85, 9, 45, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        86, 9, 46, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        87, 9, 47, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        88, 9, 57, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        89, 10, 24, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        90, 10, 25, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        91, 10, 26, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        92, 10, 40, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        93, 10, 41, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        94, 10, 43, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        95, 10, 44, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        96, 10, 42, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        97, 10, 57, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        98, 10, 46, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        99, 9, 24, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        100, 9, 25, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        101, 9, 26, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        102, 9, 40, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        103, 9, 41, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        104, 9, 42, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        105, 9, 43, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        106, 9, 44, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        107, 9, 45, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        108, 9, 46, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        109, 9, 47, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        110, 9, 57, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        111, 10, 24, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        112, 10, 25, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        113, 10, 26, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        114, 10, 40, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        115, 10, 41, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        116, 10, 43, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        117, 10, 44, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        118, 10, 42, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        119, 10, 57, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        120, 10, 46, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        121, 9, 24, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        122, 9, 25, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        123, 9, 26, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        124, 9, 40, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        125, 9, 41, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        126, 9, 42, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        127, 9, 43, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        128, 9, 44, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        129, 9, 45, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        130, 9, 46, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        131, 9, 47, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        132, 9, 57, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        133, 10, 24, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        134, 10, 25, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        135, 10, 26, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        136, 10, 40, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        137, 10, 41, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        138, 10, 43, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        139, 10, 44, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        140, 10, 42, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        141, 10, 57, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        142, 10, 46, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        143, 10, 24, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        144, 10, 25, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        145, 10, 26, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        146, 10, 40, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        147, 10, 41, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        148, 10, 43, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        149, 10, 44, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        150, 10, 42, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        151, 10, 57, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        152, 10, 46, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        153, 9, 24, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        154, 9, 25, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        155, 9, 26, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        156, 9, 40, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        157, 9, 41, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        158, 9, 42, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        159, 9, 43, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        160, 9, 44, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        161, 9, 45, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        162, 9, 46, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        163, 9, 47, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        164, 9, 57, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        165, 10, 24, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        166, 10, 25, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        167, 10, 26, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        168, 10, 40, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        169, 10, 41, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        170, 10, 43, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        171, 10, 44, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        172, 10, 42, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        173, 10, 57, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        174, 10, 46, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        175, 9, 24, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        176, 9, 25, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        177, 9, 26, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        178, 9, 40, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        179, 9, 41, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        180, 9, 42, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        181, 9, 43, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        182, 9, 44, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        183, 9, 45, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        184, 9, 46, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        185, 9, 47, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        186, 9, 57, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        187, 9, 24, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        188, 9, 25, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        189, 9, 26, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        190, 9, 40, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        191, 9, 41, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        192, 9, 42, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        193, 9, 43, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        194, 9, 44, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        195, 9, 45, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        196, 9, 46, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        197, 9, 47, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        198, 9, 57, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        199, 10, 24, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        200, 10, 25, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        201, 10, 26, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        202, 10, 40, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        203, 10, 41, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        204, 10, 43, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        205, 10, 44, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        206, 10, 42, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        207, 10, 57, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        208, 10, 46, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_facility`
VALUES
    (
        209, 9, 24, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        210, 9, 25, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        211, 9, 26, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        212, 9, 40, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        213, 9, 41, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        214, 9, 42, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        215, 9, 43, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        216, 9, 44, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        217, 9, 45, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        218, 9, 46, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        219, 9, 47, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        220, 9, 57, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        221, 10, 24, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        222, 10, 25, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        223, 10, 26, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        224, 10, 40, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        225, 10, 41, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        226, 10, 43, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        227, 10, 44, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        228, 10, 42, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        229, 10, 57, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_facility`
VALUES
    (
        230, 10, 46, '2023-08-19 15:44:50', NULL, 0
    );

-- ----------------------------
-- Table structure for apartment_fee_value
-- ----------------------------
DROP TABLE IF EXISTS `apartment_fee_value`;
CREATE TABLE `apartment_fee_value`
(
    `id`           bigint    NOT NULL AUTO_INCREMENT,
    `apartment_id` bigint    NULL DEFAULT NULL COMMENT '公寓id',
    `fee_value_id` bigint    NULL DEFAULT NULL COMMENT '收费项value_id',
    `create_time`  timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`  timestamp NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`   tinyint   NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 99
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '公寓&杂费关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apartment_fee_value
-- ----------------------------
INSERT INTO `apartment_fee_value`
VALUES
    (
        1, 9, NULL, '2023-06-20 10:15:43', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        2, 9, NULL, '2023-06-20 10:15:43', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        3, 9, 3, '2023-06-20 10:17:44', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        4, 9, 7, '2023-06-20 10:17:44', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        5, 10, 2, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        6, 10, 7, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        7, 11, 2, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        8, 11, 7, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        9, 10, 2, '2023-06-21 10:21:36', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        10, 10, 2, '2023-06-21 10:22:10', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        11, 9, 2, '2023-07-18 16:29:06', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        12, 9, 5, '2023-07-18 16:29:06', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        13, 9, 12, '2023-07-18 16:29:06', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        14, 10, 2, '2023-07-18 16:30:05', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        15, 9, 2, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        16, 9, 5, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        17, 9, 2, '2023-07-22 13:52:20', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        18, 9, 5, '2023-07-22 13:52:20', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        19, 9, 2, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        20, 9, 5, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        21, 9, 13, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        22, 9, 16, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        23, 9, 21, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        24, 10, 2, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        25, 10, 6, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        26, 10, 14, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        27, 10, 17, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        28, 10, 21, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        29, 9, 2, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        30, 9, 5, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        31, 9, 13, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        32, 9, 16, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        33, 9, 21, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        34, 10, 2, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        35, 10, 6, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        36, 10, 14, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        37, 10, 17, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        38, 10, 21, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        39, 9, 2, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        40, 9, 5, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        41, 9, 13, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        42, 9, 16, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        43, 9, 21, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        44, 10, 2, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        45, 10, 6, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        46, 10, 14, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        47, 10, 17, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        48, 10, 21, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        49, 9, 2, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        50, 9, 5, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        51, 9, 13, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        52, 9, 16, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        53, 9, 21, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        54, 10, 2, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        55, 10, 6, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        56, 10, 14, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        57, 10, 17, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        58, 10, 21, '2023-08-14 11:36:36', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        59, 10, 2, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        60, 10, 6, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        61, 10, 14, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        62, 10, 17, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        63, 10, 21, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        64, 9, 2, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        65, 9, 5, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        66, 9, 13, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        67, 9, 16, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        68, 9, 21, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        69, 10, 2, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        70, 10, 6, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        71, 10, 14, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        72, 10, 17, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        73, 10, 21, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        74, 9, 2, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        75, 9, 5, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        76, 9, 13, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        77, 9, 16, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        78, 9, 21, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        79, 9, 2, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        80, 9, 5, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        81, 9, 13, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        82, 9, 16, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        83, 9, 21, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        84, 10, 2, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        85, 10, 6, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        86, 10, 14, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        87, 10, 17, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        88, 10, 21, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        89, 9, 2, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        90, 9, 5, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        91, 9, 13, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        92, 9, 16, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        93, 9, 21, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        94, 10, 2, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        95, 10, 6, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        96, 10, 14, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        97, 10, 17, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_fee_value`
VALUES
    (
        98, 10, 21, '2023-08-19 15:44:50', NULL, 0
    );

-- ----------------------------
-- Table structure for apartment_info
-- ----------------------------
DROP TABLE IF EXISTS `apartment_info`;
CREATE TABLE `apartment_info`
(
    `id`             bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '公寓id',
    `name`           varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '公寓名称',
    `introduction`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公寓介绍',
    `district_id`    bigint                                                        NULL DEFAULT NULL COMMENT '所处区域id',
    `district_name`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '区域名称',
    `city_id`        bigint                                                        NULL DEFAULT NULL COMMENT '所处城市id',
    `city_name`      varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '城市名称',
    `province_id`    bigint                                                        NULL DEFAULT NULL COMMENT '所处省份id',
    `province_name`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '省份名称',
    `address_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
    `latitude`       varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '经度',
    `longitude`      varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '纬度',
    `phone`          varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '公寓前台电话',
    `is_release`     tinyint                                                       NULL DEFAULT NULL COMMENT '是否发布（1:发布，0:未发布）',
    `create_time`    timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`    timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`     tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '公寓信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apartment_info
-- ----------------------------
INSERT INTO `apartment_info`
VALUES
    (
        9, '温都水城社区',
        '这是一座现代化公寓，位于城市中心，拥有多种户型，从舒适的一居室到宽敞的三居室。设施齐全，配备现代厨房、设施完备的健身房和社交区。公寓内部设计时尚精致，大窗户带来充足自然光线，俯瞰城市美景。24小时安保、智能门禁系统和停车位，确保居民安全与便利。步行可至购物中心、餐厅和公共交通站点，提供舒适便捷的城市生活体验。',
        110114, '昌平区', 1101, '市辖区', 11, '北京市', '北京市昌平区温都水城北七家镇王府街55号', '40.103976',
        '116.370825', '1234567788', 1, '2023-06-20 09:13:52', '2023-08-19 15:44:26', 0
    );
INSERT INTO `apartment_info`
VALUES
    (
        10, '回龙观社区',
        '这是一座现代化公寓，位于城市中心，拥有多种户型，从舒适的一居室到宽敞的三居室。设施齐全，配备现代厨房、设施完备的健身房和社交区。公寓内部设计时尚精致，大窗户带来充足自然光线，俯瞰城市美景。24小时安保、智能门禁系统和停车位，确保居民安全与便利。步行可至购物中心、餐厅和公共交通站点，提供舒适便捷的城市生活体验。',
        110114, '昌平区', 1101, '市辖区', 11, '北京市', '北京市昌平区回龙观东大街地铁站B东北口8号线', '40.081628',
        '116.363725', '12345678', 1, '2023-06-21 10:17:59', '2023-08-19 15:44:50', 0
    );

-- ----------------------------
-- Table structure for apartment_label
-- ----------------------------
DROP TABLE IF EXISTS `apartment_label`;
CREATE TABLE `apartment_label`
(
    `id`           bigint    NOT NULL AUTO_INCREMENT,
    `apartment_id` bigint    NULL DEFAULT NULL COMMENT '公寓id',
    `label_id`     bigint    NULL DEFAULT NULL COMMENT '标签id',
    `create_time`  timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`  timestamp NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`   tinyint   NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 137
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '公寓标签关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apartment_label
-- ----------------------------
INSERT INTO `apartment_label`
VALUES
    (
        30, 4, 2, '2023-06-19 23:20:06', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        31, 4, 3, '2023-06-19 23:20:06', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        32, 4, 2, '2023-06-19 23:21:42', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        33, 4, 3, '2023-06-19 23:21:42', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        34, 5, 2, '2023-06-20 08:47:57', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        35, 5, 3, '2023-06-20 08:47:57', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        36, 6, 2, '2023-06-20 08:53:00', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        37, 6, 3, '2023-06-20 08:53:00', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        38, 7, 2, '2023-06-20 08:53:35', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        39, 7, 3, '2023-06-20 08:53:35', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        40, 8, 2, '2023-06-20 08:53:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        41, 8, 3, '2023-06-20 08:53:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        42, 8, 2, '2023-06-20 08:54:30', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        43, 8, 3, '2023-06-20 08:54:30', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        44, 9, 2, '2023-06-20 09:13:52', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        45, 9, 3, '2023-06-20 09:13:52', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        46, 9, 2, '2023-06-20 09:15:41', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        47, 9, 3, '2023-06-20 09:15:41', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        48, 9, 2, '2023-06-20 10:15:43', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        49, 9, 3, '2023-06-20 10:15:43', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        50, 9, 2, '2023-06-20 10:17:44', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        51, 9, 3, '2023-06-20 10:17:44', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        52, 10, 1, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        53, 10, 2, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        54, 10, 3, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        55, 10, 4, '2023-06-21 10:17:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        56, 11, 1, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        57, 11, 2, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        58, 11, 3, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        59, 11, 4, '2023-06-21 10:19:46', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        60, 10, 1, '2023-06-21 10:21:36', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        61, 10, 2, '2023-06-21 10:21:36', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        62, 10, 4, '2023-06-21 10:21:36', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        63, 10, 1, '2023-06-21 10:22:10', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        64, 10, 2, '2023-06-21 10:22:10', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        65, 10, 4, '2023-06-21 10:22:10', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        66, 9, 1, '2023-07-18 16:29:05', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        67, 9, 2, '2023-07-18 16:29:05', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        68, 9, 3, '2023-07-18 16:29:05', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        69, 9, 4, '2023-07-18 16:29:05', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        70, 10, 1, '2023-07-18 16:30:04', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        71, 10, 2, '2023-07-18 16:30:04', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        72, 10, 4, '2023-07-18 16:30:04', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        73, 9, 1, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        74, 9, 2, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        75, 9, 3, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        76, 9, 4, '2023-07-22 10:44:44', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        77, 9, 1, '2023-07-22 13:52:19', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        78, 9, 2, '2023-07-22 13:52:19', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        79, 9, 3, '2023-07-22 13:52:19', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        80, 9, 4, '2023-07-22 13:52:19', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        81, 9, 1, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        82, 9, 2, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        83, 9, 3, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        84, 9, 4, '2023-08-10 18:52:30', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        85, 10, 1, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        86, 10, 2, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        87, 10, 4, '2023-08-10 18:53:11', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        88, 9, 1, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        89, 9, 2, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        90, 9, 3, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        91, 9, 4, '2023-08-14 00:04:56', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        92, 10, 1, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        93, 10, 2, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        94, 10, 4, '2023-08-14 00:05:06', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        95, 9, 1, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        96, 9, 2, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        97, 9, 3, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        98, 9, 4, '2023-08-14 00:13:51', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        99, 10, 1, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        100, 10, 2, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        101, 10, 4, '2023-08-14 00:13:56', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        102, 9, 1, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        103, 9, 2, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        104, 9, 3, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        105, 9, 4, '2023-08-14 11:31:25', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        106, 10, 1, '2023-08-14 11:36:35', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        107, 10, 2, '2023-08-14 11:36:35', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        108, 10, 4, '2023-08-14 11:36:35', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        109, 10, 1, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        110, 10, 2, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        111, 10, 4, '2023-08-14 11:36:59', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        112, 9, 1, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        113, 9, 2, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        114, 9, 3, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        115, 9, 4, '2023-08-14 11:40:47', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        116, 10, 1, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        117, 10, 2, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        118, 10, 4, '2023-08-14 11:45:22', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        119, 9, 1, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        120, 9, 2, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        121, 9, 3, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        122, 9, 4, '2023-08-14 11:55:11', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        123, 9, 1, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        124, 9, 2, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        125, 9, 3, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        126, 9, 4, '2023-08-14 12:30:55', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        127, 10, 1, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        128, 10, 2, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        129, 10, 4, '2023-08-14 12:31:07', NULL, 1
    );
INSERT INTO `apartment_label`
VALUES
    (
        130, 9, 1, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_label`
VALUES
    (
        131, 9, 2, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_label`
VALUES
    (
        132, 9, 3, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_label`
VALUES
    (
        133, 9, 4, '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `apartment_label`
VALUES
    (
        134, 10, 1, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_label`
VALUES
    (
        135, 10, 2, '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `apartment_label`
VALUES
    (
        136, 10, 4, '2023-08-19 15:44:50', NULL, 0
    );

-- ----------------------------
-- Table structure for attr_key
-- ----------------------------
DROP TABLE IF EXISTS `attr_key`;
CREATE TABLE `attr_key`
(
    `id`          bigint                                                       NOT NULL AUTO_INCREMENT,
    `name`        varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性key',
    `create_time` timestamp                                                    NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                    NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                      NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '房间基本属性表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attr_key
-- ----------------------------
INSERT INTO `attr_key`
VALUES
    (
        1, '面积', '2023-06-19 01:43:37', '2023-06-19 02:20:01', 1
    );
INSERT INTO `attr_key`
VALUES
    (
        2, '朝向', '2023-06-19 02:06:12', '2023-06-21 10:10:57', 1
    );
INSERT INTO `attr_key`
VALUES
    (
        3, '户型', '2023-06-19 02:20:53', '2023-06-19 02:31:14', 1
    );
INSERT INTO `attr_key`
VALUES
    (
        4, '户型', '2023-06-19 02:36:20', '2023-06-19 02:36:40', 1
    );
INSERT INTO `attr_key`
VALUES
    (
        5, '户型', '2023-06-21 10:09:18', NULL, 0
    );
INSERT INTO `attr_key`
VALUES
    (
        6, '面积', '2023-07-22 11:55:41', '2023-07-22 11:58:31', 1
    );
INSERT INTO `attr_key`
VALUES
    (
        7, '面积', '2023-07-22 11:58:50', NULL, 0
    );
INSERT INTO `attr_key`
VALUES
    (
        8, '朝向', '2023-08-10 15:21:50', '2023-08-10 15:22:04', 0
    );
INSERT INTO `attr_key`
VALUES
    (
        9, '采光', '2023-08-10 18:46:45', NULL, 0
    );
INSERT INTO `attr_key`
VALUES
    (
        10, '卫所', '2023-08-10 18:47:36', '2023-08-14 00:11:57', 0
    );

-- ----------------------------
-- Table structure for attr_value
-- ----------------------------
DROP TABLE IF EXISTS `attr_value`;
CREATE TABLE `attr_value`
(
    `id`          bigint                                                       NOT NULL AUTO_INCREMENT,
    `name`        varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性value',
    `attr_key_id` bigint                                                       NULL DEFAULT NULL COMMENT '对应的属性key_id',
    `create_time` timestamp                                                    NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                    NULL DEFAULT NULL COMMENT '修改时间',
    `is_deleted`  tinyint                                                      NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 29
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '房间基本属性值表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attr_value
-- ----------------------------
INSERT INTO `attr_value`
VALUES
    (
        1, '20平', 1, '2023-06-19 01:44:17', '2023-06-19 02:20:01', 1
    );
INSERT INTO `attr_value`
VALUES
    (
        2, '25平', 1, '2023-06-19 01:44:23', '2023-06-19 02:20:01', 1
    );
INSERT INTO `attr_value`
VALUES
    (
        3, '30平', 1, '2023-06-19 01:44:28', '2023-06-19 02:20:01', 1
    );
INSERT INTO `attr_value`
VALUES
    (
        4, '朝南', 2, '2023-06-19 02:06:42', NULL, 1
    );
INSERT INTO `attr_value`
VALUES
    (
        5, '朝北', 2, '2023-06-19 02:06:48', NULL, 1
    );
INSERT INTO `attr_value`
VALUES
    (
        6, '朝西', 2, '2023-06-19 02:06:53', '2023-06-21 10:10:46', 1
    );
INSERT INTO `attr_value`
VALUES
    (
        7, '朝东', 2, '2023-06-19 02:06:58', '2023-06-19 02:14:26', 1
    );
INSERT INTO `attr_value`
VALUES
    (
        8, '一室一厅', 5, '2023-06-21 10:09:50', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        9, '两室一厅', 5, '2023-06-21 10:09:56', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        10, '三室一厅', 5, '2023-06-21 10:10:02', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        11, '25平', 6, '2023-07-22 11:55:58', NULL, 1
    );
INSERT INTO `attr_value`
VALUES
    (
        12, '30平', 6, '2023-07-22 11:56:05', NULL, 1
    );
INSERT INTO `attr_value`
VALUES
    (
        13, '40平', 6, '2023-07-22 11:56:11', NULL, 1
    );
INSERT INTO `attr_value`
VALUES
    (
        14, '20平', 7, '2023-07-22 11:56:19', NULL, 1
    );
INSERT INTO `attr_value`
VALUES
    (
        15, '25平', 7, '2023-07-22 11:58:58', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        16, '35平', 7, '2023-07-22 11:59:04', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        17, '60平', 7, '2023-07-22 11:59:11', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        18, '80平', 7, '2023-07-22 11:59:31', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        19, '东', 8, '2023-08-10 15:22:10', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        20, '南', 8, '2023-08-10 15:22:20', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        21, '西', 8, '2023-08-10 15:22:27', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        22, '北', 8, '2023-08-10 15:22:34', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        23, '优', 9, '2023-08-10 18:46:55', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        24, '良', 9, '2023-08-10 18:47:04', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        25, '一般', 9, '2023-08-10 18:47:14', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        26, '无', 9, '2023-08-10 18:47:19', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        27, '独卫', 10, '2023-08-10 18:47:46', NULL, 0
    );
INSERT INTO `attr_value`
VALUES
    (
        28, '公共', 10, '2023-08-10 18:47:51', NULL, 0
    );

-- ----------------------------
-- Table structure for browsing_history
-- ----------------------------
DROP TABLE IF EXISTS `browsing_history`;
CREATE TABLE `browsing_history`
(
    `id`          bigint    NOT NULL AUTO_INCREMENT,
    `user_id`     bigint    NULL DEFAULT NULL COMMENT '用户id',
    `room_id`     bigint    NULL DEFAULT NULL COMMENT '浏览房间id',
    `browse_time` timestamp NULL DEFAULT NULL,
    `create_time` timestamp NULL DEFAULT NULL,
    `update_time` timestamp NULL DEFAULT NULL,
    `is_deleted`  tinyint   NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 112
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '浏览历史'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of browsing_history
-- ----------------------------
INSERT INTO `browsing_history`
VALUES
    (
        90, 6, 2, '2023-08-11 10:45:48', '2023-08-11 10:35:31', '2023-08-11 10:45:48', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        91, 6, 3, '2023-08-11 10:45:47', '2023-08-11 10:35:32', '2023-08-11 10:45:47', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        92, 7, 2, '2023-08-19 15:51:22', '2023-08-13 23:22:38', '2023-08-19 15:51:22', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        93, 7, 8, '2023-08-19 15:52:49', '2023-08-13 23:42:27', '2023-08-19 15:52:49', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        94, 7, 3, '2023-08-19 15:51:43', '2023-08-13 23:45:19', '2023-08-19 15:51:43', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        95, 7, 9, '2023-08-18 17:38:48', '2023-08-13 23:45:36', '2023-08-18 17:38:48', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        96, 7, 10, '2023-08-19 15:51:19', '2023-08-13 23:45:48', '2023-08-19 15:51:19', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        97, 7, 11, '2023-08-15 16:45:05', '2023-08-14 00:00:05', '2023-08-15 16:45:05', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        98, 7, 15, '2023-08-17 20:33:17', '2023-08-14 00:10:04', '2023-08-17 20:33:17', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        99, 7, 14, '2023-08-14 08:39:35', '2023-08-14 08:39:35', NULL, 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        100, 7, 16, '2023-08-19 15:53:48', '2023-08-14 10:36:54', '2023-08-19 15:53:48', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        101, 7, 17, '2023-08-14 18:09:58', '2023-08-14 10:37:40', '2023-08-14 18:09:58', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        102, 7, 12, '2023-08-14 15:51:46', '2023-08-14 15:51:40', '2023-08-14 15:51:46', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        103, 1, 2, '2023-08-19 17:48:46', '2023-08-19 17:30:31', '2023-08-19 17:48:46', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        104, 1, 11, '2023-08-19 17:48:40', '2023-08-19 17:31:13', '2023-08-19 17:48:40', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        105, 1, 14, '2023-08-19 23:25:45', '2023-08-19 17:49:16', '2023-08-19 23:25:45', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        106, 1, 16, '2023-08-19 21:30:00', '2023-08-19 17:53:13', '2023-08-19 21:30:00', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        107, 1, 15, '2023-08-19 20:22:12', '2023-08-19 18:20:36', '2023-08-19 20:22:12', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        108, 1, 17, '2023-08-19 23:25:42', '2023-08-19 18:21:40', '2023-08-19 23:25:42', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        109, 1, 9, '2023-08-19 18:39:20', '2023-08-19 18:33:30', '2023-08-19 18:39:20', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        110, 1, 8, '2023-08-19 23:24:55', '2023-08-19 18:39:37', '2023-08-19 23:24:55', 0
    );
INSERT INTO `browsing_history`
VALUES
    (
        111, 1, 12, '2023-08-19 20:48:48', '2023-08-19 20:48:48', NULL, 0
    );

-- ----------------------------
-- Table structure for city_info
-- ----------------------------
DROP TABLE IF EXISTS `city_info`;
CREATE TABLE `city_info`
(
    `id`          int                                                          NOT NULL AUTO_INCREMENT COMMENT '城市id',
    `name`        varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市名称',
    `province_id` int                                                          NULL DEFAULT NULL COMMENT '所属省份id',
    `create_time` timestamp                                                    NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                    NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                      NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 6591
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of city_info
-- ----------------------------
INSERT INTO `city_info`
VALUES
    (
        1101, '市辖区', 11, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1201, '市辖区', 12, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1301, '石家庄市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1302, '唐山市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1303, '秦皇岛市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1304, '邯郸市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1305, '邢台市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1306, '保定市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1307, '张家口市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1308, '承德市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1309, '沧州市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1310, '廊坊市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1311, '衡水市', 13, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1401, '太原市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1402, '大同市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1403, '阳泉市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1404, '长治市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1405, '晋城市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1406, '朔州市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1407, '晋中市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1408, '运城市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1409, '忻州市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1410, '临汾市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1411, '吕梁市', 14, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1501, '呼和浩特市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1502, '包头市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1503, '乌海市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1504, '赤峰市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1505, '通辽市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1506, '鄂尔多斯市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1507, '呼伦贝尔市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1508, '巴彦淖尔市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1509, '乌兰察布市', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1522, '兴安盟', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1525, '锡林郭勒盟', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        1529, '阿拉善盟', 15, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2101, '沈阳市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2102, '大连市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2103, '鞍山市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2104, '抚顺市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2105, '本溪市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2106, '丹东市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2107, '锦州市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2108, '营口市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2109, '阜新市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2110, '辽阳市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2111, '盘锦市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2112, '铁岭市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2113, '朝阳市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2114, '葫芦岛市', 21, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2201, '长春市', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2202, '吉林市', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2203, '四平市', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2204, '辽源市', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2205, '通化市', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2206, '白山市', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2207, '松原市', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2208, '白城市', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2224, '延边朝鲜族自治州', 22, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2301, '哈尔滨市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2302, '齐齐哈尔市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2303, '鸡西市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2304, '鹤岗市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2305, '双鸭山市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2306, '大庆市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2307, '伊春市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2308, '佳木斯市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2309, '七台河市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2310, '牡丹江市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2311, '黑河市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2312, '绥化市', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        2327, '大兴安岭地区', 23, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3101, '市辖区', 31, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3201, '南京市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3202, '无锡市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3203, '徐州市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3204, '常州市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3205, '苏州市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3206, '南通市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3207, '连云港市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3208, '淮安市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3209, '盐城市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3210, '扬州市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3211, '镇江市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3212, '泰州市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3213, '宿迁市', 32, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3301, '杭州市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3302, '宁波市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3303, '温州市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3304, '嘉兴市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3305, '湖州市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3306, '绍兴市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3307, '金华市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3308, '衢州市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3309, '舟山市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3310, '台州市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3311, '丽水市', 33, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3401, '合肥市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3402, '芜湖市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3403, '蚌埠市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3404, '淮南市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3405, '马鞍山市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3406, '淮北市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3407, '铜陵市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3408, '安庆市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3410, '黄山市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3411, '滁州市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3412, '阜阳市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3413, '宿州市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3415, '六安市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3416, '亳州市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3417, '池州市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3418, '宣城市', 34, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3501, '福州市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3502, '厦门市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3503, '莆田市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3504, '三明市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3505, '泉州市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3506, '漳州市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3507, '南平市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3508, '龙岩市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3509, '宁德市', 35, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3601, '南昌市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3602, '景德镇市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3603, '萍乡市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3604, '九江市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3605, '新余市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3606, '鹰潭市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3607, '赣州市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3608, '吉安市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3609, '宜春市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3610, '抚州市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3611, '上饶市', 36, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3701, '济南市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3702, '青岛市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3703, '淄博市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3704, '枣庄市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3705, '东营市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3706, '烟台市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3707, '潍坊市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3708, '济宁市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3709, '泰安市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3710, '威海市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3711, '日照市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3713, '临沂市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3714, '德州市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3715, '聊城市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3716, '滨州市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        3717, '菏泽市', 37, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4101, '郑州市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4102, '开封市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4103, '洛阳市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4104, '平顶山市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4105, '安阳市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4106, '鹤壁市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4107, '新乡市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4108, '焦作市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4109, '濮阳市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4110, '许昌市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4111, '漯河市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4112, '三门峡市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4113, '南阳市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4114, '商丘市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4115, '信阳市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4116, '周口市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4117, '驻马店市', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4190, '省直辖县级行政区划', 41, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4201, '武汉市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4202, '黄石市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4203, '十堰市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4205, '宜昌市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4206, '襄阳市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4207, '鄂州市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4208, '荆门市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4209, '孝感市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4210, '荆州市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4211, '黄冈市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4212, '咸宁市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4213, '随州市', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4228, '恩施土家族苗族自治州', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4290, '省直辖县级行政区划', 42, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4301, '长沙市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4302, '株洲市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4303, '湘潭市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4304, '衡阳市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4305, '邵阳市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4306, '岳阳市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4307, '常德市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4308, '张家界市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4309, '益阳市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4310, '郴州市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4311, '永州市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4312, '怀化市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4313, '娄底市', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4331, '湘西土家族苗族自治州', 43, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4401, '广州市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4402, '韶关市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4403, '深圳市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4404, '珠海市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4405, '汕头市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4406, '佛山市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4407, '江门市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4408, '湛江市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4409, '茂名市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4412, '肇庆市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4413, '惠州市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4414, '梅州市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4415, '汕尾市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4416, '河源市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4417, '阳江市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4418, '清远市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4419, '东莞市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4420, '中山市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4451, '潮州市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4452, '揭阳市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4453, '云浮市', 44, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4501, '南宁市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4502, '柳州市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4503, '桂林市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4504, '梧州市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4505, '北海市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4506, '防城港市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4507, '钦州市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4508, '贵港市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4509, '玉林市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4510, '百色市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4511, '贺州市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4512, '河池市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4513, '来宾市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4514, '崇左市', 45, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4601, '海口市', 46, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4602, '三亚市', 46, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4603, '三沙市', 46, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4604, '儋州市', 46, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        4690, '省直辖县级行政区划', 46, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5001, '市辖区', 50, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5002, '县', 50, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5101, '成都市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5103, '自贡市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5104, '攀枝花市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5105, '泸州市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5106, '德阳市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5107, '绵阳市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5108, '广元市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5109, '遂宁市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5110, '内江市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5111, '乐山市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5113, '南充市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5114, '眉山市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5115, '宜宾市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5116, '广安市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5117, '达州市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5118, '雅安市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5119, '巴中市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5120, '资阳市', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5132, '阿坝藏族羌族自治州', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5133, '甘孜藏族自治州', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5134, '凉山彝族自治州', 51, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5201, '贵阳市', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5202, '六盘水市', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5203, '遵义市', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5204, '安顺市', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5205, '毕节市', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5206, '铜仁市', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5223, '黔西南布依族苗族自治州', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5226, '黔东南苗族侗族自治州', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5227, '黔南布依族苗族自治州', 52, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5301, '昆明市', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5303, '曲靖市', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5304, '玉溪市', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5305, '保山市', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5306, '昭通市', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5307, '丽江市', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5308, '普洱市', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5309, '临沧市', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5323, '楚雄彝族自治州', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5325, '红河哈尼族彝族自治州', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5326, '文山壮族苗族自治州', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5328, '西双版纳傣族自治州', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5329, '大理白族自治州', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5331, '德宏傣族景颇族自治州', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5333, '怒江傈僳族自治州', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5334, '迪庆藏族自治州', 53, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5401, '拉萨市', 54, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5402, '日喀则市', 54, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5403, '昌都市', 54, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5404, '林芝市', 54, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5405, '山南市', 54, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5406, '那曲市', 54, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        5425, '阿里地区', 54, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6101, '西安市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6102, '铜川市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6103, '宝鸡市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6104, '咸阳市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6105, '渭南市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6106, '延安市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6107, '汉中市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6108, '榆林市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6109, '安康市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6110, '商洛市', 61, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6201, '兰州市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6202, '嘉峪关市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6203, '金昌市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6204, '白银市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6205, '天水市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6206, '武威市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6207, '张掖市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6208, '平凉市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6209, '酒泉市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6210, '庆阳市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6211, '定西市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6212, '陇南市', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6229, '临夏回族自治州', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6230, '甘南藏族自治州', 62, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6301, '西宁市', 63, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6302, '海东市', 63, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6322, '海北藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6323, '黄南藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6325, '海南藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6326, '果洛藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6327, '玉树藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6328, '海西蒙古族藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6401, '银川市', 64, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6402, '石嘴山市', 64, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6403, '吴忠市', 64, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6404, '固原市', 64, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6405, '中卫市', 64, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6501, '乌鲁木齐市', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6502, '克拉玛依市', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6504, '吐鲁番市', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6505, '哈密市', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6523, '昌吉回族自治州', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6527, '博尔塔拉蒙古自治州', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6528, '巴音郭楞蒙古自治州', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6529, '阿克苏地区', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6530, '克孜勒苏柯尔克孜自治州', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6531, '喀什地区', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6532, '和田地区', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6540, '伊犁哈萨克自治州', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6542, '塔城地区', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6543, '阿勒泰地区', 65, '2023-06-25 13:48:30', NULL, 0
    );
INSERT INTO `city_info`
VALUES
    (
        6590, '自治区直辖县级行政区划', 65, '2023-06-25 13:48:30', NULL, 0
    );

-- ----------------------------
-- Table structure for district_info
-- ----------------------------
DROP TABLE IF EXISTS `district_info`;
CREATE TABLE `district_info`
(
    `id`          int                                                           NOT NULL AUTO_INCREMENT COMMENT '区域id',
    `name`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域名称',
    `city_id`     int                                                           NULL DEFAULT NULL COMMENT '所属城市id',
    `create_time` timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 659012
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of district_info
-- ----------------------------
INSERT INTO `district_info`
VALUES
    (
        110101, '东城区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110102, '西城区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110105, '朝阳区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110106, '丰台区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110107, '石景山区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110108, '海淀区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110109, '门头沟区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110111, '房山区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110112, '通州区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110113, '顺义区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110114, '昌平区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110115, '大兴区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110116, '怀柔区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110117, '平谷区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110118, '密云区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        110119, '延庆区', 1101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120101, '和平区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120102, '河东区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120103, '河西区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120104, '南开区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120105, '河北区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120106, '红桥区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120110, '东丽区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120111, '西青区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120112, '津南区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120113, '北辰区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120114, '武清区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120115, '宝坻区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120116, '滨海新区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120117, '宁河区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120118, '静海区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        120119, '蓟州区', 1201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130102, '长安区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130104, '桥西区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130105, '新华区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130107, '井陉矿区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130108, '裕华区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130109, '藁城区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130110, '鹿泉区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130111, '栾城区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130121, '井陉县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130123, '正定县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130125, '行唐县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130126, '灵寿县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130127, '高邑县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130128, '深泽县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130129, '赞皇县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130130, '无极县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130131, '平山县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130132, '元氏县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130133, '赵县', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130171, '石家庄高新技术产业开发区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130172, '石家庄循环化工园区', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130181, '辛集市', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130183, '晋州市', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130184, '新乐市', 1301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130202, '路南区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130203, '路北区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130204, '古冶区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130205, '开平区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130207, '丰南区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130208, '丰润区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130209, '曹妃甸区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130224, '滦南县', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130225, '乐亭县', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130227, '迁西县', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130229, '玉田县', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130271, '河北唐山芦台经济开发区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130272, '唐山市汉沽管理区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130273, '唐山高新技术产业开发区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130274, '河北唐山海港经济开发区', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130281, '遵化市', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130283, '迁安市', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130284, '滦州市', 1302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130302, '海港区', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130303, '山海关区', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130304, '北戴河区', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130306, '抚宁区', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130321, '青龙满族自治县', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130322, '昌黎县', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130324, '卢龙县', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130371, '秦皇岛市经济技术开发区', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130372, '北戴河新区', 1303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130402, '邯山区', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130403, '丛台区', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130404, '复兴区', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130406, '峰峰矿区', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130407, '肥乡区', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130408, '永年区', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130423, '临漳县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130424, '成安县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130425, '大名县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130426, '涉县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130427, '磁县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130430, '邱县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130431, '鸡泽县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130432, '广平县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130433, '馆陶县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130434, '魏县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130435, '曲周县', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130471, '邯郸经济技术开发区', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130473, '邯郸冀南新区', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130481, '武安市', 1304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130502, '襄都区', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130503, '信都区', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130505, '任泽区', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130506, '南和区', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130522, '临城县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130523, '内丘县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130524, '柏乡县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130525, '隆尧县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130528, '宁晋县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130529, '巨鹿县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130530, '新河县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130531, '广宗县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130532, '平乡县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130533, '威县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130534, '清河县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130535, '临西县', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130571, '河北邢台经济开发区', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130581, '南宫市', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130582, '沙河市', 1305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130602, '竞秀区', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130606, '莲池区', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130607, '满城区', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130608, '清苑区', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130609, '徐水区', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130623, '涞水县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130624, '阜平县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130626, '定兴县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130627, '唐县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130628, '高阳县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130629, '容城县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130630, '涞源县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130631, '望都县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130632, '安新县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130633, '易县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130634, '曲阳县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130635, '蠡县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130636, '顺平县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130637, '博野县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130638, '雄县', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130671, '保定高新技术产业开发区', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130672, '保定白沟新城', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130681, '涿州市', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130682, '定州市', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130683, '安国市', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130684, '高碑店市', 1306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130702, '桥东区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130703, '桥西区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130705, '宣化区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130706, '下花园区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130708, '万全区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130709, '崇礼区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130722, '张北县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130723, '康保县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130724, '沽源县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130725, '尚义县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130726, '蔚县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130727, '阳原县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130728, '怀安县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130730, '怀来县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130731, '涿鹿县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130732, '赤城县', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130771, '张家口经济开发区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130772, '张家口市察北管理区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130773, '张家口市塞北管理区', 1307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130802, '双桥区', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130803, '双滦区', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130804, '鹰手营子矿区', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130821, '承德县', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130822, '兴隆县', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130824, '滦平县', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130825, '隆化县', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130826, '丰宁满族自治县', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130827, '宽城满族自治县', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130828, '围场满族蒙古族自治县', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130871, '承德高新技术产业开发区', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130881, '平泉市', 1308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130902, '新华区', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130903, '运河区', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130921, '沧县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130922, '青县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130923, '东光县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130924, '海兴县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130925, '盐山县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130926, '肃宁县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130927, '南皮县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130928, '吴桥县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130929, '献县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130930, '孟村回族自治县', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130971, '河北沧州经济开发区', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130972, '沧州高新技术产业开发区', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130973, '沧州渤海新区', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130981, '泊头市', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130982, '任丘市', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130983, '黄骅市', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        130984, '河间市', 1309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131002, '安次区', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131003, '广阳区', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131022, '固安县', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131023, '永清县', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131024, '香河县', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131025, '大城县', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131026, '文安县', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131028, '大厂回族自治县', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131071, '廊坊经济技术开发区', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131081, '霸州市', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131082, '三河市', 1310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131102, '桃城区', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131103, '冀州区', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131121, '枣强县', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131122, '武邑县', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131123, '武强县', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131124, '饶阳县', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131125, '安平县', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131126, '故城县', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131127, '景县', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131128, '阜城县', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131171, '河北衡水高新技术产业开发区', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131172, '衡水滨湖新区', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        131182, '深州市', 1311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140105, '小店区', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140106, '迎泽区', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140107, '杏花岭区', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140108, '尖草坪区', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140109, '万柏林区', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140110, '晋源区', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140121, '清徐县', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140122, '阳曲县', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140123, '娄烦县', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140171, '山西转型综合改革示范区', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140181, '古交市', 1401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140212, '新荣区', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140213, '平城区', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140214, '云冈区', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140215, '云州区', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140221, '阳高县', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140222, '天镇县', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140223, '广灵县', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140224, '灵丘县', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140225, '浑源县', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140226, '左云县', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140271, '山西大同经济开发区', 1402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140302, '城区', 1403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140303, '矿区', 1403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140311, '郊区', 1403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140321, '平定县', 1403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140322, '盂县', 1403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140403, '潞州区', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140404, '上党区', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140405, '屯留区', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140406, '潞城区', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140423, '襄垣县', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140425, '平顺县', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140426, '黎城县', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140427, '壶关县', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140428, '长子县', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140429, '武乡县', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140430, '沁县', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140431, '沁源县', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140471, '山西长治高新技术产业园区', 1404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140502, '城区', 1405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140521, '沁水县', 1405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140522, '阳城县', 1405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140524, '陵川县', 1405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140525, '泽州县', 1405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140581, '高平市', 1405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140602, '朔城区', 1406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140603, '平鲁区', 1406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140621, '山阴县', 1406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140622, '应县', 1406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140623, '右玉县', 1406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140671, '山西朔州经济开发区', 1406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140681, '怀仁市', 1406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140702, '榆次区', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140703, '太谷区', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140721, '榆社县', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140722, '左权县', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140723, '和顺县', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140724, '昔阳县', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140725, '寿阳县', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140727, '祁县', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140728, '平遥县', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140729, '灵石县', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140781, '介休市', 1407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140802, '盐湖区', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140821, '临猗县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140822, '万荣县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140823, '闻喜县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140824, '稷山县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140825, '新绛县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140826, '绛县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140827, '垣曲县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140828, '夏县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140829, '平陆县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140830, '芮城县', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140881, '永济市', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140882, '河津市', 1408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140902, '忻府区', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140921, '定襄县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140922, '五台县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140923, '代县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140924, '繁峙县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140925, '宁武县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140926, '静乐县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140927, '神池县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140928, '五寨县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140929, '岢岚县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140930, '河曲县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140931, '保德县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140932, '偏关县', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140971, '五台山风景名胜区', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        140981, '原平市', 1409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141002, '尧都区', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141021, '曲沃县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141022, '翼城县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141023, '襄汾县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141024, '洪洞县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141025, '古县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141026, '安泽县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141027, '浮山县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141028, '吉县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141029, '乡宁县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141030, '大宁县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141031, '隰县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141032, '永和县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141033, '蒲县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141034, '汾西县', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141081, '侯马市', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141082, '霍州市', 1410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141102, '离石区', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141121, '文水县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141122, '交城县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141123, '兴县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141124, '临县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141125, '柳林县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141126, '石楼县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141127, '岚县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141128, '方山县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141129, '中阳县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141130, '交口县', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141181, '孝义市', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        141182, '汾阳市', 1411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150102, '新城区', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150103, '回民区', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150104, '玉泉区', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150105, '赛罕区', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150121, '土默特左旗', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150122, '托克托县', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150123, '和林格尔县', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150124, '清水河县', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150125, '武川县', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150172, '呼和浩特经济技术开发区', 1501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150202, '东河区', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150203, '昆都仑区', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150204, '青山区', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150205, '石拐区', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150206, '白云鄂博矿区', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150207, '九原区', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150221, '土默特右旗', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150222, '固阳县', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150223, '达尔罕茂明安联合旗', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150271, '包头稀土高新技术产业开发区', 1502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150302, '海勃湾区', 1503, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150303, '海南区', 1503, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150304, '乌达区', 1503, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150402, '红山区', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150403, '元宝山区', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150404, '松山区', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150421, '阿鲁科尔沁旗', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150422, '巴林左旗', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150423, '巴林右旗', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150424, '林西县', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150425, '克什克腾旗', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150426, '翁牛特旗', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150428, '喀喇沁旗', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150429, '宁城县', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150430, '敖汉旗', 1504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150502, '科尔沁区', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150521, '科尔沁左翼中旗', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150522, '科尔沁左翼后旗', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150523, '开鲁县', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150524, '库伦旗', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150525, '奈曼旗', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150526, '扎鲁特旗', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150571, '通辽经济技术开发区', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150581, '霍林郭勒市', 1505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150602, '东胜区', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150603, '康巴什区', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150621, '达拉特旗', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150622, '准格尔旗', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150623, '鄂托克前旗', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150624, '鄂托克旗', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150625, '杭锦旗', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150626, '乌审旗', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150627, '伊金霍洛旗', 1506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150702, '海拉尔区', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150703, '扎赉诺尔区', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150721, '阿荣旗', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150722, '莫力达瓦达斡尔族自治旗', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150723, '鄂伦春自治旗', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150724, '鄂温克族自治旗', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150725, '陈巴尔虎旗', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150726, '新巴尔虎左旗', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150727, '新巴尔虎右旗', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150781, '满洲里市', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150782, '牙克石市', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150783, '扎兰屯市', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150784, '额尔古纳市', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150785, '根河市', 1507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150802, '临河区', 1508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150821, '五原县', 1508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150822, '磴口县', 1508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150823, '乌拉特前旗', 1508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150824, '乌拉特中旗', 1508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150825, '乌拉特后旗', 1508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150826, '杭锦后旗', 1508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150902, '集宁区', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150921, '卓资县', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150922, '化德县', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150923, '商都县', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150924, '兴和县', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150925, '凉城县', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150926, '察哈尔右翼前旗', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150927, '察哈尔右翼中旗', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150928, '察哈尔右翼后旗', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150929, '四子王旗', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        150981, '丰镇市', 1509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152201, '乌兰浩特市', 1522, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152202, '阿尔山市', 1522, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152221, '科尔沁右翼前旗', 1522, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152222, '科尔沁右翼中旗', 1522, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152223, '扎赉特旗', 1522, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152224, '突泉县', 1522, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152501, '二连浩特市', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152502, '锡林浩特市', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152522, '阿巴嘎旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152523, '苏尼特左旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152524, '苏尼特右旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152525, '东乌珠穆沁旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152526, '西乌珠穆沁旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152527, '太仆寺旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152528, '镶黄旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152529, '正镶白旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152530, '正蓝旗', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152531, '多伦县', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152571, '乌拉盖管委会', 1525, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152921, '阿拉善左旗', 1529, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152922, '阿拉善右旗', 1529, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152923, '额济纳旗', 1529, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        152971, '内蒙古阿拉善高新技术产业开发区', 1529, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210102, '和平区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210103, '沈河区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210104, '大东区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210105, '皇姑区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210106, '铁西区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210111, '苏家屯区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210112, '浑南区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210113, '沈北新区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210114, '于洪区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210115, '辽中区', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210123, '康平县', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210124, '法库县', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210181, '新民市', 2101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210202, '中山区', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210203, '西岗区', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210204, '沙河口区', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210211, '甘井子区', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210212, '旅顺口区', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210213, '金州区', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210214, '普兰店区', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210224, '长海县', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210281, '瓦房店市', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210283, '庄河市', 2102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210302, '铁东区', 2103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210303, '铁西区', 2103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210304, '立山区', 2103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210311, '千山区', 2103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210321, '台安县', 2103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210323, '岫岩满族自治县', 2103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210381, '海城市', 2103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210402, '新抚区', 2104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210403, '东洲区', 2104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210404, '望花区', 2104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210411, '顺城区', 2104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210421, '抚顺县', 2104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210422, '新宾满族自治县', 2104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210423, '清原满族自治县', 2104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210502, '平山区', 2105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210503, '溪湖区', 2105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210504, '明山区', 2105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210505, '南芬区', 2105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210521, '本溪满族自治县', 2105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210522, '桓仁满族自治县', 2105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210602, '元宝区', 2106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210603, '振兴区', 2106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210604, '振安区', 2106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210624, '宽甸满族自治县', 2106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210681, '东港市', 2106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210682, '凤城市', 2106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210702, '古塔区', 2107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210703, '凌河区', 2107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210711, '太和区', 2107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210726, '黑山县', 2107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210727, '义县', 2107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210781, '凌海市', 2107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210782, '北镇市', 2107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210802, '站前区', 2108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210803, '西市区', 2108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210804, '鲅鱼圈区', 2108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210811, '老边区', 2108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210881, '盖州市', 2108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210882, '大石桥市', 2108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210902, '海州区', 2109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210903, '新邱区', 2109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210904, '太平区', 2109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210905, '清河门区', 2109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210911, '细河区', 2109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210921, '阜新蒙古族自治县', 2109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        210922, '彰武县', 2109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211002, '白塔区', 2110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211003, '文圣区', 2110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211004, '宏伟区', 2110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211005, '弓长岭区', 2110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211011, '太子河区', 2110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211021, '辽阳县', 2110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211081, '灯塔市', 2110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211102, '双台子区', 2111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211103, '兴隆台区', 2111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211104, '大洼区', 2111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211122, '盘山县', 2111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211202, '银州区', 2112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211204, '清河区', 2112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211221, '铁岭县', 2112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211223, '西丰县', 2112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211224, '昌图县', 2112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211281, '调兵山市', 2112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211282, '开原市', 2112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211302, '双塔区', 2113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211303, '龙城区', 2113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211321, '朝阳县', 2113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211322, '建平县', 2113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211324, '喀喇沁左翼蒙古族自治县', 2113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211381, '北票市', 2113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211382, '凌源市', 2113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211402, '连山区', 2114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211403, '龙港区', 2114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211404, '南票区', 2114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211421, '绥中县', 2114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211422, '建昌县', 2114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        211481, '兴城市', 2114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220102, '南关区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220103, '宽城区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220104, '朝阳区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220105, '二道区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220106, '绿园区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220112, '双阳区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220113, '九台区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220122, '农安县', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220171, '长春经济技术开发区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220172, '长春净月高新技术产业开发区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220173, '长春高新技术产业开发区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220174, '长春汽车经济技术开发区', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220182, '榆树市', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220183, '德惠市', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220184, '公主岭市', 2201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220202, '昌邑区', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220203, '龙潭区', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220204, '船营区', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220211, '丰满区', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220221, '永吉县', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220271, '吉林经济开发区', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220272, '吉林高新技术产业开发区', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220273, '吉林中国新加坡食品区', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220281, '蛟河市', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220282, '桦甸市', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220283, '舒兰市', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220284, '磐石市', 2202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220302, '铁西区', 2203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220303, '铁东区', 2203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220322, '梨树县', 2203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220323, '伊通满族自治县', 2203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220382, '双辽市', 2203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220402, '龙山区', 2204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220403, '西安区', 2204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220421, '东丰县', 2204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220422, '东辽县', 2204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220502, '东昌区', 2205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220503, '二道江区', 2205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220521, '通化县', 2205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220523, '辉南县', 2205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220524, '柳河县', 2205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220581, '梅河口市', 2205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220582, '集安市', 2205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220602, '浑江区', 2206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220605, '江源区', 2206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220621, '抚松县', 2206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220622, '靖宇县', 2206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220623, '长白朝鲜族自治县', 2206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220681, '临江市', 2206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220702, '宁江区', 2207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220721, '前郭尔罗斯蒙古族自治县', 2207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220722, '长岭县', 2207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220723, '乾安县', 2207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220771, '吉林松原经济开发区', 2207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220781, '扶余市', 2207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220802, '洮北区', 2208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220821, '镇赉县', 2208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220822, '通榆县', 2208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220871, '吉林白城经济开发区', 2208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220881, '洮南市', 2208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        220882, '大安市', 2208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        222401, '延吉市', 2224, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        222402, '图们市', 2224, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        222403, '敦化市', 2224, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        222404, '珲春市', 2224, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        222405, '龙井市', 2224, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        222406, '和龙市', 2224, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        222424, '汪清县', 2224, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        222426, '安图县', 2224, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230102, '道里区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230103, '南岗区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230104, '道外区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230108, '平房区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230109, '松北区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230110, '香坊区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230111, '呼兰区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230112, '阿城区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230113, '双城区', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230123, '依兰县', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230124, '方正县', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230125, '宾县', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230126, '巴彦县', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230127, '木兰县', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230128, '通河县', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230129, '延寿县', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230183, '尚志市', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230184, '五常市', 2301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230202, '龙沙区', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230203, '建华区', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230204, '铁锋区', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230205, '昂昂溪区', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230206, '富拉尔基区', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230207, '碾子山区', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230208, '梅里斯达斡尔族区', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230221, '龙江县', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230223, '依安县', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230224, '泰来县', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230225, '甘南县', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230227, '富裕县', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230229, '克山县', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230230, '克东县', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230231, '拜泉县', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230281, '讷河市', 2302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230302, '鸡冠区', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230303, '恒山区', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230304, '滴道区', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230305, '梨树区', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230306, '城子河区', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230307, '麻山区', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230321, '鸡东县', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230381, '虎林市', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230382, '密山市', 2303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230402, '向阳区', 2304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230403, '工农区', 2304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230404, '南山区', 2304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230405, '兴安区', 2304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230406, '东山区', 2304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230407, '兴山区', 2304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230421, '萝北县', 2304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230422, '绥滨县', 2304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230502, '尖山区', 2305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230503, '岭东区', 2305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230505, '四方台区', 2305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230506, '宝山区', 2305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230521, '集贤县', 2305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230522, '友谊县', 2305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230523, '宝清县', 2305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230524, '饶河县', 2305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230602, '萨尔图区', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230603, '龙凤区', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230604, '让胡路区', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230605, '红岗区', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230606, '大同区', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230621, '肇州县', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230622, '肇源县', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230623, '林甸县', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230624, '杜尔伯特蒙古族自治县', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230671, '大庆高新技术产业开发区', 2306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230717, '伊美区', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230718, '乌翠区', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230719, '友好区', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230722, '嘉荫县', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230723, '汤旺县', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230724, '丰林县', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230725, '大箐山县', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230726, '南岔县', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230751, '金林区', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230781, '铁力市', 2307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230803, '向阳区', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230804, '前进区', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230805, '东风区', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230811, '郊区', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230822, '桦南县', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230826, '桦川县', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230828, '汤原县', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230881, '同江市', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230882, '富锦市', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230883, '抚远市', 2308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230902, '新兴区', 2309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230903, '桃山区', 2309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230904, '茄子河区', 2309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        230921, '勃利县', 2309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231002, '东安区', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231003, '阳明区', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231004, '爱民区', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231005, '西安区', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231025, '林口县', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231071, '牡丹江经济技术开发区', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231081, '绥芬河市', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231083, '海林市', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231084, '宁安市', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231085, '穆棱市', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231086, '东宁市', 2310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231102, '爱辉区', 2311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231123, '逊克县', 2311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231124, '孙吴县', 2311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231181, '北安市', 2311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231182, '五大连池市', 2311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231183, '嫩江市', 2311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231202, '北林区', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231221, '望奎县', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231222, '兰西县', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231223, '青冈县', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231224, '庆安县', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231225, '明水县', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231226, '绥棱县', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231281, '安达市', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231282, '肇东市', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        231283, '海伦市', 2312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        232701, '漠河市', 2327, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        232721, '呼玛县', 2327, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        232722, '塔河县', 2327, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        232761, '加格达奇区', 2327, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        232762, '松岭区', 2327, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        232763, '新林区', 2327, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        232764, '呼中区', 2327, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310101, '黄浦区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310104, '徐汇区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310105, '长宁区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310106, '静安区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310107, '普陀区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310109, '虹口区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310110, '杨浦区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310112, '闵行区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310113, '宝山区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310114, '嘉定区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310115, '浦东新区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310116, '金山区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310117, '松江区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310118, '青浦区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310120, '奉贤区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        310151, '崇明区', 3101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320102, '玄武区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320104, '秦淮区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320105, '建邺区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320106, '鼓楼区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320111, '浦口区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320113, '栖霞区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320114, '雨花台区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320115, '江宁区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320116, '六合区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320117, '溧水区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320118, '高淳区', 3201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320205, '锡山区', 3202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320206, '惠山区', 3202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320211, '滨湖区', 3202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320213, '梁溪区', 3202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320214, '新吴区', 3202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320281, '江阴市', 3202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320282, '宜兴市', 3202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320302, '鼓楼区', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320303, '云龙区', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320305, '贾汪区', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320311, '泉山区', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320312, '铜山区', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320321, '丰县', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320322, '沛县', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320324, '睢宁县', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320371, '徐州经济技术开发区', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320381, '新沂市', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320382, '邳州市', 3203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320402, '天宁区', 3204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320404, '钟楼区', 3204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320411, '新北区', 3204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320412, '武进区', 3204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320413, '金坛区', 3204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320481, '溧阳市', 3204, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320505, '虎丘区', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320506, '吴中区', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320507, '相城区', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320508, '姑苏区', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320509, '吴江区', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320571, '苏州工业园区', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320581, '常熟市', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320582, '张家港市', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320583, '昆山市', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320585, '太仓市', 3205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320612, '通州区', 3206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320613, '崇川区', 3206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320614, '海门区', 3206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320623, '如东县', 3206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320671, '南通经济技术开发区', 3206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320681, '启东市', 3206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320682, '如皋市', 3206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320685, '海安市', 3206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320703, '连云区', 3207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320706, '海州区', 3207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320707, '赣榆区', 3207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320722, '东海县', 3207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320723, '灌云县', 3207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320724, '灌南县', 3207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320771, '连云港经济技术开发区', 3207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320772, '连云港高新技术产业开发区', 3207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320803, '淮安区', 3208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320804, '淮阴区', 3208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320812, '清江浦区', 3208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320813, '洪泽区', 3208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320826, '涟水县', 3208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320830, '盱眙县', 3208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320831, '金湖县', 3208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320871, '淮安经济技术开发区', 3208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320902, '亭湖区', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320903, '盐都区', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320904, '大丰区', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320921, '响水县', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320922, '滨海县', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320923, '阜宁县', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320924, '射阳县', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320925, '建湖县', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320971, '盐城经济技术开发区', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        320981, '东台市', 3209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321002, '广陵区', 3210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321003, '邗江区', 3210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321012, '江都区', 3210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321023, '宝应县', 3210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321071, '扬州经济技术开发区', 3210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321081, '仪征市', 3210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321084, '高邮市', 3210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321102, '京口区', 3211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321111, '润州区', 3211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321112, '丹徒区', 3211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321171, '镇江新区', 3211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321181, '丹阳市', 3211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321182, '扬中市', 3211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321183, '句容市', 3211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321202, '海陵区', 3212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321203, '高港区', 3212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321204, '姜堰区', 3212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321271, '泰州医药高新技术产业开发区', 3212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321281, '兴化市', 3212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321282, '靖江市', 3212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321283, '泰兴市', 3212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321302, '宿城区', 3213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321311, '宿豫区', 3213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321322, '沭阳县', 3213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321323, '泗阳县', 3213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321324, '泗洪县', 3213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        321371, '宿迁经济技术开发区', 3213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330102, '上城区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330105, '拱墅区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330106, '西湖区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330108, '滨江区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330109, '萧山区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330110, '余杭区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330111, '富阳区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330112, '临安区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330113, '临平区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330114, '钱塘区', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330122, '桐庐县', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330127, '淳安县', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330182, '建德市', 3301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330203, '海曙区', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330205, '江北区', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330206, '北仑区', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330211, '镇海区', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330212, '鄞州区', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330213, '奉化区', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330225, '象山县', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330226, '宁海县', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330281, '余姚市', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330282, '慈溪市', 3302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330302, '鹿城区', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330303, '龙湾区', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330304, '瓯海区', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330305, '洞头区', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330324, '永嘉县', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330326, '平阳县', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330327, '苍南县', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330328, '文成县', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330329, '泰顺县', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330381, '瑞安市', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330382, '乐清市', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330383, '龙港市', 3303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330402, '南湖区', 3304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330411, '秀洲区', 3304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330421, '嘉善县', 3304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330424, '海盐县', 3304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330481, '海宁市', 3304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330482, '平湖市', 3304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330483, '桐乡市', 3304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330502, '吴兴区', 3305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330503, '南浔区', 3305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330521, '德清县', 3305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330522, '长兴县', 3305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330523, '安吉县', 3305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330602, '越城区', 3306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330603, '柯桥区', 3306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330604, '上虞区', 3306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330624, '新昌县', 3306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330681, '诸暨市', 3306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330683, '嵊州市', 3306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330702, '婺城区', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330703, '金东区', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330723, '武义县', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330726, '浦江县', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330727, '磐安县', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330781, '兰溪市', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330782, '义乌市', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330783, '东阳市', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330784, '永康市', 3307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330802, '柯城区', 3308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330803, '衢江区', 3308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330822, '常山县', 3308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330824, '开化县', 3308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330825, '龙游县', 3308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330881, '江山市', 3308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330902, '定海区', 3309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330903, '普陀区', 3309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330921, '岱山县', 3309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        330922, '嵊泗县', 3309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331002, '椒江区', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331003, '黄岩区', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331004, '路桥区', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331022, '三门县', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331023, '天台县', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331024, '仙居县', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331081, '温岭市', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331082, '临海市', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331083, '玉环市', 3310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331102, '莲都区', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331121, '青田县', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331122, '缙云县', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331123, '遂昌县', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331124, '松阳县', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331125, '云和县', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331126, '庆元县', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331127, '景宁畲族自治县', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        331181, '龙泉市', 3311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340102, '瑶海区', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340103, '庐阳区', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340104, '蜀山区', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340111, '包河区', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340121, '长丰县', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340122, '肥东县', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340123, '肥西县', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340124, '庐江县', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340171, '合肥高新技术产业开发区', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340172, '合肥经济技术开发区', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340173, '合肥新站高新技术产业开发区', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340181, '巢湖市', 3401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340202, '镜湖区', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340207, '鸠江区', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340209, '弋江区', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340210, '湾沚区', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340212, '繁昌区', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340223, '南陵县', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340271, '芜湖经济技术开发区', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340272, '安徽芜湖三山经济开发区', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340281, '无为市', 3402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340302, '龙子湖区', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340303, '蚌山区', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340304, '禹会区', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340311, '淮上区', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340321, '怀远县', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340322, '五河县', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340323, '固镇县', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340371, '蚌埠市高新技术开发区', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340372, '蚌埠市经济开发区', 3403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340402, '大通区', 3404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340403, '田家庵区', 3404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340404, '谢家集区', 3404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340405, '八公山区', 3404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340406, '潘集区', 3404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340421, '凤台县', 3404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340422, '寿县', 3404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340503, '花山区', 3405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340504, '雨山区', 3405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340506, '博望区', 3405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340521, '当涂县', 3405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340522, '含山县', 3405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340523, '和县', 3405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340602, '杜集区', 3406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340603, '相山区', 3406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340604, '烈山区', 3406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340621, '濉溪县', 3406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340705, '铜官区', 3407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340706, '义安区', 3407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340711, '郊区', 3407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340722, '枞阳县', 3407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340802, '迎江区', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340803, '大观区', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340811, '宜秀区', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340822, '怀宁县', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340825, '太湖县', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340826, '宿松县', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340827, '望江县', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340828, '岳西县', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340871, '安徽安庆经济开发区', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340881, '桐城市', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        340882, '潜山市', 3408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341002, '屯溪区', 3410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341003, '黄山区', 3410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341004, '徽州区', 3410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341021, '歙县', 3410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341022, '休宁县', 3410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341023, '黟县', 3410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341024, '祁门县', 3410, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341102, '琅琊区', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341103, '南谯区', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341122, '来安县', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341124, '全椒县', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341125, '定远县', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341126, '凤阳县', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341171, '中新苏滁高新技术产业开发区', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341172, '滁州经济技术开发区', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341181, '天长市', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341182, '明光市', 3411, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341202, '颍州区', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341203, '颍东区', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341204, '颍泉区', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341221, '临泉县', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341222, '太和县', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341225, '阜南县', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341226, '颍上县', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341271, '阜阳合肥现代产业园区', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341272, '阜阳经济技术开发区', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341282, '界首市', 3412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341302, '埇桥区', 3413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341321, '砀山县', 3413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341322, '萧县', 3413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341323, '灵璧县', 3413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341324, '泗县', 3413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341371, '宿州马鞍山现代产业园区', 3413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341372, '宿州经济技术开发区', 3413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341502, '金安区', 3415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341503, '裕安区', 3415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341504, '叶集区', 3415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341522, '霍邱县', 3415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341523, '舒城县', 3415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341524, '金寨县', 3415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341525, '霍山县', 3415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341602, '谯城区', 3416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341621, '涡阳县', 3416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341622, '蒙城县', 3416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341623, '利辛县', 3416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341702, '贵池区', 3417, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341721, '东至县', 3417, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341722, '石台县', 3417, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341723, '青阳县', 3417, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341802, '宣州区', 3418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341821, '郎溪县', 3418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341823, '泾县', 3418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341824, '绩溪县', 3418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341825, '旌德县', 3418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341871, '宣城市经济开发区', 3418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341881, '宁国市', 3418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        341882, '广德市', 3418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350102, '鼓楼区', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350103, '台江区', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350104, '仓山区', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350105, '马尾区', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350111, '晋安区', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350112, '长乐区', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350121, '闽侯县', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350122, '连江县', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350123, '罗源县', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350124, '闽清县', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350125, '永泰县', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350128, '平潭县', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350181, '福清市', 3501, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350203, '思明区', 3502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350205, '海沧区', 3502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350206, '湖里区', 3502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350211, '集美区', 3502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350212, '同安区', 3502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350213, '翔安区', 3502, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350302, '城厢区', 3503, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350303, '涵江区', 3503, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350304, '荔城区', 3503, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350305, '秀屿区', 3503, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350322, '仙游县', 3503, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350404, '三元区', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350405, '沙县区', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350421, '明溪县', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350423, '清流县', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350424, '宁化县', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350425, '大田县', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350426, '尤溪县', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350428, '将乐县', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350429, '泰宁县', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350430, '建宁县', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350481, '永安市', 3504, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350502, '鲤城区', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350503, '丰泽区', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350504, '洛江区', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350505, '泉港区', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350521, '惠安县', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350524, '安溪县', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350525, '永春县', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350526, '德化县', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350527, '金门县', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350581, '石狮市', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350582, '晋江市', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350583, '南安市', 3505, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350602, '芗城区', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350603, '龙文区', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350604, '龙海区', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350605, '长泰区', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350622, '云霄县', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350623, '漳浦县', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350624, '诏安县', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350626, '东山县', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350627, '南靖县', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350628, '平和县', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350629, '华安县', 3506, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350702, '延平区', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350703, '建阳区', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350721, '顺昌县', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350722, '浦城县', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350723, '光泽县', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350724, '松溪县', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350725, '政和县', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350781, '邵武市', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350782, '武夷山市', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350783, '建瓯市', 3507, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350802, '新罗区', 3508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350803, '永定区', 3508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350821, '长汀县', 3508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350823, '上杭县', 3508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350824, '武平县', 3508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350825, '连城县', 3508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350881, '漳平市', 3508, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350902, '蕉城区', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350921, '霞浦县', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350922, '古田县', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350923, '屏南县', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350924, '寿宁县', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350925, '周宁县', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350926, '柘荣县', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350981, '福安市', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        350982, '福鼎市', 3509, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360102, '东湖区', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360103, '西湖区', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360104, '青云谱区', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360111, '青山湖区', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360112, '新建区', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360113, '红谷滩区', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360121, '南昌县', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360123, '安义县', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360124, '进贤县', 3601, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360202, '昌江区', 3602, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360203, '珠山区', 3602, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360222, '浮梁县', 3602, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360281, '乐平市', 3602, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360302, '安源区', 3603, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360313, '湘东区', 3603, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360321, '莲花县', 3603, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360322, '上栗县', 3603, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360323, '芦溪县', 3603, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360402, '濂溪区', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360403, '浔阳区', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360404, '柴桑区', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360423, '武宁县', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360424, '修水县', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360425, '永修县', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360426, '德安县', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360428, '都昌县', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360429, '湖口县', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360430, '彭泽县', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360481, '瑞昌市', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360482, '共青城市', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360483, '庐山市', 3604, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360502, '渝水区', 3605, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360521, '分宜县', 3605, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360602, '月湖区', 3606, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360603, '余江区', 3606, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360681, '贵溪市', 3606, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360702, '章贡区', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360703, '南康区', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360704, '赣县区', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360722, '信丰县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360723, '大余县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360724, '上犹县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360725, '崇义县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360726, '安远县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360728, '定南县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360729, '全南县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360730, '宁都县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360731, '于都县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360732, '兴国县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360733, '会昌县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360734, '寻乌县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360735, '石城县', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360781, '瑞金市', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360783, '龙南市', 3607, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360802, '吉州区', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360803, '青原区', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360821, '吉安县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360822, '吉水县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360823, '峡江县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360824, '新干县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360825, '永丰县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360826, '泰和县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360827, '遂川县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360828, '万安县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360829, '安福县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360830, '永新县', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360881, '井冈山市', 3608, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360902, '袁州区', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360921, '奉新县', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360922, '万载县', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360923, '上高县', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360924, '宜丰县', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360925, '靖安县', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360926, '铜鼓县', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360981, '丰城市', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360982, '樟树市', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        360983, '高安市', 3609, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361002, '临川区', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361003, '东乡区', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361021, '南城县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361022, '黎川县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361023, '南丰县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361024, '崇仁县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361025, '乐安县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361026, '宜黄县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361027, '金溪县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361028, '资溪县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361030, '广昌县', 3610, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361102, '信州区', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361103, '广丰区', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361104, '广信区', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361123, '玉山县', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361124, '铅山县', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361125, '横峰县', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361126, '弋阳县', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361127, '余干县', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361128, '鄱阳县', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361129, '万年县', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361130, '婺源县', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        361181, '德兴市', 3611, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370102, '历下区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370103, '市中区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370104, '槐荫区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370105, '天桥区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370112, '历城区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370113, '长清区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370114, '章丘区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370115, '济阳区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370116, '莱芜区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370117, '钢城区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370124, '平阴县', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370126, '商河县', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370171, '济南高新技术产业开发区', 3701, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370202, '市南区', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370203, '市北区', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370211, '黄岛区', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370212, '崂山区', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370213, '李沧区', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370214, '城阳区', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370215, '即墨区', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370271, '青岛高新技术产业开发区', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370281, '胶州市', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370283, '平度市', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370285, '莱西市', 3702, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370302, '淄川区', 3703, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370303, '张店区', 3703, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370304, '博山区', 3703, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370305, '临淄区', 3703, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370306, '周村区', 3703, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370321, '桓台县', 3703, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370322, '高青县', 3703, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370323, '沂源县', 3703, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370402, '市中区', 3704, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370403, '薛城区', 3704, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370404, '峄城区', 3704, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370405, '台儿庄区', 3704, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370406, '山亭区', 3704, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370481, '滕州市', 3704, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370502, '东营区', 3705, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370503, '河口区', 3705, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370505, '垦利区', 3705, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370522, '利津县', 3705, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370523, '广饶县', 3705, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370571, '东营经济技术开发区', 3705, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370572, '东营港经济开发区', 3705, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370602, '芝罘区', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370611, '福山区', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370612, '牟平区', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370613, '莱山区', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370614, '蓬莱区', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370671, '烟台高新技术产业开发区', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370672, '烟台经济技术开发区', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370681, '龙口市', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370682, '莱阳市', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370683, '莱州市', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370685, '招远市', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370686, '栖霞市', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370687, '海阳市', 3706, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370702, '潍城区', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370703, '寒亭区', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370704, '坊子区', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370705, '奎文区', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370724, '临朐县', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370725, '昌乐县', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370772, '潍坊滨海经济技术开发区', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370781, '青州市', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370782, '诸城市', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370783, '寿光市', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370784, '安丘市', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370785, '高密市', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370786, '昌邑市', 3707, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370811, '任城区', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370812, '兖州区', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370826, '微山县', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370827, '鱼台县', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370828, '金乡县', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370829, '嘉祥县', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370830, '汶上县', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370831, '泗水县', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370832, '梁山县', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370871, '济宁高新技术产业开发区', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370881, '曲阜市', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370883, '邹城市', 3708, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370902, '泰山区', 3709, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370911, '岱岳区', 3709, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370921, '宁阳县', 3709, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370923, '东平县', 3709, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370982, '新泰市', 3709, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        370983, '肥城市', 3709, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371002, '环翠区', 3710, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371003, '文登区', 3710, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371071, '威海火炬高技术产业开发区', 3710, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371072, '威海经济技术开发区', 3710, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371073, '威海临港经济技术开发区', 3710, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371082, '荣成市', 3710, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371083, '乳山市', 3710, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371102, '东港区', 3711, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371103, '岚山区', 3711, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371121, '五莲县', 3711, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371122, '莒县', 3711, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371171, '日照经济技术开发区', 3711, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371302, '兰山区', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371311, '罗庄区', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371312, '河东区', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371321, '沂南县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371322, '郯城县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371323, '沂水县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371324, '兰陵县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371325, '费县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371326, '平邑县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371327, '莒南县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371328, '蒙阴县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371329, '临沭县', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371371, '临沂高新技术产业开发区', 3713, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371402, '德城区', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371403, '陵城区', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371422, '宁津县', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371423, '庆云县', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371424, '临邑县', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371425, '齐河县', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371426, '平原县', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371427, '夏津县', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371428, '武城县', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371471, '德州天衢新区', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371481, '乐陵市', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371482, '禹城市', 3714, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371502, '东昌府区', 3715, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371503, '茌平区', 3715, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371521, '阳谷县', 3715, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371522, '莘县', 3715, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371524, '东阿县', 3715, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371525, '冠县', 3715, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371526, '高唐县', 3715, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371581, '临清市', 3715, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371602, '滨城区', 3716, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371603, '沾化区', 3716, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371621, '惠民县', 3716, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371622, '阳信县', 3716, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371623, '无棣县', 3716, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371625, '博兴县', 3716, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371681, '邹平市', 3716, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371702, '牡丹区', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371703, '定陶区', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371721, '曹县', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371722, '单县', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371723, '成武县', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371724, '巨野县', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371725, '郓城县', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371726, '鄄城县', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371728, '东明县', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371771, '菏泽经济技术开发区', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        371772, '菏泽高新技术开发区', 3717, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410102, '中原区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410103, '二七区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410104, '管城回族区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410105, '金水区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410106, '上街区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410108, '惠济区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410122, '中牟县', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410171, '郑州经济技术开发区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410172, '郑州高新技术产业开发区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410173, '郑州航空港经济综合实验区', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410181, '巩义市', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410182, '荥阳市', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410183, '新密市', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410184, '新郑市', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410185, '登封市', 4101, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410202, '龙亭区', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410203, '顺河回族区', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410204, '鼓楼区', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410205, '禹王台区', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410212, '祥符区', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410221, '杞县', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410222, '通许县', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410223, '尉氏县', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410225, '兰考县', 4102, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410302, '老城区', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410303, '西工区', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410304, '瀍河回族区', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410305, '涧西区', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410307, '偃师区', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410308, '孟津区', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410311, '洛龙区', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410323, '新安县', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410324, '栾川县', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410325, '嵩县', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410326, '汝阳县', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410327, '宜阳县', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410328, '洛宁县', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410329, '伊川县', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410371, '洛阳高新技术产业开发区', 4103, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410402, '新华区', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410403, '卫东区', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410404, '石龙区', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410411, '湛河区', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410421, '宝丰县', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410422, '叶县', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410423, '鲁山县', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410425, '郏县', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410471, '平顶山高新技术产业开发区', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410472, '平顶山市城乡一体化示范区', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410481, '舞钢市', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410482, '汝州市', 4104, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410502, '文峰区', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410503, '北关区', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410505, '殷都区', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410506, '龙安区', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410522, '安阳县', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410523, '汤阴县', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410526, '滑县', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410527, '内黄县', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410571, '安阳高新技术产业开发区', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410581, '林州市', 4105, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410602, '鹤山区', 4106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410603, '山城区', 4106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410611, '淇滨区', 4106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410621, '浚县', 4106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410622, '淇县', 4106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410671, '鹤壁经济技术开发区', 4106, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410702, '红旗区', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410703, '卫滨区', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410704, '凤泉区', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410711, '牧野区', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410721, '新乡县', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410724, '获嘉县', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410725, '原阳县', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410726, '延津县', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410727, '封丘县', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410771, '新乡高新技术产业开发区', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410772, '新乡经济技术开发区', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410773, '新乡市平原城乡一体化示范区', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410781, '卫辉市', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410782, '辉县市', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410783, '长垣市', 4107, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410802, '解放区', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410803, '中站区', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410804, '马村区', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410811, '山阳区', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410821, '修武县', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410822, '博爱县', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410823, '武陟县', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410825, '温县', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410871, '焦作城乡一体化示范区', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410882, '沁阳市', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410883, '孟州市', 4108, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410902, '华龙区', 4109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410922, '清丰县', 4109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410923, '南乐县', 4109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410926, '范县', 4109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410927, '台前县', 4109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410928, '濮阳县', 4109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410971, '河南濮阳工业园区', 4109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        410972, '濮阳经济技术开发区', 4109, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411002, '魏都区', 4110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411003, '建安区', 4110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411024, '鄢陵县', 4110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411025, '襄城县', 4110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411071, '许昌经济技术开发区', 4110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411081, '禹州市', 4110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411082, '长葛市', 4110, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411102, '源汇区', 4111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411103, '郾城区', 4111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411104, '召陵区', 4111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411121, '舞阳县', 4111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411122, '临颍县', 4111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411171, '漯河经济技术开发区', 4111, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411202, '湖滨区', 4112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411203, '陕州区', 4112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411221, '渑池县', 4112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411224, '卢氏县', 4112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411271, '河南三门峡经济开发区', 4112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411281, '义马市', 4112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411282, '灵宝市', 4112, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411302, '宛城区', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411303, '卧龙区', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411321, '南召县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411322, '方城县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411323, '西峡县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411324, '镇平县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411325, '内乡县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411326, '淅川县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411327, '社旗县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411328, '唐河县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411329, '新野县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411330, '桐柏县', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411371, '南阳高新技术产业开发区', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411372, '南阳市城乡一体化示范区', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411381, '邓州市', 4113, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411402, '梁园区', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411403, '睢阳区', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411421, '民权县', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411422, '睢县', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411423, '宁陵县', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411424, '柘城县', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411425, '虞城县', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411426, '夏邑县', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411471, '豫东综合物流产业聚集区', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411472, '河南商丘经济开发区', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411481, '永城市', 4114, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411502, '浉河区', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411503, '平桥区', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411521, '罗山县', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411522, '光山县', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411523, '新县', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411524, '商城县', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411525, '固始县', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411526, '潢川县', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411527, '淮滨县', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411528, '息县', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411571, '信阳高新技术产业开发区', 4115, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411602, '川汇区', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411603, '淮阳区', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411621, '扶沟县', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411622, '西华县', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411623, '商水县', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411624, '沈丘县', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411625, '郸城县', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411627, '太康县', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411628, '鹿邑县', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411671, '河南周口经济开发区', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411681, '项城市', 4116, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411702, '驿城区', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411721, '西平县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411722, '上蔡县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411723, '平舆县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411724, '正阳县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411725, '确山县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411726, '泌阳县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411727, '汝南县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411728, '遂平县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411729, '新蔡县', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        411771, '河南驻马店经济开发区', 4117, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        419001, '济源市', 4190, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420102, '江岸区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420103, '江汉区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420104, '硚口区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420105, '汉阳区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420106, '武昌区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420107, '青山区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420111, '洪山区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420112, '东西湖区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420113, '汉南区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420114, '蔡甸区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420115, '江夏区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420116, '黄陂区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420117, '新洲区', 4201, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420202, '黄石港区', 4202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420203, '西塞山区', 4202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420204, '下陆区', 4202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420205, '铁山区', 4202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420222, '阳新县', 4202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420281, '大冶市', 4202, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420302, '茅箭区', 4203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420303, '张湾区', 4203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420304, '郧阳区', 4203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420322, '郧西县', 4203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420323, '竹山县', 4203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420324, '竹溪县', 4203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420325, '房县', 4203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420381, '丹江口市', 4203, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420502, '西陵区', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420503, '伍家岗区', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420504, '点军区', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420505, '猇亭区', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420506, '夷陵区', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420525, '远安县', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420526, '兴山县', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420527, '秭归县', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420528, '长阳土家族自治县', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420529, '五峰土家族自治县', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420581, '宜都市', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420582, '当阳市', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420583, '枝江市', 4205, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420602, '襄城区', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420606, '樊城区', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420607, '襄州区', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420624, '南漳县', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420625, '谷城县', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420626, '保康县', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420682, '老河口市', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420683, '枣阳市', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420684, '宜城市', 4206, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420702, '梁子湖区', 4207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420703, '华容区', 4207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420704, '鄂城区', 4207, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420802, '东宝区', 4208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420804, '掇刀区', 4208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420822, '沙洋县', 4208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420881, '钟祥市', 4208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420882, '京山市', 4208, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420902, '孝南区', 4209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420921, '孝昌县', 4209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420922, '大悟县', 4209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420923, '云梦县', 4209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420981, '应城市', 4209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420982, '安陆市', 4209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        420984, '汉川市', 4209, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421002, '沙市区', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421003, '荆州区', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421022, '公安县', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421024, '江陵县', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421071, '荆州经济技术开发区', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421081, '石首市', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421083, '洪湖市', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421087, '松滋市', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421088, '监利市', 4210, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421102, '黄州区', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421121, '团风县', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421122, '红安县', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421123, '罗田县', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421124, '英山县', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421125, '浠水县', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421126, '蕲春县', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421127, '黄梅县', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421171, '龙感湖管理区', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421181, '麻城市', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421182, '武穴市', 4211, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421202, '咸安区', 4212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421221, '嘉鱼县', 4212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421222, '通城县', 4212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421223, '崇阳县', 4212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421224, '通山县', 4212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421281, '赤壁市', 4212, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421303, '曾都区', 4213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421321, '随县', 4213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        421381, '广水市', 4213, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        422801, '恩施市', 4228, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        422802, '利川市', 4228, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        422822, '建始县', 4228, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        422823, '巴东县', 4228, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        422825, '宣恩县', 4228, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        422826, '咸丰县', 4228, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        422827, '来凤县', 4228, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        422828, '鹤峰县', 4228, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        429004, '仙桃市', 4290, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        429005, '潜江市', 4290, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        429006, '天门市', 4290, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        429021, '神农架林区', 4290, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430102, '芙蓉区', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430103, '天心区', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430104, '岳麓区', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430105, '开福区', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430111, '雨花区', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430112, '望城区', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430121, '长沙县', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430181, '浏阳市', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430182, '宁乡市', 4301, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430202, '荷塘区', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430203, '芦淞区', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430204, '石峰区', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430211, '天元区', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430212, '渌口区', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430223, '攸县', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430224, '茶陵县', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430225, '炎陵县', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430281, '醴陵市', 4302, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430302, '雨湖区', 4303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430304, '岳塘区', 4303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430321, '湘潭县', 4303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430371, '湖南湘潭高新技术产业园区', 4303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430372, '湘潭昭山示范区', 4303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430373, '湘潭九华示范区', 4303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430381, '湘乡市', 4303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430382, '韶山市', 4303, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430405, '珠晖区', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430406, '雁峰区', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430407, '石鼓区', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430408, '蒸湘区', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430412, '南岳区', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430421, '衡阳县', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430422, '衡南县', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430423, '衡山县', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430424, '衡东县', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430426, '祁东县', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430471, '衡阳综合保税区', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430472, '湖南衡阳高新技术产业园区', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430473, '湖南衡阳松木经济开发区', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430481, '耒阳市', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430482, '常宁市', 4304, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430502, '双清区', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430503, '大祥区', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430511, '北塔区', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430522, '新邵县', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430523, '邵阳县', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430524, '隆回县', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430525, '洞口县', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430527, '绥宁县', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430528, '新宁县', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430529, '城步苗族自治县', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430581, '武冈市', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430582, '邵东市', 4305, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430602, '岳阳楼区', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430603, '云溪区', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430611, '君山区', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430621, '岳阳县', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430623, '华容县', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430624, '湘阴县', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430626, '平江县', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430671, '岳阳市屈原管理区', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430681, '汨罗市', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430682, '临湘市', 4306, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430702, '武陵区', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430703, '鼎城区', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430721, '安乡县', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430722, '汉寿县', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430723, '澧县', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430724, '临澧县', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430725, '桃源县', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430726, '石门县', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430771, '常德市西洞庭管理区', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430781, '津市市', 4307, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430802, '永定区', 4308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430811, '武陵源区', 4308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430821, '慈利县', 4308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430822, '桑植县', 4308, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430902, '资阳区', 4309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430903, '赫山区', 4309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430921, '南县', 4309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430922, '桃江县', 4309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430923, '安化县', 4309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430971, '益阳市大通湖管理区', 4309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430972, '湖南益阳高新技术产业园区', 4309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        430981, '沅江市', 4309, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431002, '北湖区', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431003, '苏仙区', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431021, '桂阳县', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431022, '宜章县', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431023, '永兴县', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431024, '嘉禾县', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431025, '临武县', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431026, '汝城县', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431027, '桂东县', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431028, '安仁县', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431081, '资兴市', 4310, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431102, '零陵区', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431103, '冷水滩区', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431122, '东安县', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431123, '双牌县', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431124, '道县', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431125, '江永县', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431126, '宁远县', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431127, '蓝山县', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431128, '新田县', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431129, '江华瑶族自治县', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431171, '永州经济技术开发区', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431173, '永州市回龙圩管理区', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431181, '祁阳市', 4311, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431202, '鹤城区', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431221, '中方县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431222, '沅陵县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431223, '辰溪县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431224, '溆浦县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431225, '会同县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431226, '麻阳苗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431227, '新晃侗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431228, '芷江侗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431229, '靖州苗族侗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431230, '通道侗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431271, '怀化市洪江管理区', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431281, '洪江市', 4312, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431302, '娄星区', 4313, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431321, '双峰县', 4313, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431322, '新化县', 4313, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431381, '冷水江市', 4313, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        431382, '涟源市', 4313, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        433101, '吉首市', 4331, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        433122, '泸溪县', 4331, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        433123, '凤凰县', 4331, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        433124, '花垣县', 4331, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        433125, '保靖县', 4331, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        433126, '古丈县', 4331, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        433127, '永顺县', 4331, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        433130, '龙山县', 4331, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440103, '荔湾区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440104, '越秀区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440105, '海珠区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440106, '天河区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440111, '白云区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440112, '黄埔区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440113, '番禺区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440114, '花都区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440115, '南沙区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440117, '从化区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440118, '增城区', 4401, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440203, '武江区', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440204, '浈江区', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440205, '曲江区', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440222, '始兴县', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440224, '仁化县', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440229, '翁源县', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440232, '乳源瑶族自治县', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440233, '新丰县', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440281, '乐昌市', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440282, '南雄市', 4402, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440303, '罗湖区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440304, '福田区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440305, '南山区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440306, '宝安区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440307, '龙岗区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440308, '盐田区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440309, '龙华区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440310, '坪山区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440311, '光明区', 4403, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440402, '香洲区', 4404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440403, '斗门区', 4404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440404, '金湾区', 4404, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440507, '龙湖区', 4405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440511, '金平区', 4405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440512, '濠江区', 4405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440513, '潮阳区', 4405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440514, '潮南区', 4405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440515, '澄海区', 4405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440523, '南澳县', 4405, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440604, '禅城区', 4406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440605, '南海区', 4406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440606, '顺德区', 4406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440607, '三水区', 4406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440608, '高明区', 4406, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440703, '蓬江区', 4407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440704, '江海区', 4407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440705, '新会区', 4407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440781, '台山市', 4407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440783, '开平市', 4407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440784, '鹤山市', 4407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440785, '恩平市', 4407, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440802, '赤坎区', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440803, '霞山区', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440804, '坡头区', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440811, '麻章区', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440823, '遂溪县', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440825, '徐闻县', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440881, '廉江市', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440882, '雷州市', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440883, '吴川市', 4408, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440902, '茂南区', 4409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440904, '电白区', 4409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440981, '高州市', 4409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440982, '化州市', 4409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        440983, '信宜市', 4409, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441202, '端州区', 4412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441203, '鼎湖区', 4412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441204, '高要区', 4412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441223, '广宁县', 4412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441224, '怀集县', 4412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441225, '封开县', 4412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441226, '德庆县', 4412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441284, '四会市', 4412, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441302, '惠城区', 4413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441303, '惠阳区', 4413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441322, '博罗县', 4413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441323, '惠东县', 4413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441324, '龙门县', 4413, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441402, '梅江区', 4414, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441403, '梅县区', 4414, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441422, '大埔县', 4414, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441423, '丰顺县', 4414, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441424, '五华县', 4414, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441426, '平远县', 4414, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441427, '蕉岭县', 4414, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441481, '兴宁市', 4414, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441502, '城区', 4415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441521, '海丰县', 4415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441523, '陆河县', 4415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441581, '陆丰市', 4415, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441602, '源城区', 4416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441621, '紫金县', 4416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441622, '龙川县', 4416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441623, '连平县', 4416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441624, '和平县', 4416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441625, '东源县', 4416, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441702, '江城区', 4417, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441704, '阳东区', 4417, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441721, '阳西县', 4417, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441781, '阳春市', 4417, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441802, '清城区', 4418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441803, '清新区', 4418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441821, '佛冈县', 4418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441823, '阳山县', 4418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441825, '连山壮族瑶族自治县', 4418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441826, '连南瑶族自治县', 4418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441881, '英德市', 4418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441882, '连州市', 4418, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        441900, '东莞市', 4419, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        442000, '中山市', 4420, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445102, '湘桥区', 4451, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445103, '潮安区', 4451, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445122, '饶平县', 4451, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445202, '榕城区', 4452, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445203, '揭东区', 4452, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445222, '揭西县', 4452, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445224, '惠来县', 4452, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445281, '普宁市', 4452, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445302, '云城区', 4453, '2023-06-25 13:48:34', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445303, '云安区', 4453, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445321, '新兴县', 4453, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445322, '郁南县', 4453, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        445381, '罗定市', 4453, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450102, '兴宁区', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450103, '青秀区', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450105, '江南区', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450107, '西乡塘区', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450108, '良庆区', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450109, '邕宁区', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450110, '武鸣区', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450123, '隆安县', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450124, '马山县', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450125, '上林县', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450126, '宾阳县', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450181, '横州市', 4501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450202, '城中区', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450203, '鱼峰区', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450204, '柳南区', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450205, '柳北区', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450206, '柳江区', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450222, '柳城县', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450223, '鹿寨县', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450224, '融安县', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450225, '融水苗族自治县', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450226, '三江侗族自治县', 4502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450302, '秀峰区', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450303, '叠彩区', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450304, '象山区', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450305, '七星区', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450311, '雁山区', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450312, '临桂区', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450321, '阳朔县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450323, '灵川县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450324, '全州县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450325, '兴安县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450326, '永福县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450327, '灌阳县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450328, '龙胜各族自治县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450329, '资源县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450330, '平乐县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450332, '恭城瑶族自治县', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450381, '荔浦市', 4503, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450403, '万秀区', 4504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450405, '长洲区', 4504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450406, '龙圩区', 4504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450421, '苍梧县', 4504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450422, '藤县', 4504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450423, '蒙山县', 4504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450481, '岑溪市', 4504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450502, '海城区', 4505, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450503, '银海区', 4505, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450512, '铁山港区', 4505, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450521, '合浦县', 4505, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450602, '港口区', 4506, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450603, '防城区', 4506, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450621, '上思县', 4506, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450681, '东兴市', 4506, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450702, '钦南区', 4507, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450703, '钦北区', 4507, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450721, '灵山县', 4507, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450722, '浦北县', 4507, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450802, '港北区', 4508, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450803, '港南区', 4508, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450804, '覃塘区', 4508, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450821, '平南县', 4508, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450881, '桂平市', 4508, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450902, '玉州区', 4509, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450903, '福绵区', 4509, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450921, '容县', 4509, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450922, '陆川县', 4509, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450923, '博白县', 4509, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450924, '兴业县', 4509, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        450981, '北流市', 4509, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451002, '右江区', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451003, '田阳区', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451022, '田东县', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451024, '德保县', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451026, '那坡县', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451027, '凌云县', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451028, '乐业县', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451029, '田林县', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451030, '西林县', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451031, '隆林各族自治县', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451081, '靖西市', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451082, '平果市', 4510, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451102, '八步区', 4511, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451103, '平桂区', 4511, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451121, '昭平县', 4511, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451122, '钟山县', 4511, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451123, '富川瑶族自治县', 4511, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451202, '金城江区', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451203, '宜州区', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451221, '南丹县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451222, '天峨县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451223, '凤山县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451224, '东兰县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451225, '罗城仫佬族自治县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451226, '环江毛南族自治县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451227, '巴马瑶族自治县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451228, '都安瑶族自治县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451229, '大化瑶族自治县', 4512, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451302, '兴宾区', 4513, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451321, '忻城县', 4513, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451322, '象州县', 4513, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451323, '武宣县', 4513, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451324, '金秀瑶族自治县', 4513, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451381, '合山市', 4513, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451402, '江州区', 4514, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451421, '扶绥县', 4514, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451422, '宁明县', 4514, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451423, '龙州县', 4514, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451424, '大新县', 4514, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451425, '天等县', 4514, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        451481, '凭祥市', 4514, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460105, '秀英区', 4601, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460106, '龙华区', 4601, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460107, '琼山区', 4601, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460108, '美兰区', 4601, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460202, '海棠区', 4602, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460203, '吉阳区', 4602, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460204, '天涯区', 4602, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460205, '崖州区', 4602, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460321, '西沙群岛', 4603, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460322, '南沙群岛', 4603, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460323, '中沙群岛的岛礁及其海域', 4603, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        460400, '儋州市', 4604, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469001, '五指山市', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469002, '琼海市', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469005, '文昌市', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469006, '万宁市', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469007, '东方市', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469021, '定安县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469022, '屯昌县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469023, '澄迈县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469024, '临高县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469025, '白沙黎族自治县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469026, '昌江黎族自治县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469027, '乐东黎族自治县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469028, '陵水黎族自治县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469029, '保亭黎族苗族自治县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        469030, '琼中黎族苗族自治县', 4690, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500101, '万州区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500102, '涪陵区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500103, '渝中区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500104, '大渡口区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500105, '江北区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500106, '沙坪坝区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500107, '九龙坡区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500108, '南岸区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500109, '北碚区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500110, '綦江区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500111, '大足区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500112, '渝北区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500113, '巴南区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500114, '黔江区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500115, '长寿区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500116, '江津区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500117, '合川区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500118, '永川区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500119, '南川区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500120, '璧山区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500151, '铜梁区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500152, '潼南区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500153, '荣昌区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500154, '开州区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500155, '梁平区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500156, '武隆区', 5001, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500229, '城口县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500230, '丰都县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500231, '垫江县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500233, '忠县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500235, '云阳县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500236, '奉节县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500237, '巫山县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500238, '巫溪县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500240, '石柱土家族自治县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500241, '秀山土家族苗族自治县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500242, '酉阳土家族苗族自治县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        500243, '彭水苗族土家族自治县', 5002, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510104, '锦江区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510105, '青羊区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510106, '金牛区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510107, '武侯区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510108, '成华区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510112, '龙泉驿区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510113, '青白江区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510114, '新都区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510115, '温江区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510116, '双流区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510117, '郫都区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510118, '新津区', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510121, '金堂县', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510129, '大邑县', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510131, '蒲江县', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510181, '都江堰市', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510182, '彭州市', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510183, '邛崃市', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510184, '崇州市', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510185, '简阳市', 5101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510302, '自流井区', 5103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510303, '贡井区', 5103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510304, '大安区', 5103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510311, '沿滩区', 5103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510321, '荣县', 5103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510322, '富顺县', 5103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510402, '东区', 5104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510403, '西区', 5104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510411, '仁和区', 5104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510421, '米易县', 5104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510422, '盐边县', 5104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510502, '江阳区', 5105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510503, '纳溪区', 5105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510504, '龙马潭区', 5105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510521, '泸县', 5105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510522, '合江县', 5105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510524, '叙永县', 5105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510525, '古蔺县', 5105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510603, '旌阳区', 5106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510604, '罗江区', 5106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510623, '中江县', 5106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510681, '广汉市', 5106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510682, '什邡市', 5106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510683, '绵竹市', 5106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510703, '涪城区', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510704, '游仙区', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510705, '安州区', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510722, '三台县', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510723, '盐亭县', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510725, '梓潼县', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510726, '北川羌族自治县', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510727, '平武县', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510781, '江油市', 5107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510802, '利州区', 5108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510811, '昭化区', 5108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510812, '朝天区', 5108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510821, '旺苍县', 5108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510822, '青川县', 5108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510823, '剑阁县', 5108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510824, '苍溪县', 5108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510903, '船山区', 5109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510904, '安居区', 5109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510921, '蓬溪县', 5109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510923, '大英县', 5109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        510981, '射洪市', 5109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511002, '市中区', 5110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511011, '东兴区', 5110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511024, '威远县', 5110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511025, '资中县', 5110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511083, '隆昌市', 5110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511102, '市中区', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511111, '沙湾区', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511112, '五通桥区', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511113, '金口河区', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511123, '犍为县', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511124, '井研县', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511126, '夹江县', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511129, '沐川县', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511132, '峨边彝族自治县', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511133, '马边彝族自治县', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511181, '峨眉山市', 5111, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511302, '顺庆区', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511303, '高坪区', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511304, '嘉陵区', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511321, '南部县', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511322, '营山县', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511323, '蓬安县', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511324, '仪陇县', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511325, '西充县', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511381, '阆中市', 5113, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511402, '东坡区', 5114, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511403, '彭山区', 5114, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511421, '仁寿县', 5114, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511423, '洪雅县', 5114, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511424, '丹棱县', 5114, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511425, '青神县', 5114, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511502, '翠屏区', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511503, '南溪区', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511504, '叙州区', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511523, '江安县', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511524, '长宁县', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511525, '高县', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511526, '珙县', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511527, '筠连县', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511528, '兴文县', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511529, '屏山县', 5115, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511602, '广安区', 5116, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511603, '前锋区', 5116, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511621, '岳池县', 5116, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511622, '武胜县', 5116, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511623, '邻水县', 5116, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511681, '华蓥市', 5116, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511702, '通川区', 5117, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511703, '达川区', 5117, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511722, '宣汉县', 5117, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511723, '开江县', 5117, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511724, '大竹县', 5117, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511725, '渠县', 5117, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511781, '万源市', 5117, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511802, '雨城区', 5118, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511803, '名山区', 5118, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511822, '荥经县', 5118, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511823, '汉源县', 5118, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511824, '石棉县', 5118, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511825, '天全县', 5118, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511826, '芦山县', 5118, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511827, '宝兴县', 5118, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511902, '巴州区', 5119, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511903, '恩阳区', 5119, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511921, '通江县', 5119, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511922, '南江县', 5119, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        511923, '平昌县', 5119, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        512002, '雁江区', 5120, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        512021, '安岳县', 5120, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        512022, '乐至县', 5120, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513201, '马尔康市', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513221, '汶川县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513222, '理县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513223, '茂县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513224, '松潘县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513225, '九寨沟县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513226, '金川县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513227, '小金县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513228, '黑水县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513230, '壤塘县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513231, '阿坝县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513232, '若尔盖县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513233, '红原县', 5132, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513301, '康定市', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513322, '泸定县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513323, '丹巴县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513324, '九龙县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513325, '雅江县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513326, '道孚县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513327, '炉霍县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513328, '甘孜县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513329, '新龙县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513330, '德格县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513331, '白玉县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513332, '石渠县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513333, '色达县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513334, '理塘县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513335, '巴塘县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513336, '乡城县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513337, '稻城县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513338, '得荣县', 5133, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513401, '西昌市', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513402, '会理市', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513422, '木里藏族自治县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513423, '盐源县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513424, '德昌县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513426, '会东县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513427, '宁南县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513428, '普格县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513429, '布拖县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513430, '金阳县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513431, '昭觉县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513432, '喜德县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513433, '冕宁县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513434, '越西县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513435, '甘洛县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513436, '美姑县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        513437, '雷波县', 5134, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520102, '南明区', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520103, '云岩区', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520111, '花溪区', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520112, '乌当区', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520113, '白云区', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520115, '观山湖区', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520121, '开阳县', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520122, '息烽县', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520123, '修文县', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520181, '清镇市', 5201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520201, '钟山区', 5202, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520203, '六枝特区', 5202, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520204, '水城区', 5202, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520281, '盘州市', 5202, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520302, '红花岗区', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520303, '汇川区', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520304, '播州区', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520322, '桐梓县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520323, '绥阳县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520324, '正安县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520325, '道真仡佬族苗族自治县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520326, '务川仡佬族苗族自治县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520327, '凤冈县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520328, '湄潭县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520329, '余庆县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520330, '习水县', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520381, '赤水市', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520382, '仁怀市', 5203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520402, '西秀区', 5204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520403, '平坝区', 5204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520422, '普定县', 5204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520423, '镇宁布依族苗族自治县', 5204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520424, '关岭布依族苗族自治县', 5204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520425, '紫云苗族布依族自治县', 5204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520502, '七星关区', 5205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520521, '大方县', 5205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520523, '金沙县', 5205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520524, '织金县', 5205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520525, '纳雍县', 5205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520526, '威宁彝族回族苗族自治县', 5205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520527, '赫章县', 5205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520581, '黔西市', 5205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520602, '碧江区', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520603, '万山区', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520621, '江口县', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520622, '玉屏侗族自治县', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520623, '石阡县', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520624, '思南县', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520625, '印江土家族苗族自治县', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520626, '德江县', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520627, '沿河土家族自治县', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        520628, '松桃苗族自治县', 5206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522301, '兴义市', 5223, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522302, '兴仁市', 5223, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522323, '普安县', 5223, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522324, '晴隆县', 5223, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522325, '贞丰县', 5223, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522326, '望谟县', 5223, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522327, '册亨县', 5223, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522328, '安龙县', 5223, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522601, '凯里市', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522622, '黄平县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522623, '施秉县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522624, '三穗县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522625, '镇远县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522626, '岑巩县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522627, '天柱县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522628, '锦屏县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522629, '剑河县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522630, '台江县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522631, '黎平县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522632, '榕江县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522633, '从江县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522634, '雷山县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522635, '麻江县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522636, '丹寨县', 5226, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522701, '都匀市', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522702, '福泉市', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522722, '荔波县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522723, '贵定县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522725, '瓮安县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522726, '独山县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522727, '平塘县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522728, '罗甸县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522729, '长顺县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522730, '龙里县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522731, '惠水县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        522732, '三都水族自治县', 5227, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530102, '五华区', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530103, '盘龙区', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530111, '官渡区', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530112, '西山区', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530113, '东川区', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530114, '呈贡区', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530115, '晋宁区', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530124, '富民县', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530125, '宜良县', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530126, '石林彝族自治县', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530127, '嵩明县', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530128, '禄劝彝族苗族自治县', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530129, '寻甸回族彝族自治县', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530181, '安宁市', 5301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530302, '麒麟区', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530303, '沾益区', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530304, '马龙区', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530322, '陆良县', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530323, '师宗县', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530324, '罗平县', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530325, '富源县', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530326, '会泽县', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530381, '宣威市', 5303, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530402, '红塔区', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530403, '江川区', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530423, '通海县', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530424, '华宁县', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530425, '易门县', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530426, '峨山彝族自治县', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530427, '新平彝族傣族自治县', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530428, '元江哈尼族彝族傣族自治县', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530481, '澄江市', 5304, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530502, '隆阳区', 5305, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530521, '施甸县', 5305, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530523, '龙陵县', 5305, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530524, '昌宁县', 5305, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530581, '腾冲市', 5305, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530602, '昭阳区', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530621, '鲁甸县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530622, '巧家县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530623, '盐津县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530624, '大关县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530625, '永善县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530626, '绥江县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530627, '镇雄县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530628, '彝良县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530629, '威信县', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530681, '水富市', 5306, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530702, '古城区', 5307, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530721, '玉龙纳西族自治县', 5307, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530722, '永胜县', 5307, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530723, '华坪县', 5307, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530724, '宁蒗彝族自治县', 5307, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530802, '思茅区', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530821, '宁洱哈尼族彝族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530822, '墨江哈尼族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530823, '景东彝族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530824, '景谷傣族彝族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530825, '镇沅彝族哈尼族拉祜族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530826, '江城哈尼族彝族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530827, '孟连傣族拉祜族佤族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530828, '澜沧拉祜族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530829, '西盟佤族自治县', 5308, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530902, '临翔区', 5309, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530921, '凤庆县', 5309, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530922, '云县', 5309, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530923, '永德县', 5309, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530924, '镇康县', 5309, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530925, '双江拉祜族佤族布朗族傣族自治县', 5309, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530926, '耿马傣族佤族自治县', 5309, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        530927, '沧源佤族自治县', 5309, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532301, '楚雄市', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532302, '禄丰市', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532322, '双柏县', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532323, '牟定县', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532324, '南华县', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532325, '姚安县', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532326, '大姚县', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532327, '永仁县', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532328, '元谋县', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532329, '武定县', 5323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532501, '个旧市', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532502, '开远市', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532503, '蒙自市', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532504, '弥勒市', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532523, '屏边苗族自治县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532524, '建水县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532525, '石屏县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532527, '泸西县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532528, '元阳县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532529, '红河县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532530, '金平苗族瑶族傣族自治县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532531, '绿春县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532532, '河口瑶族自治县', 5325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532601, '文山市', 5326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532622, '砚山县', 5326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532623, '西畴县', 5326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532624, '麻栗坡县', 5326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532625, '马关县', 5326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532626, '丘北县', 5326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532627, '广南县', 5326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532628, '富宁县', 5326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532801, '景洪市', 5328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532822, '勐海县', 5328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532823, '勐腊县', 5328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532901, '大理市', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532922, '漾濞彝族自治县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532923, '祥云县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532924, '宾川县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532925, '弥渡县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532926, '南涧彝族自治县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532927, '巍山彝族回族自治县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532928, '永平县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532929, '云龙县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532930, '洱源县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532931, '剑川县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        532932, '鹤庆县', 5329, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533102, '瑞丽市', 5331, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533103, '芒市', 5331, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533122, '梁河县', 5331, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533123, '盈江县', 5331, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533124, '陇川县', 5331, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533301, '泸水市', 5333, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533323, '福贡县', 5333, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533324, '贡山独龙族怒族自治县', 5333, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533325, '兰坪白族普米族自治县', 5333, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533401, '香格里拉市', 5334, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533422, '德钦县', 5334, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        533423, '维西傈僳族自治县', 5334, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540102, '城关区', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540103, '堆龙德庆区', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540104, '达孜区', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540121, '林周县', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540122, '当雄县', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540123, '尼木县', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540124, '曲水县', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540127, '墨竹工卡县', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540171, '格尔木藏青工业园区', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540172, '拉萨经济技术开发区', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540173, '西藏文化旅游创意园区', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540174, '达孜工业园区', 5401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540202, '桑珠孜区', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540221, '南木林县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540222, '江孜县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540223, '定日县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540224, '萨迦县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540225, '拉孜县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540226, '昂仁县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540227, '谢通门县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540228, '白朗县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540229, '仁布县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540230, '康马县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540231, '定结县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540232, '仲巴县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540233, '亚东县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540234, '吉隆县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540235, '聂拉木县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540236, '萨嘎县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540237, '岗巴县', 5402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540302, '卡若区', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540321, '江达县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540322, '贡觉县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540323, '类乌齐县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540324, '丁青县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540325, '察雅县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540326, '八宿县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540327, '左贡县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540328, '芒康县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540329, '洛隆县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540330, '边坝县', 5403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540402, '巴宜区', 5404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540421, '工布江达县', 5404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540422, '米林县', 5404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540423, '墨脱县', 5404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540424, '波密县', 5404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540425, '察隅县', 5404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540426, '朗县', 5404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540502, '乃东区', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540521, '扎囊县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540522, '贡嘎县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540523, '桑日县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540524, '琼结县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540525, '曲松县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540526, '措美县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540527, '洛扎县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540528, '加查县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540529, '隆子县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540530, '错那县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540531, '浪卡子县', 5405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540602, '色尼区', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540621, '嘉黎县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540622, '比如县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540623, '聂荣县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540624, '安多县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540625, '申扎县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540626, '索县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540627, '班戈县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540628, '巴青县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540629, '尼玛县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        540630, '双湖县', 5406, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        542521, '普兰县', 5425, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        542522, '札达县', 5425, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        542523, '噶尔县', 5425, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        542524, '日土县', 5425, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        542525, '革吉县', 5425, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        542526, '改则县', 5425, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        542527, '措勤县', 5425, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610102, '新城区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610103, '碑林区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610104, '莲湖区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610111, '灞桥区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610112, '未央区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610113, '雁塔区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610114, '阎良区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610115, '临潼区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610116, '长安区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610117, '高陵区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610118, '鄠邑区', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610122, '蓝田县', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610124, '周至县', 6101, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610202, '王益区', 6102, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610203, '印台区', 6102, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610204, '耀州区', 6102, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610222, '宜君县', 6102, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610302, '渭滨区', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610303, '金台区', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610304, '陈仓区', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610305, '凤翔区', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610323, '岐山县', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610324, '扶风县', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610326, '眉县', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610327, '陇县', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610328, '千阳县', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610329, '麟游县', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610330, '凤县', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610331, '太白县', 6103, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610402, '秦都区', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610403, '杨陵区', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610404, '渭城区', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610422, '三原县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610423, '泾阳县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610424, '乾县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610425, '礼泉县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610426, '永寿县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610428, '长武县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610429, '旬邑县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610430, '淳化县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610431, '武功县', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610481, '兴平市', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610482, '彬州市', 6104, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610502, '临渭区', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610503, '华州区', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610522, '潼关县', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610523, '大荔县', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610524, '合阳县', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610525, '澄城县', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610526, '蒲城县', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610527, '白水县', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610528, '富平县', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610581, '韩城市', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610582, '华阴市', 6105, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610602, '宝塔区', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610603, '安塞区', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610621, '延长县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610622, '延川县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610625, '志丹县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610626, '吴起县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610627, '甘泉县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610628, '富县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610629, '洛川县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610630, '宜川县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610631, '黄龙县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610632, '黄陵县', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610681, '子长市', 6106, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610702, '汉台区', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610703, '南郑区', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610722, '城固县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610723, '洋县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610724, '西乡县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610725, '勉县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610726, '宁强县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610727, '略阳县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610728, '镇巴县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610729, '留坝县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610730, '佛坪县', 6107, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610802, '榆阳区', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610803, '横山区', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610822, '府谷县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610824, '靖边县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610825, '定边县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610826, '绥德县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610827, '米脂县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610828, '佳县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610829, '吴堡县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610830, '清涧县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610831, '子洲县', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610881, '神木市', 6108, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610902, '汉滨区', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610921, '汉阴县', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610922, '石泉县', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610923, '宁陕县', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610924, '紫阳县', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610925, '岚皋县', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610926, '平利县', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610927, '镇坪县', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610929, '白河县', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        610981, '旬阳市', 6109, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        611002, '商州区', 6110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        611021, '洛南县', 6110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        611022, '丹凤县', 6110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        611023, '商南县', 6110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        611024, '山阳县', 6110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        611025, '镇安县', 6110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        611026, '柞水县', 6110, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620102, '城关区', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620103, '七里河区', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620104, '西固区', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620105, '安宁区', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620111, '红古区', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620121, '永登县', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620122, '皋兰县', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620123, '榆中县', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620171, '兰州新区', 6201, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620201, '嘉峪关市', 6202, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620302, '金川区', 6203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620321, '永昌县', 6203, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620402, '白银区', 6204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620403, '平川区', 6204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620421, '靖远县', 6204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620422, '会宁县', 6204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620423, '景泰县', 6204, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620502, '秦州区', 6205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620503, '麦积区', 6205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620521, '清水县', 6205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620522, '秦安县', 6205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620523, '甘谷县', 6205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620524, '武山县', 6205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620525, '张家川回族自治县', 6205, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620602, '凉州区', 6206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620621, '民勤县', 6206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620622, '古浪县', 6206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620623, '天祝藏族自治县', 6206, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620702, '甘州区', 6207, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620721, '肃南裕固族自治县', 6207, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620722, '民乐县', 6207, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620723, '临泽县', 6207, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620724, '高台县', 6207, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620725, '山丹县', 6207, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620802, '崆峒区', 6208, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620821, '泾川县', 6208, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620822, '灵台县', 6208, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620823, '崇信县', 6208, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620825, '庄浪县', 6208, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620826, '静宁县', 6208, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620881, '华亭市', 6208, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620902, '肃州区', 6209, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620921, '金塔县', 6209, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620922, '瓜州县', 6209, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620923, '肃北蒙古族自治县', 6209, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620924, '阿克塞哈萨克族自治县', 6209, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620981, '玉门市', 6209, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        620982, '敦煌市', 6209, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621002, '西峰区', 6210, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621021, '庆城县', 6210, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621022, '环县', 6210, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621023, '华池县', 6210, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621024, '合水县', 6210, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621025, '正宁县', 6210, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621026, '宁县', 6210, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621027, '镇原县', 6210, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621102, '安定区', 6211, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621121, '通渭县', 6211, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621122, '陇西县', 6211, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621123, '渭源县', 6211, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621124, '临洮县', 6211, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621125, '漳县', 6211, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621126, '岷县', 6211, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621202, '武都区', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621221, '成县', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621222, '文县', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621223, '宕昌县', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621224, '康县', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621225, '西和县', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621226, '礼县', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621227, '徽县', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        621228, '两当县', 6212, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        622901, '临夏市', 6229, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        622921, '临夏县', 6229, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        622922, '康乐县', 6229, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        622923, '永靖县', 6229, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        622924, '广河县', 6229, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        622925, '和政县', 6229, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        622926, '东乡族自治县', 6229, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        622927, '积石山保安族东乡族撒拉族自治县', 6229, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        623001, '合作市', 6230, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        623021, '临潭县', 6230, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        623022, '卓尼县', 6230, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        623023, '舟曲县', 6230, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        623024, '迭部县', 6230, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        623025, '玛曲县', 6230, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        623026, '碌曲县', 6230, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        623027, '夏河县', 6230, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630102, '城东区', 6301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630103, '城中区', 6301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630104, '城西区', 6301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630105, '城北区', 6301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630106, '湟中区', 6301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630121, '大通回族土族自治县', 6301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630123, '湟源县', 6301, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630202, '乐都区', 6302, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630203, '平安区', 6302, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630222, '民和回族土族自治县', 6302, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630223, '互助土族自治县', 6302, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630224, '化隆回族自治县', 6302, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        630225, '循化撒拉族自治县', 6302, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632221, '门源回族自治县', 6322, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632222, '祁连县', 6322, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632223, '海晏县', 6322, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632224, '刚察县', 6322, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632301, '同仁市', 6323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632322, '尖扎县', 6323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632323, '泽库县', 6323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632324, '河南蒙古族自治县', 6323, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632521, '共和县', 6325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632522, '同德县', 6325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632523, '贵德县', 6325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632524, '兴海县', 6325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632525, '贵南县', 6325, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632621, '玛沁县', 6326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632622, '班玛县', 6326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632623, '甘德县', 6326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632624, '达日县', 6326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632625, '久治县', 6326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632626, '玛多县', 6326, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632701, '玉树市', 6327, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632722, '杂多县', 6327, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632723, '称多县', 6327, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632724, '治多县', 6327, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632725, '囊谦县', 6327, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632726, '曲麻莱县', 6327, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632801, '格尔木市', 6328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632802, '德令哈市', 6328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632803, '茫崖市', 6328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632821, '乌兰县', 6328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632822, '都兰县', 6328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632823, '天峻县', 6328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        632857, '大柴旦行政委员会', 6328, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640104, '兴庆区', 6401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640105, '西夏区', 6401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640106, '金凤区', 6401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640121, '永宁县', 6401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640122, '贺兰县', 6401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640181, '灵武市', 6401, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640202, '大武口区', 6402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640205, '惠农区', 6402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640221, '平罗县', 6402, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640302, '利通区', 6403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640303, '红寺堡区', 6403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640323, '盐池县', 6403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640324, '同心县', 6403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640381, '青铜峡市', 6403, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640402, '原州区', 6404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640422, '西吉县', 6404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640423, '隆德县', 6404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640424, '泾源县', 6404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640425, '彭阳县', 6404, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640502, '沙坡头区', 6405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640521, '中宁县', 6405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        640522, '海原县', 6405, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650102, '天山区', 6501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650103, '沙依巴克区', 6501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650104, '新市区', 6501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650105, '水磨沟区', 6501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650106, '头屯河区', 6501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650107, '达坂城区', 6501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650109, '米东区', 6501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650121, '乌鲁木齐县', 6501, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650202, '独山子区', 6502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650203, '克拉玛依区', 6502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650204, '白碱滩区', 6502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650205, '乌尔禾区', 6502, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650402, '高昌区', 6504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650421, '鄯善县', 6504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650422, '托克逊县', 6504, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650502, '伊州区', 6505, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650521, '巴里坤哈萨克自治县', 6505, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        650522, '伊吾县', 6505, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652301, '昌吉市', 6523, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652302, '阜康市', 6523, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652323, '呼图壁县', 6523, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652324, '玛纳斯县', 6523, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652325, '奇台县', 6523, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652327, '吉木萨尔县', 6523, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652328, '木垒哈萨克自治县', 6523, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652701, '博乐市', 6527, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652702, '阿拉山口市', 6527, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652722, '精河县', 6527, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652723, '温泉县', 6527, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652801, '库尔勒市', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652822, '轮台县', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652823, '尉犁县', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652824, '若羌县', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652825, '且末县', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652826, '焉耆回族自治县', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652827, '和静县', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652828, '和硕县', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652829, '博湖县', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652871, '库尔勒经济技术开发区', 6528, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652901, '阿克苏市', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652902, '库车市', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652922, '温宿县', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652924, '沙雅县', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652925, '新和县', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652926, '拜城县', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652927, '乌什县', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652928, '阿瓦提县', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        652929, '柯坪县', 6529, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653001, '阿图什市', 6530, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653022, '阿克陶县', 6530, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653023, '阿合奇县', 6530, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653024, '乌恰县', 6530, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653101, '喀什市', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653121, '疏附县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653122, '疏勒县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653123, '英吉沙县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653124, '泽普县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653125, '莎车县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653126, '叶城县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653127, '麦盖提县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653128, '岳普湖县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653129, '伽师县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653130, '巴楚县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653131, '塔什库尔干塔吉克自治县', 6531, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653201, '和田市', 6532, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653221, '和田县', 6532, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653222, '墨玉县', 6532, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653223, '皮山县', 6532, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653224, '洛浦县', 6532, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653225, '策勒县', 6532, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653226, '于田县', 6532, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        653227, '民丰县', 6532, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654002, '伊宁市', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654003, '奎屯市', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654004, '霍尔果斯市', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654021, '伊宁县', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654022, '察布查尔锡伯自治县', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654023, '霍城县', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654024, '巩留县', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654025, '新源县', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654026, '昭苏县', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654027, '特克斯县', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654028, '尼勒克县', 6540, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654201, '塔城市', 6542, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654202, '乌苏市', 6542, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654203, '沙湾市', 6542, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654221, '额敏县', 6542, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654224, '托里县', 6542, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654225, '裕民县', 6542, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654226, '和布克赛尔蒙古自治县', 6542, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654301, '阿勒泰市', 6543, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654321, '布尔津县', 6543, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654322, '富蕴县', 6543, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654323, '福海县', 6543, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654324, '哈巴河县', 6543, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654325, '青河县', 6543, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        654326, '吉木乃县', 6543, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659001, '石河子市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659002, '阿拉尔市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659003, '图木舒克市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659004, '五家渠市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659005, '北屯市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659006, '铁门关市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659007, '双河市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659008, '可克达拉市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659009, '昆玉市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659010, '胡杨河市', 6590, '2023-06-25 13:48:35', NULL, 0
    );
INSERT INTO `district_info`
VALUES
    (
        659011, '新星市', 6590, '2023-06-25 13:48:35', NULL, 0
    );

-- ----------------------------
-- Table structure for facility_info
-- ----------------------------
DROP TABLE IF EXISTS `facility_info`;
CREATE TABLE `facility_info`
(
    `id`          bigint                                                       NOT NULL AUTO_INCREMENT COMMENT '自增逐渐',
    `type`        tinyint                                                      NULL DEFAULT NULL COMMENT '类型（1:公寓图片,2:房间图片）',
    `name`        varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
    `icon`        varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
    `create_time` timestamp                                                    NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                    NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                      NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 58
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '配套信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of facility_info
-- ----------------------------
INSERT INTO `facility_info`
VALUES
    (
        24, 1, '健身房', '健身房', '2023-06-17 06:21:24', '2023-07-15 09:01:38', 0
    );
INSERT INTO `facility_info`
VALUES
    (
        25, 1, '停车位', '停车场', '2023-06-17 06:21:42', '2023-07-18 11:22:21', 0
    );
INSERT INTO `facility_info`
VALUES
    (
        26, 1, '电梯', '电梯', '2023-06-17 06:21:47', '2023-07-18 11:22:33', 0
    );
INSERT INTO `facility_info`
VALUES
    (
        27, 1, '咖啡室', NULL, '2023-06-17 06:21:56', '2023-06-21 10:01:01', 1
    );
INSERT INTO `facility_info`
VALUES
    (
        28, 2, '空调', '空调', '2023-06-17 06:22:06', '2023-07-18 11:22:44', 0
    );
INSERT INTO `facility_info`
VALUES
    (
        29, 2, '洗衣机', '洗衣机', '2023-06-17 06:22:11', '2023-07-18 11:22:51', 0
    );
INSERT INTO `facility_info`
VALUES
    (
        30, 2, '冰箱', '冰箱', '2023-06-17 06:22:15', '2023-07-18 11:23:01', 0
    );
INSERT INTO `facility_info`
VALUES
    (
        38, 2, '床', NULL, '2023-06-19 06:11:22', '2023-06-19 14:15:03', 1
    );
INSERT INTO `facility_info`
VALUES
    (
        39, 1, '213', '24H安保', '2023-07-18 14:12:24', '2023-07-18 14:12:29', 1
    );
INSERT INTO `facility_info`
VALUES
    (
        40, 1, '台球', '桌球区', '2023-07-22 11:52:46', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        41, 1, '安保', '24H安保', '2023-08-01 09:01:31', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        42, 1, '团建', '社区活动', '2023-08-10 18:39:41', '2023-08-10 18:40:04', 0
    );
INSERT INTO `facility_info`
VALUES
    (
        43, 1, '书吧', '书吧', '2023-08-10 18:40:18', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        44, 1, '休息室', '休息室', '2023-08-10 18:40:30', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        45, 1, '便利店', '便利店', '2023-08-10 18:40:41', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        46, 1, '休闲区', '休闲区', '2023-08-10 18:40:51', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        47, 1, '监控', '安全监控', '2023-08-10 18:41:05', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        48, 2, '书桌', '书桌', '2023-08-10 18:41:27', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        49, 2, 'WIFI', '宽带', '2023-08-10 18:42:24', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        50, 2, '床', '床', '2023-08-10 18:42:37', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        51, 2, '沙发', '沙发', '2023-08-10 18:42:47', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        52, 2, '微波炉', '微波炉', '2023-08-10 18:43:02', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        53, 2, '油烟机', '抽油烟机', '2023-08-10 18:43:23', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        54, 2, '热水器', '热水器', '2023-08-10 18:43:49', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        55, 2, '衣柜', '衣柜', '2023-08-10 18:44:07', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        56, 2, '电视机', '电视机', '2023-08-10 18:44:23', NULL, 0
    );
INSERT INTO `facility_info`
VALUES
    (
        57, 1, '智能锁', '智能门锁', '2023-08-10 18:44:49', NULL, 0
    );

-- ----------------------------
-- Table structure for fee_key
-- ----------------------------
DROP TABLE IF EXISTS `fee_key`;
CREATE TABLE `fee_key`
(
    `id`          bigint                                                       NOT NULL AUTO_INCREMENT,
    `name`        varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付款项key',
    `create_time` timestamp                                                    NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                    NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                      NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 9
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '杂项费用名称表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fee_key
-- ----------------------------
INSERT INTO `fee_key`
VALUES
    (
        1, '停车费', '2023-06-19 03:03:55', NULL, 0
    );
INSERT INTO `fee_key`
VALUES
    (
        2, '网费', '2023-06-19 03:06:49', NULL, 0
    );
INSERT INTO `fee_key`
VALUES
    (
        3, '能源费', '2023-06-21 10:03:36', '2023-06-21 10:07:59', 1
    );
INSERT INTO `fee_key`
VALUES
    (
        4, '能源费', '2023-06-21 10:05:19', '2023-06-21 10:08:37', 1
    );
INSERT INTO `fee_key`
VALUES
    (
        5, '取暖费', '2023-07-18 15:55:13', '2023-07-18 16:32:17', 1
    );
INSERT INTO `fee_key`
VALUES
    (
        6, '电费', '2023-08-10 18:45:12', '2023-08-10 18:49:16', 0
    );
INSERT INTO `fee_key`
VALUES
    (
        7, '水费', '2023-08-10 18:50:00', '2023-08-10 18:50:17', 0
    );
INSERT INTO `fee_key`
VALUES
    (
        8, '取暖费', '2023-08-10 18:51:08', NULL, 0
    );

-- ----------------------------
-- Table structure for fee_value
-- ----------------------------
DROP TABLE IF EXISTS `fee_value`;
CREATE TABLE `fee_value`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT,
    `name`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '费用value',
    `unit`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收费单位',
    `fee_key_id`  bigint                                                        NULL DEFAULT NULL COMMENT '费用所对的fee_key',
    `create_time` timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 23
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '杂项费用值表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fee_value
-- ----------------------------
INSERT INTO `fee_value`
VALUES
    (
        1, '200', '元/月', 1, '2023-06-19 03:04:35', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        2, '300', '元/月', 1, '2023-06-19 03:04:40', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        3, '400', '元/月', 1, '2023-06-19 03:04:44', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        4, '50', '元/月', 2, '2023-06-19 03:07:00', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        5, '60', '元/月', 2, '2023-06-19 03:07:07', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        6, '1000', '元/年', 2, '2023-06-19 03:07:20', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        7, '500', '元/年', 2, '2023-06-19 03:07:27', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        8, '100', '元/月', 4, '2023-06-21 10:04:53', '2023-06-21 10:08:22', 1
    );
INSERT INTO `fee_value`
VALUES
    (
        9, '200', '元/月', 4, '2023-06-21 10:04:55', NULL, 1
    );
INSERT INTO `fee_value`
VALUES
    (
        10, '400', '元/月', 4, '2023-06-21 10:05:00', NULL, 1
    );
INSERT INTO `fee_value`
VALUES
    (
        11, '1500', '元/年', 5, '2023-07-18 15:55:37', '2023-07-18 15:56:03', 1
    );
INSERT INTO `fee_value`
VALUES
    (
        12, '2000', '元/年', 5, '2023-07-18 15:55:53', NULL, 1
    );
INSERT INTO `fee_value`
VALUES
    (
        13, '1.5', '元/度', 6, '2023-08-10 18:49:01', '2023-08-10 18:49:25', 0
    );
INSERT INTO `fee_value`
VALUES
    (
        14, '1', '元/度', 6, '2023-08-10 18:49:34', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        15, '0.5', '元/度', 6, '2023-08-10 18:49:43', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        16, '10', '元/吨', 7, '2023-08-10 18:50:35', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        17, '9', '元/吨', 7, '2023-08-10 18:50:41', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        18, '8', '元/吨', 7, '2023-08-10 18:50:47', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        19, '7', '元/吨', 7, '2023-08-10 18:50:53', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        20, '1000', '元/年', 8, '2023-08-10 18:51:23', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        21, '1200', '元/年', 8, '2023-08-10 18:51:38', NULL, 0
    );
INSERT INTO `fee_value`
VALUES
    (
        22, '1500', '元/年', 8, '2023-08-10 18:51:46', NULL, 0
    );

-- ----------------------------
-- Table structure for graph_info
-- ----------------------------
DROP TABLE IF EXISTS `graph_info`;
CREATE TABLE `graph_info`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '图片id',
    `name`        varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片名称',
    `item_type`   tinyint                                                       NULL DEFAULT NULL COMMENT '图片所属对象类型（1:apartment,2:room）',
    `item_id`     bigint                                                        NULL DEFAULT NULL COMMENT '图片所有对象id',
    `url`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片地址',
    `create_time` timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 172
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '图片信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of graph_info
-- ----------------------------
INSERT INTO `graph_info`
VALUES
    (
        130, '公寓-健身房.jpg', 1, 9,
        'http://113.141.166.99:9000/lease/20230819/a9ecf8fb-67f0-47d1-98b9-84e85ea7dc7a-公寓-健身房.jpg',
        '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        131, '公寓-停车位.jpg', 1, 9,
        'http://113.141.166.99:9000/lease/20230819/9c3a885d-97e3-41f4-b93b-ce5260d034a5-公寓-停车位.jpg',
        '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        132, '公寓-外观.jpg', 1, 9,
        'http://113.141.166.99:9000/lease/20230819/a402a3b1-a4f0-4676-aafc-c4d449dc78ce-公寓-外观.jpg',
        '2023-08-19 15:44:26', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        133, '公寓-外观.jpg', 1, 10,
        'http://113.141.166.99:9000/lease/20230819/bce4feb8-142c-42c4-84c6-9196daf02fee-公寓-外观.jpg',
        '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        134, '公寓-停车位.jpg', 1, 10,
        'http://113.141.166.99:9000/lease/20230819/b723c7ac-a330-4c55-9168-9acfcfcfaad8-公寓-停车位.jpg',
        '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        135, '公寓-健身房.jpg', 1, 10,
        'http://113.141.166.99:9000/lease/20230819/d7756118-e3ba-4b3e-8c6f-55ab9d0f5d6f-公寓-健身房.jpg',
        '2023-08-19 15:44:50', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        136, '房间-厨房-1.jpg', 2, 2,
        'http://113.141.166.99:9000/lease/20230819/2d845f3b-be98-4646-ad1d-f81b39803ca1-房间-厨房-1.jpg',
        '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        137, '房间-客厅-1.jpg', 2, 2,
        'http://113.141.166.99:9000/lease/20230819/5b55b8bc-e57e-428d-a0af-9d3b35e6d798-房间-客厅-1.jpg',
        '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        138, '房间-卧室-1.jpg', 2, 2,
        'http://113.141.166.99:9000/lease/20230819/f980a869-486f-4c00-94af-b6985eacd74e-房间-卧室-1.jpg',
        '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        139, '房间-厨房-2.jpg', 2, 3,
        'http://113.141.166.99:9000/lease/20230819/bfaedac4-1c4b-4144-88e4-d72bd77f62f1-房间-厨房-2.jpg',
        '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        140, '房间-卧室-1.jpg', 2, 3,
        'http://113.141.166.99:9000/lease/20230819/cd72ceef-a78e-492f-808e-a8928b62e55d-房间-卧室-1.jpg',
        '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        141, '房间-卧室-2.jpg', 2, 3,
        'http://113.141.166.99:9000/lease/20230819/5c8c2655-fb8f-4c9d-ada1-834a4870e7a9-房间-卧室-2.jpg',
        '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        142, '房间-厨房-1.jpg', 2, 8,
        'http://113.141.166.99:9000/lease/20230819/3d1e74bb-6753-4eb7-8dd7-4162cf8a8238-房间-厨房-1.jpg',
        '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        143, '房间-客厅-2.jpg', 2, 8,
        'http://113.141.166.99:9000/lease/20230819/a685444d-3271-42b4-8890-9256feb03006-房间-客厅-2.jpg',
        '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        144, '房间-卧室-2.jpg', 2, 8,
        'http://113.141.166.99:9000/lease/20230819/b64824f6-b829-40ff-85bb-1db7f49aa976-房间-卧室-2.jpg',
        '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        145, '房间-厨房-2.jpg', 2, 9,
        'http://113.141.166.99:9000/lease/20230819/a294ceab-ecaf-4275-845c-dc1a25e58ca9-房间-厨房-2.jpg',
        '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        146, '房间-卧室-2.jpg', 2, 9,
        'http://113.141.166.99:9000/lease/20230819/3e92806d-0d45-4c69-ac4b-25a9fb2e45b6-房间-卧室-2.jpg',
        '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        147, '房间-客厅-2.jpg', 2, 9,
        'http://113.141.166.99:9000/lease/20230819/9361c553-c358-45c7-a445-10ac6fee368c-房间-客厅-2.jpg',
        '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        148, '房间-厨房-1.jpg', 2, 10,
        'http://113.141.166.99:9000/lease/20230819/91b4170c-f05e-4ea2-94ff-ef6882154b07-房间-厨房-1.jpg',
        '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        149, '房间-客厅-1.jpg', 2, 10,
        'http://113.141.166.99:9000/lease/20230819/331e91ca-5d44-4557-9308-c3f76b6a5984-房间-客厅-1.jpg',
        '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        150, '房间-卧室-1.jpg', 2, 10,
        'http://113.141.166.99:9000/lease/20230819/0e3c74be-d4b6-4d7c-a944-08295ba0d607-房间-卧室-1.jpg',
        '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        151, '房间-厨房-3.jpg', 2, 12,
        'http://113.141.166.99:9000/lease/20230819/fa00bfd5-be0e-489a-a670-75843ccd3c91-房间-厨房-3.jpg',
        '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        152, '房间-客厅-2.jpg', 2, 12,
        'http://113.141.166.99:9000/lease/20230819/1cede015-3cef-483a-b848-5d36d1ad10b5-房间-客厅-2.jpg',
        '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        153, '房间-卧室-1.jpg', 2, 12,
        'http://113.141.166.99:9000/lease/20230819/c4063663-e9f9-45fc-a1bc-b557820cc7e5-房间-卧室-1.jpg',
        '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        154, '房间-厨房-1.jpg', 2, 11,
        'http://113.141.166.99:9000/lease/20230819/0034fbaf-5ebb-4a97-89e4-d644de2d31f6-房间-厨房-1.jpg',
        '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        155, '房间-客厅-1.jpg', 2, 11,
        'http://113.141.166.99:9000/lease/20230819/071fe30f-1d58-4058-9b65-7add7aaa3928-房间-客厅-1.jpg',
        '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        156, '房间-卧室-1.jpg', 2, 11,
        'http://113.141.166.99:9000/lease/20230819/d229f0e5-4448-4659-ac9a-de83dbace2ed-房间-卧室-1.jpg',
        '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        157, '房间-客厅-2.jpg', 2, 13,
        'http://113.141.166.99:9000/lease/20230819/af285216-0ac3-4eec-a769-14af57f684bf-房间-客厅-2.jpg',
        '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        158, '房间-厨房-3.jpg', 2, 13,
        'http://113.141.166.99:9000/lease/20230819/30c52f3c-f0c4-4fd3-8da7-9b46d1188a5a-房间-厨房-3.jpg',
        '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        159, '房间-卧室-2.jpg', 2, 13,
        'http://113.141.166.99:9000/lease/20230819/d611d950-cfa4-4119-b489-753c09c69282-房间-卧室-2.jpg',
        '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        160, '房间-厨房-1.jpg', 2, 14,
        'http://113.141.166.99:9000/lease/20230819/52bb324a-3705-4b8d-818a-99f84555b5a9-房间-厨房-1.jpg',
        '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        161, '房间-客厅-2.jpg', 2, 14,
        'http://113.141.166.99:9000/lease/20230819/9d79833d-b8bc-4405-88b9-8a967ff2b765-房间-客厅-2.jpg',
        '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        162, '房间-卧室-2.jpg', 2, 14,
        'http://113.141.166.99:9000/lease/20230819/e23469c8-3dca-4913-8440-ecc573468a78-房间-卧室-2.jpg',
        '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        163, '房间-厨房-1.jpg', 2, 15,
        'http://113.141.166.99:9000/lease/20230819/6230d6c8-4be6-47f1-86c3-18b50afbecd7-房间-厨房-1.jpg',
        '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        164, '房间-卧室-1.jpg', 2, 15,
        'http://113.141.166.99:9000/lease/20230819/d7fc0b0a-e242-432e-97d2-29108903dcd3-房间-卧室-1.jpg',
        '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        165, '房间-客厅-1.jpg', 2, 15,
        'http://113.141.166.99:9000/lease/20230819/6c25050c-3f54-44cf-9f83-334a9eab7c03-房间-客厅-1.jpg',
        '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        166, '房间-卧室-2.jpg', 2, 16,
        'http://113.141.166.99:9000/lease/20230819/490aa982-2400-423b-b5d0-cdd5b3277da1-房间-卧室-2.jpg',
        '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        167, '房间-厨房-2.jpg', 2, 16,
        'http://113.141.166.99:9000/lease/20230819/61eefbb2-6bb9-4a17-b2b7-0b07206a4731-房间-厨房-2.jpg',
        '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        168, '房间-客厅-1.jpg', 2, 16,
        'http://113.141.166.99:9000/lease/20230819/20af06f3-22c8-4951-aaab-9c5878659f9c-房间-客厅-1.jpg',
        '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        169, '房间-厨房-3.jpg', 2, 17,
        'http://113.141.166.99:9000/lease/20230819/8011ac8a-44e5-46cb-8962-5ec3f670954f-房间-厨房-3.jpg',
        '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        170, '房间-客厅-1.jpg', 2, 17,
        'http://113.141.166.99:9000/lease/20230819/b52d32be-e12c-413c-8dbf-5b56722ecbfa-房间-客厅-1.jpg',
        '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `graph_info`
VALUES
    (
        171, '房间-卧室-2.jpg', 2, 17,
        'http://113.141.166.99:9000/lease/20230819/0af9ae1e-b813-4949-a1f5-2f9ff5cfd3ab-房间-卧室-2.jpg',
        '2023-08-19 15:49:38', NULL, 0
    );

-- ----------------------------
-- Table structure for label_info
-- ----------------------------
DROP TABLE IF EXISTS `label_info`;
CREATE TABLE `label_info`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT,
    `type`        tinyint                                                       NULL DEFAULT NULL COMMENT '类型（1:公寓标签,2:房间标签）',
    `name`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名称',
    `create_time` timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 17
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '标签信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of label_info
-- ----------------------------
INSERT INTO `label_info`
VALUES
    (
        1, 1, '近地铁', '2023-06-19 00:49:17', NULL, 0
    );
INSERT INTO `label_info`
VALUES
    (
        2, 1, '近公交', '2023-06-19 00:49:23', NULL, 0
    );
INSERT INTO `label_info`
VALUES
    (
        3, 1, '有电梯', '2023-06-19 00:49:28', NULL, 0
    );
INSERT INTO `label_info`
VALUES
    (
        4, 1, '停车场', '2023-06-19 00:49:38', '2023-06-21 09:43:51', 0
    );
INSERT INTO `label_info`
VALUES
    (
        5, 2, '朝南', '2023-06-19 00:50:24', NULL, 0
    );
INSERT INTO `label_info`
VALUES
    (
        6, 2, '朝北', '2023-06-19 00:50:29', NULL, 0
    );
INSERT INTO `label_info`
VALUES
    (
        7, 2, '朝东', '2023-06-19 00:50:34', NULL, 0
    );
INSERT INTO `label_info`
VALUES
    (
        10, 2, '朝西', '2023-07-22 12:01:02', NULL, 0
    );
INSERT INTO `label_info`
VALUES
    (
        15, 2, '独卫', '2023-08-11 08:40:51', NULL, 0
    );
INSERT INTO `label_info`
VALUES
    (
        16, 2, '阳台', '2023-08-11 08:40:58', NULL, 0
    );

-- ----------------------------
-- Table structure for lease_agreement
-- ----------------------------
DROP TABLE IF EXISTS `lease_agreement`;
CREATE TABLE `lease_agreement`
(
    `id`                    bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '租约id',
    `phone`                 varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '承租人手机号码',
    `name`                  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '承租人姓名',
    `identification_number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '承租人身份证号码',
    `apartment_id`          bigint                                                        NULL DEFAULT NULL COMMENT '签约公寓id',
    `room_id`               bigint UNSIGNED                                               NULL DEFAULT NULL COMMENT '签约房间id',
    `lease_start_date`      date                                                          NULL DEFAULT NULL COMMENT '租约开始日期',
    `lease_end_date`        date                                                          NULL DEFAULT NULL COMMENT '租约结束日期',
    `lease_term_id`         bigint                                                        NULL DEFAULT NULL COMMENT '租期id',
    `rent`                  decimal(16, 2)                                                NULL DEFAULT NULL COMMENT '租金（元/月）',
    `deposit`               decimal(16, 2)                                                NULL DEFAULT NULL COMMENT '押金（元）',
    `payment_type_id`       bigint                                                        NULL DEFAULT NULL COMMENT '支付类型id\r\n',
    `status`                tinyint                                                       NULL DEFAULT NULL COMMENT '租约状态（1:签约待确认，2:已签约，3:已取消，4:已到期，5:退租待确认，6:已退租，7:续约待确认）',
    `source_type`           tinyint                                                       NULL DEFAULT NULL COMMENT '租约来源（1:新签，2:续约）',
    `additional_info`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
    `create_time`           timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`           timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`            tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '租约信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lease_agreement
-- ----------------------------
INSERT INTO `lease_agreement`
VALUES
    (
        1, '13888888888', '张三', '13241413243241324', 9, 3, '2020-12-29', '2019-12-30', 6, 2500.00, 0.00, 6, 4, 1,
        '无', '2023-06-21 15:36:08', '2023-08-14 15:03:03', 0
    );

-- ----------------------------
-- Table structure for lease_term
-- ----------------------------
DROP TABLE IF EXISTS `lease_term`;
CREATE TABLE `lease_term`
(
    `id`          bigint                                                       NOT NULL AUTO_INCREMENT,
    `month_count` int                                                          NULL DEFAULT NULL COMMENT '租期',
    `unit`        varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租期单位',
    `create_time` timestamp                                                    NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                    NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                      NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '租期'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lease_term
-- ----------------------------
INSERT INTO `lease_term`
VALUES
    (
        1, 1, '月', '2023-06-30 10:58:09', NULL, 0
    );
INSERT INTO `lease_term`
VALUES
    (
        2, 2, '月', '2023-06-30 10:58:12', '2023-06-30 11:00:02', 1
    );
INSERT INTO `lease_term`
VALUES
    (
        3, 3, '月', '2023-06-30 10:58:17', NULL, 0
    );
INSERT INTO `lease_term`
VALUES
    (
        4, 6, '月', '2023-06-30 10:58:21', NULL, 0
    );
INSERT INTO `lease_term`
VALUES
    (
        5, 12, '月', '2023-06-30 10:58:23', '2023-08-01 18:00:55', 1
    );
INSERT INTO `lease_term`
VALUES
    (
        6, 12, '月', '2023-08-01 18:01:20', NULL, 0
    );

-- ----------------------------
-- Table structure for payment_type
-- ----------------------------
DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE `payment_type`
(
    `id`              bigint                                                        NOT NULL AUTO_INCREMENT,
    `name`            varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '付款方式名称',
    `pay_month_count` int                                                           NULL DEFAULT NULL COMMENT '每次支付租期数',
    `additional_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付费说明',
    `create_time`     timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`     timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`      tinyint                                                       NULL DEFAULT NULL COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 12
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '支付方式表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payment_type
-- ----------------------------
INSERT INTO `payment_type`
VALUES
    (
        6, '月付', 1, '押一付一', '2023-06-21 11:26:08', '2023-06-21 11:27:14', 0
    );
INSERT INTO `payment_type`
VALUES
    (
        7, '季付', 3, '押一付三', '2023-06-21 11:26:21', '2023-06-21 11:27:33', 0
    );
INSERT INTO `payment_type`
VALUES
    (
        8, '半年付', 6, '押一付六', '2023-06-21 11:26:35', NULL, 0
    );
INSERT INTO `payment_type`
VALUES
    (
        9, '年付', 12, '压一付十二', NULL, NULL, 1
    );
INSERT INTO `payment_type`
VALUES
    (
        10, '年付', 24, '压一付十二', '2023-08-01 23:51:40', NULL, 0
    );
INSERT INTO `payment_type`
VALUES
    (
        11, '年付', 24, '压一付十二', '2023-08-01 23:52:15', '2023-08-10 14:36:55', 1
    );

-- ----------------------------
-- Table structure for province_info
-- ----------------------------
DROP TABLE IF EXISTS `province_info`;
CREATE TABLE `province_info`
(
    `id`          bigint                                                       NOT NULL AUTO_INCREMENT COMMENT '省份id',
    `name`        varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份名称',
    `create_time` timestamp                                                    NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                    NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                      NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 66
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of province_info
-- ----------------------------
INSERT INTO `province_info`
VALUES
    (
        11, '北京市', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        12, '天津市', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        13, '河北省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        14, '山西省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        15, '内蒙古自治区', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        21, '辽宁省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        22, '吉林省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        23, '黑龙江省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        31, '上海市', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        32, '江苏省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        33, '浙江省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        34, '安徽省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        35, '福建省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        36, '江西省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        37, '山东省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        41, '河南省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        42, '湖北省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        43, '湖南省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        44, '广东省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        45, '广西壮族自治区', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        46, '海南省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        50, '重庆市', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        51, '四川省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        52, '贵州省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        53, '云南省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        54, '西藏自治区', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        61, '陕西省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        62, '甘肃省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        63, '青海省', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        64, '宁夏回族自治区', '2023-06-25 13:48:39', NULL, 0
    );
INSERT INTO `province_info`
VALUES
    (
        65, '新疆维吾尔自治区', '2023-06-25 13:48:39', NULL, 0
    );

-- ----------------------------
-- Table structure for room_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `room_attr_value`;
CREATE TABLE `room_attr_value`
(
    `id`            bigint    NOT NULL AUTO_INCREMENT,
    `room_id`       bigint    NULL DEFAULT NULL COMMENT '房间id',
    `attr_value_id` bigint    NULL DEFAULT NULL COMMENT '属性值id',
    `create_time`   timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`   timestamp NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`    tinyint   NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 217
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '房间&基本属性值关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_attr_value
-- ----------------------------
INSERT INTO `room_attr_value`
VALUES
    (
        1, 2, 4, '2023-06-20 19:14:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        2, 2, 5, '2023-06-20 19:14:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        3, 2, 6, '2023-06-20 19:14:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        4, 3, 10, '2023-06-21 10:35:16', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        5, 3, 10, '2023-06-21 11:30:13', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        6, 3, 10, '2023-06-21 11:56:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        7, 4, 10, '2023-06-21 11:57:14', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        8, 7, 9, '2023-07-18 16:07:09', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        9, 2, 10, '2023-07-22 10:43:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        10, 2, 10, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        11, 2, 16, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        12, 2, 22, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        13, 2, 25, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        14, 2, 27, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        15, 2, 10, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        16, 2, 16, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        17, 2, 22, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        18, 2, 25, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        19, 3, 9, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        20, 3, 17, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        21, 3, 20, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        22, 3, 23, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        23, 3, 27, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        24, 2, 10, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        25, 2, 16, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        26, 2, 22, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        27, 2, 25, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        28, 3, 9, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        29, 3, 17, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        30, 3, 20, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        31, 3, 23, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        32, 3, 27, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        33, 8, 8, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        34, 8, 15, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        35, 8, 22, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        36, 8, 25, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        37, 8, 27, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        38, 9, 8, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        39, 9, 15, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        40, 9, 19, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        41, 9, 24, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        42, 9, 27, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        43, 10, 8, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        44, 10, 15, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        45, 10, 20, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        46, 10, 23, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        47, 10, 27, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        48, 2, 10, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        49, 2, 16, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        50, 2, 22, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        51, 2, 25, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        52, 9, 8, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        53, 9, 15, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        54, 9, 19, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        55, 9, 24, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        56, 9, 27, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        57, 9, 8, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        58, 9, 15, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        59, 9, 19, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        60, 9, 24, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        61, 9, 27, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        62, 11, 9, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        63, 12, 8, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        64, 12, 16, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        65, 12, 22, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        66, 12, 25, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        67, 12, 27, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        68, 13, 10, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        69, 13, 18, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        70, 11, 9, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        71, 11, 17, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        72, 11, 20, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        73, 11, 23, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        74, 11, 27, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        75, 14, 9, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        76, 14, 17, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        77, 14, 20, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        78, 14, 27, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        79, 14, 23, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        80, 15, 8, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        81, 15, 16, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        82, 15, 20, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        83, 15, 23, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        84, 15, 27, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        85, 12, 8, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        86, 12, 16, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        87, 12, 22, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        88, 12, 25, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        89, 12, 27, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        90, 16, 8, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        91, 16, 16, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        92, 16, 19, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        93, 16, 24, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        94, 16, 27, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        95, 17, 10, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        96, 17, 18, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        97, 17, 20, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        98, 17, 23, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        99, 17, 27, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        100, 2, 10, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        101, 2, 16, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        102, 2, 22, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        103, 2, 25, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        104, 3, 9, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        105, 3, 17, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        106, 3, 20, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        107, 3, 23, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        108, 3, 27, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        109, 8, 8, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        110, 8, 15, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        111, 8, 22, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        112, 8, 25, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        113, 8, 27, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        114, 9, 8, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        115, 9, 15, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        116, 9, 19, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        117, 9, 24, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        118, 9, 27, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        119, 9, 8, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        120, 9, 15, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        121, 9, 19, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        122, 9, 24, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        123, 9, 27, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        124, 10, 8, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        125, 10, 15, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        126, 10, 20, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        127, 10, 23, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        128, 10, 27, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        129, 11, 9, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        130, 11, 17, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        131, 11, 20, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        132, 11, 23, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        133, 11, 27, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        134, 12, 8, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        135, 12, 16, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        136, 12, 22, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        137, 12, 25, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        138, 12, 27, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        139, 13, 10, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        140, 13, 18, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        141, 14, 9, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        142, 14, 17, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        143, 14, 20, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        144, 14, 27, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        145, 14, 23, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        146, 15, 8, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        147, 15, 16, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        148, 15, 20, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        149, 15, 23, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        150, 15, 27, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        151, 16, 8, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        152, 16, 16, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        153, 16, 19, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        154, 16, 24, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        155, 16, 27, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        156, 17, 10, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        157, 17, 18, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        158, 17, 20, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        159, 17, 23, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        160, 17, 27, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_attr_value`
VALUES
    (
        161, 2, 10, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        162, 2, 16, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        163, 2, 22, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        164, 2, 25, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        165, 3, 9, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        166, 3, 17, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        167, 3, 20, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        168, 3, 23, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        169, 3, 27, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        170, 8, 8, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        171, 8, 15, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        172, 8, 22, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        173, 8, 25, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        174, 8, 27, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        175, 9, 8, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        176, 9, 15, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        177, 9, 19, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        178, 9, 24, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        179, 9, 27, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        180, 10, 8, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        181, 10, 15, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        182, 10, 20, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        183, 10, 23, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        184, 10, 27, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        185, 12, 8, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        186, 12, 16, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        187, 12, 22, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        188, 12, 25, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        189, 12, 27, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        190, 11, 9, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        191, 11, 17, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        192, 11, 20, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        193, 11, 23, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        194, 11, 27, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        195, 13, 10, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        196, 13, 18, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        197, 14, 9, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        198, 14, 17, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        199, 14, 20, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        200, 14, 27, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        201, 14, 23, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        202, 15, 8, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        203, 15, 16, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        204, 15, 20, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        205, 15, 23, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        206, 15, 27, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        207, 16, 8, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        208, 16, 16, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        209, 16, 19, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        210, 16, 24, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        211, 16, 27, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        212, 17, 10, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        213, 17, 18, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        214, 17, 20, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        215, 17, 23, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_attr_value`
VALUES
    (
        216, 17, 27, '2023-08-19 15:49:38', NULL, 0
    );

-- ----------------------------
-- Table structure for room_facility
-- ----------------------------
DROP TABLE IF EXISTS `room_facility`;
CREATE TABLE `room_facility`
(
    `id`          bigint    NOT NULL AUTO_INCREMENT,
    `room_id`     bigint    NULL DEFAULT NULL COMMENT '房间id',
    `facility_id` bigint    NULL DEFAULT NULL COMMENT '房间设施id',
    `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint   NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 560
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '房间&配套关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_facility
-- ----------------------------
INSERT INTO `room_facility`
VALUES
    (
        1, 2, 28, '2023-06-20 19:14:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        2, 2, 29, '2023-06-20 19:14:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        3, 2, 30, '2023-06-20 19:14:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        4, 3, 28, '2023-06-21 10:35:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        5, 3, 29, '2023-06-21 10:35:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        6, 3, 30, '2023-06-21 10:35:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        7, 3, 28, '2023-06-21 11:30:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        8, 3, 29, '2023-06-21 11:30:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        9, 3, 30, '2023-06-21 11:30:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        10, 3, 28, '2023-06-21 11:56:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        11, 3, 29, '2023-06-21 11:56:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        12, 3, 30, '2023-06-21 11:56:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        13, 4, 28, '2023-06-21 11:57:14', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        14, 4, 29, '2023-06-21 11:57:14', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        15, 4, 30, '2023-06-21 11:57:14', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        16, 7, 28, '2023-07-18 16:07:09', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        17, 2, 28, '2023-07-22 10:43:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        18, 2, 29, '2023-07-22 10:43:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        19, 2, 30, '2023-07-22 10:43:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        20, 2, 28, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        21, 2, 29, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        22, 2, 30, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        23, 2, 48, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        24, 2, 49, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        25, 2, 50, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        26, 2, 51, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        27, 2, 54, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        28, 2, 52, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        29, 2, 53, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        30, 2, 55, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        31, 2, 56, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        32, 2, 28, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        33, 2, 29, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        34, 2, 30, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        35, 2, 48, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        36, 2, 49, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        37, 2, 50, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        38, 2, 51, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        39, 2, 54, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        40, 2, 52, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        41, 2, 53, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        42, 2, 55, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        43, 2, 56, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        44, 3, 28, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        45, 3, 29, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        46, 3, 30, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        47, 3, 48, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        48, 3, 49, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        49, 3, 50, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        50, 3, 51, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        51, 3, 53, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        52, 3, 52, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        53, 3, 54, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        54, 3, 55, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        55, 3, 56, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        56, 2, 28, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        57, 2, 29, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        58, 2, 30, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        59, 2, 48, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        60, 2, 49, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        61, 2, 50, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        62, 2, 51, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        63, 2, 54, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        64, 2, 52, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        65, 2, 53, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        66, 2, 55, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        67, 2, 56, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        68, 3, 28, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        69, 3, 29, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        70, 3, 30, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        71, 3, 48, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        72, 3, 49, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        73, 3, 50, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        74, 3, 51, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        75, 3, 53, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        76, 3, 52, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        77, 3, 54, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        78, 3, 55, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        79, 3, 56, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        80, 8, 28, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        81, 8, 29, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        82, 8, 30, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        83, 8, 48, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        84, 8, 49, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        85, 8, 50, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        86, 8, 51, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        87, 8, 52, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        88, 8, 53, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        89, 8, 54, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        90, 8, 55, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        91, 8, 56, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        92, 9, 28, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        93, 9, 29, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        94, 9, 30, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        95, 9, 48, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        96, 9, 49, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        97, 9, 50, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        98, 9, 51, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        99, 9, 52, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        100, 9, 53, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        101, 9, 54, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        102, 9, 55, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        103, 9, 56, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        104, 10, 28, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        105, 10, 29, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        106, 10, 30, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        107, 10, 48, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        108, 10, 49, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        109, 10, 50, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        110, 10, 51, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        111, 10, 52, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        112, 10, 53, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        113, 10, 54, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        114, 10, 55, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        115, 10, 56, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        116, 2, 28, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        117, 2, 29, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        118, 2, 30, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        119, 2, 48, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        120, 2, 49, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        121, 2, 50, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        122, 2, 51, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        123, 2, 54, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        124, 2, 52, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        125, 2, 53, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        126, 2, 55, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        127, 2, 56, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        128, 9, 28, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        129, 9, 29, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        130, 9, 30, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        131, 9, 48, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        132, 9, 49, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        133, 9, 50, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        134, 9, 51, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        135, 9, 52, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        136, 9, 53, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        137, 9, 54, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        138, 9, 55, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        139, 9, 56, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        140, 9, 28, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        141, 9, 29, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        142, 9, 30, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        143, 9, 48, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        144, 9, 49, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        145, 9, 50, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        146, 9, 51, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        147, 9, 52, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        148, 9, 53, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        149, 9, 54, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        150, 9, 55, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        151, 9, 56, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        152, 11, 28, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        153, 11, 29, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        154, 11, 30, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        155, 11, 48, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        156, 11, 49, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        157, 11, 50, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        158, 11, 51, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        159, 11, 52, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        160, 11, 53, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        161, 11, 54, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        162, 11, 55, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        163, 11, 56, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        164, 12, 28, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        165, 12, 29, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        166, 12, 30, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        167, 12, 48, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        168, 12, 49, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        169, 12, 50, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        170, 12, 51, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        171, 12, 52, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        172, 12, 53, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        173, 12, 54, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        174, 12, 55, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        175, 12, 56, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        176, 13, 49, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        177, 13, 28, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        178, 13, 29, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        179, 13, 30, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        180, 13, 48, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        181, 13, 50, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        182, 13, 51, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        183, 13, 52, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        184, 13, 53, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        185, 13, 54, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        186, 13, 55, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        187, 13, 56, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        188, 11, 28, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        189, 11, 29, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        190, 11, 30, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        191, 11, 48, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        192, 11, 49, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        193, 11, 50, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        194, 11, 51, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        195, 11, 52, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        196, 11, 53, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        197, 11, 54, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        198, 11, 55, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        199, 11, 56, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        200, 14, 28, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        201, 14, 29, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        202, 14, 30, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        203, 14, 48, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        204, 14, 49, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        205, 14, 50, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        206, 14, 51, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        207, 14, 52, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        208, 14, 53, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        209, 14, 54, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        210, 14, 55, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        211, 14, 56, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        212, 15, 28, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        213, 15, 29, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        214, 15, 30, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        215, 15, 48, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        216, 15, 49, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        217, 15, 50, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        218, 15, 51, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        219, 15, 52, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        220, 15, 53, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        221, 15, 54, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        222, 15, 55, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        223, 15, 56, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        224, 12, 28, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        225, 12, 29, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        226, 12, 30, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        227, 12, 48, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        228, 12, 49, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        229, 12, 50, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        230, 12, 51, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        231, 12, 52, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        232, 12, 53, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        233, 12, 54, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        234, 12, 55, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        235, 12, 56, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        236, 16, 28, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        237, 16, 29, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        238, 16, 30, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        239, 16, 48, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        240, 16, 49, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        241, 16, 50, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        242, 16, 51, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        243, 16, 52, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        244, 16, 53, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        245, 16, 54, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        246, 16, 55, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        247, 16, 56, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        248, 17, 28, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        249, 17, 29, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        250, 17, 30, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        251, 17, 48, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        252, 17, 49, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        253, 17, 50, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        254, 17, 51, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        255, 17, 52, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        256, 17, 53, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        257, 17, 54, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        258, 17, 55, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        259, 17, 56, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        260, 2, 28, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        261, 2, 29, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        262, 2, 30, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        263, 2, 48, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        264, 2, 49, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        265, 2, 50, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        266, 2, 51, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        267, 2, 54, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        268, 2, 52, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        269, 2, 53, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        270, 2, 55, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        271, 2, 56, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        272, 3, 28, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        273, 3, 29, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        274, 3, 30, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        275, 3, 48, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        276, 3, 49, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        277, 3, 50, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        278, 3, 51, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        279, 3, 53, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        280, 3, 52, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        281, 3, 54, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        282, 3, 55, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        283, 3, 56, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        284, 8, 28, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        285, 8, 29, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        286, 8, 30, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        287, 8, 48, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        288, 8, 49, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        289, 8, 50, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        290, 8, 51, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        291, 8, 52, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        292, 8, 53, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        293, 8, 54, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        294, 8, 55, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        295, 8, 56, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        296, 9, 28, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        297, 9, 29, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        298, 9, 30, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        299, 9, 48, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        300, 9, 49, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        301, 9, 50, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        302, 9, 51, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        303, 9, 52, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        304, 9, 53, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        305, 9, 54, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        306, 9, 55, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        307, 9, 56, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        308, 9, 28, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        309, 9, 29, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        310, 9, 30, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        311, 9, 48, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        312, 9, 49, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        313, 9, 50, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        314, 9, 51, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        315, 9, 52, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        316, 9, 53, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        317, 9, 54, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        318, 9, 55, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        319, 9, 56, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        320, 10, 28, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        321, 10, 29, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        322, 10, 30, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        323, 10, 48, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        324, 10, 49, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        325, 10, 50, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        326, 10, 51, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        327, 10, 52, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        328, 10, 53, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        329, 10, 54, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        330, 10, 55, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        331, 10, 56, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        332, 11, 28, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        333, 11, 29, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        334, 11, 30, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        335, 11, 48, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        336, 11, 49, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        337, 11, 50, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        338, 11, 51, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        339, 11, 52, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        340, 11, 53, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        341, 11, 54, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        342, 11, 55, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        343, 11, 56, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        344, 12, 28, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        345, 12, 29, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        346, 12, 30, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        347, 12, 48, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        348, 12, 49, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        349, 12, 50, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        350, 12, 51, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        351, 12, 52, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        352, 12, 53, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        353, 12, 54, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        354, 12, 55, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        355, 12, 56, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        356, 13, 49, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        357, 13, 28, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        358, 13, 29, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        359, 13, 30, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        360, 13, 48, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        361, 13, 50, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        362, 13, 51, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        363, 13, 52, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        364, 13, 53, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        365, 13, 54, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        366, 13, 55, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        367, 13, 56, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        368, 14, 28, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        369, 14, 29, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        370, 14, 30, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        371, 14, 48, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        372, 14, 49, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        373, 14, 50, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        374, 14, 51, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        375, 14, 52, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        376, 14, 53, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        377, 14, 54, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        378, 14, 55, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        379, 14, 56, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        380, 15, 28, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        381, 15, 29, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        382, 15, 30, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        383, 15, 48, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        384, 15, 49, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        385, 15, 50, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        386, 15, 51, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        387, 15, 52, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        388, 15, 53, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        389, 15, 54, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        390, 15, 55, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        391, 15, 56, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        392, 16, 28, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        393, 16, 29, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        394, 16, 30, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        395, 16, 48, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        396, 16, 49, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        397, 16, 50, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        398, 16, 51, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        399, 16, 52, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        400, 16, 53, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        401, 16, 54, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        402, 16, 55, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        403, 16, 56, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        404, 17, 28, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        405, 17, 29, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        406, 17, 30, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        407, 17, 48, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        408, 17, 49, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        409, 17, 50, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        410, 17, 51, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        411, 17, 52, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        412, 17, 53, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        413, 17, 54, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        414, 17, 55, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        415, 17, 56, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_facility`
VALUES
    (
        416, 2, 28, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        417, 2, 29, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        418, 2, 30, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        419, 2, 48, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        420, 2, 49, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        421, 2, 50, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        422, 2, 51, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        423, 2, 54, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        424, 2, 52, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        425, 2, 53, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        426, 2, 55, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        427, 2, 56, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        428, 3, 28, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        429, 3, 29, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        430, 3, 30, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        431, 3, 48, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        432, 3, 49, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        433, 3, 50, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        434, 3, 51, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        435, 3, 53, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        436, 3, 52, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        437, 3, 54, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        438, 3, 55, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        439, 3, 56, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        440, 8, 28, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        441, 8, 29, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        442, 8, 30, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        443, 8, 48, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        444, 8, 49, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        445, 8, 50, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        446, 8, 51, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        447, 8, 52, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        448, 8, 53, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        449, 8, 54, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        450, 8, 55, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        451, 8, 56, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        452, 9, 28, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        453, 9, 29, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        454, 9, 30, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        455, 9, 48, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        456, 9, 49, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        457, 9, 50, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        458, 9, 51, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        459, 9, 52, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        460, 9, 53, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        461, 9, 54, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        462, 9, 55, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        463, 9, 56, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        464, 10, 28, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        465, 10, 29, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        466, 10, 30, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        467, 10, 48, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        468, 10, 49, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        469, 10, 50, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        470, 10, 51, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        471, 10, 52, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        472, 10, 53, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        473, 10, 54, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        474, 10, 55, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        475, 10, 56, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        476, 12, 28, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        477, 12, 29, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        478, 12, 30, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        479, 12, 48, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        480, 12, 49, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        481, 12, 50, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        482, 12, 51, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        483, 12, 52, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        484, 12, 53, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        485, 12, 54, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        486, 12, 55, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        487, 12, 56, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        488, 11, 28, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        489, 11, 29, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        490, 11, 30, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        491, 11, 48, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        492, 11, 49, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        493, 11, 50, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        494, 11, 51, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        495, 11, 52, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        496, 11, 53, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        497, 11, 54, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        498, 11, 55, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        499, 11, 56, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        500, 13, 49, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        501, 13, 28, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        502, 13, 29, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        503, 13, 30, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        504, 13, 48, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        505, 13, 50, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        506, 13, 51, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        507, 13, 52, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        508, 13, 53, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        509, 13, 54, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        510, 13, 55, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        511, 13, 56, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        512, 14, 28, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        513, 14, 29, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        514, 14, 30, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        515, 14, 48, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        516, 14, 49, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        517, 14, 50, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        518, 14, 51, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        519, 14, 52, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        520, 14, 53, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        521, 14, 54, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        522, 14, 55, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        523, 14, 56, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        524, 15, 28, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        525, 15, 29, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        526, 15, 30, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        527, 15, 48, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        528, 15, 49, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        529, 15, 50, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        530, 15, 51, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        531, 15, 52, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        532, 15, 53, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        533, 15, 54, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        534, 15, 55, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        535, 15, 56, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        536, 16, 28, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        537, 16, 29, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        538, 16, 30, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        539, 16, 48, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        540, 16, 49, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        541, 16, 50, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        542, 16, 51, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        543, 16, 52, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        544, 16, 53, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        545, 16, 54, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        546, 16, 55, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        547, 16, 56, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        548, 17, 28, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        549, 17, 29, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        550, 17, 30, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        551, 17, 48, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        552, 17, 49, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        553, 17, 50, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        554, 17, 51, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        555, 17, 52, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        556, 17, 53, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        557, 17, 54, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        558, 17, 55, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_facility`
VALUES
    (
        559, 17, 56, '2023-08-19 15:49:38', NULL, 0
    );

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info`
(
    `id`           bigint                                                       NOT NULL AUTO_INCREMENT COMMENT '房间id',
    `room_number`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '房间号',
    `rent`         decimal(16, 2)                                               NULL DEFAULT NULL COMMENT '租金（元/月）',
    `apartment_id` bigint                                                       NULL DEFAULT NULL COMMENT '所属公寓id',
    `is_release`   tinyint                                                      NULL DEFAULT NULL COMMENT '是否发布',
    `create_time`  timestamp                                                    NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`  timestamp                                                    NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`   tinyint                                                      NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 18
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '房间信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_info
-- ----------------------------
INSERT INTO `room_info`
VALUES
    (
        2, '101', 2500.00, 9, 1, '2023-06-20 19:14:46', '2023-08-19 15:46:10', 0
    );
INSERT INTO `room_info`
VALUES
    (
        3, '102', 3000.00, 10, 1, '2023-06-21 10:35:16', '2023-08-19 15:46:32', 0
    );
INSERT INTO `room_info`
VALUES
    (
        4, '102', 3000.00, 10, 1, '2023-06-21 11:57:14', NULL, 1
    );
INSERT INTO `room_info`
VALUES
    (
        7, '301', 3200.00, 10, 1, '2023-07-18 16:07:09', NULL, 1
    );
INSERT INTO `room_info`
VALUES
    (
        8, '102', 2000.00, 9, 1, '2023-08-13 23:39:37', '2023-08-19 15:46:49', 0
    );
INSERT INTO `room_info`
VALUES
    (
        9, '103', 2000.00, 9, 1, '2023-08-13 23:40:50', '2023-08-19 15:47:08', 0
    );
INSERT INTO `room_info`
VALUES
    (
        10, '104', 3000.00, 9, 1, '2023-08-13 23:42:02', '2023-08-19 15:47:28', 0
    );
INSERT INTO `room_info`
VALUES
    (
        11, '105', 4500.00, 9, 1, '2023-08-13 23:57:42', '2023-08-19 15:48:04', 0
    );
INSERT INTO `room_info`
VALUES
    (
        12, '106', 3500.00, 9, 1, '2023-08-13 23:58:53', '2023-08-19 15:47:45', 0
    );
INSERT INTO `room_info`
VALUES
    (
        13, '101', 6000.00, 10, 1, '2023-08-13 23:59:50', '2023-08-19 15:48:26', 0
    );
INSERT INTO `room_info`
VALUES
    (
        14, '103', 4500.00, 10, 1, '2023-08-14 00:06:39', '2023-08-19 15:48:46', 0
    );
INSERT INTO `room_info`
VALUES
    (
        15, '104', 3500.00, 10, 1, '2023-08-14 00:07:43', '2023-08-19 15:49:04', 0
    );
INSERT INTO `room_info`
VALUES
    (
        16, '105', 3500.00, 10, 1, '2023-08-14 00:09:07', '2023-08-19 15:49:22', 0
    );
INSERT INTO `room_info`
VALUES
    (
        17, '106', 6000.00, 10, 1, '2023-08-14 10:36:19', '2023-08-19 15:49:38', 0
    );

-- ----------------------------
-- Table structure for room_label
-- ----------------------------
DROP TABLE IF EXISTS `room_label`;
CREATE TABLE `room_label`
(
    `id`          bigint    NOT NULL AUTO_INCREMENT,
    `room_id`     bigint    NULL DEFAULT NULL COMMENT '房间id',
    `label_id`    bigint    NULL DEFAULT NULL COMMENT '标签id',
    `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint   NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 135
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '房间&标签关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_label
-- ----------------------------
INSERT INTO `room_label`
VALUES
    (
        13, 2, 15, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        14, 2, 16, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        15, 3, 5, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        16, 3, 15, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        17, 3, 16, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        18, 8, 16, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        19, 8, 15, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        20, 8, 6, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        21, 9, 7, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        22, 9, 15, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        23, 9, 16, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        24, 10, 5, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        25, 10, 16, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        26, 10, 15, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        27, 2, 15, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        28, 2, 16, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        29, 9, 7, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        30, 9, 15, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        31, 9, 16, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        32, 9, 7, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        33, 9, 15, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        34, 9, 16, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        35, 11, 15, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        36, 11, 5, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        37, 11, 16, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        38, 12, 6, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        39, 12, 15, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        40, 12, 16, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        41, 13, 16, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        42, 13, 15, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        43, 13, 5, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        44, 11, 5, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        45, 11, 15, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        46, 11, 16, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        47, 14, 5, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        48, 14, 15, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        49, 14, 16, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        50, 15, 5, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        51, 15, 15, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        52, 15, 16, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        53, 12, 6, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        54, 12, 15, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        55, 12, 16, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        56, 16, 7, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        57, 16, 15, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        58, 16, 16, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        59, 17, 5, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        60, 17, 15, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        61, 17, 16, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        62, 2, 15, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        63, 2, 16, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        64, 3, 5, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        65, 3, 15, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        66, 3, 16, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        67, 8, 6, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        68, 8, 15, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        69, 8, 16, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        70, 9, 7, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        71, 9, 15, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        72, 9, 16, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        73, 9, 7, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        74, 9, 15, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        75, 9, 16, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        76, 10, 5, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        77, 10, 15, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        78, 10, 16, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        79, 11, 5, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        80, 11, 15, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        81, 11, 16, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        82, 12, 6, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        83, 12, 15, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        84, 12, 16, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        85, 13, 5, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        86, 13, 15, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        87, 13, 16, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        88, 14, 5, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        89, 14, 15, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        90, 14, 16, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        91, 15, 5, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        92, 15, 15, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        93, 15, 16, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        94, 16, 7, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        95, 16, 15, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        96, 16, 16, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        97, 17, 5, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        98, 17, 15, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        99, 17, 16, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_label`
VALUES
    (
        100, 2, 15, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        101, 2, 16, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        102, 3, 5, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        103, 3, 15, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        104, 3, 16, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        105, 8, 6, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        106, 8, 15, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        107, 8, 16, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        108, 9, 7, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        109, 9, 15, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        110, 9, 16, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        111, 10, 5, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        112, 10, 15, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        113, 10, 16, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        114, 12, 6, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        115, 12, 15, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        116, 12, 16, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        117, 11, 5, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        118, 11, 15, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        119, 11, 16, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        120, 13, 5, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        121, 13, 15, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        122, 13, 16, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        123, 14, 5, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        124, 14, 15, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        125, 14, 16, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        126, 15, 5, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        127, 15, 15, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        128, 15, 16, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        129, 16, 7, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        130, 16, 15, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        131, 16, 16, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        132, 17, 5, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        133, 17, 15, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_label`
VALUES
    (
        134, 17, 16, '2023-08-19 15:49:38', NULL, 0
    );

-- ----------------------------
-- Table structure for room_lease_term
-- ----------------------------
DROP TABLE IF EXISTS `room_lease_term`;
CREATE TABLE `room_lease_term`
(
    `id`            bigint    NOT NULL AUTO_INCREMENT,
    `room_id`       bigint    NULL DEFAULT NULL COMMENT '房间id',
    `lease_term_id` bigint    NULL DEFAULT NULL COMMENT '租期id',
    `create_time`   timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`   timestamp NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`    tinyint   NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 186
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '房间租期管理表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_lease_term
-- ----------------------------
INSERT INTO `room_lease_term`
VALUES
    (
        1, 7, 1, '2023-07-18 16:07:09', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        2, 7, 3, '2023-07-18 16:07:09', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        3, 7, 4, '2023-07-18 16:07:09', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        4, 7, 5, '2023-07-18 16:07:09', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        5, 2, 3, '2023-07-22 10:43:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        6, 2, 3, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        7, 2, 1, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        8, 2, 4, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        9, 2, 6, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        10, 2, 1, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        11, 2, 3, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        12, 2, 4, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        13, 2, 6, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        14, 3, 1, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        15, 3, 3, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        16, 3, 4, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        17, 3, 6, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        18, 2, 1, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        19, 2, 3, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        20, 2, 4, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        21, 2, 6, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        22, 3, 1, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        23, 3, 3, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        24, 3, 4, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        25, 3, 6, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        26, 8, 1, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        27, 8, 3, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        28, 8, 4, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        29, 8, 6, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        30, 9, 1, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        31, 9, 3, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        32, 9, 4, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        33, 9, 6, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        34, 10, 1, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        35, 10, 3, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        36, 10, 4, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        37, 10, 6, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        38, 2, 1, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        39, 2, 3, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        40, 2, 4, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        41, 2, 6, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        42, 9, 1, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        43, 9, 3, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        44, 9, 4, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        45, 9, 6, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        46, 9, 1, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        47, 9, 3, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        48, 9, 4, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        49, 9, 6, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        50, 11, 1, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        51, 11, 3, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        52, 11, 4, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        53, 11, 6, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        54, 12, 1, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        55, 12, 3, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        56, 12, 4, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        57, 12, 6, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        58, 13, 1, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        59, 13, 3, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        60, 13, 4, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        61, 13, 6, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        62, 11, 1, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        63, 11, 3, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        64, 11, 4, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        65, 11, 6, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        66, 14, 1, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        67, 14, 3, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        68, 14, 4, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        69, 14, 6, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        70, 15, 1, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        71, 15, 3, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        72, 15, 4, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        73, 15, 6, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        74, 12, 1, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        75, 12, 3, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        76, 12, 4, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        77, 12, 6, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        78, 16, 1, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        79, 16, 3, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        80, 16, 4, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        81, 16, 6, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        82, 17, 1, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        83, 17, 3, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        84, 17, 4, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        85, 17, 6, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        86, 2, 1, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        87, 2, 3, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        88, 2, 4, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        89, 2, 6, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        90, 3, 1, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        91, 3, 3, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        92, 3, 4, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        93, 3, 6, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        94, 8, 1, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        95, 8, 3, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        96, 8, 4, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        97, 8, 6, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        98, 9, 1, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        99, 9, 3, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        100, 9, 4, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        101, 9, 6, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        102, 9, 1, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        103, 9, 3, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        104, 9, 4, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        105, 9, 6, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        106, 10, 1, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        107, 10, 3, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        108, 10, 4, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        109, 10, 6, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        110, 11, 1, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        111, 11, 3, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        112, 11, 4, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        113, 11, 6, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        114, 12, 1, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        115, 12, 3, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        116, 12, 4, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        117, 12, 6, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        118, 13, 1, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        119, 13, 3, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        120, 13, 4, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        121, 13, 6, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        122, 14, 1, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        123, 14, 3, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        124, 14, 4, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        125, 14, 6, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        126, 15, 1, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        127, 15, 3, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        128, 15, 4, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        129, 15, 6, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        130, 16, 1, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        131, 16, 3, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        132, 16, 4, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        133, 16, 6, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        134, 17, 1, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        135, 17, 3, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        136, 17, 4, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        137, 17, 6, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_lease_term`
VALUES
    (
        138, 2, 1, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        139, 2, 3, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        140, 2, 4, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        141, 2, 6, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        142, 3, 1, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        143, 3, 3, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        144, 3, 4, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        145, 3, 6, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        146, 8, 1, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        147, 8, 3, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        148, 8, 4, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        149, 8, 6, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        150, 9, 1, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        151, 9, 3, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        152, 9, 4, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        153, 9, 6, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        154, 10, 1, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        155, 10, 3, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        156, 10, 4, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        157, 10, 6, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        158, 12, 1, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        159, 12, 3, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        160, 12, 4, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        161, 12, 6, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        162, 11, 1, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        163, 11, 3, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        164, 11, 4, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        165, 11, 6, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        166, 13, 1, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        167, 13, 3, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        168, 13, 4, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        169, 13, 6, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        170, 14, 1, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        171, 14, 3, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        172, 14, 4, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        173, 14, 6, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        174, 15, 1, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        175, 15, 3, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        176, 15, 4, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        177, 15, 6, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        178, 16, 1, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        179, 16, 3, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        180, 16, 4, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        181, 16, 6, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        182, 17, 1, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        183, 17, 3, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        184, 17, 4, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_lease_term`
VALUES
    (
        185, 17, 6, '2023-08-19 15:49:38', NULL, 0
    );

-- ----------------------------
-- Table structure for room_payment_type
-- ----------------------------
DROP TABLE IF EXISTS `room_payment_type`;
CREATE TABLE `room_payment_type`
(
    `id`              bigint    NOT NULL AUTO_INCREMENT,
    `room_id`         bigint    NULL DEFAULT NULL COMMENT '房间id',
    `payment_type_id` bigint    NULL DEFAULT NULL COMMENT '支付类型id',
    `create_time`     timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`     timestamp NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`      tinyint   NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 185
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '房间&支付方式关联表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_payment_type
-- ----------------------------
INSERT INTO `room_payment_type`
VALUES
    (
        1, 2, 0, '2023-06-20 19:14:46', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        2, 3, 6, '2023-06-21 11:30:13', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        3, 3, 7, '2023-06-21 11:30:13', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        4, 3, 8, '2023-06-21 11:30:13', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        5, 3, 6, '2023-06-21 11:56:46', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        6, 3, 7, '2023-06-21 11:56:46', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        7, 3, 8, '2023-06-21 11:56:46', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        8, 4, 6, '2023-06-21 11:57:14', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        9, 4, 7, '2023-06-21 11:57:14', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        10, 4, 8, '2023-06-21 11:57:14', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        11, 7, 7, '2023-07-18 16:07:09', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        12, 2, 6, '2023-07-22 10:43:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        13, 2, 6, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        14, 2, 7, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        15, 2, 8, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        16, 2, 10, '2023-08-10 18:54:16', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        17, 2, 6, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        18, 2, 7, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        19, 2, 8, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        20, 2, 10, '2023-08-10 19:42:49', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        21, 3, 8, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        22, 3, 10, '2023-08-11 08:35:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        23, 2, 6, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        24, 2, 7, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        25, 2, 8, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        26, 2, 10, '2023-08-11 08:41:28', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        27, 3, 8, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        28, 3, 10, '2023-08-11 08:41:35', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        29, 8, 7, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        30, 8, 6, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        31, 8, 8, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        32, 8, 10, '2023-08-13 23:39:37', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        33, 9, 6, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        34, 9, 7, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        35, 9, 8, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        36, 9, 10, '2023-08-13 23:40:50', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        37, 10, 10, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        38, 10, 8, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        39, 10, 7, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        40, 10, 6, '2023-08-13 23:42:02', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        41, 2, 6, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        42, 2, 7, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        43, 2, 8, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        44, 2, 10, '2023-08-13 23:44:58', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        45, 9, 6, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        46, 9, 7, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        47, 9, 8, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        48, 9, 10, '2023-08-13 23:47:56', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        49, 9, 6, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        50, 9, 7, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        51, 9, 8, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        52, 9, 10, '2023-08-13 23:54:31', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        53, 11, 6, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        54, 11, 7, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        55, 11, 8, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        56, 11, 10, '2023-08-13 23:57:42', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        57, 12, 8, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        58, 12, 10, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        59, 12, 7, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        60, 12, 6, '2023-08-13 23:58:53', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        61, 13, 6, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        62, 13, 7, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        63, 13, 8, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        64, 13, 10, '2023-08-13 23:59:50', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        65, 11, 6, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        66, 11, 7, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        67, 11, 8, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        68, 11, 10, '2023-08-14 00:00:35', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        69, 14, 6, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        70, 14, 7, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        71, 14, 8, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        72, 14, 10, '2023-08-14 00:06:39', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        73, 15, 6, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        74, 15, 7, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        75, 15, 8, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        76, 15, 10, '2023-08-14 00:07:43', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        77, 12, 6, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        78, 12, 7, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        79, 12, 8, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        80, 12, 10, '2023-08-14 00:07:58', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        81, 16, 6, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        82, 16, 7, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        83, 16, 8, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        84, 16, 10, '2023-08-14 00:09:07', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        85, 17, 6, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        86, 17, 7, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        87, 17, 8, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        88, 17, 10, '2023-08-14 10:36:19', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        89, 2, 6, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        90, 2, 7, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        91, 2, 8, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        92, 2, 10, '2023-08-14 12:31:24', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        93, 3, 8, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        94, 3, 10, '2023-08-14 12:31:46', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        95, 8, 6, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        96, 8, 7, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        97, 8, 8, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        98, 8, 10, '2023-08-14 12:32:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        99, 9, 6, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        100, 9, 7, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        101, 9, 8, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        102, 9, 10, '2023-08-14 12:32:42', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        103, 9, 6, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        104, 9, 7, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        105, 9, 8, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        106, 9, 10, '2023-08-14 12:32:53', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        107, 10, 6, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        108, 10, 7, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        109, 10, 8, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        110, 10, 10, '2023-08-14 12:33:13', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        111, 11, 6, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        112, 11, 7, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        113, 11, 8, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        114, 11, 10, '2023-08-14 12:33:33', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        115, 12, 6, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        116, 12, 7, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        117, 12, 8, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        118, 12, 10, '2023-08-14 12:33:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        119, 13, 6, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        120, 13, 7, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        121, 13, 8, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        122, 13, 10, '2023-08-14 12:33:57', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        123, 14, 6, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        124, 14, 7, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        125, 14, 8, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        126, 14, 10, '2023-08-14 12:34:08', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        127, 15, 6, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        128, 15, 7, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        129, 15, 8, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        130, 15, 10, '2023-08-14 12:34:20', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        131, 16, 6, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        132, 16, 7, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        133, 16, 8, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        134, 16, 10, '2023-08-14 12:34:45', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        135, 17, 6, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        136, 17, 7, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        137, 17, 8, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        138, 17, 10, '2023-08-14 12:35:08', NULL, 1
    );
INSERT INTO `room_payment_type`
VALUES
    (
        139, 2, 6, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        140, 2, 7, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        141, 2, 8, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        142, 2, 10, '2023-08-19 15:46:10', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        143, 3, 8, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        144, 3, 10, '2023-08-19 15:46:32', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        145, 8, 6, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        146, 8, 7, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        147, 8, 8, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        148, 8, 10, '2023-08-19 15:46:49', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        149, 9, 6, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        150, 9, 7, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        151, 9, 8, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        152, 9, 10, '2023-08-19 15:47:08', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        153, 10, 6, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        154, 10, 7, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        155, 10, 8, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        156, 10, 10, '2023-08-19 15:47:28', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        157, 12, 6, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        158, 12, 7, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        159, 12, 8, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        160, 12, 10, '2023-08-19 15:47:45', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        161, 11, 6, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        162, 11, 7, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        163, 11, 8, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        164, 11, 10, '2023-08-19 15:48:04', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        165, 13, 6, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        166, 13, 7, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        167, 13, 8, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        168, 13, 10, '2023-08-19 15:48:26', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        169, 14, 6, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        170, 14, 7, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        171, 14, 8, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        172, 14, 10, '2023-08-19 15:48:46', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        173, 15, 6, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        174, 15, 7, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        175, 15, 8, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        176, 15, 10, '2023-08-19 15:49:04', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        177, 16, 6, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        178, 16, 7, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        179, 16, 8, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        180, 16, 10, '2023-08-19 15:49:22', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        181, 17, 6, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        182, 17, 7, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        183, 17, 8, '2023-08-19 15:49:38', NULL, 0
    );
INSERT INTO `room_payment_type`
VALUES
    (
        184, 17, 10, '2023-08-19 15:49:38', NULL, 0
    );

-- ----------------------------
-- Table structure for system_post
-- ----------------------------
DROP TABLE IF EXISTS `system_post`;
CREATE TABLE `system_post`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
    `code`        varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NOT NULL COMMENT '岗位编码',
    `name`        varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NOT NULL DEFAULT '' COMMENT '岗位名称',
    `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '描述',
    `status`      tinyint(1)                                                    NOT NULL DEFAULT 1 COMMENT '状态（1正常 0停用）',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `update_time` timestamp                                                     NULL     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 9
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '岗位信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_post
-- ----------------------------
INSERT INTO `system_post`
VALUES
    (
        1, 'regional manager', '区域经理', '区域经理', 1, '2023-08-10 09:01:56', '2023-08-10 17:01:57', 0
    );
INSERT INTO `system_post`
VALUES
    (
        2, 'dsz', '董事长', '1', 1, '2023-08-10 09:02:46', '2023-08-10 17:02:47', 1
    );
INSERT INTO `system_post`
VALUES
    (
        6, 'general manager', '总经理', '总经理', 1, '2023-08-10 09:04:00', '2023-08-10 17:04:01', 0
    );
INSERT INTO `system_post`
VALUES
    (
        7, 'apartment manager', '店长', '公寓店长', 1, '2023-08-10 09:03:55', '2023-08-10 17:03:56', 0
    );
INSERT INTO `system_post`
VALUES
    (
        8, '测试3', '测试3', '测试3', 1, '2023-07-18 02:13:24', '2023-07-18 10:13:25', 1
    );

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`
(
    `id`              bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '员工id',
    `username`        varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '用户名',
    `password`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
    `name`            varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '姓名',
    `type`            tinyint                                                       NULL DEFAULT NULL COMMENT '用户类型',
    `phone`           varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '手机号码',
    `avatar_url`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像地址',
    `additional_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
    `post_id`         bigint                                                        NULL DEFAULT NULL COMMENT '岗位id',
    `status`          tinyint                                                       NULL DEFAULT NULL COMMENT '账号状态',
    `create_time`     timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`     timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`      tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '员工信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user`
VALUES
    (
        1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', 0, '18888888888', NULL, NULL, 6, 1,
        '2023-08-10 17:13:00', '2023-08-19 23:30:48', 0
    );
INSERT INTO `system_user`
VALUES
    (
        2, 'user', 'e10adc3949ba59abbe56e057f20f883e', '用户', 1, '13666666666', NULL, NULL, 7, 1,
        '2023-08-19 16:53:53', NULL, 0
    );

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '用户id',
    `phone`       varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '手机号码（用做登录用户名）',
    `password`    varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '密码',
    `avatar_url`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像url',
    `nickname`    varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '昵称',
    `status`      tinyint                                                       NULL DEFAULT 1 COMMENT '账号状态',
    `create_time` timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time` timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '用户信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info`
VALUES
    (
        1, '13888888888', NULL, NULL, '用户-888888', 1, '2023-07-01 14:48:17', NULL, 0
    );

-- ----------------------------
-- Table structure for view_appointment
-- ----------------------------
DROP TABLE IF EXISTS `view_appointment`;
CREATE TABLE `view_appointment`
(
    `id`                 bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '预约id',
    `user_id`            bigint                                                        NULL DEFAULT NULL COMMENT '用户id',
    `name`               varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '用户姓名',
    `phone`              varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL COMMENT '用户手机号码',
    `apartment_id`       int                                                           NULL DEFAULT NULL COMMENT '公寓id',
    `appointment_time`   timestamp                                                     NULL DEFAULT NULL COMMENT '预约时间',
    `additional_info`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
    `appointment_status` tinyint                                                       NULL DEFAULT NULL COMMENT '预约状态（1:待看房，2:已取消，3已看房）',
    `create_time`        timestamp                                                     NULL DEFAULT NULL COMMENT '创建时间',
    `update_time`        timestamp                                                     NULL DEFAULT NULL COMMENT '更新时间',
    `is_deleted`         tinyint                                                       NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 12
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '预约看房信息表'
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of view_appointment
-- ----------------------------
INSERT INTO `view_appointment`
VALUES
    (
        1, 1, '张三', '13888888888', 9, '2023-07-14 09:01:01', '无', 1, '2023-07-14 09:40:43', NULL, 0
    );
INSERT INTO `view_appointment`
VALUES
    (
        2, 2, '李四', '13666666666', 9, '2023-07-14 09:01:01', '无', 1, '2023-07-27 16:13:54', NULL, 0
    );
INSERT INTO `view_appointment`
VALUES
    (
        10, 7, '张三', '13888888888', 9, '2023-08-14 15:40:00', '无', 1, '2023-08-14 12:44:50', '2023-08-14 15:10:04', 0
    );
INSERT INTO `view_appointment`
VALUES
    (
        11, 7, '张三', '13888888888', 10, '2023-08-14 14:45:20', '', 1, '2023-08-14 12:45:51', '2023-08-14 14:49:58', 0
    );

SET
    FOREIGN_KEY_CHECKS = 1;
