/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : WE15303

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 05/08/2021 13:07:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'Felipe Quigley PhD', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (2, 'Vida Kirlin Jr.', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (3, 'Reece Bahringer', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (4, 'Orion Lesch', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (5, 'Scotty Yost Sr.', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (6, 'Asha Keeling', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (7, 'Camilla Welch', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (8, 'Gerson Sipes', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (9, 'Alayna Doyle', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (10, 'Grant Beahan I', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (11, 'Krystel Prohaska', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (12, 'Madisyn Pfeffer I', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (13, 'Suzanne Cruickshank Jr.', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (14, 'Mr. Dave Lynch I', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
INSERT INTO `categories` VALUES (15, 'Zoie Pfeffer', '2021-07-13 05:30:48', '2021-07-13 05:30:48');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_07_03_054955_create_table_categories', 2);
INSERT INTO `migrations` VALUES (5, '2021_07_03_055058_create_table_products', 2);
INSERT INTO `migrations` VALUES (6, '2021_07_03_061126_alter_table_products_add_column_price_image', 3);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_history
-- ----------------------------
DROP TABLE IF EXISTS `product_history`;
CREATE TABLE `product_history` (
  `id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  KEY `products_cate_id_foreign` (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_history
-- ----------------------------
BEGIN;
INSERT INTO `product_history` VALUES (6, 'Đậu Linh Đan học giỏi', 11, NULL, '2021-08-03 12:56:56', 4, NULL, 1999, 1, 1);
INSERT INTO `product_history` VALUES (6, 'Đậu Linh Đan học giỏi', 8, NULL, '2021-08-03 12:57:33', 3, NULL, 1000, 200, 1);
COMMIT;

-- ----------------------------
-- Table structure for product_tags
-- ----------------------------
DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE `product_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_tags
-- ----------------------------
BEGIN;
INSERT INTO `product_tags` VALUES (1, 6, 1, '2021-08-05 12:45:34', '2021-08-05 12:45:34');
INSERT INTO `product_tags` VALUES (2, 6, 3, '2021-08-05 12:45:37', '2021-08-05 12:45:37');
INSERT INTO `product_tags` VALUES (3, 6, 4, '2021-08-05 12:45:41', '2021-08-05 12:45:41');
INSERT INTO `product_tags` VALUES (4, 7, 1, '2021-08-05 12:45:49', '2021-08-05 12:45:49');
INSERT INTO `product_tags` VALUES (5, 7, 2, '2021-08-05 12:45:53', '2021-08-05 12:45:53');
INSERT INTO `product_tags` VALUES (6, 7, 3, '2021-08-05 12:46:01', '2021-08-05 12:46:01');
INSERT INTO `product_tags` VALUES (7, 8, 1, '2021-08-05 12:46:06', '2021-08-05 12:46:06');
INSERT INTO `product_tags` VALUES (8, 8, 3, '2021-08-05 12:46:10', '2021-08-05 12:46:10');
INSERT INTO `product_tags` VALUES (9, 9, 1, '2021-08-05 13:02:15', '2021-08-05 13:02:15');
INSERT INTO `product_tags` VALUES (13, 9, 3, '2021-08-05 13:02:47', '2021-08-05 13:02:47');
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `created_by` int DEFAULT '5',
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `products_cate_id_foreign` (`cate_id`),
  CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (6, 'Đậu Linh Đan học giỏi 111', 8, '2021-07-13 05:42:54', '2021-08-03 13:19:36', 'uploads/products/60f90ae4c0897-avatar3.png', 1000, 200, 5, 1);
INSERT INTO `products` VALUES (7, 'Gay McCullough IV', 12, '2021-07-13 05:42:54', '2021-07-13 05:42:54', 'uploads/products/6905a257425e0a536023347ce0a4eb57.png', 1261, 39, 4, 0);
INSERT INTO `products` VALUES (8, 'Milton Dicki V', 11, '2021-07-13 05:42:54', '2021-07-13 05:42:54', 'uploads/products/f3abe377093153b28029a51b090f9660.png', 1467, 169, 5, 1);
INSERT INTO `products` VALUES (9, 'Gay Mraz', 13, '2021-07-13 05:42:54', '2021-07-13 05:42:54', 'uploads/products/fe3474208d59b5accf51b429a0f49de6.png', 833, 133, 5, 1);
INSERT INTO `products` VALUES (10, 'Quinton Paucek PhD', 14, '2021-07-13 05:42:54', '2021-07-13 05:42:54', 'uploads/products/f17ebb13e1244465662676e73cda984f.png', 816, 132, 5, 1);
INSERT INTO `products` VALUES (11, 'Haylee Kuhic', 13, '2021-07-13 06:42:25', '2021-07-13 06:42:25', 'uploads/products/2425a0a572f3fb72c695d75333e3653e.png', 547, 10, 5, 1);
INSERT INTO `products` VALUES (12, 'Kacie Marks', 2, '2021-07-13 06:42:25', '2021-07-13 06:42:25', 'uploads/products/8f72348a1a8d112f7677172f67810cb2.png', 1379, 130, 5, 1);
INSERT INTO `products` VALUES (13, 'Dr. Ernesto Huels', 11, '2021-07-13 06:42:25', '2021-07-13 06:42:25', 'uploads/products/bcd59c063b5a4aefe8cfd9685b391651.png', 1294, 119, 5, 1);
INSERT INTO `products` VALUES (14, 'Axel McClure PhD', 15, '2021-07-13 06:42:25', '2021-07-13 06:42:25', 'uploads/products/97eff1000a5fb1906dba0e8a90c7d57b.png', 575, 56, 5, 1);
INSERT INTO `products` VALUES (15, 'Cedrick Nikolaus', 6, '2021-07-13 06:42:25', '2021-07-13 06:42:25', 'uploads/products/c28fae6dd91733866b992ba9f86ba167.png', 143, 165, 5, 1);
INSERT INTO `products` VALUES (16, 'Karl Walker V', 3, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/a97d3c682aa5b45ba1f16e0806614934.png', 1528, 124, 5, 0);
INSERT INTO `products` VALUES (17, 'Antone Feeney', 12, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/93c06901818c9ef648127baf40967e68.png', 66, 65, 5, 0);
INSERT INTO `products` VALUES (18, 'Dr. Ryann Blanda', 13, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/90d7b05ce838a7de2a9d665c870a99aa.png', 1902, 92, 5, 1);
INSERT INTO `products` VALUES (19, 'Kiel O\'Reilly', 9, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/a15dfdb83a928562e1a7879cfec893e9.png', 108, 178, 5, 1);
INSERT INTO `products` VALUES (20, 'Prof. Destiny Bernhard IV', 1, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/fe82595104e80599d084a63b7a3d25e7.png', 1100, 1, 5, 0);
INSERT INTO `products` VALUES (21, 'Retta Stehr', 13, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/e231505b86528776b0933b2c6c230bec.png', 1456, 93, 5, 0);
INSERT INTO `products` VALUES (22, 'Prof. Ike Becker II', 13, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/0ec425ec85acf077000666506c3778fb.png', 251, 107, 5, 0);
INSERT INTO `products` VALUES (23, 'Ryder Gottlieb', 2, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/666ac8bb065a981dac5d5f8aa265deea.png', 1568, 82, 5, 0);
INSERT INTO `products` VALUES (24, 'Laurence Fadel', 10, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/7bef98f9a351df0a75bbaa8b99ed17f4.png', 1963, 78, 5, 1);
INSERT INTO `products` VALUES (25, 'Miss Catalina Rau', 11, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/648df51134a26696ca68ec289a22490d.png', 1185, 67, 5, 0);
INSERT INTO `products` VALUES (26, 'Amaya Hegmann', 11, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/f7a3ccef0a662629526f798595423cb9.png', 1476, 126, 5, 1);
INSERT INTO `products` VALUES (28, 'Mr. Jackson Hand', 7, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/d36010c6c97b157786816e196dc2baa4.png', 1662, 183, 5, 1);
INSERT INTO `products` VALUES (29, 'Shirley Funk', 12, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/cfafe0788239386128eddddb0a06acb1.png', 1653, 117, 5, 1);
INSERT INTO `products` VALUES (30, 'Kaylie Strosin', 11, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/eb4ec44d392485da26cf751491d7ab59.png', 837, 163, 5, 0);
INSERT INTO `products` VALUES (31, 'Austyn Watsica', 2, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/e474281864e05ea97cf232150a913ecd.png', 1176, 157, 5, 1);
INSERT INTO `products` VALUES (32, 'Pat Gutmann', 14, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/727bbb89af32316a012f0f8c78481305.png', 281, 53, 5, 0);
INSERT INTO `products` VALUES (33, 'Coralie Christiansen MD', 12, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/4f5e55790092ed11f5869d2b1378b605.png', 317, 57, 5, 1);
INSERT INTO `products` VALUES (34, 'Afton Spinka', 15, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/8008411d425e56be10296ba9ca928788.png', 513, 157, 5, 0);
INSERT INTO `products` VALUES (35, 'Dr. Helena Olson', 9, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/83719b0badb235b161f0afe624949b62.png', 604, 138, 5, 0);
INSERT INTO `products` VALUES (36, 'Miss Zella McCullough', 13, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/0cfecc5116ba226c0a33736d2ab1f49f.png', 778, 68, 5, 1);
INSERT INTO `products` VALUES (37, 'Nathanael Schimmel', 2, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/ca9a60b390d2cb1bf056c5a75357e47a.png', 218, 176, 5, 1);
INSERT INTO `products` VALUES (38, 'Mr. Ernesto Wisoky', 4, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/a78dd19e9b3aa75cf96739e81d565623.png', 633, 111, 5, 1);
INSERT INTO `products` VALUES (39, 'Dr. Eden Blick', 8, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/f21a93e5e04582de040273959b3fdc26.png', 1323, 120, 5, 0);
INSERT INTO `products` VALUES (40, 'Lavada Kutch', 4, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/2152c552eea4d78b26b50c54c0c7d273.png', 945, 185, 5, 1);
INSERT INTO `products` VALUES (42, 'Jovanny Towne', 11, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/b641c0560fb505ddde65776227b1b9be.png', 1437, 186, 5, 1);
INSERT INTO `products` VALUES (43, 'Mariana Murphy', 4, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/943d59515169248403ac74c91429f663.png', 1982, 81, 5, 0);
INSERT INTO `products` VALUES (44, 'Emely Ondricka', 9, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/ade53ee91f99174dc902be1734f99f6d.png', 627, 197, 5, 0);
INSERT INTO `products` VALUES (45, 'Hans Runolfsdottir', 13, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/2a500afbe736168146ad683d8e4131c8.png', 1058, 104, 5, 1);
INSERT INTO `products` VALUES (46, 'Dr. Marielle Price DDS', 7, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/b23825dc23bb4734d2a3c7b77a086048.png', 1167, 136, 5, 0);
INSERT INTO `products` VALUES (47, 'Marlon Kuphal', 6, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/0c757719ff35136bf8cc53acc4ed317a.png', 526, 151, 5, 1);
INSERT INTO `products` VALUES (48, 'Dr. Mitchel Witting', 11, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/580e8bece234c3dcc4519760378a9fb1.png', 1679, 137, 5, 0);
INSERT INTO `products` VALUES (49, 'Prof. Stacey Waelchi', 1, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/efe371cef0657918dd7890616b1b6ab3.png', 1326, 122, 5, 0);
INSERT INTO `products` VALUES (50, 'Dallas Bode', 6, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/835d1ff8c406848e3a92d0823960c550.png', 1717, 151, 5, 0);
INSERT INTO `products` VALUES (51, 'Brock Collier', 7, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/3bdd50f24df6a3a6d18ab871bae481d3.png', 1708, 107, 5, 0);
INSERT INTO `products` VALUES (52, 'Isabella Friesen', 2, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/d42ab9c4f352b8211ae30bd318405aaf.png', 1204, 93, 5, 0);
INSERT INTO `products` VALUES (53, 'Noemi Steuber', 3, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/63a7bb87d58b80cc7eaac351927bc49c.png', 1963, 85, 5, 0);
INSERT INTO `products` VALUES (54, 'Mr. Lourdes Bradtke', 8, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/68296934581a23a0c3bc23a6b938f449.png', 1343, 34, 5, 1);
INSERT INTO `products` VALUES (55, 'Alfonso Mueller', 11, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/a1a0ed5dad52b8b86f985389c34a7e93.png', 298, 24, 5, 0);
INSERT INTO `products` VALUES (56, 'Aurore Beier', 6, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/4476d799de1b0fed72bebf829c3465c6.png', 456, 19, 5, 0);
INSERT INTO `products` VALUES (57, 'Dr. Sigmund Bauch', 11, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/5b2e2ee4473d60ebad64844a52be6ce2.png', 1927, 116, 5, 1);
INSERT INTO `products` VALUES (58, 'Judge Kris', 12, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/f49d62df175e298e979fce2019acd922.png', 310, 181, 5, 1);
INSERT INTO `products` VALUES (59, 'Jayson Kohler', 3, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/478f0eb9270ad1effbfe0ad68b3fa949.png', 274, 192, 5, 1);
INSERT INTO `products` VALUES (60, 'Ally Konopelski', 11, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/38f5ddbcc793a06073ef4e201cde8199.png', 1736, 105, 5, 0);
INSERT INTO `products` VALUES (61, 'Torrey Cassin II', 6, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/6c234f0fa459eaf7441d72152e89d61e.png', 1676, 104, 5, 0);
INSERT INTO `products` VALUES (62, 'Dejon Boehm', 5, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/29406891cb3dc9311445bc0bcb94e274.png', 985, 117, 5, 0);
INSERT INTO `products` VALUES (63, 'Kaden Lehner IV', 9, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/542bf852b81f6852a4b9c1bf87e94326.png', 1454, 172, 5, 1);
INSERT INTO `products` VALUES (64, 'Constance Feeney', 2, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/1e9a22334342dcee479618c74e508b05.png', 64, 21, 5, 0);
INSERT INTO `products` VALUES (65, 'Anderson Tremblay', 10, '2021-07-15 05:52:25', '2021-07-15 05:52:25', 'uploads/products/15d75f82370fa435b283eacd5b0e5737.png', 424, 184, 5, 0);
INSERT INTO `products` VALUES (66, 'đỗ thành trung', 6, '2021-07-22 05:24:06', '2021-07-22 05:24:06', 'uploads/products/60f900f6b3840-photo1.png', 100, 10, 5, 1);
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
INSERT INTO `tags` VALUES (1, 'tag 1', '2021-08-05 12:45:11', '2021-08-05 12:45:11');
INSERT INTO `tags` VALUES (2, 'tag 2', '2021-08-05 12:45:13', '2021-08-05 12:45:13');
INSERT INTO `tags` VALUES (3, 'tag 3', '2021-08-05 12:45:17', '2021-08-05 12:45:17');
INSERT INTO `tags` VALUES (4, 'tag 4', '2021-08-05 12:45:21', '2021-08-05 12:45:21');
INSERT INTO `tags` VALUES (5, 'Tag 5', '2021-08-05 12:45:22', '2021-08-05 12:45:22');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Đỗ Trung', 'trungdo@gmail.com', NULL, '123123123', NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, 'Đỗ Xuân Tùng', 'tungdx@gmail.com', NULL, '123123123', NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, 'Phát béo', 'phat@gmail.com', NULL, '$2y$10$4z7iR5MPBI1dk3I6uLk/DeFM/cFwW/TmOU.fy79h2Pj9KZt8CeVyu', NULL, NULL, NULL);
INSERT INTO `users` VALUES (4, 'admin', 'admin@fpt.edu.vn', NULL, '$2y$10$KIPyZrZuCrs8GmTtJAffNu0wuhEOUJQxJAe5NuqQcA9maRWPTMy7S', NULL, '2021-07-03 06:38:16', '2021-07-03 06:38:16');
INSERT INTO `users` VALUES (5, 'thienth', 'thienth@fpt.edu.vn', NULL, '$2y$10$hS2WtqFiztzh/F0Te7c33uWxzsCu/zTdahaQuVftOMtiG.D0kMBEK', NULL, '2021-07-03 06:38:16', '2021-07-03 06:38:16');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
