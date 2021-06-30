/*
Navicat Premium Data Transfer

Source Server : Mysql
Source Server Type : MySQL
Source Server Version : 50703
Source Host : localhost:3306
Source Schema : actdemo

Target Server Type : MySQL
Target Server Version : 50703
File Encoding : 65001

Date: 13/05/2021 19:39:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS tb_evection;
CREATE TABLE tb_evection (
                             id int(10) NOT NULL AUTO_INCREMENT,
                             evectionName varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                             num double NULL DEFAULT NULL,
                             destination varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                             begindate date NULL DEFAULT NULL,
                             enddate date NULL DEFAULT NULL,
                             reson varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                             state int(4) NULL DEFAULT NULL,
                             userid int(20) NULL DEFAULT NULL,
                             PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;


DROP TABLE IF EXISTS tb_flow;
CREATE TABLE tb_flow (
                         id int(20) NOT NULL AUTO_INCREMENT,
                         flowname varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         flowkey varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         filepath varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         state int(4) NULL DEFAULT NULL,
                         createtime date NULL DEFAULT NULL,
                         PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;



INSERT INTO tb_flow VALUES (1, '出差申请', 'evection', 'bpmn/evection.bpmn', 1, '2021-05-13');



DROP TABLE IF EXISTS tb_sitemessage;
CREATE TABLE tb_sitemessage (
                                id int(20) NOT NULL AUTO_INCREMENT,
                                userid int(20) NULL DEFAULT NULL,
                                type int(10) NULL DEFAULT NULL,
                                content varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                isread int(4) NULL DEFAULT NULL,
                                createtime date NULL DEFAULT NULL,
                                updatetime date NULL DEFAULT NULL,
                                taskid varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;


DROP TABLE IF EXISTS tb_user;
CREATE TABLE tb_user (
                         id int(11) NOT NULL AUTO_INCREMENT,
                         age int(40) NULL DEFAULT NULL,
                         username varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         password varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         email varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         gender int(40) NULL DEFAULT NULL,
                         role varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         rolegroup varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;



INSERT INTO tb_user VALUES (1, 20, 'jack', '$2a$10$9FIX76XUZgIyiOTjy5iswe9fJrWuaxAwTLsJb0QFJAcu5OqTb/TJS', '123@123.com', 1, 'user', 'activiti_user');
INSERT INTO tb_user VALUES (2, 25, 'rose', '$2a10 1010zGGc98.YdHWaf7h5mMmpd.S40/Idy.o7N/1eEQPiXYD/dPSNfhdIC', '234@234.com', 2, 'user', 'activiti_user');
INSERT INTO tb_user VALUES (3, 22, 'tom', '$2a10 1010BvbBBfMBJeEGCIfAnFUo0ukTxR3F7SFuguBpLsJENVlz5QdPObq3O', '345@35.com', 1, 'user', 'activiti_user');
INSERT INTO tb_user VALUES (4, 30, 'jerry', '$2a10 1010GK/waizjpHZV1/eD4.G5f.ODLjKQEhL8ZAgHlYPUY99.HX62Pq23y', '456@456.com', 2, 'user', 'activiti_user');

SET FOREIGN_KEY_CHECKS = 1;
