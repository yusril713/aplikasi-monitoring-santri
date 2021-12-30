/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : db_monitoring

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-03-27 17:25:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_02_21_181544_add_api_token_on_users', '1');
INSERT INTO `migrations` VALUES ('5', '2020_02_23_151947_create_tb_santri_table', '1');
INSERT INTO `migrations` VALUES ('6', '2020_02_23_152810_penyesuaian_tb_santri', '2');
INSERT INTO `migrations` VALUES ('7', '2020_02_23_153710_create_tb_tahun_ajaran_table', '3');
INSERT INTO `migrations` VALUES ('8', '2020_02_23_153747_create_tb_semester_table', '4');
INSERT INTO `migrations` VALUES ('9', '2020_02_23_154650_create_tb_spp_table', '5');
INSERT INTO `migrations` VALUES ('10', '2020_02_23_154716_create_tb_hafidz_table', '5');
INSERT INTO `migrations` VALUES ('11', '2020_02_23_154741_create_tb_prestasi_table', '5');
INSERT INTO `migrations` VALUES ('12', '2020_02_23_154806_create_tb_pelanggaran_table', '5');
INSERT INTO `migrations` VALUES ('13', '2020_02_23_154830_create_tb_mapel_table', '5');
INSERT INTO `migrations` VALUES ('14', '2020_02_23_155007_create_tb_pembina_table', '5');
INSERT INTO `migrations` VALUES ('15', '2020_02_23_160316_create_tb_absensi_table', '6');
INSERT INTO `migrations` VALUES ('16', '2020_02_23_170252_penyesuaian_table_user', '6');
INSERT INTO `migrations` VALUES ('17', '2020_02_24_071824_penyesuaian_table_pembina', '7');
INSERT INTO `migrations` VALUES ('18', '2020_02_25_062948_penyesuaian_table_mapel', '8');
INSERT INTO `migrations` VALUES ('19', '2020_02_26_105037_penyesuaian_table_spp', '9');
INSERT INTO `migrations` VALUES ('20', '2020_02_26_105254_penyesuaian_table_spp2', '10');
INSERT INTO `migrations` VALUES ('21', '2020_02_26_123631_create_tb_kelas_table', '11');
INSERT INTO `migrations` VALUES ('22', '2020_02_26_124516_penyesuaian_tb_kelas', '12');
INSERT INTO `migrations` VALUES ('23', '2020_02_26_133925_penyesuaian_tb_kelas_2', '13');
INSERT INTO `migrations` VALUES ('24', '2020_02_27_074024_penyesuaian_tb_semester', '13');
INSERT INTO `migrations` VALUES ('25', '2016_06_01_000001_create_oauth_auth_codes_table', '14');
INSERT INTO `migrations` VALUES ('26', '2016_06_01_000002_create_oauth_access_tokens_table', '14');
INSERT INTO `migrations` VALUES ('27', '2016_06_01_000003_create_oauth_refresh_tokens_table', '14');
INSERT INTO `migrations` VALUES ('28', '2016_06_01_000004_create_oauth_clients_table', '14');
INSERT INTO `migrations` VALUES ('29', '2016_06_01_000005_create_oauth_personal_access_clients_table', '14');
INSERT INTO `migrations` VALUES ('30', '2020_02_28_112403_penyesuaian_table_kelas', '15');
INSERT INTO `migrations` VALUES ('31', '2020_02_28_122425_penyesuaian_table_santri', '16');
INSERT INTO `migrations` VALUES ('32', '2020_02_28_145003_penyesuaian_table_tb_pembina', '17');
INSERT INTO `migrations` VALUES ('33', '2020_02_28_145127_penyesuaian_table_tb_pembina', '18');
INSERT INTO `migrations` VALUES ('34', '2020_02_28_155233_create_tb_detail_kelas_table', '19');
INSERT INTO `migrations` VALUES ('35', '2020_02_28_194021_add_avatar', '20');
INSERT INTO `migrations` VALUES ('36', '2020_02_29_113004_create_permissions_table', '20');
INSERT INTO `migrations` VALUES ('37', '2020_02_29_113114_create_roles_table', '20');
INSERT INTO `migrations` VALUES ('38', '2020_02_29_113755_create_permission_role_table', '20');
INSERT INTO `migrations` VALUES ('39', '2020_02_29_123539_create_tb_detail_pembina_table', '21');
INSERT INTO `migrations` VALUES ('40', '2020_03_02_034036_alter_table_santri', '22');
INSERT INTO `migrations` VALUES ('41', '2020_03_02_040003_alter_ayah_ibu', '23');
INSERT INTO `migrations` VALUES ('42', '2020_03_02_153721_create_tb_visi_table', '24');
INSERT INTO `migrations` VALUES ('43', '2020_03_02_153813_create_tb_misi_table', '24');
INSERT INTO `migrations` VALUES ('44', '2020_03_02_153843_create_tb_info_table', '24');
INSERT INTO `migrations` VALUES ('45', '2020_03_02_154247_create_tb_pimpinan_table', '24');
INSERT INTO `migrations` VALUES ('46', '2020_03_11_012533_penyesuaian_table_absensi', '25');
INSERT INTO `migrations` VALUES ('47', '2020_03_12_181045_alter_table_tb_absensi', '26');
INSERT INTO `migrations` VALUES ('48', '2020_03_12_200137_alter_tabel_absensi', '27');
INSERT INTO `migrations` VALUES ('49', '2020_03_12_200955_drop_tb_absensi_table', '27');
INSERT INTO `migrations` VALUES ('50', '2020_03_12_201107_drop_tb_absensi_table', '28');
INSERT INTO `migrations` VALUES ('51', '2020_03_12_201240_create_tb_absensi_table', '29');
INSERT INTO `migrations` VALUES ('52', '2020_03_12_203118_create_tb_detail_absensi_table', '30');
INSERT INTO `migrations` VALUES ('53', '2020_03_12_203817_penyesuaiann_tb_absensi_table', '31');
INSERT INTO `migrations` VALUES ('54', '2020_03_15_213311_penyesuaian_tb_hafidz', '32');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

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

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for tb_absensi
-- ----------------------------
DROP TABLE IF EXISTS `tb_absensi`;
CREATE TABLE `tb_absensi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `semester_id` bigint(20) unsigned NOT NULL,
  `kelas_id` bigint(20) unsigned NOT NULL,
  `pembina_id` bigint(20) unsigned NOT NULL,
  `mapel_id` bigint(20) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_absensi_semester_id_foreign` (`semester_id`),
  KEY `tb_absensi_kelas_id_foreign` (`kelas_id`),
  KEY `tb_absensi_pembina_id_foreign` (`pembina_id`),
  CONSTRAINT `tb_absensi_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tb_absensi_pembina_id_foreign` FOREIGN KEY (`pembina_id`) REFERENCES `tb_pembina` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tb_absensi_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `tb_semester` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_absensi
-- ----------------------------
INSERT INTO `tb_absensi` VALUES ('10', '2', '18', '1', '1', '2020-03-15', '2020-03-15 00:24:46', '2020-03-15 00:24:46');

-- ----------------------------
-- Table structure for tb_detail_absensi
-- ----------------------------
DROP TABLE IF EXISTS `tb_detail_absensi`;
CREATE TABLE `tb_detail_absensi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `absensi_id` bigint(20) unsigned NOT NULL,
  `santri_id` bigint(20) unsigned NOT NULL,
  `keterangan` enum('H','I','S','A') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_detail_absensi_absensi_id_foreign` (`absensi_id`),
  CONSTRAINT `tb_detail_absensi_absensi_id_foreign` FOREIGN KEY (`absensi_id`) REFERENCES `tb_absensi` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_detail_absensi
-- ----------------------------
INSERT INTO `tb_detail_absensi` VALUES ('13', '10', '131', 'H', '2020-03-15 00:24:49', '2020-03-15 00:24:49');
INSERT INTO `tb_detail_absensi` VALUES ('14', '10', '132', 'H', '2020-03-15 00:24:49', '2020-03-15 14:09:10');
INSERT INTO `tb_detail_absensi` VALUES ('15', '10', '130', 'I', '2020-03-15 00:24:49', '2020-03-15 14:09:10');
INSERT INTO `tb_detail_absensi` VALUES ('16', '10', '3', 'H', null, null);

-- ----------------------------
-- Table structure for tb_detail_kelas
-- ----------------------------
DROP TABLE IF EXISTS `tb_detail_kelas`;
CREATE TABLE `tb_detail_kelas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kelas_id` bigint(20) unsigned NOT NULL,
  `semester_id` bigint(20) unsigned NOT NULL,
  `santri_id` bigint(20) unsigned NOT NULL,
  `pembina_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_detail_kelas_kelas_id_foreign` (`kelas_id`),
  KEY `tb_detail_kelas_semester_id_foreign` (`semester_id`),
  KEY `tb_detail_kelas_santri_id_foreign` (`santri_id`),
  KEY `tb_detail_kelas_pembina_id_foreign` (`pembina_id`),
  CONSTRAINT `tb_detail_kelas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tb_detail_kelas_pembina_id_foreign` FOREIGN KEY (`pembina_id`) REFERENCES `tb_pembina` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tb_detail_kelas_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `tb_santri` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_detail_kelas
-- ----------------------------
INSERT INTO `tb_detail_kelas` VALUES ('7', '18', '2', '130', '1', '2020-03-02 16:01:58', '2020-03-02 16:01:58');
INSERT INTO `tb_detail_kelas` VALUES ('8', '18', '2', '131', '1', '2020-03-02 16:01:58', '2020-03-02 16:01:58');
INSERT INTO `tb_detail_kelas` VALUES ('9', '18', '2', '132', '1', '2020-03-02 16:01:58', '2020-03-02 16:01:58');

