/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 19/12/2021 10:09:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
BEGIN;
INSERT INTO `hibernate_sequence` VALUES (2);
COMMIT;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext COLLATE utf8_bin,
  `create_time` datetime(6) DEFAULT NULL,
  `first_picture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `views` int DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK292449gwg5yf7ocdlmswv9w4j` (`type_id`),
  KEY `FK8ky5rrsxh01nkhctmo7d48p82` (`user_id`),
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`),
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
BEGIN;
INSERT INTO `t_blog` VALUES (1, b'1', b'1', '*2016年探测到引力波，这一事实为爱因斯坦的广义相对论提供了决定性的支持证据。但另一个令人震惊的预言仍未得到证实。根据广义相对论，每个引力波都应该在时空结构上留下不可磨灭的印记。它应该会永久地扭曲空间，甚至在行波过后还会使引力波探测器的镜面发生位移。*\r\n\r\n自从6年前的首次探测以来，物理学家们一直在试图找出如何测量这种所谓的 \"记忆效应\"。\r\n\r\n澳大利亚莫纳什大学的天体物理学家保罗·拉斯基说：\"记忆效应绝对是一个奇怪的现象。是非常深刻的东西。\"\r\n\r\n他们的目标更广泛，不仅仅是瞥见一个经过的引力波留下的永久性时空伤痕。通过探索物质、能量和时空之间的联系，物理学家们希望能够更好地理解霍金的黑洞信息悖论，该悖论在过去五十年中一直是理论研究的主要焦点。\"记忆效应和时空对称性之间存在着密切的联系，\"加利福尼亚理工学院的物理学家基普·索恩说，他在引力波方面的工作使他获得了2017年诺贝尔物理学奖。\"它最终与黑洞中的信息损失有关，这是空间和时间结构中一个非常深刻的问题。\"\r\n\r\n**时空中的一道伤痕**\r\n\r\n为什么引力波会永久地改变时空的结构？这要归结于广义相对论对时空和能量的密切联系。\r\n\r\n首先考虑当引力波经过引力波探测器时会发生什么。激光干涉仪引力波观测站(LIGO)有两个臂膀，呈L形。如果你想象一个环绕着两臂的圆，圆心位于两臂的交汇处，引力波将周期性地扭曲这个圆，垂直挤压，然后水平挤压，交替进行，直到波动完全经过。两条臂之间的长度差将会振荡--这种行为让圆的扭曲，揭示引力波的存在。\r\n\r\n根据记忆效应，在波过后，圆应该保持永久变形的微小数量。其原因与广义相对论所描述的引力的特殊性有关。\r\n\r\nLIGO探测到的物体距离很远，它们的引力弱得可以忽略不计。但是引力波的范围比引力要长。因此，负责记忆效应的属性也是如此：引力势能。\r\n\r\n用简单的牛顿力学来说，引力势衡量一个物体如果从某个高度坠落会获得多少能量。把一个铁砧扔下悬崖，铁砧最终的动能大致相当于其当初所具有的“潜能”。\r\n\r\n但在广义相对论中，时空根据物体的运动在不同的方向上被拉伸和挤压，势能决定的不仅仅是某个位置的势能--它决定了时空的形状。\r\n\r\n\"记忆只不过是引力势的变化，\"索恩说，\"但这是一个相对论的引力势。\" 一个经过的引力波的能量产生了引力势的变化；这种势的变化扭曲了时空，甚至在波过后也是如此。\r\n\r\n一个经过的波会如何扭曲时空？可能性简直是无限的，而且，令人费解的是，这些可能性也是相互等价的。\r\n\r\n唉，LIGO的科学家还没有看到记忆效应的证据。引力波对LIGO镜子之间距离的改变是微不足道的--大约是质子宽度的千分之一--而这还要比记忆效应大20倍。\r\n\r\nLIGO被放置在我们这个嘈杂的星球上，使问题更加恶化。低频地震噪声干扰很像是记忆效应，因此从噪声中分离出信号是很棘手的事情。\r\n\r\n地球的引力也倾向于将LIGO的镜子恢复到它们的原始位置。因此，即使时空疤痕是永久性的，但镜子位置的变化--它使我们能够测量结点--却不是。研究人员将需要在引力有时间把镜子拉回来之前测量记忆效应所造成的位移。\r\n\r\n虽然检测单一引力波引起的记忆效应在目前的技术中是不可行的，但像拉斯基和伯明翰大学的帕特里夏·施密特这样的天体物理学家已经想到了巧妙的变通方法。拉斯基说：\"你能做的是有效地堆积来自多个合并的信号，以一种非常严格的统计学方式积累证据。\"\r\n\r\n拉斯基和施密特分别独立地给出分析，他们将需要超过1000个引力波事件来积累足够的统计数据，以确认他们已经看到了记忆效应。随着LIGO的不断改进，以及意大利的VIRGO探测器和日本的KAGRA的贡献，拉斯基认为1000次探测可在短短几年内达成。\r\n\r\n*\"这是一个如此特别的预测，看看它是否真的是真的，这相当令人兴奋。\"\r\n*\r\nhttps://www.quantamagazine.org/gravitational-waves-should-permanently-distort-space-time-20211208/', '2021-12-16 08:26:39.429000', 'https://picsum.photos/800/450', '原创', b'1', b'0', b'1', '引力波本应在时空中留下一道永久的疤痕，但我们至今未观测到', '2021-12-16 08:26:39.429000', 6, 12, 1, NULL);
INSERT INTO `t_blog` VALUES (3, b'1', b'0', '111', '2021-12-16 12:02:24.211000', 'https://picsum.photos/800/450', '', b'0', b'0', b'0', 'test', '2021-12-16 12:02:24.211000', 0, 7, 1, NULL);
INSERT INTO `t_blog` VALUES (4, b'0', b'1', '12221', '2021-12-16 12:02:47.777000', 'https://picsum.photos/800/450', '', b'0', b'0', b'0', 'test', '2021-12-16 12:02:47.777000', 0, 4, 1, NULL);
INSERT INTO `t_blog` VALUES (5, b'0', b'0', '使用Springboot JPA创建表时候出现了hibernate_sequence表：\r\n\r\n这里要指定主键自增策略，默认是以Oracle的方式来实现自增主键。想用mysql的自增方式需要`改为@GeneratedValue(strategy = GenerationType.IDENTITY)`\r\n\r\n\r\n\r\n\r\n\r\n* 发现在构建web层下的Controller时\r\n\r\n  ```\r\n  @Autowired\r\n  private TypeService typeService;\r\n  ```\r\n\r\n  报错， 但是包是正常引入，没有其他问题，检查后发现是在TypeServiceImpl类中没有注释@Service导致\r\n\r\n\r\n\r\n* 创建博客时提示Caused by: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1\r\n\r\n  说明文字太长，直接更改该键类型为LongText \r\n\r\n  或者在实体类里定义时还用String 但是加一个@Lob注解表示为大字段类型（通常与@Basic(fetch=FetchType.LAZY）一起使用（不用的时候就不加载，节省资源）， 但是好像是在初始化的时候才行\r\n\r\n\r\n\r\n* 发现在用JPA时候，@Query 中想要用实体类名字查询但是没提示，标红 \r\n\r\n  发现是因为是这样写的，所以实体类Tag就识别不了，可以用t_tag 如果不想这样\r\n\r\n  ```\r\n  @Entity(name = \"t_tag\")\r\n  ```\r\n\r\n就改写为\r\n\r\n~~~\r\n		@Entity\r\n		@Table(name = \"t_tag\")\r\n~~~\r\n\r\n\r\n\r\n', '2021-12-16 15:23:45.825000', 'https://picsum.photos/800/450', '', b'1', b'1', b'0', 'test111', '2021-12-16 15:23:45.825000', 4, 6, 1, 'markdown 测试');
INSERT INTO `t_blog` VALUES (6, b'1', b'1', 'test1', '2020-01-01 02:03:01.002000', 'https://picsum.photos/800/450', '原创', b'1', b'0', b'1', 'test', '2020-01-01 02:05:01.002000', 2, 5, 1, '测试年份');
COMMIT;

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags` (
  `blogs_id` bigint NOT NULL,
  `tags_id` bigint NOT NULL,
  KEY `FK5feau0gb4lq47fdb03uboswm8` (`tags_id`),
  KEY `FKh4pacwjwofrugxa9hpwaxg6mr` (`blogs_id`),
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`),
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
BEGIN;
INSERT INTO `t_blog_tags` VALUES (1, 2);
INSERT INTO `t_blog_tags` VALUES (3, 2);
INSERT INTO `t_blog_tags` VALUES (3, 3);
INSERT INTO `t_blog_tags` VALUES (4, 2);
INSERT INTO `t_blog_tags` VALUES (4, 3);
INSERT INTO `t_blog_tags` VALUES (5, 2);
INSERT INTO `t_blog_tags` VALUES (5, 3);
COMMIT;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `blog_id` bigint DEFAULT NULL,
  `parent_comment_id` bigint DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKke3uogd04j4jx316m1p51e05u` (`blog_id`),
  KEY `FK4jj284r3pb7japogvo6h72q95` (`parent_comment_id`),
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`),
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
BEGIN;
INSERT INTO `t_comment` VALUES (1, '/images/avatar.png', 'test', '2021-12-17 04:25:50.713000', 'rick.lee.asia@gmail.com', '1', 1, NULL, b'0');
INSERT INTO `t_comment` VALUES (2, '/images/avatar.png', 'test', '2021-12-17 04:29:37.296000', '111@qq.com', '1', 1, NULL, b'0');
INSERT INTO `t_comment` VALUES (3, '/images/avatar.png', '111', '2021-12-17 04:31:28.770000', '111@qq.com', '1', 1, NULL, b'0');
INSERT INTO `t_comment` VALUES (4, '/images/avatar.png', 'test', '2021-12-17 06:00:36.025000', 'liyangly21@163.com', '123', 1, NULL, b'0');
INSERT INTO `t_comment` VALUES (5, '/images/avatar.png', 'test', '2021-12-17 06:10:06.086000', 'liyangly21@163.com', '123', 1, NULL, b'0');
INSERT INTO `t_comment` VALUES (6, '/images/avatar.png', '122', '2021-12-17 07:26:39.738000', '21041927g@connect.polyu.hk', '12', 1, 5, b'0');
INSERT INTO `t_comment` VALUES (7, '/images/avatar.png', '我是恁爹', '2021-12-17 07:28:15.271000', '21041927g@connect.polyu.hk', '78', 1, 5, b'0');
INSERT INTO `t_comment` VALUES (8, '/images/avatar.png', '我是恁爹', '2021-12-17 07:28:33.792000', '21041927g@connect.polyu.hk', '12', 1, 7, b'0');
INSERT INTO `t_comment` VALUES (9, '/images/avatar.png', '11', '2021-12-17 07:29:37.296000', '21041927g@connect.polyu.hk', '12', 1, 8, b'0');
INSERT INTO `t_comment` VALUES (10, '/images/avatar.png', '1', '2021-12-17 07:29:57.352000', '21041927g@connect.polyu.hk', '2', 1, 9, b'0');
INSERT INTO `t_comment` VALUES (11, 'https://unsplash.it/100/100?image=1005', 'test管理员', '2021-12-17 07:44:32.145000', 'helloyore@outlook.com', 'white', 1, NULL, b'1');
INSERT INTO `t_comment` VALUES (12, '/images/avatar.png', '1', '2021-12-17 07:49:57.623000', 'helloyore@outlook.com', '12', 1, NULL, b'0');
INSERT INTO `t_comment` VALUES (13, '/images/avatar.png', 'test', '2021-12-17 08:02:26.607000', '21041927g@connect.polyu.hk', '1', 1, NULL, b'0');
COMMIT;

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
BEGIN;
INSERT INTO `t_tag` VALUES (2, '标签1');
INSERT INTO `t_tag` VALUES (3, '标签2');
COMMIT;

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_type
-- ----------------------------
BEGIN;
INSERT INTO `t_type` VALUES (3, 'CSS');
INSERT INTO `t_type` VALUES (4, 'Yang');
INSERT INTO `t_type` VALUES (5, '错误日志');
INSERT INTO `t_type` VALUES (6, 'Java');
INSERT INTO `t_type` VALUES (7, 'Vue');
INSERT INTO `t_type` VALUES (8, 'Machine Learning');
INSERT INTO `t_type` VALUES (9, 'Redis');
INSERT INTO `t_type` VALUES (10, 'MySQL');
INSERT INTO `t_type` VALUES (11, 'Oracle');
INSERT INTO `t_type` VALUES (12, 'testMessage');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` int DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'https://unsplash.it/100/100?image=1005', '2021-12-15 16:28:22.000000', 'helloyore@outlook.com', 'white', '14e1b600b1fd579f47433b88e8d85291', 1, '2021-12-15 16:28:40.000000', 'white');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