-- ----------------------------
-- Table structure for tb_detail_pembina
-- ----------------------------
DROP TABLE IF EXISTS `tb_detail_pembina`;
CREATE TABLE `tb_detail_pembina` (
  `kelas_id` bigint(20) unsigned NOT NULL,
  `mapel_id` bigint(20) unsigned NOT NULL,
  `pembina_id` bigint(20) unsigned NOT NULL,
  `hari` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_ajaran_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kelas_id`,`mapel_id`,`pembina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_detail_pembina
-- ----------------------------
INSERT INTO `tb_detail_pembina` VALUES ('18', '1', '1', 'Senin', '12.00 - 14.00', '1', '2020-03-04 10:49:38', '2020-03-04 10:49:38');
INSERT INTO `tb_detail_pembina` VALUES ('19', '1', '2', 'Rabu', '10.00 - 12.00', '1', '2020-03-04 10:50:40', '2020-03-04 10:50:40');

-- ----------------------------
-- Table structure for tb_hafidz
-- ----------------------------
DROP TABLE IF EXISTS `tb_hafidz`;
CREATE TABLE `tb_hafidz` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `santri_id` bigint(20) unsigned NOT NULL,
  `pembina_id` bigint(20) unsigned NOT NULL,
  `hafalan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_hafidz_santri_id_foreign` (`santri_id`),
  KEY `tb_hafidz_pembina_id_foreign` (`pembina_id`),
  CONSTRAINT `tb_hafidz_pembina_id_foreign` FOREIGN KEY (`pembina_id`) REFERENCES `tb_pembina` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tb_hafidz_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `tb_santri` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_hafidz
-- ----------------------------
INSERT INTO `tb_hafidz` VALUES ('3', '132', '1', 'Surah Al Fatihah', '2020-03-17 07:15:04', '2020-03-17 07:15:04');
INSERT INTO `tb_hafidz` VALUES ('4', '132', '1', 'Surah Al-Ikhlas', '2020-03-17 07:15:29', '2020-03-17 07:15:29');
INSERT INTO `tb_hafidz` VALUES ('5', '132', '1', 'Surah Al-Falaq', '2020-03-17 07:15:45', '2020-03-17 07:15:45');

-- ----------------------------
-- Table structure for tb_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE `tb_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pondok` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusun` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_berdiri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pimpinan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_info
-- ----------------------------
INSERT INTO `tb_info` VALUES ('1', 'Nurul Ikhwan Maros', '510073090019', '381701008079534 (BRI Unit Bulu-Bulu Maros)', 'Matana', 'Tellumpoccoe', 'Marusu', 'Maros', 'Sulawesi Selatan', '90552', '2009', '1', null, null);

-- ----------------------------
-- Table structure for tb_jenjang
-- ----------------------------
DROP TABLE IF EXISTS `tb_jenjang`;
CREATE TABLE `tb_jenjang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenjang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_jenjang
-- ----------------------------
INSERT INTO `tb_jenjang` VALUES ('1', 'MI');
INSERT INTO `tb_jenjang` VALUES ('2', 'MTs');
INSERT INTO `tb_jenjang` VALUES ('3', 'MA');

-- ----------------------------
-- Table structure for tb_kelas
-- ----------------------------
DROP TABLE IF EXISTS `tb_kelas`;
CREATE TABLE `tb_kelas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_kelas
-- ----------------------------
INSERT INTO `tb_kelas` VALUES ('9', 'I', '2020-03-02 15:26:32', '2020-03-02 15:26:32');
INSERT INTO `tb_kelas` VALUES ('10', 'II', '2020-03-02 15:26:38', '2020-03-02 15:26:38');
INSERT INTO `tb_kelas` VALUES ('11', 'III', '2020-03-02 15:26:43', '2020-03-02 15:26:43');
INSERT INTO `tb_kelas` VALUES ('12', 'IV', '2020-03-02 15:26:51', '2020-03-02 15:26:51');
INSERT INTO `tb_kelas` VALUES ('13', 'V', '2020-03-02 15:26:56', '2020-03-02 15:26:56');
INSERT INTO `tb_kelas` VALUES ('14', 'VI', '2020-03-02 15:27:05', '2020-03-02 15:27:05');
INSERT INTO `tb_kelas` VALUES ('15', 'VII', '2020-03-02 15:27:11', '2020-03-02 15:27:11');
INSERT INTO `tb_kelas` VALUES ('16', 'VIII', '2020-03-02 15:27:17', '2020-03-02 15:27:17');
INSERT INTO `tb_kelas` VALUES ('17', 'IX', '2020-03-02 15:27:25', '2020-03-02 15:27:25');
INSERT INTO `tb_kelas` VALUES ('18', 'X', '2020-03-02 15:27:33', '2020-03-02 15:27:33');
INSERT INTO `tb_kelas` VALUES ('19', 'XI', '2020-03-02 15:27:40', '2020-03-02 15:27:40');
INSERT INTO `tb_kelas` VALUES ('20', 'XII', '2020-03-02 15:27:46', '2020-03-02 15:27:46');

-- ----------------------------
-- Table structure for tb_mapel
-- ----------------------------
DROP TABLE IF EXISTS `tb_mapel`;
CREATE TABLE `tb_mapel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_mapel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('rutin','eksternal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `mata_pelajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_mapel_kode_mapel_unique` (`kode_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_mapel
-- ----------------------------
INSERT INTO `tb_mapel` VALUES ('1', 'MP00001', 'rutin', 'Aqidah Akhlak', '2020-02-29 12:16:08', '2020-02-29 12:16:08');
INSERT INTO `tb_mapel` VALUES ('2', 'MP00002', 'rutin', 'Tafsir Hadis', '2020-02-29 12:16:24', '2020-02-29 19:10:54');
INSERT INTO `tb_mapel` VALUES ('3', 'MP00003', 'rutin', 'Matematika', '2020-02-29 12:16:35', '2020-02-29 12:16:35');
INSERT INTO `tb_mapel` VALUES ('4', 'MP00004', 'rutin', 'Biologi', '2020-02-29 12:16:45', '2020-02-29 12:16:45');
INSERT INTO `tb_mapel` VALUES ('5', 'MP00005', 'rutin', 'Fisika', '2020-02-29 12:16:54', '2020-02-29 12:16:54');
INSERT INTO `tb_mapel` VALUES ('6', 'MP0006', 'rutin', 'Kimia', '2020-02-29 12:17:05', '2020-02-29 12:17:05');
INSERT INTO `tb_mapel` VALUES ('7', 'MP00007', 'rutin', 'Bahasa Arab', '2020-02-29 12:17:22', '2020-02-29 12:17:22');
INSERT INTO `tb_mapel` VALUES ('8', 'MP00008', 'rutin', 'Geografi', '2020-02-29 12:17:58', '2020-02-29 12:17:58');
INSERT INTO `tb_mapel` VALUES ('9', 'MP00009', 'rutin', 'Pendidikan Agama Islam', '2020-02-29 12:18:25', '2020-02-29 12:18:25');
INSERT INTO `tb_mapel` VALUES ('10', 'MP00010', 'rutin', 'Mahfudzat', '2020-02-29 12:18:53', '2020-02-29 12:18:53');
INSERT INTO `tb_mapel` VALUES ('11', 'EKS0001', 'eksternal', 'Nasyid', '2020-02-29 12:19:27', '2020-02-29 12:19:27');
INSERT INTO `tb_mapel` VALUES ('12', 'EKS0002', 'eksternal', 'Olahraga', '2020-02-29 12:19:48', '2020-02-29 12:19:48');

-- ----------------------------
-- Table structure for tb_misi
-- ----------------------------
DROP TABLE IF EXISTS `tb_misi`;
CREATE TABLE `tb_misi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `misi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_misi
-- ----------------------------
INSERT INTO `tb_misi` VALUES ('1', 'Mengembangkan pendidikan dan pembinaan bermutu dan berkualitas', null, null);
INSERT INTO `tb_misi` VALUES ('2', 'Mewujudkan pembelajaran dan pembiasaan dalam menjalankan ajaran agama islam', null, null);
INSERT INTO `tb_misi` VALUES ('3', 'Menigkatkan pengetahuan dan profesionalisme dalam dunia pendidikan', null, null);

-- ----------------------------
-- Table structure for tb_pelanggaran
-- ----------------------------
DROP TABLE IF EXISTS `tb_pelanggaran`;
CREATE TABLE `tb_pelanggaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `santri_id` bigint(20) unsigned NOT NULL,
  `tanggal_pelanggaran` date NOT NULL,
  `pelanggaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_pelanggaran_santri_id_foreign` (`santri_id`),
  CONSTRAINT `tb_pelanggaran_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `tb_santri` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_pelanggaran
-- ----------------------------

-- ----------------------------
-- Table structure for tb_pembina
-- ----------------------------
DROP TABLE IF EXISTS `tb_pembina`;
CREATE TABLE `tb_pembina` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kewarganegaraan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_pembina_nip_unique` (`nip`),
  KEY `tb_pembina_user_id_foreign` (`user_id`),
  CONSTRAINT `tb_pembina_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_pembina
-- ----------------------------
INSERT INTO `tb_pembina` VALUES ('1', '0202002929', 'Yusril Ihza', '-82350001930', 'Jl. Timoho Gang Genjah No 19a', 'Sengkang', '1999-05-02', 'WNI', null, null, '12');
INSERT INTO `tb_pembina` VALUES ('2', '002938819', 'Ambo Tuo', '08238483281', 'BTP', 'Sengkang', '1977-12-09', 'WNI', null, null, '18');

-- ----------------------------
-- Table structure for tb_pimpinan
-- ----------------------------
DROP TABLE IF EXISTS `tb_pimpinan`;
CREATE TABLE `tb_pimpinan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai` date NOT NULL,
  `sampai` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_pimpinan
-- ----------------------------
INSERT INTO `tb_pimpinan` VALUES ('1', 'Ansar, S.Ag., M.A', '2009-01-02', null, null, null);

-- ----------------------------
-- Table structure for tb_prestasi
-- ----------------------------
DROP TABLE IF EXISTS `tb_prestasi`;
CREATE TABLE `tb_prestasi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `santri_id` bigint(20) unsigned NOT NULL,
  `hafalan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_prestasi_santri_id_foreign` (`santri_id`),
  CONSTRAINT `tb_prestasi_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `tb_santri` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_prestasi
-- ----------------------------

-- ----------------------------
-- Table structure for tb_santri
-- ----------------------------
DROP TABLE IF EXISTS `tb_santri`;
CREATE TABLE `tb_santri` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `kewarganegaraan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `angkatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `agama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Islam',
  `ayah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ibu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_santri_nis_unique` (`nis`),
  KEY `tb_santri_user_id_foreign` (`user_id`),
  CONSTRAINT `tb_santri_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_santri
-- ----------------------------
INSERT INTO `tb_santri` VALUES ('3', '5130411368', 'Yusril Ihza', 'Jl. Veteran No.32', 'Sengkang', '1995-05-02', 'WNI', null, '2020-03-26 10:51:29', '14', '2010', 'L', 'Islam', 'Rafiy Rasyid', 'Safriani', '0');
INSERT INTO `tb_santri` VALUES ('7', '131273090318170027', 'ANDI MUH. SALEH', 'Baringeng', 'Baringeng', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'H. Andi Sultani', 'Andi Suleha', '3');
INSERT INTO `tb_santri` VALUES ('8', '131273090318170061', 'MUSLIADI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'P', 'Islam', 'Ilham', 'Nurul', '3');
INSERT INTO `tb_santri` VALUES ('9', '131273090318170029', 'AMALIAH LUTFIAH ANSHARI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Ansar', 'Sitti Hamirah', '3');
INSERT INTO `tb_santri` VALUES ('10', '131273090318170051', 'SUHARDI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Sangkala', 'Samsia', '3');
INSERT INTO `tb_santri` VALUES ('11', '131273090318180067', 'AHMAD ZAENUL ILMI', 'Segeri', 'Segeri', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Firdaus Taufik', 'Rosmini', '3');
INSERT INTO `tb_santri` VALUES ('12', '131273090318170062', 'A.E.M GHIBRAN PANATAGAMA', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Muhammad Ikhsan, S.Ag', 'Rosmawar Sahabuddin, S.Ag', '3');
INSERT INTO `tb_santri` VALUES ('13', '131273090318170028', 'RESKY MAULANA MAULIDIA', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Ibrahim', 'Hasniati', '3');
INSERT INTO `tb_santri` VALUES ('14', '131273090318170032', 'AMAL HIDAYAT', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Muzaakkar', 'Sulfiati', '3');
INSERT INTO `tb_santri` VALUES ('15', '131273090318170034', 'SYAMSUL BAHRI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Muhammad Idris', 'Sitti Rahman', '3');
INSERT INTO `tb_santri` VALUES ('16', '131273090318170035', 'MUH. ARIEF SETIABUDI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Wajdi', 'Nurdiah', '3');
INSERT INTO `tb_santri` VALUES ('17', '131273090318170054', 'ABDUL MUZAWWIR', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'H. Halili Dg. Raga', 'Aminah', '3');
INSERT INTO `tb_santri` VALUES ('18', '131273090318180080', 'MUH. MULIANSYAH AZIS', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'H. Abdul Azis', 'Surya Ningsih', '3');
INSERT INTO `tb_santri` VALUES ('19', '131273090318180083', 'MUHAMMAD TRY ASNURANDI JULIANTO', 'Kendari', 'Kendari', null, 'WNI', null, null, null, '2017', 'P', 'Islam', 'Asran', 'Nurhayati', '3');
INSERT INTO `tb_santri` VALUES ('20', '131273090318180005', 'MILDA', 'Bone', 'Bone', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Baba', 'Raje', '3');
INSERT INTO `tb_santri` VALUES ('21', '131273090318180017', 'DAHRIANTO', 'Baringeng', 'Baringeng', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Bahar', 'Hati', '3');
INSERT INTO `tb_santri` VALUES ('22', '131273090318180018', 'KUDRAT', 'Palu', 'Palu', null, 'WNI', null, null, null, '2018', 'P', 'Islam', 'Cendana', 'Hadrah', '3');
INSERT INTO `tb_santri` VALUES ('23', '131273090318180020', 'MUSTABSYIRAH', 'Kanang', 'Kanang', null, 'WNI', null, null, null, '2018', 'P', 'Islam', 'Mulyadi', 'Asriani', '3');
INSERT INTO `tb_santri` VALUES ('24', '131273090318180070', 'MIMI NATASYA', 'Mallawa', 'Mallawa', null, 'WNI', null, null, null, '2018', 'P', 'Islam', 'Muhammadiah', 'Nurliah', '3');
INSERT INTO `tb_santri` VALUES ('25', '131273090318180071', 'EMY LITA PUTRI', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Muh. Amir', 'Linda', '3');
INSERT INTO `tb_santri` VALUES ('26', '131273090318180076', 'ZATAR AULIA YARJI', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'P', 'Islam', 'Irwan Jafar', 'Rini', '3');
INSERT INTO `tb_santri` VALUES ('27', '131273090318190072', 'A. NURHALIZA', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'H. Ambo Dalle', 'A. Radiah', '3');
INSERT INTO `tb_santri` VALUES ('28', '131273090318180056', 'AHMAD ALFIAN', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Muh. Jabar', 'Muliati', '3');
INSERT INTO `tb_santri` VALUES ('29', '131273090318180063', 'AL FAHRIEL SYAPUTRA', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Abd. Kadir', 'Ratnasari', '3');
INSERT INTO `tb_santri` VALUES ('30', '131273090318180087', 'AVIF MA\'ARIF', 'Kanang', 'Kanang', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Muhammad Ilyas', 'Pahira', '3');
INSERT INTO `tb_santri` VALUES ('31', '131273090318190014', 'MUHAMMAD BAGUS FATURRAHMAN', 'Kendari', 'Kendari', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Khoiruddin', 'Rahmawati', '3');
INSERT INTO `tb_santri` VALUES ('32', '131273090318190025', 'MUHAMMAD ASWAR HARITSA', 'Maros', 'Maros', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Agus Salim', 'Satriana', '3');
INSERT INTO `tb_santri` VALUES ('33', '131273090318190065', 'MUHAMMAD RAISMAN', 'Bone', 'Bone', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Madeing', 'Kariyani', '3');
INSERT INTO `tb_santri` VALUES ('34', '131273090318190061', 'MUH. IHSAN MUTAWALLY', 'Maros', 'Maros', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Muhtar', 'Misba', '3');
INSERT INTO `tb_santri` VALUES ('35', '131273090318190062', 'MUHAMMAD IKHSAN NUR ATHALLAH', 'Maros', 'Maros', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'H Muh Hasan HS', 'Hj Ika Kusmawaty', '3');
INSERT INTO `tb_santri` VALUES ('36', '131273090318190069', 'NURUL FUAD', 'Maros', 'Maros', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Muh. Agus', 'Muhafida, HK., A.Ma', '3');
INSERT INTO `tb_santri` VALUES ('37', '131273090318190070', 'AHMAD MUAFFAQ', 'Segeri', 'Segeri', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Firdaus Taufik', 'Rosmini', '3');
INSERT INTO `tb_santri` VALUES ('38', '131273090318190071', 'RUSDI', 'Pulau Salemo', 'Pulau Salemo', null, 'WNI', null, null, null, '2019', 'P', 'Islam', 'Abu', 'Hasna', '3');
INSERT INTO `tb_santri` VALUES ('39', '131273090318190046', 'SARINA SYAM', 'Baringeng', 'Baringeng', null, 'WNI', null, null, null, '2019', 'P', 'Islam', 'Syamsuddin', 'Hartina', '3');
INSERT INTO `tb_santri` VALUES ('40', '131273090318190048', 'NUR ASIAH', 'Maros', 'Maros', null, 'WNI', null, null, null, '2019', 'P', 'Islam', 'Asrul Nurdin', 'Ratna', '3');
INSERT INTO `tb_santri` VALUES ('41', '131273090318190056', 'PUTRI', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Saparuddin', 'Narti', '3');
INSERT INTO `tb_santri` VALUES ('42', '131273090318190057', 'MUHAMMAD YAHYA ASSIDDIK', 'Monokwari', 'Monokwari', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Aris Sikki', 'Najmia Adam', '3');
INSERT INTO `tb_santri` VALUES ('43', '121273090022190001', 'A. MUH. ALIF RAIHAN MAULANA', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'A. RUSMAN', 'EKA ANGGRAINI', '2');
INSERT INTO `tb_santri` VALUES ('44', '121273090022190003', 'ADITIA SAPUTRA', 'BARINGENG', 'BARINGENG', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'BAKTIAR', 'HJ. SANIASA', '2');
INSERT INTO `tb_santri` VALUES ('45', '121273090022190004', 'AHMAD ATHALLAH', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Irwan', 'Rini', '2');
INSERT INTO `tb_santri` VALUES ('46', '121273090022190006', 'AIMAN KHALIL ALHAEEZI', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'BURHANUDDIN AMIN', 'ERNA BASRINA', '2');
INSERT INTO `tb_santri` VALUES ('47', '121273090022190007', 'ANDI HAERUL PALAGUNA', 'BARINGENG', 'BARINGENG', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'A. JOI', 'YULIANA', '2');
INSERT INTO `tb_santri` VALUES ('48', '121273090022190008', 'ANDI MUH. FADEL ALQADRI', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'ABDUL ASIS', 'NURHAYATI', '2');
INSERT INTO `tb_santri` VALUES ('49', '121273090022190009', 'ANDI SABRIANSYAH H', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'HAMZAH D', 'SALMAWATI', '2');
INSERT INTO `tb_santri` VALUES ('50', '121273090022190010', 'ARIF DINATA MA\'RUF', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'TAKBIR', 'NAIDAYANI', '2');
INSERT INTO `tb_santri` VALUES ('51', '121273090022190011', 'ARIF ISMAIL', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'ZAINUDDIN', 'NURAENI', '2');
INSERT INTO `tb_santri` VALUES ('52', '121273090022190012', 'CEYZAR ABDI YULIANTO', 'POMALA', 'POMALA', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'MUDIANTO', 'SRI YULIANA', '2');
INSERT INTO `tb_santri` VALUES ('53', '121273090022190014', 'HAERUL', 'LUWU TIMUR', 'LUWU TIMUR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'BASRAN', 'SUHARTINI', '2');
INSERT INTO `tb_santri` VALUES ('54', '121273090022190020', 'MUH. RAIHAN SAPUTRA WAHYUDIN', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'WAHYUDDIN A', 'YULIANTI', '2');
INSERT INTO `tb_santri` VALUES ('55', '121273090022190023', 'MUHAMMAD ASRIL IDRIS', 'POSO', 'POSO', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'MUHAMMAD IDRIS', 'DAHLIA', '2');
INSERT INTO `tb_santri` VALUES ('56', '121273090022190024', 'MUHAMMAD FADLI', 'LEMO', 'LEMO', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'SUPRIANTO', 'SUAEMAH', '2');
INSERT INTO `tb_santri` VALUES ('57', '121273090022190025', 'MUHAMMAD HAIQAL RAHMAT', 'MALAYSIA', 'MALAYSIA', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'BAHTIAR', 'KARTIKA', '2');
INSERT INTO `tb_santri` VALUES ('58', '121273090022190026', 'MUHAMMAD HILMAN RAQIB R', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'ABD. RAHMAN R', 'NIRWANA M', '2');
INSERT INTO `tb_santri` VALUES ('59', '121273090022190027', 'MUHAMMAD IRFAN', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'ASWIR', 'ROSDIANA', '2');
INSERT INTO `tb_santri` VALUES ('60', '121273090022190028', 'MUHAMMAD RAJU', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'JUNAEDI', 'PARIDAH', '2');
INSERT INTO `tb_santri` VALUES ('61', '121273090022190030', 'MUHAMMAD SABRAN', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'SAKARIA', 'ROSTIA', '2');
INSERT INTO `tb_santri` VALUES ('62', '121273090022190031', 'MUHAMMAD SILA', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'H. ROLA', 'ROHANA', '2');
INSERT INTO `tb_santri` VALUES ('63', '121273090022190032', 'MUHAMMAD YUSRIL REZKI RAMADHAN', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'MUH. YUSUF', 'NURMIATI', '2');
INSERT INTO `tb_santri` VALUES ('64', '121273090022190033', 'MUHAMMAD ZIDAN KS', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'KAHARUDDIN', 'SALEWATI MAJID', '2');
INSERT INTO `tb_santri` VALUES ('65', '121273090022190036', 'AULIA PUTRI', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'PUANG SIKKI', 'JUMAISA', '2');
INSERT INTO `tb_santri` VALUES ('66', '121273090022190038', 'MURSYIDAH AULIAH', 'MAROS', 'MAROS', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'ISMAIL BARATAN', 'HAERIAH', '2');
INSERT INTO `tb_santri` VALUES ('67', '121273090022190039', 'NARA MULIDYA SAHRA', 'AMBON', 'AMBON', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'DJAKARIA MADI', 'AISYAH', '2');
INSERT INTO `tb_santri` VALUES ('68', '121273090022190040', 'NUR AZIZAH', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'JUMADI', 'JULIANI', '2');
INSERT INTO `tb_santri` VALUES ('69', '121273090022190041', 'NUR HIKMAYANTI', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'AMIRULLAH', 'NURMIATI', '2');
INSERT INTO `tb_santri` VALUES ('70', '121273090022190043', 'AWALIA RAMADANI', 'Maluku Tengah', 'Maluku Tengah', null, 'WNI', null, null, null, '2019', 'L', 'Islam', 'Abdullah', 'Suryani Sam', '2');
INSERT INTO `tb_santri` VALUES ('71', '121273090022180036', 'AAN AZHARI', 'Gusungnge', 'Gusungnge', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'ARIFAI', 'Hj. SURIATY', '2');
INSERT INTO `tb_santri` VALUES ('72', '121273090022180037', 'MUH. ILHAM RAMADHAN', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'FADHIL AMIR', 'MURNIATI', '2');
INSERT INTO `tb_santri` VALUES ('73', '121273090022180038', 'IBRAHIM RANDI', 'Fak-Fak', 'Fak-Fak', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'PODDO', 'SURIANI', '2');
INSERT INTO `tb_santri` VALUES ('74', '121273090022180039', 'ABDAN SYAKURON', 'Fak-Fak', 'Fak-Fak', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'BURHAN', 'HARTATI', '2');
INSERT INTO `tb_santri` VALUES ('75', '121273090022180040', 'GIBRAN WAHYUDI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'HERY WAHYUDI', 'NURDIANA', '2');
INSERT INTO `tb_santri` VALUES ('76', '121273090022180041', 'MUH. RIYAN HIDAYAT', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'CABA', 'JUMARIA', '2');
INSERT INTO `tb_santri` VALUES ('77', '121273090022180042', 'MUHAMMAD ALAN SAPUTRA', 'Fak-Fak', 'Fak-Fak', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'SAHARUDDIN', 'HAMSIAH', '2');
INSERT INTO `tb_santri` VALUES ('78', '121273090022180043', 'MUH. RAFLI RAFSANJANI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'SARIFUDDIN', 'HASANAH', '2');
INSERT INTO `tb_santri` VALUES ('79', '121273090022180044', 'MUH. AFIF AMIR INAYAH', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'MUHAMMAD AMIR', 'GUNAYAH, S.Ag', '2');
INSERT INTO `tb_santri` VALUES ('80', '121273090022180045', 'MUH. ALIF F', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'FIRMAN, SE', 'SADRA', '2');
INSERT INTO `tb_santri` VALUES ('81', '121273090022180046', 'MUH. MARDIKA SAPUTRA', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'SAKKIRANG', 'LUSIANA', '2');
INSERT INTO `tb_santri` VALUES ('82', '121273090022180047', 'ABD. FAHMI PUTRA PRATAMA IBRAHIM', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'IBRAHIM', 'NURUL HIKMAH', '2');
INSERT INTO `tb_santri` VALUES ('83', '121273090022180048', 'MUHAMMAD HAIDAR MUHAJIR', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'H. HAMKA', 'Hj. SYAMSIDAR', '2');
INSERT INTO `tb_santri` VALUES ('84', '121273090022180049', 'FANI FAUDI', 'Bulukumba', 'Bulukumba', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'ARIF HARIWAHYUDI', 'NUR BIATI', '2');
INSERT INTO `tb_santri` VALUES ('85', '121273090022180050', 'RACHEL FERDINI', 'Jakarta', 'Jakarta', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'ANDI MASRIYADI', 'ERNIH ERAWATI BT NAAT', '2');
INSERT INTO `tb_santri` VALUES ('86', '121273090022180051', 'MUH. INDRA KURNIAWAN', 'Sorong', 'Sorong', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'KHAIRIL', 'SYUSIANA', '2');
INSERT INTO `tb_santri` VALUES ('87', '121273090022180053', 'M. SUAIB', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'IDHAN KHALIK', 'SALMA', '2');
INSERT INTO `tb_santri` VALUES ('88', '121273090022180054', 'MUH. NUR FAJRI SAFAR', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'SAFARUDDIN', 'NURDIANA', '2');
INSERT INTO `tb_santri` VALUES ('89', '121273090022180055', 'ILHAM RAMADHAN', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'ALIAS', 'SUEBA', '2');
INSERT INTO `tb_santri` VALUES ('90', '121273090022180056', 'MUH. RIFALDI', 'BARINGENG', 'BARINGENG', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'SYUKRI', 'NURAENAH', '2');
INSERT INTO `tb_santri` VALUES ('91', '121273090022180057', 'MUH. AFAIR ARIF', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'H. MUH ARIF', 'NURMIATI', '2');
INSERT INTO `tb_santri` VALUES ('92', '121273090022180058', 'M. AFIF MAULANA AINUDDIN', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'BAHARUDDIN RAUF', 'KAMRIANI', '2');
INSERT INTO `tb_santri` VALUES ('93', '121273090022180059', 'MUHAMMAD AKMALUL ILMI AMHA', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Drs. H. Amirullah Amri, MA', 'Hj. SITTI HALIMAH', '2');
INSERT INTO `tb_santri` VALUES ('94', '121273090022180060', 'MUHAMMAD AFDHALUL ILMI AMHA', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Drs. H. Amirullah Amri, MA', 'Hj. SITTI HALIMAH', '2');
INSERT INTO `tb_santri` VALUES ('95', '121273090022180061', 'MUHAMMAD ADZIQ AFIF', 'Tambea', 'Tambea', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'MUNIR', 'ST. SALEHA', '2');
INSERT INTO `tb_santri` VALUES ('96', '121273090022180062', 'MUH. MUHAJIR MAULANA', 'Bulukumba', 'Bulukumba', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'AHMAD RIFAI', 'SURIANTI FASNI', '2');
INSERT INTO `tb_santri` VALUES ('97', '121273090022180063', 'KHALIL HAMDI', 'Timika', 'Timika', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'RAMLI TAJUDDIN NOOR', 'ASRINA ASWIH', '2');
INSERT INTO `tb_santri` VALUES ('98', '121273090022180001', 'ANDI ASWAN', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Marthand Basri', 'Sukartina', '2');
INSERT INTO `tb_santri` VALUES ('99', '121273090022180004', 'AL-HAEDAR', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Akhmad', 'Hj. Hariani', '2');
INSERT INTO `tb_santri` VALUES ('100', '121273090022180005', 'MUH. NUR', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Abd Munir', 'Nurhayati', '2');
INSERT INTO `tb_santri` VALUES ('101', '121273090022180006', 'MUH. SYARIF NURHIDAYAT', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Haris', 'Hasnani', '2');
INSERT INTO `tb_santri` VALUES ('102', '121273090022180007', 'MUHAMMAD BASRI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Naso', 'Nurlina', '2');
INSERT INTO `tb_santri` VALUES ('103', '121273090022180008', 'MUHAMMAD HAIKAL', 'Bone', 'Bone', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Madeing', 'Hj. Kariani', '2');
INSERT INTO `tb_santri` VALUES ('104', '121273090022180009', 'ZACKY ATHALLAH', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Irwan', 'Rini', '2');
INSERT INTO `tb_santri` VALUES ('105', '121273090022180012', 'MUNIR', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Mansur', 'Nadira', '2');
INSERT INTO `tb_santri` VALUES ('106', '121273090022180014', 'ALIF ANGGRA TAIZIR', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Idris', 'Nurasiah Hasan, S.Pd', '2');
INSERT INTO `tb_santri` VALUES ('107', '121273090022180018', 'A. SALAM AL-MUHAIMIN Z', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Andi Zulkarnain', 'A.Zurlia', '2');
INSERT INTO `tb_santri` VALUES ('108', '121273090022180022', 'ILMAWATI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Baharuddin', 'Mariaty', '2');
INSERT INTO `tb_santri` VALUES ('109', '121273090022180028', 'ST. NUR HALIZAH', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Sultan', 'Saniati', '2');
INSERT INTO `tb_santri` VALUES ('110', '121273090022180029', 'AFRAH TSA\'ANIYAH', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Mursalim Alimuddin', 'Sutriani', '2');
INSERT INTO `tb_santri` VALUES ('111', '121273090022180030', 'NABILA ADZKIYA MAULA', 'Jakarta', 'Jakarta', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Suyuti Hidayat', 'Ratna Ruliyanti', '2');
INSERT INTO `tb_santri` VALUES ('112', '121273090022180031', 'BERLIAN FATIMAH', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'H. Nur Habri, SH., MH', 'Hj. Hasniah, S.KM', '2');
INSERT INTO `tb_santri` VALUES ('113', '121273090022180032', 'SITI NURFADHILAH ABSAR', 'Rannaya', 'Rannaya', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Abdullah', 'Hamziah', '2');
INSERT INTO `tb_santri` VALUES ('114', '121273090022190047', 'ADNI REVA ANASTASYA ALWI', 'MAKASSAR', 'MAKASSAR', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Andi Alwi Majid', 'Syahruni', '2');
INSERT INTO `tb_santri` VALUES ('115', '121273090022170001', 'DEWI RAHMADANI', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Henra Wijaya', 'Irnayanti', '2');
INSERT INTO `tb_santri` VALUES ('116', '121273090022170002', 'SITTI MARDIYAH', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Rudy', 'Sukmah', '2');
INSERT INTO `tb_santri` VALUES ('117', '121273090022170003', 'NURUL RAMADANI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Abidin', 'Asna', '2');
INSERT INTO `tb_santri` VALUES ('118', '121273090022170004', 'ANDHINI PUTRI AZZAHRA', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Hamzah', 'Naidah', '2');
INSERT INTO `tb_santri` VALUES ('119', '121273090022170006', 'AISYAH NUR AULIYAH AHMAD', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Ahmad Said, S.Pd.I', 'Hartiah Haris', '2');
INSERT INTO `tb_santri` VALUES ('120', '121273090022170008', 'MIFTAHUL JANNAH', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Zulkarnain', 'Hj. Nurbaya', '2');
INSERT INTO `tb_santri` VALUES ('121', '121273090022170009', 'MUH. ANDIKA ASWAR', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Aswar Wawan Aras', 'Sepasari', '2');
INSERT INTO `tb_santri` VALUES ('122', '121273090022170010', 'MOHD. JIHAR ATHWARA', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Ir. Idul Razak', 'Siti Khaerani', '2');
INSERT INTO `tb_santri` VALUES ('123', '121273090022170016', 'MUHAMMAD RISALDI', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Muh. Ali', 'Sariana', '2');
INSERT INTO `tb_santri` VALUES ('124', '121273090022170017', 'ACHMAD JIBRIL', 'Makassar', 'Makassar', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Sudirman', 'Sitti Rasyidah', '2');
INSERT INTO `tb_santri` VALUES ('125', '121273090022170018', 'KEMAL BURHANUDDIN', 'Pangkep', 'Pangkep', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Haeruddin', 'Herlina', '2');
INSERT INTO `tb_santri` VALUES ('126', '121273090022170030', 'MOH. AKBAR', 'Palu', 'Palu', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Jamaludding', 'Aisyah', '2');
INSERT INTO `tb_santri` VALUES ('127', '121273090022180066', 'YUSUF ADITHIA', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Suardi', 'Andi Kasmawati', '2');
INSERT INTO `tb_santri` VALUES ('128', '121273090022190048', 'MUHAMMAD RIFQI MUBARAK', 'Maros', 'Maros', null, 'WNI', null, null, null, '2017', 'L', 'Islam', 'Abd. Rahman', 'Hj. Nurasmi', '2');
INSERT INTO `tb_santri` VALUES ('129', '111273090026180020', 'AHMAD FATHANA', 'Maros', 'Maros', null, 'WNI', null, null, null, '2018', 'L', 'Islam', 'Nasir', 'Ena Yunailda', '1');
INSERT INTO `tb_santri` VALUES ('130', '111273090026160001', 'NUTFAH', 'Maros', 'Maros', null, 'WNI', null, null, null, '2016', 'L', 'Islam', 'Kasri', 'Sumarni', '1');
INSERT INTO `tb_santri` VALUES ('131', '111273090026160023', 'INDRA SETIAWAN', 'Maros', 'Maros', null, 'WNI', null, null, null, '2016', 'L', 'Islam', 'Ansar, S.Ag., MA', 'Sitti Hamirah, S.Pd', '1');
INSERT INTO `tb_santri` VALUES ('132', '111273090026160002', 'NALDY FITRA WISNA', 'Maros', 'Maros', null, 'WNI', null, null, null, '2016', 'P', 'Islam', 'Kaharuddin', 'Fatimah', '1');

-- ----------------------------
-- Table structure for tb_semester
-- ----------------------------
DROP TABLE IF EXISTS `tb_semester`;
CREATE TABLE `tb_semester` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tahun_ajaran_id` bigint(20) unsigned NOT NULL,
  `semester` enum('Ganjil','Genap') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_spp` enum('imported','unimported') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unimported',
  PRIMARY KEY (`id`),
  KEY `tb_semester_tahun_ajaran_id_foreign` (`tahun_ajaran_id`),
  CONSTRAINT `tb_semester_tahun_ajaran_id_foreign` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tb_tahun_ajaran` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_semester
-- ----------------------------
INSERT INTO `tb_semester` VALUES ('2', '1', 'Genap', '2020-02-26 06:09:25', '2020-02-27 08:38:39', 'imported');

-- ----------------------------
-- Table structure for tb_spp
-- ----------------------------
DROP TABLE IF EXISTS `tb_spp`;
CREATE TABLE `tb_spp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `santri_id` bigint(20) unsigned NOT NULL,
  `semester_id` bigint(20) unsigned NOT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `status` enum('LUNAS','BELUM LULNAS') COLLATE utf8mb4_unicode_ci DEFAULT 'BELUM LULNAS',
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_spp_santri_id_foreign` (`santri_id`),
  KEY `tb_spp_semester_id_foreign` (`semester_id`),
  CONSTRAINT `tb_spp_santri_id_foreign` FOREIGN KEY (`santri_id`) REFERENCES `tb_santri` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tb_spp_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `tb_semester` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_spp
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tahun_ajaran
-- ----------------------------
DROP TABLE IF EXISTS `tb_tahun_ajaran`;
CREATE TABLE `tb_tahun_ajaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_tahun_ajaran
-- ----------------------------
INSERT INTO `tb_tahun_ajaran` VALUES ('1', '2020 - 2021', '2020-02-26 02:16:49', '2020-02-26 02:25:59');

-- ----------------------------
-- Table structure for tb_visi
-- ----------------------------
DROP TABLE IF EXISTS `tb_visi`;
CREATE TABLE `tb_visi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_visi
-- ----------------------------
INSERT INTO `tb_visi` VALUES ('1', 'Terwujudnya sumberdaya manusia yang berkualitas, berkompetensi, dan memiliki integritas keimanan', null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Administrator', 'admin@nurul-ikhwan.com', '', null, '$2y$10$VuDnRyHW/F2NPQncyjcGTeOLaPyJ/QC5wcWL1sn57sqV3AxXoyxWm', null, null, '2020-02-23 15:45:12', '2020-02-23 15:45:12', null, '1');
INSERT INTO `users` VALUES ('12', 'Yusril Ihza', 'yusril713@gmail.com', null, null, '$2y$10$RoqAub/qqUSSt.CUpsEzlOTkrprKyPc0CXdXi1c3w/gpepNsZrV1i', null, null, null, '2020-03-08 11:36:18', null, '2');
INSERT INTO `users` VALUES ('14', null, null, '5130411368', null, '$2y$10$D5R9dn5cRYfhFeihAexYnuPazFRhi81kG7LORJmRiOiAjKcCdS9ee', 'SD2X7rsE2QAaVus0PkqLutLTOW8qRjWgPPW7n5lhPCgHaxjGFjOnob3j2UfGx6U2I576mMYgd0IMKCoN', null, null, null, null, '0');
INSERT INTO `users` VALUES ('15', null, null, '5130411369', null, '$2y$10$qWowHv1yR6G5mcmbUZNpJu7.ibwFhhuwrWpD9BIyb8uYzoSguwFZq', 'bCvt3JSePibq2yl9MoHUgwG623e6DmVwPyzYJ7av9QffqODt9TDV2gKaM6qTN7JtR2yMsB7hA3H3Cu3z', null, null, null, null, '0');
INSERT INTO `users` VALUES ('16', null, null, '5130411370', null, '$2y$10$Jtom0bzVpSMgbv/LRA3oN.A4ipPq/30LIK2BsKw7pDbPH1604ZYSi', '8TOFQ711pzcA0mnFVzEFjP41El58uBjQH8A3TibeC4N0DumDBFum4xYJpF9eveSEXK1Lg2rLblpAdxTd', null, null, null, null, '0');
INSERT INTO `users` VALUES ('17', null, null, '5130411371', null, '$2y$10$VUGgX5ld8pirPqsxzLQ8d.oFn0Po4XX3IzkuZSdvmmkIBZUKyUyLC', 'tDZKPXq81NZT1p57g78vwKjMfWHhPfa2Wby1lNoqQULVIkyx75ffUimekJ4W68g2XCiENWGZ7PFNNg0Z', null, null, null, null, '0');
INSERT INTO `users` VALUES ('18', 'Ambo Tuo', 'ambo@gmail.com', null, null, '$2y$10$X3/juaU2Uczz.4QhH9CP0O8GvtIhw/tP3MQgvlUCVYvuz0YzeGqNK', null, null, null, null, null, '2');
INSERT INTO `users` VALUES ('19', null, null, '131273090318170027', null, '$2y$10$QWR7atM69b.f5rsLgDdc.OksIn5AAtWvdUUgkGMCAmIkrMRRZ60wK', 'FuUuCmUOdsTlzSKgo9ecVvAyqRWzgUSWwi4nLBVNT0qjF9z0A5AurIq19AAPc89ZsEZpHwpsPOuc0PAG', null, '2020-03-27 10:24:27', '2020-03-27 10:24:27', null, '0');
INSERT INTO `users` VALUES ('20', null, null, '131273090318170061', null, '$2y$10$3FARQWE9z62Qx3JSv69uMeJUTIHradsgMldkoD0KboMwVMctycWJa', 'u206oBCfLXQla21HvClYrCSjpDWvXAlSzF4jakIkrI0IqnXAyJWM2rDyoZ7nxuarf1P4qqu4Aa3FVObk', null, '2020-03-27 10:24:27', '2020-03-27 10:24:27', null, '0');
INSERT INTO `users` VALUES ('21', null, null, '131273090318170029', null, '$2y$10$Uq6KfVs6Vi6VJmBN5SYYeOlizZIK8r5kPgzJ7gDRlSLXa1DzlH7..', 'kBzxjV233xe5h4iXnpq8SOHSbcM0R2cWKE8uO0IGNc70H8ejezcF3yAscOoHAMQyfDqhYxbRDWeefhW7', null, '2020-03-27 10:24:27', '2020-03-27 10:24:27', null, '0');
INSERT INTO `users` VALUES ('22', null, null, '131273090318170051', null, '$2y$10$7gxJ0HOECOavdiIT1adj6.pZIxtreER.QH61y/ysMiXYWUeMORzX.', '9gzH5odO5lUxhoD2Bh5chqMAjPYmukrBGP0Aq0jZ0AjpnWs9G62PCcDnKUs3ikECXCtutaLvKkf3QCCJ', null, '2020-03-27 10:24:27', '2020-03-27 10:24:27', null, '0');
INSERT INTO `users` VALUES ('23', null, null, '131273090318180067', null, '$2y$10$M84QHxgBucYxO1a1WcQyCOM/3/oACcQWCUZooJSv/GCQrhwVwPoT6', 'KWJe0t5MUOxrTbHgxW10byvFsW1Mka01RMqtDTcCnDv9A1FIu3yyjzvBsdJ7ZcSnoT9geuq0FBwaQhK0', null, '2020-03-27 10:24:27', '2020-03-27 10:24:27', null, '0');
INSERT INTO `users` VALUES ('24', null, null, '131273090318170062', null, '$2y$10$rnasy2a15Q5k5lKkPEcn.OWFc4y4lns3Sm.P0kSII9ilmPxsTCbHG', 'Yl415kWqsgOUu8Cb0L4PBuif3Mhr7hsVzwNsuSAQAOfU8HoWeMycUh52GbzUcUfvPXsFW4YV2ETGlamj', null, '2020-03-27 10:24:28', '2020-03-27 10:24:28', null, '0');
INSERT INTO `users` VALUES ('25', null, null, '131273090318170028', null, '$2y$10$LpUt2.S8Jh4t4NF8jUawqOQMIYio9Fam7dxuzl21jwoo7aa8i.jby', 'asJCvEopqcMoJWjBhVhMW9b041a1Tqtalocqxlui0r8WPdXlUSTbv2NyChMY9Me0OR8knW4igl63SzBi', null, '2020-03-27 10:24:28', '2020-03-27 10:24:28', null, '0');
INSERT INTO `users` VALUES ('26', null, null, '131273090318170032', null, '$2y$10$/M5aFeSpu56rIQcSGLx7mO04NdMRS9plXtnE29CVTJICa2R43/Dre', '0n3IVSPswa9xnmSu6z7TqI2qMyyLqIGKPoEDp9UhQIo9LuOfHa7Xz3XWKT11HdYRN190XFAjCuqoXdn3', null, '2020-03-27 10:24:28', '2020-03-27 10:24:28', null, '0');
INSERT INTO `users` VALUES ('27', null, null, '131273090318170034', null, '$2y$10$S.2L2FtBbGikO95Gj1LUrOttlfB2RLMUMIOShB532Ammc0rJJg4eS', 'FwPYgPseHtbtKt5nXFebYd6uXoVtoehOjivvbvmYR5J82r7bETmGV3bqfQMURXX6FAGDXFuOg26rJS2k', null, '2020-03-27 10:24:28', '2020-03-27 10:24:28', null, '0');
INSERT INTO `users` VALUES ('28', null, null, '131273090318170035', null, '$2y$10$Ek3YggGgs9ojB06DewBgmOefiCi3WnKMGTFKRd7QToWKHhHohNtje', 'hdTqJSJflkclWd8tsPilC7PVaPQuaiuY52b6WiDJXefdvn40d1kDriRQMGVAq2hXJVcnKNgwcLKLBBC9', null, '2020-03-27 10:24:28', '2020-03-27 10:24:28', null, '0');
INSERT INTO `users` VALUES ('29', null, null, '131273090318170054', null, '$2y$10$J5mvjOK0ySigz0ieVSEDF.g1nrlo5isQzca2lRJTBCLSLBCiuHJNG', 'xUfjG3crAEmBVuNoFQK2YbdRMlZU3MxnAKCDpzmsbEdaZ4hGUFLX084n5kONXqPCXMExA7bymJEWFTsL', null, '2020-03-27 10:24:28', '2020-03-27 10:24:28', null, '0');
INSERT INTO `users` VALUES ('30', null, null, '131273090318180080', null, '$2y$10$ZWwsCEHjAzw1VSUcekal3.JWELac88286Ynp4vuM2HmEFlVI5K98G', '8FosUUr8gpxdDrfgf0uEN6ScTxidG8POM5MB7nrBYZBI2f7Usme4FzEERGCZm72ByxWzC1tL1Ju0Q081', null, '2020-03-27 10:24:28', '2020-03-27 10:24:28', null, '0');
INSERT INTO `users` VALUES ('31', null, null, '131273090318180083', null, '$2y$10$7DZAYsN2QuFgK2ZIXDTrK.BNL3/vAQBcs7iJIru/Kpye5syAdp0uW', 'kfWmTYh0n7dEizRG0sMNsOwabJUtLjXwGp1e5Z7vG1OclPT46Dslh68BRiSTJejyqleoSQNIab0WuUxd', null, '2020-03-27 10:24:29', '2020-03-27 10:24:29', null, '0');
INSERT INTO `users` VALUES ('32', null, null, '131273090318180005', null, '$2y$10$scAK53vc9CRvb.u8MU7WhOi2Fshf56ydib9LibYv0XQ.AD/dHWNai', 'rDlMmGWDvNf9LApGbHg5p1AbYTYvvwb9YcCMs2rUCwAPJd0nejulxO7oaNcxJX7YQ4tPwaFNqHebUqNc', null, '2020-03-27 10:24:29', '2020-03-27 10:24:29', null, '0');
INSERT INTO `users` VALUES ('33', null, null, '131273090318180017', null, '$2y$10$DbS4Y6D1T.5x.uUep55Jh.XOHLvjTCN4QlqptKgWEQqgDQ6NR/2fe', 'HYM1gxmdyYoXtS7rKSvQbrID5iWnjxLwlPfbNt3zT5gH0EyLYCuZVzELbEQalgYsTv87lWTCPNAtqJLu', null, '2020-03-27 10:24:29', '2020-03-27 10:24:29', null, '0');
INSERT INTO `users` VALUES ('34', null, null, '131273090318180018', null, '$2y$10$Aq2QYyHCnvDy4CXqN049Ie9tr2AsWPrRPdpJ/Cnyl5Ju5QzWn3X5y', 'Mt0AHRP6pQzxxhfHMXgjetCh8jth4wp4B8IHKj0386ELQVmBK8nvY7v3U9nG6h13p66toHqh1JHHHSMI', null, '2020-03-27 10:24:29', '2020-03-27 10:24:29', null, '0');
INSERT INTO `users` VALUES ('35', null, null, '131273090318180020', null, '$2y$10$6txd6zix7HdanyIPpTee9.R29FtyIvckv0Jx7zWKK0XeRzEBh4HPi', '6M3Z6hTCEz5qbvVd8BprGkoSZi3Aqqa9f0Exz4y7JfLrCMHV5XV2HpAGjGxJKClo76aFsZGFFb0Ymjkx', null, '2020-03-27 10:24:29', '2020-03-27 10:24:29', null, '0');
INSERT INTO `users` VALUES ('36', null, null, '131273090318180070', null, '$2y$10$PQS0SKK/vdWvSXKpxuIspu/nfyPqog65tWMGlAXX7MYT6sr9OwoDu', '7fQjZ1sl5qAs7Dd0Gzx2YkYjYZIWVMXdpKRNa4BCobzQgBMrYQ9oTNK5q2BOEBsq2MHrab5w82YMxXpZ', null, '2020-03-27 10:24:29', '2020-03-27 10:24:29', null, '0');
INSERT INTO `users` VALUES ('37', null, null, '131273090318180071', null, '$2y$10$E.vVdH6CVMt5dwqvRUF6UeCf9g/THT8SG/pMRoEEqhaE0wLAKphdW', 'O0Gjkl0lOP0ksVfkgtVJBZxskV1jzjGyRfOWOJhj0VyPh3IGowUSS2czHajfFjgayHzCFDq2H5VeV2Kr', null, '2020-03-27 10:24:29', '2020-03-27 10:24:29', null, '0');
INSERT INTO `users` VALUES ('38', null, null, '131273090318180076', null, '$2y$10$pqppsEnUymKRUppZunIeWuKYpO1hUQEaMu2UtPu1BwSTi6hTODJR6', '0OEPj75PJeuXlUzkd2y27xuqZVOuRQ5TRBJlZze0msRQu79xuifMpEephSesMr1COUlrX33M3p1qiJCM', null, '2020-03-27 10:24:30', '2020-03-27 10:24:30', null, '0');
INSERT INTO `users` VALUES ('39', null, null, '131273090318190072', null, '$2y$10$X1GXfzWjCcjeXzd3rdTzUe1Nwo6L0Lx5MDJfanLF0JYY6OxLn4maq', 'j7AgpSSrZxh3nr9ajWnndwyC2J5ZtINqngMeyzhtuESYzyBwNn85b8HfkACv0QnGVDbkII1VorLX0f36', null, '2020-03-27 10:24:30', '2020-03-27 10:24:30', null, '0');
INSERT INTO `users` VALUES ('40', null, null, '131273090318180056', null, '$2y$10$cXcrZH7fAjtzXNAtMH/OzeuVNMlY3u4IBPsl13i.xh.FpAfWn08Ce', 'MnQWbDdywggTzzsSPMpJNRRVPhcDbh0a3BKOiFY0PwvRnSyX8IAqU2eUiOR65JFA6J96A5SxQ8RERNA0', null, '2020-03-27 10:24:30', '2020-03-27 10:24:30', null, '0');
INSERT INTO `users` VALUES ('41', null, null, '131273090318180063', null, '$2y$10$Ojp.XTgqW5IwUs1JtgF1m.ET4F.t7rgSvHm3fopAEvia.05x9Hghi', 'zV5G7qFqXtEz31ERl0a9zEuL5TVvhajSMYzJsujy2CCiKyF13lo20qSmE8BEx2AvM9EOkICH6Ue9xiWW', null, '2020-03-27 10:24:30', '2020-03-27 10:24:30', null, '0');
INSERT INTO `users` VALUES ('42', null, null, '131273090318180087', null, '$2y$10$qQIYLOR2t5msELoACUynduaj6hSvsiiKVueEfHp7/G0bcZP2M7TWO', '7nEBrtES6wbXxzHEuUqcsVzc4JHyxbKzixOui220e7ikUv8hYSrr3xLer5IaCaZJJhfVWQ8KpAVi3QZj', null, '2020-03-27 10:24:30', '2020-03-27 10:24:30', null, '0');
INSERT INTO `users` VALUES ('43', null, null, '131273090318190014', null, '$2y$10$UlAs6F7a/Y.wiu59o5S/ROGe9N6deXKy.3LDSlM7V3Q3nTtW0lip2', '9ZxIpvPAr8bSsTG7ujFtAjln815GewjSGWPzfUMbK4IfuQyVCwru8s8yO6p2yVNNcs3Owq2dDLgMMPr5', null, '2020-03-27 10:24:30', '2020-03-27 10:24:30', null, '0');
INSERT INTO `users` VALUES ('44', null, null, '131273090318190025', null, '$2y$10$aA.2H8/cu4wPYN2nmUwrgenmsWVmQuQv34azWwtSrBSB7Bs7dB8/K', 'b5g4OXe0dNlQw0bEPh59Q7fCDKnZ3NlHwNxjoyI8SgQHysrUIcIqPJ0hoeAjUnchzTjFq6pumjYmvmEP', null, '2020-03-27 10:24:31', '2020-03-27 10:24:31', null, '0');
INSERT INTO `users` VALUES ('45', null, null, '131273090318190065', null, '$2y$10$nI8ynBsglEjpmR3bLeVrde8DoNOEaTl40M3cVu57ozXQE/YnRXndS', 'ZFxkft6VVglN0HDLUrwmKLbMKbdRC66RCymuNQqJqDHmZw2D56I2bW7NalbkFVyDNVRjn8ovRqsK5Dxv', null, '2020-03-27 10:24:31', '2020-03-27 10:24:31', null, '0');
INSERT INTO `users` VALUES ('46', null, null, '131273090318190061', null, '$2y$10$LmBQUP6XDAbDh/SWo3l8uOfmnCxWh7GCpk7KKDpForZsE2qMt./Iq', '6ABULEeorlgv7jhtwTfXvqYc7YJWLU3PdL6eyHjDdiqdr9FqQCrZojUGQCrcl7NkSpEX4kAwXZUtLzV4', null, '2020-03-27 10:24:31', '2020-03-27 10:24:31', null, '0');
INSERT INTO `users` VALUES ('47', null, null, '131273090318190062', null, '$2y$10$0Pg4x2REKDep4A4Wc4AGueud.hFfIBVQVM2qgTMIj8lZ6c4D4fX5W', 'Gjd6LEDO7ZF4N4QWPW6b2JVICVpEIdfJ0F8XWmEFFoNDbD4GY7vT3EGbktbMwwwo1COLEYtMqFa3ohzy', null, '2020-03-27 10:24:31', '2020-03-27 10:24:31', null, '0');
INSERT INTO `users` VALUES ('48', null, null, '131273090318190069', null, '$2y$10$mTa.n7T.1ukg5lj7dqL0zObGKWffZmFha1LmO5ff0/sYaiHTJxqFO', '3GBUZMHJPMkvPJ0VKm1HFgltNDUq4GyP54rRLRLnLrv7YyemaHpBXTiqwEll20RDYavhwqz7CffjmROJ', null, '2020-03-27 10:24:31', '2020-03-27 10:24:31', null, '0');
INSERT INTO `users` VALUES ('49', null, null, '131273090318190070', null, '$2y$10$yN9eDY0ij88cfCSnTiaG7u7QBMnDXiCD48Oe03.HyEBtjvPfXg/M6', 'Nu0kzQKrrBZ4zGdAGKZHJwtX7EBxDFs3nbJ50IOmfIje7xPZwmeDdptidmTTffQmHVMjOWI5ENF1NR5r', null, '2020-03-27 10:24:31', '2020-03-27 10:24:31', null, '0');
INSERT INTO `users` VALUES ('50', null, null, '131273090318190071', null, '$2y$10$j1bfPRha6eJ/X0OWMRDCZO1KQm8BVnBmQottKdtey0TDCH0W8z8IK', 'WdvTb5qqybTkjo5tLf0AIOzeyFAt4q9SEgEqFbjfMxZQjh5WW32S99zF0PYtqufYI9LgyjoOcOEPcJod', null, '2020-03-27 10:24:31', '2020-03-27 10:24:31', null, '0');
INSERT INTO `users` VALUES ('51', null, null, '131273090318190046', null, '$2y$10$s5YqL5Vu/NmRHauu9KRM1Ol7QqYE0EmXj.mwyujw4xejcCgq7SOCi', 'lTw16DaR00RKGhy7FS56TM3k1sslu6gEQsoE94NsQRcWMEaey6I101ApubVBonhtu1zQH146l4xRRCU6', null, '2020-03-27 10:24:32', '2020-03-27 10:24:32', null, '0');
INSERT INTO `users` VALUES ('52', null, null, '131273090318190048', null, '$2y$10$n41GEgdU9j2wyKZwuQi9XeuuZD5GanLxMXDx3qGFtcGeOoqFdWuzK', 'vGa9szxNSLoPPAnuDjaa12D16fFy1esQkk8NblPRxBhwEu0yLGxXp1e0NaYyP9JYWLjTv0TTXvgv7CsK', null, '2020-03-27 10:24:32', '2020-03-27 10:24:32', null, '0');
INSERT INTO `users` VALUES ('53', null, null, '131273090318190056', null, '$2y$10$U2VNKj.4ii.KmcSp1fyt0.lHnOcO7pqTtmkIzu/i7iuOJEKAVWWj6', 'kOe5On9vhJTjrSESnqcEEFNGDwjxetbHcpn4Wdk4IxuejqYUPvIuLEEuJYKVLvHsmGGFpQ6933pcydha', null, '2020-03-27 10:24:32', '2020-03-27 10:24:32', null, '0');
INSERT INTO `users` VALUES ('54', null, null, '131273090318190057', null, '$2y$10$f/RiuFE5JDQIUuSYb8LbAenUSXAEsyD0gwwD0LwVnSKqafgqFgQyq', 'yVgLaMFlAwIMDLPOa7FfcsmcTKN6fnny3KPmoGdYJ4VIa8A9RZZ7OsZwz43Ol15zEzOB2ihRgvsYicRH', null, '2020-03-27 10:24:32', '2020-03-27 10:24:32', null, '0');
INSERT INTO `users` VALUES ('55', null, null, '121273090022190001', null, '$2y$10$tiLGfBaCJPHaEvEDFX3YHuPO9sLt9n/vDo2iRFFIKGHzyKSs/dAem', 'pUks48yZXJsUgWE1IR0vmBrUjUjDfKgOobWvJP8I3bnUr8tUnFzLXmETQovOdYGLSJpzVdfLdJkyQf7f', null, '2020-03-27 10:24:32', '2020-03-27 10:24:32', null, '0');
INSERT INTO `users` VALUES ('56', null, null, '121273090022190003', null, '$2y$10$aC4EFNiX09PnBWVfUV5nBudj3BHLOJw7avveDQEcBXATsc3o/veVi', 'ukNNdbjC6ZzhYKSrGQ3fvkxm06WXt5gjRZKvb8JbJHAJQOA3R8VfRH3BezoUVvHySFQZJyVGqlZdSeHa', null, '2020-03-27 10:24:32', '2020-03-27 10:24:32', null, '0');
INSERT INTO `users` VALUES ('57', null, null, '121273090022190004', null, '$2y$10$UzI4Lp0QXsDHB6Bk8SijJe0h8WtyXHisAnyN5jOvFCftjmIQsKZUm', '3sZxwhfExZKLZw1AqBibzLu6hjR46FJBRbGHjOLqg5KcONgsfmOd2mo4QHEgdxDUbejlisrJF2Yhjf81', null, '2020-03-27 10:24:32', '2020-03-27 10:24:32', null, '0');
INSERT INTO `users` VALUES ('58', null, null, '121273090022190006', null, '$2y$10$3ar/0VDI.SYhS5NvUXMpAuEHKTeasLPuGbHeAVoFyNNhPRdT2viyu', 'QTff4VWF94gnWdDma1bR7PhnAV66JdcBw6ojoTfee9Ug2PtSiHoyvCdeT1vesHMzCMKvjFWpZiRimUYV', null, '2020-03-27 10:24:33', '2020-03-27 10:24:33', null, '0');
INSERT INTO `users` VALUES ('59', null, null, '121273090022190007', null, '$2y$10$nI29mUqPDVBaQk/beYwXz.wbYBymDKMdeMlgFFyvDeH3GAHfp8jWa', '29I7XNBIKN0S918F48Wf0hYhk61l06ZZ3B3acmjgmPea8OOpcury6DBB6H03YTYLj1pyTXL8E0yZWb90', null, '2020-03-27 10:24:33', '2020-03-27 10:24:33', null, '0');
INSERT INTO `users` VALUES ('60', null, null, '121273090022190008', null, '$2y$10$hlrnbVj.EWoHj821A5HG7.marzCtIPjlV3.FQi/f/hSz4asmvOg0m', 'oxMuG5ZajVBO79q9oDMnWongVk3T79nJdxqsOlgvXMQTjkgwpj5Uqfsr0UrVCkdUCxD5cnCsoIUAtLH6', null, '2020-03-27 10:24:33', '2020-03-27 10:24:33', null, '0');
INSERT INTO `users` VALUES ('61', null, null, '121273090022190009', null, '$2y$10$QRsyUA11QaqVSaf.lEvrZuLVSi9rKDnus.CO3FGmbOVYPhoCf4wDC', '9J8zSz9MfdCKbLMR5tOMFq26XpnFSkVcOI4FM6Kg73YE3tG1wuxvGnTkZAK9eSVmkxIs9ywweRp966S4', null, '2020-03-27 10:24:33', '2020-03-27 10:24:33', null, '0');
INSERT INTO `users` VALUES ('62', null, null, '121273090022190010', null, '$2y$10$cKJ/Y/76OaukURp2n8HIuetKi1A3HwiYzegI21w5F7YLknc4yqI.C', 'eLOv9hDw02mJpNHCx8DZWxJqreKgXfva6TbLEMtdd3XYNOQ06ts44y5FK416bEliwXbREmwL1KWWdVLf', null, '2020-03-27 10:24:33', '2020-03-27 10:24:33', null, '0');
INSERT INTO `users` VALUES ('63', null, null, '121273090022190011', null, '$2y$10$vT3o5kn7t/Jo/H1LcXQIk.UuRPmFT/vNT.KR3lf8yex.Ljr4RYqWq', 'sSxb9sXbqF8PJX6YAnbZN1ErGhuAc1pqWRaeTzjPLFVRgV3YtI0X8ELFv15Yf5MRgd4o81vdeLbPjxlc', null, '2020-03-27 10:24:33', '2020-03-27 10:24:33', null, '0');
INSERT INTO `users` VALUES ('64', null, null, '121273090022190012', null, '$2y$10$ePQ5NlL8s6cExHF2iy2sGeg4v0RAWg/QfgFRODPZ13v0n6Xdr2ui6', 'toHK1HzTiHfR6CyMEzc8e5IppSlSsxpsTXh4eVX45Aq7p7VDbmNjCKnm3yDlYRfVSmopeYKhrexw5SKH', null, '2020-03-27 10:24:33', '2020-03-27 10:24:33', null, '0');
INSERT INTO `users` VALUES ('65', null, null, '121273090022190014', null, '$2y$10$d9lLiwxmwUGCbQPxKAxqJ.yxXlXtCjwemFWjhbgNr/sRhknHGU/3S', '6myUVIGagdtDTboOEfVRulC76WGgrbmz7GB4lhUuty97HZO5iPApDGN7ISAeywFdD3zL0d7p6zc3PUaw', null, '2020-03-27 10:24:33', '2020-03-27 10:24:33', null, '0');
INSERT INTO `users` VALUES ('66', null, null, '121273090022190020', null, '$2y$10$fazMs/XSBlUeRTedi/n0CO0VKDQ.mbYlXCoD0xR5WwoTIeOfNCFgi', 'z6HwVoFJPQp3kgf8m2YTLYudBTR1MsMvy7jJ7WDyCTMaMtKzV8QMMK1SFi0FZJf3S4ZBwPBAwM0dWdNJ', null, '2020-03-27 10:24:34', '2020-03-27 10:24:34', null, '0');
INSERT INTO `users` VALUES ('67', null, null, '121273090022190023', null, '$2y$10$NUg8/APzyT/NgFWqe51Jr.KVsWAonHuzbLmcCkB8kuU0W9pvtRjve', 'TtMbttOe4vEyj6ba9DzW0ylGWQZ32pjPrbBW31Rd6F0pYFVuuoCFZPHDQ9KvHc3AVbbWpJYcgKQ4X5ew', null, '2020-03-27 10:24:34', '2020-03-27 10:24:34', null, '0');
INSERT INTO `users` VALUES ('68', null, null, '121273090022190024', null, '$2y$10$UpJp5ipk2I/KhXpz/s6W3OuvGszW.XJaoRMQGyBdf9F2.0Njv9OeK', 'iUIWvnsgeLZ7EsRLxJ0Wllhvm2Rbxb1Qm9A5OcU3noW7Mk0yA0ihaZY2hPHlz8sXA4MUYlJFObOmDBAz', null, '2020-03-27 10:24:34', '2020-03-27 10:24:34', null, '0');
INSERT INTO `users` VALUES ('69', null, null, '121273090022190025', null, '$2y$10$A.u6uYCEcIkngDTkx0CHj.j2LeU6lbdFV7FEG30DCln7OXaYE0kE2', 'j8c9x98gZu0JTUZUQ9oSq3Iz87DSaqFdilbHcU9591S781xURtd7q5jkIWRb7RfKztMSIutBjW7Vnh7i', null, '2020-03-27 10:24:34', '2020-03-27 10:24:34', null, '0');
INSERT INTO `users` VALUES ('70', null, null, '121273090022190026', null, '$2y$10$JOPQ7Lj0ssa7yKNIeeYRDepNQduwfbGKeZYoxZRjpqys.RTlWeKKy', 'pHK2KqOseJLD3o65867ycCiYMgUH1fLstCpOebfGPEw4nGlIvW5CDlRHioZEooYhUQQ6MSAqJhyZedIH', null, '2020-03-27 10:24:34', '2020-03-27 10:24:34', null, '0');
INSERT INTO `users` VALUES ('71', null, null, '121273090022190027', null, '$2y$10$FYXjx8XrZFjy/r76LoT9Ouo9h4hXzwsROYe0lxv4N8q/GRglfgjzu', 'TtLxun1JOScKtqGPGzNzsour33UsJ7lABZQAidE272vg2wuZsZpBKDYoRpmWmjRlyLzPdKUJyeUhYvGz', null, '2020-03-27 10:24:34', '2020-03-27 10:24:34', null, '0');
INSERT INTO `users` VALUES ('72', null, null, '121273090022190028', null, '$2y$10$gxFYIQC5lH2w6aW4sJBkgeNyJRtEm6HQQrIWXR53QxaAEBLwqKIo.', 'CLaLFAOABXo2fVuOVzybJpGmZTuX1Q3NX9FwKCWDT0VD6PKK5ygSj2X0AwPzGurJCEuW5ZyxIWSmXGvy', null, '2020-03-27 10:24:34', '2020-03-27 10:24:34', null, '0');
INSERT INTO `users` VALUES ('73', null, null, '121273090022190030', null, '$2y$10$8VEpLhOF5nja8K1NwxG1HeYnA4AEZvdgwiFyYyjLlD134FPDvSbBm', 'IgIwHPHyY6qZcQw8e5Cux8Bua2mqvOXH2ZCxWZrgsnJu7tlBEfy1yfHe4qKLESq2u0TR7mgeTmHXD001', null, '2020-03-27 10:24:35', '2020-03-27 10:24:35', null, '0');
INSERT INTO `users` VALUES ('74', null, null, '121273090022190031', null, '$2y$10$pamDZQKVZ7sZG/K0ixh3U.OlNkd03IQTGnv6iYG1rh48vD20PEet2', 'MOWCMsjx1yuh9aoK6fL8gzsZjiSX71xD6WVB3y9IUt4WJDuquVXQncQHHzeSx0RTMudPpSUjoEejm8A3', null, '2020-03-27 10:24:35', '2020-03-27 10:24:35', null, '0');
INSERT INTO `users` VALUES ('75', null, null, '121273090022190032', null, '$2y$10$AG1B8GUY06egt4.ZqXlcbuV4vWJEuMiaDTlVe7thZRLVcf5JjXh.G', 'Agbant5OvMpIZpW8TFQ0L7KEAeau7z88OoytKwxOLDG5NkX9DDyvBPmSqUgfcN1QwCe33TjvvsgbeG45', null, '2020-03-27 10:24:35', '2020-03-27 10:24:35', null, '0');
INSERT INTO `users` VALUES ('76', null, null, '121273090022190033', null, '$2y$10$.azcPkBXgXJ.N6jSPGuPHeyijSgokpTmETmTJyfe632.th7tfAV72', 'XByoQINWt9n9OPW15mvnwvzTgAONG9HEFj4O3XQ0GJCq0XvhfPV2xUPHZUIimqOboZy3WSrdmUJJPny5', null, '2020-03-27 10:24:35', '2020-03-27 10:24:35', null, '0');
INSERT INTO `users` VALUES ('77', null, null, '121273090022190036', null, '$2y$10$kd8TL9uEkMIrNO0cIcY8huJlDt6CUdcFrUD02rw4l/hsAKEJ34pze', '72n4RrM1SP0oeTKXN3bRV2k5ztiYcoOijIVWUh5bm8jZp0Or4jlBUEaUsVh5SAtseoEbuaPDcNCEDKON', null, '2020-03-27 10:24:35', '2020-03-27 10:24:35', null, '0');
INSERT INTO `users` VALUES ('78', null, null, '121273090022190038', null, '$2y$10$xMCFoTp7iqbe/noa6Z5yO.tqZpOJvDwgwWVh89EW8nXxz8ugeMCDG', 'pL8a6trJYsdTHdJOHzelENBO4VZ0xsp8TPMquSOxN6fJckWjEtVI4g11v0ghejPSciyVM5KLysF5zbGq', null, '2020-03-27 10:24:35', '2020-03-27 10:24:35', null, '0');
INSERT INTO `users` VALUES ('79', null, null, '121273090022190039', null, '$2y$10$l7yGOnliGjx7QoYWeKef7OVV3cG41uU/FwA33g2MxJcTXs/PQFh8e', 'mVwi1bO5tYxrfvyfZucKAmqNiMyBQDAE1e2HOLyNley886e84wEqh0gDROm8cZHCmgO72vC0ls6ficI0', null, '2020-03-27 10:24:35', '2020-03-27 10:24:35', null, '0');
INSERT INTO `users` VALUES ('80', null, null, '121273090022190040', null, '$2y$10$a5/a0c2polchzhS6l6Q0peohOlLpGXbQM9ZSHKiTGaWBXsxBtCq0e', '3GCf1Ti5rCg32OYDU3q4uXTKQHGkw3JgN2FMg7BrktLToc9aNku88EuClctip6s5LWALZcwJvepP7oGQ', null, '2020-03-27 10:24:36', '2020-03-27 10:24:36', null, '0');
INSERT INTO `users` VALUES ('81', null, null, '121273090022190041', null, '$2y$10$KGLqefdVoTPuzNhRbQH5k.4CjmGrqaNV8lRdMMAwhcVZzqv33ZuK2', 'wwJLuimAjftlEVOaGBwzQsidRO58gyQzP2TXXRNNbQSllXzIsrWAzcrXOP1unW8SVYjzf0LOqIe5vkLI', null, '2020-03-27 10:24:36', '2020-03-27 10:24:36', null, '0');
INSERT INTO `users` VALUES ('82', null, null, '121273090022190043', null, '$2y$10$TQg2T02xx8xSvGX0wgJSi.aUUzt1QEFYW79HW.AhT/aGKZWMIwDrC', '2APr1Z3hO7oPnzXLNOxj5bXXNgKoo9bK2zWFx6PkA2Nt0Yasrff9bXAvx6y3ydJ9n2wv9NNVm4xWTOyG', null, '2020-03-27 10:24:36', '2020-03-27 10:24:36', null, '0');
INSERT INTO `users` VALUES ('83', null, null, '121273090022180036', null, '$2y$10$FTXdMYgjwPhqTZMyKTlSROcyBOhVrL7wC2OkbJkSJd4Ml9NkjrMGi', 'Wuo1BeHYeh1SuxIWByeaJ8Cad7dGf1Zhz6b4hGZmWEfLOu0iKyPXixbJoh2rAfPcu6i4XyllLhCn3lSV', null, '2020-03-27 10:24:36', '2020-03-27 10:24:36', null, '0');
INSERT INTO `users` VALUES ('84', null, null, '121273090022180037', null, '$2y$10$2C.DsHCVsRloAP5MHGDk2uQkUuSFqFBgCzhvOkuscVZg6vq2/uSGi', 'yM6j0iWDQT1v0ORYPYLvYLRI04XjL5ALDbpGZQwxg1cdyGbvcILISkFIsc2l7LJIbu6q4Cqf6sunUsWi', null, '2020-03-27 10:24:36', '2020-03-27 10:24:36', null, '0');
INSERT INTO `users` VALUES ('85', null, null, '121273090022180038', null, '$2y$10$/eZIsa88cKlP1PRmC5c2LO/ZtOF6jZH8l/GOwKbRbbLclfx4kx9Qm', 'E9NBQvejnxytCG3jVQQ2nJQSeT12xd9HpvAmZrVVzBgCzyNLye2kMpM1p1F6Z43oyg9fnDp2MDHHgjLQ', null, '2020-03-27 10:24:36', '2020-03-27 10:24:36', null, '0');
INSERT INTO `users` VALUES ('86', null, null, '121273090022180039', null, '$2y$10$UHtacYR5yrNSZ4vghPDU2eG42cRBGdt3xxSmudoqBfo/2NCNkPjG6', 'IhNvOTrRlYraGvFkKyC1OQkBGctxMANjYxA3TFFzyZxQPxnKd0SnDc8BPo0WpbPClFoReRVfWo9KyKzv', null, '2020-03-27 10:24:37', '2020-03-27 10:24:37', null, '0');
INSERT INTO `users` VALUES ('87', null, null, '121273090022180040', null, '$2y$10$lDSx8v.QXXyWV/HK07g9YeyVT7O8V8NlUlmVgqnEiWTPzF8vo.xqS', 'kHD7CnnDCBXB7AZqCgwPgsjqZZLjZC9RijAhrBnSz4f7fjalROiaC5gXHrL82ixlSVYtQRf2gDZVybt9', null, '2020-03-27 10:24:37', '2020-03-27 10:24:37', null, '0');
INSERT INTO `users` VALUES ('88', null, null, '121273090022180041', null, '$2y$10$mUnZ71a/1mjK78NMPDEIHOOUjwRM/TIJ5DvvC5vl6VlLLamCfvuFO', 'BGmVdUDdQejSJeipOsJ71eQXmIGXrp4i3skWW9FHVOwZnpPPqAgIJM6W4faOYWHSjac9Bpna3mG5Oe8T', null, '2020-03-27 10:24:37', '2020-03-27 10:24:37', null, '0');
INSERT INTO `users` VALUES ('89', null, null, '121273090022180042', null, '$2y$10$HUGtkmI9KWhy8Dq2F6BqfecU1ZXUAkETRJXDdzlwpowQLuPjFZsmO', 'von4ab2WTGSNJLfBVIW7m3jRpcLNZVxrMkYsIoUt5JgdPBtytKHd2NwhgquoJDfR2zZWeQXP5PjiTX0Y', null, '2020-03-27 10:24:37', '2020-03-27 10:24:37', null, '0');
INSERT INTO `users` VALUES ('90', null, null, '121273090022180043', null, '$2y$10$FYb1aN20vSa5pl7Ko8sUB.Uyza4wkI.HU8NTcb7zjtacWm.ZbKYgi', 'Ge03ZzME1jFQIjP2eYByYyETEgFGAm9vlIv3pkEUrR6tfV1ZzqfrgbUJBL0JK8eWkViuc3rZAoigpJW9', null, '2020-03-27 10:24:37', '2020-03-27 10:24:37', null, '0');
INSERT INTO `users` VALUES ('91', null, null, '121273090022180044', null, '$2y$10$BZ.AQAaub0xv9Q4djvpqweMjJdW.K2nYwpRYEg5xGdNr4I2TDB//u', 'JMQfUuQAAYtacGQql55MGvmyWCmcx3vbTOH50kB7tObRJViK8lvoWpdDWJ1HAokS0eWKoNxLbxUN8ApD', null, '2020-03-27 10:24:37', '2020-03-27 10:24:37', null, '0');
INSERT INTO `users` VALUES ('92', null, null, '121273090022180045', null, '$2y$10$tm4NfGVgyvGP8JwWm4sphOuALd2FCuPupb40aRzSvLf4wKu6CHhb6', 'ffdJc0VWrOlQrqdOAJ8ncgjfPYXjObcPOtO5W0j6rhbRplNu8zURHkMMcE8DGyg66hIoTvZKBJgjK5en', null, '2020-03-27 10:24:37', '2020-03-27 10:24:37', null, '0');
INSERT INTO `users` VALUES ('93', null, null, '121273090022180046', null, '$2y$10$Q0P6p7gwrAWsIRL1dtXLS.yl3dvNodIJjtcfvsCnXlmengEFFFIHC', 'HxkmRdnM1MuDcimDS9Io2ypsStOhagvxFX09X6ka4DcsDFDcWPMR486fZoYisBSzuCFvXh4dWDbDlOYA', null, '2020-03-27 10:24:37', '2020-03-27 10:24:37', null, '0');
INSERT INTO `users` VALUES ('94', null, null, '121273090022180047', null, '$2y$10$nSBTKxDD2u1U.9pcJtol7OZGHuVimp/SkwcqCPqwXp9n73RdBbkzC', 'hpRGnQPwinwdi32XKtW5yPxPCVCE7hPXvxX9xOy9ETqvpDtBOFIQaujufeLxreRLxVPtLAHbUP2NgaGN', null, '2020-03-27 10:24:38', '2020-03-27 10:24:38', null, '0');
INSERT INTO `users` VALUES ('95', null, null, '121273090022180048', null, '$2y$10$jAOxyug2ViKHOST.Cmel8.ijxJfXZIGut0VMWgMTcp.rBHpUpFxGm', 'grvYOCCcV5YP85g8TACgM83fcJGpsCZRK6BMw53Tmhn8208VYp7ETqlyomzBWwaYrk4yU4Ur6KNhhByJ', null, '2020-03-27 10:24:38', '2020-03-27 10:24:38', null, '0');
INSERT INTO `users` VALUES ('96', null, null, '121273090022180049', null, '$2y$10$tIn624JZhOnCON8650BKWezMhrKaMe.1UL.GFIfC.amyA7hhXaxDe', '11IffeqHOOCIjoDQdCCbt0B2gDTI5UsAMnRouei3OA61wulvjdRZfl3q4XiraBNjwsINW4sTJw7LjO6N', null, '2020-03-27 10:24:38', '2020-03-27 10:24:38', null, '0');
INSERT INTO `users` VALUES ('97', null, null, '121273090022180050', null, '$2y$10$33J4gr7dVRmwajsSgYDBJOmBpEJYaB46mpBTHr1XFDM3FwYaErFW6', '58uhVyo5KANBfUnhTYxCmRgHSbHmY5NDovSOvZwNnuya51SRVwLrE96KPUby9hcUJ2OzyytFl95qoWbd', null, '2020-03-27 10:24:38', '2020-03-27 10:24:38', null, '0');
INSERT INTO `users` VALUES ('98', null, null, '121273090022180051', null, '$2y$10$wcW7cDyC1ElZSVVRq8DJxe3RW7lZ8sCw40cbDiLUO52e4MbO5HBZi', 'INUkNUITip4KyeVTuwPPrWjTDdvBc4wEyjhILiiiDq5hdilNCDg1V5o4grfxM1zxUdNf14PhAlPMlAUa', null, '2020-03-27 10:24:38', '2020-03-27 10:24:38', null, '0');
INSERT INTO `users` VALUES ('99', null, null, '121273090022180053', null, '$2y$10$dz3S2.7vFXTVEWzZ8incMeS08LMnqlbnkfSk75qLGnxkjWBxWdCXy', 'KezNgadAcwWcrWxksAO9REUi8gOlJjD1i12M8DV9ZpUcpn3DhYvUBYyHUUR4ERmhwtZhFAfOod71j8bT', null, '2020-03-27 10:24:38', '2020-03-27 10:24:38', null, '0');
INSERT INTO `users` VALUES ('100', null, null, '121273090022180054', null, '$2y$10$Vocrul8w5sLfhbO5aDlc6uF.43OkYiv9/Gaz93lsTQlARlwzu8crC', 'oIE5EVgndoge4h6L3VxXKBruF664ZDP3FFOWJunuYbvMF02KzrUpPCwdRqF5Bg78sXgXVmhH0qPKNcXV', null, '2020-03-27 10:24:38', '2020-03-27 10:24:38', null, '0');
INSERT INTO `users` VALUES ('101', null, null, '121273090022180055', null, '$2y$10$OMY70DeqjyViyPitdQdpYep6KEdeXq1yFP/3AMWd1g/ixLXVpQLnW', 'RYgw947bCm3XPnCmX27tAQtmukGnJRoZohawDoFAy3YvM8CF1aIXuBQ1Yofm4akZ5lUMIbSQa9BpvO2r', null, '2020-03-27 10:24:39', '2020-03-27 10:24:39', null, '0');
INSERT INTO `users` VALUES ('102', null, null, '121273090022180056', null, '$2y$10$4Jt1Ls1nXBTYc5pq4yGw6eCJ4fHKioaxGVZ8D999ZiOrki9Ju12b.', 'wY4hdhNsjlhQ1nW9VghOvhDobPUTeVhTyyf3uAxziMl37n7KsjMlBnc7y9ow7WeuIGpFC2JaxTdslzBQ', null, '2020-03-27 10:24:39', '2020-03-27 10:24:39', null, '0');
INSERT INTO `users` VALUES ('103', null, null, '121273090022180057', null, '$2y$10$WYGX5kEOt1XVTmH3YrTIfuZMUcBZImWSqlV0vyTc0GjYmBFHoPnFK', 'rFx4cDJ9hJHqqBysoyS0c8uCvNK6KRTHjVMLsyUT1ErTfVDFLlmS5bkomQqYc0fHIyuhIbkFiIhnKZRR', null, '2020-03-27 10:24:39', '2020-03-27 10:24:39', null, '0');
INSERT INTO `users` VALUES ('104', null, null, '121273090022180058', null, '$2y$10$7vHCC3GzcEt1Q5/tkXwq/ONcCeTF/cHV63YTnAYc2XuERGUtI.XeW', 'UGuipeKAdYkdkWUcgzEgcEJvRfKhmhgFyXoD787hKCJqW9wogukgChX12W8pY0QIpdS4ur33tgjqmmD0', null, '2020-03-27 10:24:40', '2020-03-27 10:24:40', null, '0');
INSERT INTO `users` VALUES ('105', null, null, '121273090022180059', null, '$2y$10$7/FVtzLQNFwgefo3gx85Ie5DjdmZ1SM.fWK3x08MJbsM7xhyKTHEK', 'AbXwehovjWpnPNF7wdIL6LouOvWdTLoIf5tgl02FwNoPzOByX39WH5JlyzMA2dkNvZnQZwL4M1z8f17K', null, '2020-03-27 10:24:40', '2020-03-27 10:24:40', null, '0');
INSERT INTO `users` VALUES ('106', null, null, '121273090022180060', null, '$2y$10$at5zUI2pPIEEb0wktKK9jOETq822WlDplYHxyHontjD9445uaZ7Ri', 'cWNaA2EVyzvJUSpKc2BKcupqxwztpyQM9zay457LS8D3hSduXsKrFu6KOwxH9D54KY1Mpq0Rk177QYgr', null, '2020-03-27 10:24:40', '2020-03-27 10:24:40', null, '0');
INSERT INTO `users` VALUES ('107', null, null, '121273090022180061', null, '$2y$10$ar1vh3iV0WCTHXWz/b7ZR.Pn3uMhO2q19MV.nDYFaJ4ycNhwVzMSa', 'yISzWwmwVenZ2ZF3MfpmuA67rRlapRcFYXUZuzawxHbw5BR2BFrmrJwEHt07PRGJK5C2egzLOawBXqxx', null, '2020-03-27 10:24:40', '2020-03-27 10:24:40', null, '0');
INSERT INTO `users` VALUES ('108', null, null, '121273090022180062', null, '$2y$10$eOE5i/ygiJNVKHOa0fy5/OQPUJ9km9vKGKBJS47ZlOcB0NYXF.Gs2', '9LMxgZZi1IgkrwIpNYGNuhbdwbE4SFAONwhU2kUQcX04uWhP2c8f4EBSHBDbRHRZCLZYzNzPF9006dTT', null, '2020-03-27 10:24:41', '2020-03-27 10:24:41', null, '0');
INSERT INTO `users` VALUES ('109', null, null, '121273090022180063', null, '$2y$10$DsDCUzUttXwDtlHPtdbULenn.tQ2MGfOulHlOf2cujk4v726G9qVS', 'eYdwPFAaDDQtfngKpaYyWaZZxu2GoQLq1Do84ZSaxxYXKsDH2oliHfK4zNvaQUfQzZ91k7WK1pbxtZud', null, '2020-03-27 10:24:41', '2020-03-27 10:24:41', null, '0');
INSERT INTO `users` VALUES ('110', null, null, '121273090022180001', null, '$2y$10$t8QBsvZMhLD.vxli4vojk.cpi90MSB7hRSKCCJpxZnp0kZvSmfn9W', 'VXLCwSlKXgSYRAYYYLAwCiqHIhXBTCp4v03rPnqvPEZmKox7AKdLBbrUgDMTraV8nIZEoAFEf45aSjpD', null, '2020-03-27 10:24:41', '2020-03-27 10:24:41', null, '0');
INSERT INTO `users` VALUES ('111', null, null, '121273090022180004', null, '$2y$10$VylTkvfRkctBBPHoLHO7veVq3dp.84RDVpGidkXmK.JF/sGYVqFWu', '2f1ZoOGmIMzqNmQC8tyNDVMfiwGeiOHSEjuSH1qoDioQPA0TjEpG4IZRRwqGHZjygyVZJQ3OzjCeaNGR', null, '2020-03-27 10:24:41', '2020-03-27 10:24:41', null, '0');
INSERT INTO `users` VALUES ('112', null, null, '121273090022180005', null, '$2y$10$wlexsjREAZjv.nCqG2Hc4ujxOO/5rqxgnr9FZstsHhFdfKplhnBQq', 'KCM9NnJJEgne92Zyh2Gm8q0jjsde1RPWalMvUby9pP3Gf7F0Gx2zuh126CLyhTOPxhhkrpZgGcOM2H5W', null, '2020-03-27 10:24:41', '2020-03-27 10:24:41', null, '0');
INSERT INTO `users` VALUES ('113', null, null, '121273090022180006', null, '$2y$10$g.PVWfdIj8yFr5in6zx1DeuoukzhtQjDND2.iJZOSMDhxbJcXCLX2', '3SUAv9auOaN6hIG2IfTblEsXd802b1Kc86a8TGu8XfLChhejZXN8OusFfu4J6KO3XqPFr8ixUv5Fe1uc', null, '2020-03-27 10:24:41', '2020-03-27 10:24:41', null, '0');
INSERT INTO `users` VALUES ('114', null, null, '121273090022180007', null, '$2y$10$Rbt0Hskqj9vLbLxme4a4MeXWFlqJX57JgjhlFNjTAaSAzl5n2iIQm', 'hWNoUPXWiByjJu3Jn3BGTZLXjKY6tYLrpywfhTXqEYffAfWTWp6gNNZIbBO8W3KzeXBL2xXudARaE55k', null, '2020-03-27 10:24:41', '2020-03-27 10:24:41', null, '0');
INSERT INTO `users` VALUES ('115', null, null, '121273090022180008', null, '$2y$10$aOyHH9GXECy87XK9LKH1W.I9WiikfEjjlTLiRuzPi.L3Ha/cugDwu', 'UQawAw3u8XBlpYnIV8dN287m02HwbV1Oxy7BL7XxXYTysY0RPnYEw1x7ZfhHFnnocMJPovIX9t2pbXdG', null, '2020-03-27 10:24:42', '2020-03-27 10:24:42', null, '0');
INSERT INTO `users` VALUES ('116', null, null, '121273090022180009', null, '$2y$10$Aq5NsEFZBUMhihAyuWCQeuw4IcF/7kkD9FXsr1a..Oej7mxETrrwi', 'SUShYC8ypAe2vpyFs4hvfTolV0IqxbvFVYBiKWXmQxPbaAyIgW0lYkUOeRws1qkwSKrpdBIGbauX3eVx', null, '2020-03-27 10:24:42', '2020-03-27 10:24:42', null, '0');
INSERT INTO `users` VALUES ('117', null, null, '121273090022180012', null, '$2y$10$nfLE0RVx5i3S5/GRCPqoU.e8acwZSz24K1Vztg9uOmcbkMw/kMNcS', 'rcSWlBHy8cTfUtIsIRjkdp4FC7aRe4HMB1kXHajkWeF6eoyoL6QasDucfdYUzwG5Orn4okU93UrQSGgE', null, '2020-03-27 10:24:42', '2020-03-27 10:24:42', null, '0');
INSERT INTO `users` VALUES ('118', null, null, '121273090022180014', null, '$2y$10$VdvmLZ0MdZtCmOC3C2Rube0ZnJHbEhRNPYyZOlsFTg5JxHJBbMhGm', 'YaQNvHsjODWoM1sVd1jLmafV6i4LXWbpSZcJ9ZFqp6bglgDV89wBGAhc7pJKJS5DK9CNG0hehTWGNlIX', null, '2020-03-27 10:24:42', '2020-03-27 10:24:42', null, '0');
INSERT INTO `users` VALUES ('119', null, null, '121273090022180018', null, '$2y$10$P0xJ7WaB1aaSibpWHY9g0.e5khEMgyNTwEdog4BTtJ77t/kYnC/CS', 'CGacsrlbX1AUILjkMIr8gCeCl4UVMSf7lTPY49Q804DD7Tf81QQK3AGVyIpJ9k0sai3YbqcMD1thR0JQ', null, '2020-03-27 10:24:42', '2020-03-27 10:24:42', null, '0');
INSERT INTO `users` VALUES ('120', null, null, '121273090022180022', null, '$2y$10$UVCeCBOo0m0iVPQ99u5THOBuPTAtt6IePT0h2VbOTMW2OG5.mK.lW', 'dxdmxAEFHSDKrGBW017IyzAVq5z27kyA8MKUSvrs351htP0F94CdETRvysuhKnHetFBDQlOKOyjIzikZ', null, '2020-03-27 10:24:42', '2020-03-27 10:24:42', null, '0');
INSERT INTO `users` VALUES ('121', null, null, '121273090022180028', null, '$2y$10$O.GG0TWbQ1A2GPIV4jA5l.mYka2f0oIQovTGyeC/SPX8X6Kpl3Dvy', '5I1rmhl5oKPWIQJax2qju31TuG7SXKPlhxEJubaG0ItUFOWjz1EmFiVlHdPpABbwSVgBYz7kdiDZsb2i', null, '2020-03-27 10:24:42', '2020-03-27 10:24:42', null, '0');
INSERT INTO `users` VALUES ('122', null, null, '121273090022180029', null, '$2y$10$.ttzjYcZEBoPd7tFdWh6D.VCnkHtGcfaq8FQAG2.SVVnWw.cY5cwe', 'bki8sqenhVpNM8rTi6jNtKFs155ghxjQr1K3FxP6mZqVV01mzdpfOY3hGIeIPW1YSTLL45CENAQBskIq', null, '2020-03-27 10:24:42', '2020-03-27 10:24:42', null, '0');
INSERT INTO `users` VALUES ('123', null, null, '121273090022180030', null, '$2y$10$u8zleyan1zUbcR9g6bl.HeiEX3YqU.cFHBF6h2qwUn5eIwU676MuC', '74QnhWE63VgkOp5KLpVNi0xzzODqzX7ArO3AkzgPEV6KvPbmhyshEbRHxsls2wtIlNWslzMLSazeveHH', null, '2020-03-27 10:24:43', '2020-03-27 10:24:43', null, '0');
INSERT INTO `users` VALUES ('124', null, null, '121273090022180031', null, '$2y$10$tZwoEHJ4QyE3FKBM21I2mezRAaq6U3nXQ4vwWdTJJ8.d3sY3nNDNS', 'LB3EXhPRHwxAceimTtWXOp1WIBNKZkWLnKAYJcqpnuJIqT1U7hV3gwTZzcnBkgMyP4jBGULhEB0X4lZg', null, '2020-03-27 10:24:43', '2020-03-27 10:24:43', null, '0');
INSERT INTO `users` VALUES ('125', null, null, '121273090022180032', null, '$2y$10$FIgtL.x9RFvp3SWuYPiXDephp0hA8obDCmkpyGPiW5BQDEe20iL96', 'NZ9uTMIOBv2P0pBaRu7Z9wFEJyr8IeM6IHN7Za1EhlbDiRqapaA31Eapc8iCpV00JXlymTwVV93PZmy1', null, '2020-03-27 10:24:43', '2020-03-27 10:24:43', null, '0');
INSERT INTO `users` VALUES ('126', null, null, '121273090022190047', null, '$2y$10$hUl6hN5OXJwL5ZCnf7Vw2uO.W0femHu9svRB7Nx3SG33c9qZA01u.', '8NWLCXhSatU433IpoZUSKjYnO2yIKNjJUeZIlx02GH37pjjtBxfiB5mGH4BS45N77l2kuKUyRA8DFVz5', null, '2020-03-27 10:24:43', '2020-03-27 10:24:43', null, '0');
INSERT INTO `users` VALUES ('127', null, null, '121273090022170001', null, '$2y$10$8K9lhe.NGYlk4osFTR8NUeEwQEZdaXt8oJzPEHNIIspDXne2u/1vW', 'hSVPmEq9SRfCI32v63schX8ryum71qYsb3zhw7DBlT5qcUwWdHppr18FmV5kmUK7cXpsmWvdDodDpzqQ', null, '2020-03-27 10:24:43', '2020-03-27 10:24:43', null, '0');
INSERT INTO `users` VALUES ('128', null, null, '121273090022170002', null, '$2y$10$oaJwchDvoRobI2WpDc/6X.7Z4y90XEm03rIbLYWrIU3StofNe.tiG', 'ZQGX9tTfwwjMXXWuVbMCviGCCJ3HxlpS2mJ6Sc5JedKqNwuQ4dGmnXOhQXoBR6lQuJV5ECZ6iOiU9exr', null, '2020-03-27 10:24:43', '2020-03-27 10:24:43', null, '0');
INSERT INTO `users` VALUES ('129', null, null, '121273090022170003', null, '$2y$10$W7F0ficC0/DU0UFmRpyKAOss6MRozFxdh5PZid3mkLcGx/BXR7ALO', 'THKBN6UYuXH7Ujzslb22G0oABmA219FP7heYrg4dg9DgPhD95exQrRAH2q3vsgRr1SqXGgxtBJryJ95E', null, '2020-03-27 10:24:43', '2020-03-27 10:24:43', null, '0');
INSERT INTO `users` VALUES ('130', null, null, '121273090022170004', null, '$2y$10$74oaT/KKf7jwQKCESpT/neDapkj3DgQUKiq517yAQ5TtrXt0of9lG', 'X2SL4uAyweHBEtKhW0SxK9rse8qmHs0ZQa39jL08ygSBb1hCZTMXRINmPU9NzTyi1BxHB8JaQxOMytEn', null, '2020-03-27 10:24:45', '2020-03-27 10:24:45', null, '0');
INSERT INTO `users` VALUES ('131', null, null, '121273090022170006', null, '$2y$10$6k.f2REN/IaVbpkZoqC29uLqrgFb2NT.sCS0zZPrf0ZUqWtQZ5y6S', 'ifAvCDgjt3recZwLA1QBshZiKl1s0SWmPhHrjYRTiGJfYaOt2F21LoNue5DwEb7ByxGrOctaGs9WPcTw', null, '2020-03-27 10:24:45', '2020-03-27 10:24:45', null, '0');
INSERT INTO `users` VALUES ('132', null, null, '121273090022170008', null, '$2y$10$nFv54SW8rjtRng69DeMX1ePywCKfL7XpXp2x.iOB46b3EbQOrHbNK', 'WX7EnuNlPE46L418OvxYfU5lMuWbxRa9pM1pVTmTP8qNOrXwtIdS1SYTcCYzM2wtTA7QoADKBWBLBRq8', null, '2020-03-27 10:24:45', '2020-03-27 10:24:45', null, '0');
INSERT INTO `users` VALUES ('133', null, null, '121273090022170009', null, '$2y$10$KP3iqBD6WLbKu2EZmKEZgeIIRrqBJjlMj1fl9q90OHjoK7RN4omw.', 'jSjwvuOv2cHGiuBZ32JD6aPbqLJinjam6nEqn1M9ubZb92FPp7TAMoZXBwpzgkPbQUmKsKliGPnxTlew', null, '2020-03-27 10:24:45', '2020-03-27 10:24:45', null, '0');
INSERT INTO `users` VALUES ('134', null, null, '121273090022170010', null, '$2y$10$au1v.yPnhIrXO7qVjEkwNOK6yRaTJsZCe6h91Ap9DiTxqsUBx7kU2', 'kndFW1wUAXj7gwaLRLiBzvfaNqTwWuG3nHqHGR6SngKP6f8IxToKnhtHgQ1A0FPoEmHOpCgfLOLK0n1D', null, '2020-03-27 10:24:46', '2020-03-27 10:24:46', null, '0');
INSERT INTO `users` VALUES ('135', null, null, '121273090022170016', null, '$2y$10$NQLz5s4/PxwaEuZKc/7GO.fFltSauA7cYos2xuh5./zIUqI4bH4Bi', 'R8cQWCwlVl5Fiwc8eISKS50EK3bkXp04ORxpuqAF0OkRoZjYluiCYKXY2dmRuTlZIFn5gaE2NGoqALUC', null, '2020-03-27 10:24:46', '2020-03-27 10:24:46', null, '0');
INSERT INTO `users` VALUES ('136', null, null, '121273090022170017', null, '$2y$10$lWZ1/6cUAsVn7G42CiNTNOAeEu2eT07l.qsYdAUtjL2nuGXe2RWTi', 'nn7aah7xuLCFM7uaRvJTpMzB41tSCsyIwX3mRkLWE8u0jJBG0usLwqDbMO8E6ZZTqkJW7k5hTG6h29WZ', null, '2020-03-27 10:24:46', '2020-03-27 10:24:46', null, '0');
INSERT INTO `users` VALUES ('137', null, null, '121273090022170018', null, '$2y$10$okKC9d47P6fH85qsqfcSTum6HHbTXpJdALtzf/3BveoAgtx55daf2', 'gi5QbORsEXQbGecLkqv1AnDccO7ZGm2xso7bio3vghdFjfZbW1pBu43YPMuQXr5uU6G8bM3ILQdotXLP', null, '2020-03-27 10:24:46', '2020-03-27 10:24:46', null, '0');
INSERT INTO `users` VALUES ('138', null, null, '121273090022170030', null, '$2y$10$8HrMbONpZzavgcXryOEPvel3BjiGD0OdfZvfG/JpylUGctSZtro0.', 'o0e81cCMzsjeQQr5J1qseTBsP0ZQJamCgsF5mnwuUThWpDnSkAkv7gxyOCKnQ2hVtx3IYu0SOFx48AhL', null, '2020-03-27 10:24:46', '2020-03-27 10:24:46', null, '0');
INSERT INTO `users` VALUES ('139', null, null, '121273090022180066', null, '$2y$10$TtSJofq6RGh.5ZJ5MTEvy.NEU270be2HX91V0WUpM1u2.LmMEIGxm', 'YxRJj1p6l5lQNmh0VZItASzM48gjcXGFVYJUTwcaZbI9lufSG7cl46O48dfdV1gEsTfoVyO4WE4ptAVI', null, '2020-03-27 10:24:47', '2020-03-27 10:24:47', null, '0');
INSERT INTO `users` VALUES ('140', null, null, '121273090022190048', null, '$2y$10$xfLt.3Q9JAkq2InuB0A/pexEzfjLWelwNsFon1peICIpQa..I6G9i', 'lSIJWvs2XLia0RG7imEllOoyx1KTOd1V7ZmcemCQHXHa0BZASafBgDju8NoACXEP2IwTxjP2zOe80mfh', null, '2020-03-27 10:24:47', '2020-03-27 10:24:47', null, '0');
INSERT INTO `users` VALUES ('141', null, null, '111273090026180020', null, '$2y$10$5Hf8iRCxuIQ5cilRmKRiJOgsJDK9P1T2ulhcoUjde8.MsF6gbiqyO', 'ZkL6xrWxUdIIcA9cnmc67DCw8n2Q1hYZi26o8nJEQfqFYoY3YSM1xjWYcy6B4I4hHsBjWd7Oa12fODxd', null, '2020-03-27 10:24:47', '2020-03-27 10:24:47', null, '0');
INSERT INTO `users` VALUES ('142', null, null, '111273090026160001', null, '$2y$10$V0bOQWAHMgjl1gjEU0r8jOObolk/SAvZwwXKVD3faXkxQ5m2L.9K2', 'huZ5Nsz7VpIqIGvygvsnhi64TOgfIfhYPRKqTbTsPWb9006vqz8zTkyGen4RyFEqZTDUpXokbB5eoFSg', null, '2020-03-27 10:24:47', '2020-03-27 10:24:47', null, '0');
INSERT INTO `users` VALUES ('143', null, null, '111273090026160023', null, '$2y$10$TWbONs3Gm1/m6gvyvehV/.ZkfUGnKAbAXCuudtd99qIIv57iDBODe', 'ZhbDZ7ZyOIdMzhuuzBw126awhaxThReDY3Dlm1yojQkUlB01tJ9V84ul3CkEMbqZSjaagQBHWLZaPAwT', null, '2020-03-27 10:24:47', '2020-03-27 10:24:47', null, '0');
INSERT INTO `users` VALUES ('144', null, null, '111273090026160002', null, '$2y$10$drZhZqdkAfCsIz6BS21aa.OwPyTb2eUDu.nKtSGT3aAopBoy6O0LK', 'oxED5qkHeufNtjXvI8rPZHA8VDUW7HlVr3ZH5sOeoTUGromeg8Cp0VJ5UK35P3VDxU0Vis4xB8Ak99Qv', null, '2020-03-27 10:24:48', '2020-03-27 10:24:48', null, '0');
