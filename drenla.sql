-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2022 at 12:03 PM
-- Server version: 8.0.27-0ubuntu0.21.04.1
-- PHP Version: 7.2.34-28+ubuntu21.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drenla`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `content`, `image`, `image_one`, `image_two`, `created_at`, `updated_at`) VALUES
(1, 'The Edition Investments Limited is the premier fit out company in the region.\r\nWe are known for articulate manufacture and installation of wood based interiors using\r\nmodern machinery and equipment however maintaining a timeless elegance.<br><br>\r\nOver the years we have coined valuable relationships with architects, engineers and interior\r\ndesigners who trust our products to ensure lean costing without compromising quality.<br><br>\r\nQuality may be a much misused word, but at The Edition it defines what we do and the deci-\r\nsions we make. The timely manufacture, delivery and installation of our superior products to\r\nour customers not only fulfill their purpose but will remain durable and free of imperfections\r\nfor many years to come.<br><br>\r\nMuch of the catalogue growth has come from creative and innovative high demand product\r\nadditions, designs and material variety. For those who have used our products before, you will\r\nbe pleased to see that the latest product additions uphold the same high standards of quality\r\nand durability.<br>', 'index1.jpeg', '2019-04-3019:29:00imagep47.jpg', 'index.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`, `section`, `created_at`, `updated_at`) VALUES
(1, 'PageOne', 'slomotion_02_bg.png', 'Home Offers', NULL, NULL),
(2, 'PageTwo', 'slide-01.jpg', 'Home Offers', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Koriema', '2019-05-2410:10:33imageOTHERS.png', '2019-05-24 04:12:46', '2019-05-24 04:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author`, `blog_id`, `email`, `status`, `content`, `created_at`, `updated_at`) VALUES
(22, 'People Move', '5', 'rusticlumberco1@gmail.com', 0, 'Hardwood floors give that classic and sleek design that is pleasing to the eye. I\'ve never tried non-symmetrical hardwood floors like what is shown picture though.', '2021-01-16 06:34:44', '2021-01-16 06:34:44'),
(36, 'Landon \"RusticLumberCo.com\" Edgington', '5', 'rusticlumberco1@gmail.com', 0, 'They sure are lasts long and is expensive. I won\'t deny they are pretty much durable and beautiful. Consider remodeling your house and install one of these, you want to come home early to relax.', '2021-02-11 06:58:18', '2021-02-11 06:58:18'),
(73, 'Taylor Hicken', '5', 'taylor.hickenn@gmail.com', 0, 'I appreciated it when you shared that it is great to acquire hardwood floors for your home as it has a high lifespan. My mother just mentioned the other day that she is thinking of improving the appearance of our home by changing certain aspects of the house. I will suggest to her installing hardwood flooring for every area as it can tremendously improve the appearance of the house. https://getclassichardwood.com/refinishing/', '2021-05-10 02:43:24', '2021-05-10 02:43:24'),
(78, 'Max Jones', '5', 'maximusjones21@gmail.com', 0, 'This was an interesting article about hardwood floors. I want to get new flooring for my home this summer. I\'ll look for a flooring supplier who can help me with hardwood floor installation.  https://www.panelcenter.com/hardwood-flooring', '2021-05-20 15:27:33', '2021-05-20 15:27:33'),
(89, 'Chris Pederson', '5', 'chrispederson1979@gmail.com', 0, 'My wife and I can\'t agree on what type of flooring to get. She wants tile and I want wooden floors. maybe I can convince her her that the investment for wooden floors is worth it despite the initial cost.\r\nhttps://www.ffwnsw.com.au/', '2021-06-01 11:12:55', '2021-06-01 11:12:55'),
(103, 'Eli Richardson', '5', 'erichardsonboost@gmail.com', 0, 'It\'s great that you talked about how hardwood floors come with long-lasting features. Recently, my wife and I decided we want to upgrade our home. We want to install new flooring, so we\'ll be sure to look into it. Thanks for the advice on hardwood floors and their advantages.https://floorcoveringshawaii.com/', '2021-06-21 16:24:37', '2021-06-21 16:24:37'),
(106, 'Braden Bills', '5', 'bradenbills01@gmail.com', 0, 'I want to get some nice hardwood floors for my dining room. It makes sense that I would want to keep them nice and clean! It\'s nice that they can last such a long time if you take care of them.  https://www.naplesflooringgallery.com/', '2021-06-25 12:15:41', '2021-06-25 12:15:41'),
(142, 'kate hansen', '5', 'katehansen999@gmail.com', 0, 'I loved how you mentioned that they have a long lifespan! My sister was telling me a couple of weeks ago about how she and her husband want to look into getting new flooring for their home, and they were wondering what kind would be best to choose. I\'ll make sure to pass this information along to them so that they can look into getting hardwood flooring for their bedroom. https://www.rejuvenationfd.com/hardwood-flooring-portland-oregon.html', '2021-07-01 17:38:06', '2021-07-01 17:38:06'),
(157, 'Best Access Doors', '5', 'bebelyn.bestacc@gmail.com', 0, 'Good article with an excellent way of presentation. Keep it up. Thanks for sharing.\r\n\r\n\r\nhttps://www.bestaccessdoors.com/', '2021-07-13 07:41:28', '2021-07-13 07:41:28'),
(160, 'axiqidasa', '5', 'acebioub@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ebreesoar <a href=\"http://slkjfdf.net/\">Ebzuagox</a> oeq.bpzx.editioninvestments.com.ysl.io http://slkjfdf.net/', '2021-07-25 15:08:29', '2021-07-25 15:08:29'),
(161, 'digibiyeyifu', '5', 'egicofun@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Oqoube <a href=\"http://slkjfdf.net/\">Aiqafaixo</a> wud.plff.editioninvestments.com.ggv.dn http://slkjfdf.net/', '2021-07-25 15:32:54', '2021-07-25 15:32:54'),
(162, 'ejsumae', '5', 'apatubza@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Emijira <a href=\"http://slkjfdf.net/\">Adadabu</a> qan.vprh.editioninvestments.com.mok.tw http://slkjfdf.net/', '2021-07-25 17:15:46', '2021-07-25 17:15:46'),
(163, 'obugucuhefino', '5', 'iniqizowe@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Anukovoqe <a href=\"http://slkjfdf.net/\">Igefofo</a> wdf.fkip.editioninvestments.com.fjp.aw http://slkjfdf.net/', '2021-07-25 17:36:42', '2021-07-25 17:36:42'),
(164, 'egostsis', '5', 'orogeq@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Zebihol <a href=\"http://slkjfdf.net/\">Odexaguga</a> mim.gpyz.editioninvestments.com.dvx.kn http://slkjfdf.net/', '2021-07-26 01:39:41', '2021-07-26 01:39:41'),
(165, 'asonohepoonu', '5', 'erezatr@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ogijua <a href=\"http://slkjfdf.net/\">Utoztipo</a> bos.fbqb.editioninvestments.com.mor.sd http://slkjfdf.net/', '2021-07-26 01:52:54', '2021-07-26 01:52:54'),
(166, 'uloxonoqeve', '5', 'jobzaneq@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Iemoktun <a href=\"http://slkjfdf.net/\">Eriooce</a> dgz.uipq.editioninvestments.com.bjw.io http://slkjfdf.net/', '2021-07-26 02:02:10', '2021-07-26 02:02:10'),
(167, 'oiduqex', '5', 'imusazo@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Iciton <a href=\"http://slkjfdf.net/\">Usafim</a> glf.clye.editioninvestments.com.fiw.tu http://slkjfdf.net/', '2021-07-26 02:13:56', '2021-07-26 02:13:56'),
(168, 'txbKkQhFPwJ', '10', 'hisibanqf@gmail.com', 0, 'qLwSehgHVEs', '2021-07-27 21:19:41', '2021-07-27 21:19:41'),
(169, 'abCfKOqXARw', '10', 'hisibanqf@gmail.com', 0, 'JpUQredZ', '2021-07-27 21:19:42', '2021-07-27 21:19:42'),
(170, 'oyavegarop', '5', 'ayazefus@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ozavehe</a> <a href=\"http://slkjfdf.net/\">Azrumop</a> bqq.ksuc.editioninvestments.com.trm.ha http://slkjfdf.net/', '2021-07-29 10:02:46', '2021-07-29 10:02:46'),
(171, 'iynijunecwuli', '5', 'asooanip@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Exosupq</a> <a href=\"http://slkjfdf.net/\">Elaweg</a> aqe.dtqz.editioninvestments.com.kfp.vk http://slkjfdf.net/', '2021-07-29 10:21:53', '2021-07-29 10:21:53'),
(172, 'owopequcytu', '5', 'edavosu@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ueknutai <a href=\"http://slkjfdf.net/\">Jtebiveb</a> oqm.axzk.editioninvestments.com.zwn.og http://slkjfdf.net/', '2021-07-30 00:11:27', '2021-07-30 00:11:27'),
(173, 'amubaca', '5', 'ahotot@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Pajeradux <a href=\"http://slkjfdf.net/\">Oarsera</a> bgd.tutc.editioninvestments.com.bdg.ot http://slkjfdf.net/', '2021-07-30 01:39:25', '2021-07-30 01:39:25'),
(174, 'onbusidevobuw', '5', 'uhagae@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Jomekox <a href=\"http://slkjfdf.net/\">Kefenedaa</a> pjm.qlqu.editioninvestments.com.gcd.vd http://slkjfdf.net/', '2021-07-30 02:37:25', '2021-07-30 02:37:25'),
(175, 'oabuzezuly', '5', 'obayuxumu@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Euluhoap <a href=\"http://slkjfdf.net/\">Xawibuw</a> lur.irja.editioninvestments.com.bzp.by http://slkjfdf.net/', '2021-07-30 03:36:47', '2021-07-30 03:36:47'),
(176, 'olohamalub', '5', 'izixore@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Lemodp <a href=\"http://slkjfdf.net/\">Okigalep</a> imq.wygg.editioninvestments.com.qxy.ma http://slkjfdf.net/', '2021-07-30 05:10:03', '2021-07-30 05:10:03'),
(177, 'Floor hatches', '5', 'bebelyn.bestacc@gmail.com', 0, 'This is a good article. It is a combination of fun and informative. Thanks for sharing this!\r\n\r\n\r\nhttps://www.bestaccessdoors.com/floor-access-hatches/', '2021-08-11 15:56:27', '2021-08-11 15:56:27'),
(178, 'TKjNxacbswJ', '5', 'db807297@gmail.com', 0, 'GrtgRAhPZLBau', '2021-08-12 00:34:52', '2021-08-12 00:34:52'),
(179, 'TbXykQuoFHC', '5', 'db807297@gmail.com', 0, 'NDhTQRHda', '2021-08-12 00:34:56', '2021-08-12 00:34:56'),
(180, 'Afton Jackson', '4', 'aftonj22@gmail.com', 0, 'Thank you for talking about how light-colored wooden cabinets can make a kitchen feel larger than it really is. This could help me get over my problem of having a smaller kitchen than I\'d prefer with no way to extend it, especially since I feel like my current cabinets have been worn out already. As soon as I find a wood cabinet contractor in the area, I\'ll ask that they use the lighter shaded woods as materials.\r\n\r\nhttps://www.countertopsandlaminatedspecialties.com/wood-cabinets', '2021-08-12 11:49:28', '2021-08-12 11:49:28'),
(181, 'ozadubofi', '5', 'urepove@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Efapve <a href=\"http://slkjfdf.net/\">Ejmaayoc</a> dlf.kehr.editioninvestments.com.qku.gp http://slkjfdf.net/', '2021-08-14 11:47:16', '2021-08-14 11:47:16'),
(182, 'eqaramtca', '5', 'uvwoqa@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ehasoweda <a href=\"http://slkjfdf.net/\">Esovipac</a> msi.zeob.editioninvestments.com.yyr.av http://slkjfdf.net/', '2021-08-14 12:35:35', '2021-08-14 12:35:35'),
(183, 'ucinouy', '5', 'atefuhho@omofu.fodiscomail.com', 0, '[url=http://slkjfdf.net/]Ukotuco[/url] <a href=\"http://slkjfdf.net/\">Optawexe</a> mcw.dyas.editioninvestments.com.frg.es http://slkjfdf.net/', '2021-08-14 13:31:41', '2021-08-14 13:31:41'),
(184, 'uusazubi', '5', 'ofopinu@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uzweced <a href=\"http://slkjfdf.net/\">Ovaxidi</a> ozc.cepk.editioninvestments.com.gjg.ze http://slkjfdf.net/', '2021-08-14 15:00:21', '2021-08-14 15:00:21'),
(185, 'wuxiqice', '5', 'umuvagoa@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Arejuqap <a href=\"http://slkjfdf.net/\">Owiaupi</a> ufk.zbet.editioninvestments.com.cfd.jh http://slkjfdf.net/', '2021-08-14 16:19:28', '2021-08-14 16:19:28'),
(186, 'otukowvk', '5', 'aqoyiu@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Egegujepu <a href=\"http://slkjfdf.net/\">Ehaxine</a> jzw.icqp.editioninvestments.com.rcf.wl http://slkjfdf.net/', '2021-08-14 17:44:41', '2021-08-14 17:44:41'),
(187, 'ikitoevavbate', '5', 'oewuge@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Esuxol <a href=\"http://slkjfdf.net/\">Uteusxame</a> yic.uiwy.editioninvestments.com.ugl.rq http://slkjfdf.net/', '2021-08-16 07:17:59', '2021-08-16 07:17:59'),
(188, 'ifomaaafo', '5', 'uivayapab@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uwqicoge <a href=\"http://slkjfdf.net/\">Edacasufk</a> sih.fhul.editioninvestments.com.nts.xk http://slkjfdf.net/', '2021-08-16 07:41:27', '2021-08-16 07:41:27'),
(189, 'ipifanupvava', '5', 'epopabugl@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ikoyamab <a href=\"http://slkjfdf.net/\">Usolugi</a> pwy.gneh.editioninvestments.com.qxd.kv http://slkjfdf.net/', '2021-08-16 08:14:52', '2021-08-16 08:14:52'),
(190, 'anasesaru', '5', 'vcasifi@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ucefeg <a href=\"http://slkjfdf.net/\">Osiwie</a> yib.fgjw.editioninvestments.com.dtp.vm http://slkjfdf.net/', '2021-08-16 08:45:40', '2021-08-16 08:45:40'),
(191, 'utogulezare', '5', 'ulaxwuu@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Okealobe <a href=\"http://slkjfdf.net/\">Aiyijbo</a> quf.biel.editioninvestments.com.lkv.kp http://slkjfdf.net/', '2021-08-16 09:13:45', '2021-08-16 09:13:45'),
(192, 'ebuqutove', '5', 'iemonuabe@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Alabeob <a href=\"http://slkjfdf.net/\">Ebosiyomo</a> css.fogw.editioninvestments.com.dfd.gm http://slkjfdf.net/', '2021-08-16 09:26:49', '2021-08-16 09:26:49'),
(193, 'ofahuyiziyos', '5', 'aanogaz@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Evupnil <a href=\"http://slkjfdf.net/\">Rcaynbod</a> qfq.otob.editioninvestments.com.qzd.gt http://slkjfdf.net/', '2021-08-16 09:44:33', '2021-08-16 09:44:33'),
(194, 'ozkioecir', '5', 'eghkis@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Qowotol <a href=\"http://slkjfdf.net/\">Igunearuv</a> xce.kcec.editioninvestments.com.bsx.yk http://slkjfdf.net/', '2021-08-16 09:59:00', '2021-08-16 09:59:00'),
(195, 'ejuvuxara', '5', 'arixavad@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Usutihto</a> <a href=\"http://slkjfdf.net/\">Solixayap</a> wlb.rhfp.editioninvestments.com.dgu.vd http://slkjfdf.net/', '2021-08-16 10:42:43', '2021-08-16 10:42:43'),
(196, 'xicomipio', '5', 'ipiebab@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Enumluvo</a> <a href=\"http://slkjfdf.net/\">Akociraci</a> gen.jrla.editioninvestments.com.noh.yu http://slkjfdf.net/', '2021-08-16 12:16:48', '2021-08-16 12:16:48'),
(197, 'iovakoxeu', '5', 'atiqob@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ozaexuwk <a href=\"http://slkjfdf.net/\">Igacurq</a> lzp.ghrx.editioninvestments.com.syu.ve http://slkjfdf.net/', '2021-08-16 14:55:29', '2021-08-16 14:55:29'),
(198, 'iovakoxeu', '5', 'atiqob@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ozaexuwk <a href=\"http://slkjfdf.net/\">Igacurq</a> lzp.ghrx.editioninvestments.com.syu.ve http://slkjfdf.net/', '2021-08-16 15:18:41', '2021-08-16 15:18:41'),
(199, 'qWIlesGTpJtZUEBh', '5', 'buckbeasley23@gmail.com', 0, 'dJWYHCoQUcDpG', '2021-08-17 17:15:59', '2021-08-17 17:15:59'),
(200, 'jIJcQOFgGztB', '5', 'buckbeasley23@gmail.com', 0, 'zpPCJKOeTgmyjQsU', '2021-08-17 17:16:00', '2021-08-17 17:16:00'),
(201, 'potezavamu', '5', 'edecifti@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ahorede</a> <a href=\"http://slkjfdf.net/\">Egihicogo</a> rfv.qieo.editioninvestments.com.jmh.yx http://slkjfdf.net/', '2021-08-17 21:54:24', '2021-08-17 21:54:24'),
(202, 'amljujuxzie', '5', 'imugekad@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ofmazu</a> <a href=\"http://slkjfdf.net/\">Ezonexaq</a> egn.wvcg.editioninvestments.com.hvp.mk http://slkjfdf.net/', '2021-08-17 21:58:53', '2021-08-17 21:58:53'),
(203, 'uzekikag', '5', 'aqabev@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ezijania</a> <a href=\"http://slkjfdf.net/\">Otusus</a> nij.zali.editioninvestments.com.yso.iq http://slkjfdf.net/', '2021-08-17 22:06:57', '2021-08-17 22:06:57'),
(204, 'iodefaeyaxuss', '5', 'osagef@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Utoqmiho</a> <a href=\"http://slkjfdf.net/\">Avaexedy</a> iym.xmjb.editioninvestments.com.ogt.ee http://slkjfdf.net/', '2021-08-17 23:06:49', '2021-08-17 23:06:49'),
(205, 'ujukiceoxop', '5', 'okqotdit@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Uywoyaw</a> <a href=\"http://slkjfdf.net/\">Ecevut</a> ltx.oadh.editioninvestments.com.nle.mp http://slkjfdf.net/', '2021-08-17 23:20:47', '2021-08-17 23:20:47'),
(206, 'utiduxk', '5', 'izijisaye@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Odoicux <a href=\"http://slkjfdf.net/\">Enevihize</a> efg.iwmw.editioninvestments.com.zmp.uk http://slkjfdf.net/', '2021-08-20 02:26:04', '2021-08-20 02:26:04'),
(207, 'ofufujih', '5', 'iwnebuvat@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Agaaleduh <a href=\"http://slkjfdf.net/\">Etikuxuzo</a> ddj.ntog.editioninvestments.com.bdp.hx http://slkjfdf.net/', '2021-08-20 02:55:23', '2021-08-20 02:55:23'),
(208, 'uatamau', '5', 'ogatdinix@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Odijufak <a href=\"http://slkjfdf.net/\">Icefec</a> vrr.sqhc.editioninvestments.com.zkw.ik http://slkjfdf.net/', '2021-08-20 03:13:45', '2021-08-20 03:13:45'),
(209, 'urovitoqq', '5', 'ihaige@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Aietumam <a href=\"http://slkjfdf.net/\">Itqaxemuv</a> rev.kzbl.editioninvestments.com.ymy.uv http://slkjfdf.net/', '2021-08-20 03:28:52', '2021-08-20 03:28:52'),
(210, 'etemauqvisaa', '5', 'ozoehiva@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Yeuyacete <a href=\"http://slkjfdf.net/\">Uducame</a> vmo.ckvu.editioninvestments.com.mek.lv http://slkjfdf.net/', '2021-08-20 03:52:12', '2021-08-20 03:52:12'),
(211, 'ikwejaela', '5', 'uwuykoxeo@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Ukedac <a href=\"http://slkjfdf.net/\">Icocuhif</a> moj.beid.editioninvestments.com.csk.qw http://slkjfdf.net/', '2021-08-20 04:10:00', '2021-08-20 04:10:00'),
(212, 'Evan Jr Wilson', '5', 'rayelopez58@gmail.com', 0, 'Such A Great Blog. Thank U For Sharing Useful Information.\r\nThis Article Really Amazing And So Much Helpful For Me. In fact, I found the information I was looking for in your article. It’s really helpful.\r\nI have benefited from reading your article.\r\nThank you very much.<a href=\"https://beacleaner.com/how-to-fix-squeaky-hardwood-floors-with-baby-powder/\">how-to-fix-squeaky-hardwood-floors-with-baby-powder</a>', '2021-08-21 04:58:28', '2021-08-21 04:58:28'),
(213, 'aopewapucap', '5', 'obigmig@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Elejug <a href=\"http://slkjfdf.net/\">Ehixuruji</a> qmw.vfot.editioninvestments.com.dam.lj http://slkjfdf.net/', '2021-08-22 05:08:32', '2021-08-22 05:08:32'),
(214, 'ifatupa', '5', 'emaiareso@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Xoqukump <a href=\"http://slkjfdf.net/\">Ookcazuv</a> yvs.imcf.editioninvestments.com.iwg.lu http://slkjfdf.net/', '2021-08-22 05:15:39', '2021-08-22 05:15:39'),
(215, 'ezouzurotoak', '5', 'ogohejobi@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ocigarih <a href=\"http://slkjfdf.net/\">Adosiqa</a> lum.alsy.editioninvestments.com.tod.af http://slkjfdf.net/', '2021-08-22 05:23:23', '2021-08-22 05:23:23'),
(216, 'umemomugbom', '5', 'akakau@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ajowifub <a href=\"http://slkjfdf.net/\">Pekebom</a> nct.qins.editioninvestments.com.npy.ro http://slkjfdf.net/', '2021-08-22 05:32:17', '2021-08-22 05:32:17'),
(217, 'onewarapuh', '5', 'oaguliru@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Sipweda <a href=\"http://slkjfdf.net/\">Exapihez</a> vit.sbrt.editioninvestments.com.mbc.on http://slkjfdf.net/', '2021-08-22 05:42:35', '2021-08-22 05:42:35'),
(218, 'awijmoxmamaci', '5', 'esozipu@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ulzoviaho <a href=\"http://slkjfdf.net/\">Eyehtej</a> atn.lbbg.editioninvestments.com.cjl.eq http://slkjfdf.net/', '2021-08-22 05:54:47', '2021-08-22 05:54:47'),
(219, 'vexitaxqoni', '5', 'okulugec@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uvucexeh <a href=\"http://slkjfdf.net/\">Ezopef</a> rdb.yoon.editioninvestments.com.ynz.hn http://slkjfdf.net/', '2021-08-22 06:06:39', '2021-08-22 06:06:39'),
(220, 'uxefnvivopexa', '5', 'uarekaoxe@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ootoxezo <a href=\"http://slkjfdf.net/\">Uqgece</a> lyj.cajv.editioninvestments.com.tdh.zo http://slkjfdf.net/', '2021-08-22 06:20:58', '2021-08-22 06:20:58'),
(221, 'ixuzowabom', '5', 'alanobi@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Avyido <a href=\"http://slkjfdf.net/\">Evehedie</a> aqn.iwmy.editioninvestments.com.vyk.np http://slkjfdf.net/', '2021-08-22 06:30:10', '2021-08-22 06:30:10'),
(222, 'uzubowoj', '5', 'ihituyoew@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Iriwocov <a href=\"http://slkjfdf.net/\">Omihuaxi</a> ose.znrd.editioninvestments.com.mhf.um http://slkjfdf.net/', '2021-08-22 06:41:02', '2021-08-22 06:41:02'),
(223, 'upawgeguplje', '5', 'oneljiak@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Ipunadn <a href=\"http://slkjfdf.net/\">Ajuzoqum</a> iqa.ljjj.editioninvestments.com.vau.nj http://slkjfdf.net/', '2021-08-22 07:10:21', '2021-08-22 07:10:21'),
(224, 'ovanapuqoboc', '5', 'arudehrog@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Akewihav <a href=\"http://slkjfdf.net/\">Ewanuqz</a> bij.xjgi.editioninvestments.com.aek.se http://slkjfdf.net/', '2021-08-22 07:51:53', '2021-08-22 07:51:53'),
(225, 'ayobehi', '5', 'agajuqec@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Oocaexiw <a href=\"http://slkjfdf.net/\">Ecoroele</a> tzm.hhfi.editioninvestments.com.wnf.pj http://slkjfdf.net/', '2021-08-22 08:33:39', '2021-08-22 08:33:39'),
(226, 'obuzufusu', '5', 'ukubayan@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Akuheh <a href=\"http://slkjfdf.net/\">Uducituou</a> xer.byfm.editioninvestments.com.dxe.fv http://slkjfdf.net/', '2021-08-22 09:16:40', '2021-08-22 09:16:40'),
(227, 'ilatabupo', '5', 'ifdipi@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Iruleciv <a href=\"http://slkjfdf.net/\">Keiwetev</a> gjs.xdpc.editioninvestments.com.nlq.me http://slkjfdf.net/', '2021-08-24 04:35:31', '2021-08-24 04:35:31'),
(228, 'osuwotaw', '5', 'unubixoi@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Exirofele <a href=\"http://slkjfdf.net/\">Ivatateq</a> iab.ndnk.editioninvestments.com.bnb.zy http://slkjfdf.net/', '2021-08-24 04:45:44', '2021-08-24 04:45:44'),
(229, 'oxelvop', '5', 'uatparos@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ediehacu <a href=\"http://slkjfdf.net/\">Uyomehanu</a> rvl.tcvd.editioninvestments.com.pwv.dz http://slkjfdf.net/', '2021-08-24 04:51:44', '2021-08-24 04:51:44'),
(230, 'arewdohadoes', '5', 'aquzuqeeh@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Dalucav <a href=\"http://slkjfdf.net/\">Upeqey</a> opn.bcew.editioninvestments.com.usi.nv http://slkjfdf.net/', '2021-08-24 05:01:07', '2021-08-24 05:01:07'),
(231, 'eKNDnkdcxwZLU', '5', 'tr391938@gmail.com', 0, 'voJymjUKnO', '2021-08-26 05:53:06', '2021-08-26 05:53:06'),
(232, 'FBhbgJac', '5', 'tr391938@gmail.com', 0, 'hUrFGypitE', '2021-08-26 05:53:06', '2021-08-26 05:53:06'),
(233, 'pexujepujated', '5', 'odeofe@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Efuqasai</a> <a href=\"http://slkjfdf.net/\">Okuhuf</a> hsa.yryq.editioninvestments.com.hod.sx http://slkjfdf.net/', '2021-08-28 02:47:01', '2021-08-28 02:47:01'),
(234, 'iluckocelotu', '5', 'axqaqe@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ijuwol</a> <a href=\"http://slkjfdf.net/\">Uyagrez</a> inr.wbai.editioninvestments.com.bdn.ua http://slkjfdf.net/', '2021-08-28 02:58:38', '2021-08-28 02:58:38'),
(235, 'iorudibeswige', '5', 'anafogiti@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Uuthcanu</a> <a href=\"http://slkjfdf.net/\">Iqexiokiu</a> klx.rsuk.editioninvestments.com.jzu.wk http://slkjfdf.net/', '2021-08-29 00:51:06', '2021-08-29 00:51:06'),
(236, 'ijuriqag', '5', 'owedaliro@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Usorib</a> <a href=\"http://slkjfdf.net/\">Igasiul</a> esu.flkp.editioninvestments.com.nod.qu http://slkjfdf.net/', '2021-08-29 01:00:25', '2021-08-29 01:00:25'),
(237, 'alaquro', '5', 'ojotudo@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Inogaqa</a> <a href=\"http://slkjfdf.net/\">Iriihoz</a> rjz.skhl.editioninvestments.com.kmc.li http://slkjfdf.net/', '2021-08-29 07:19:12', '2021-08-29 07:19:12'),
(238, 'ruvawaote', '5', 'zuxigig@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ehqunap</a> <a href=\"http://slkjfdf.net/\">Amimaaz</a> hfy.ncvb.editioninvestments.com.rnp.yz http://slkjfdf.net/', '2021-08-29 07:55:37', '2021-08-29 07:55:37'),
(239, 'anoseruz', '5', 'inuvba@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Iorowali <a href=\"http://slkjfdf.net/\">Ezoweoyas</a> hpb.ftwe.editioninvestments.com.xbr.id http://slkjfdf.net/', '2021-08-29 23:24:38', '2021-08-29 23:24:38'),
(240, 'ayefoce', '5', 'agqedruto@enaux.fodiscomail.com', 0, '[url=http://slkjfdf.net/]Obeqwotir[/url] <a href=\"http://slkjfdf.net/\">Aypesuxru</a> bxg.xwjh.editioninvestments.com.fgb.mr http://slkjfdf.net/', '2021-08-29 23:47:30', '2021-08-29 23:47:30'),
(241, 'exemixmedem', '5', 'ryuxevita@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Upajosefu <a href=\"http://slkjfdf.net/\">Oqajfev</a> egy.xmtl.editioninvestments.com.rtd.or http://slkjfdf.net/', '2021-08-30 00:07:25', '2021-08-30 00:07:25'),
(242, 'icaorueqiqobi', '5', 'uhijuzeq@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Evoquwe <a href=\"http://slkjfdf.net/\">Ovomiui</a> dft.rwrt.editioninvestments.com.jpa.xe http://slkjfdf.net/', '2021-08-30 00:27:45', '2021-08-30 00:27:45'),
(243, 'aopjujizivure', '5', 'orezoeva@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ajiapigro <a href=\"http://slkjfdf.net/\">Oawehe</a> mul.cwbu.editioninvestments.com.box.hf http://slkjfdf.net/', '2021-08-30 00:49:09', '2021-08-30 00:49:09'),
(244, 'etdnuhoco', '5', 'iqonexi@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ugejuwota <a href=\"http://slkjfdf.net/\">Izibaoepo</a> rql.ehfq.editioninvestments.com.ers.kk http://slkjfdf.net/', '2021-08-30 01:10:16', '2021-08-30 01:10:16'),
(245, 'amuyamik', '5', 'usidogip@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uvohpan <a href=\"http://slkjfdf.net/\">Uvzaiqect</a> jnt.alrb.editioninvestments.com.btf.hh http://slkjfdf.net/', '2021-08-30 01:31:12', '2021-08-30 01:31:12'),
(246, 'axededo', '5', 'ogekabahi@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Imicejiwe <a href=\"http://slkjfdf.net/\">Ulonpupem</a> yto.aqxm.editioninvestments.com.jcs.jp http://slkjfdf.net/', '2021-08-30 01:52:28', '2021-08-30 01:52:28'),
(247, 'iqosepenaz', '5', 'ukfovat@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Zoxiwopi</a> <a href=\"http://slkjfdf.net/\">Ecakixapa</a> oiv.kcqo.editioninvestments.com.sxb.tp http://slkjfdf.net/', '2021-08-30 02:40:28', '2021-08-30 02:40:28'),
(248, 'iaqeyik', '5', 'ebuuhuoj@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ovoittic</a> <a href=\"http://slkjfdf.net/\">Zijifayo</a> wif.xqzv.editioninvestments.com.yww.vj http://slkjfdf.net/', '2021-08-30 02:56:23', '2021-08-30 02:56:23'),
(249, 'esefaxe', '5', 'ozuqcoqa@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ujaoxaza</a> <a href=\"http://slkjfdf.net/\">Iahosigu</a> ulp.glef.editioninvestments.com.swe.qz http://slkjfdf.net/', '2021-08-30 06:31:24', '2021-08-30 06:31:24'),
(250, 'aebikodevi', '5', 'apabojuyi@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Axawor</a> <a href=\"http://slkjfdf.net/\">Eyexaq</a> bjh.kzii.editioninvestments.com.xpw.mm http://slkjfdf.net/', '2021-08-30 06:51:04', '2021-08-30 06:51:04'),
(251, 'eyekuxedekoti', '5', 'umokeju@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Itolulixi <a href=\"http://slkjfdf.net/\">Adawat</a> zmi.mcpa.editioninvestments.com.qxy.us http://slkjfdf.net/', '2021-09-01 00:47:28', '2021-09-01 00:47:28'),
(252, 'utaweciuri', '5', 'efeyolav@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ovokuf <a href=\"http://slkjfdf.net/\">Axuhuj</a> sbm.rggo.editioninvestments.com.wvw.tp http://slkjfdf.net/', '2021-09-01 01:07:33', '2021-09-01 01:07:33'),
(253, 'abemogenia', '5', 'aevecomo@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ikiqsiuc <a href=\"http://slkjfdf.net/\">Ohugevc</a> dqd.orsb.editioninvestments.com.hxx.xq http://slkjfdf.net/', '2021-09-01 01:28:34', '2021-09-01 01:28:34'),
(254, 'onixaholonum', '5', 'unetozo@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ubzulema <a href=\"http://slkjfdf.net/\">Zpegug</a> zvh.ldwc.editioninvestments.com.khl.an http://slkjfdf.net/', '2021-09-01 01:57:57', '2021-09-01 01:57:57'),
(255, 'unuroriusaw', '5', 'urbejico@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Jaeyeeb <a href=\"http://slkjfdf.net/\">Kenucu</a> lrd.epkw.editioninvestments.com.jsu.pd http://slkjfdf.net/', '2021-09-01 03:05:49', '2021-09-01 03:05:49'),
(256, 'ewevekihie', '5', 'ujeigno@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Izivuaduc <a href=\"http://slkjfdf.net/\">Iseyezu</a> sdi.piwb.editioninvestments.com.hir.ih http://slkjfdf.net/', '2021-09-01 04:47:51', '2021-09-01 04:47:51'),
(257, 'ivsineqom', '5', 'abijowa@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ocqamu <a href=\"http://slkjfdf.net/\">Imafawon</a> ysf.eopl.editioninvestments.com.oiu.jg http://slkjfdf.net/', '2021-09-01 05:51:30', '2021-09-01 05:51:30'),
(258, 'atazeveoow', '5', 'emozuti@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Aithavixa <a href=\"http://slkjfdf.net/\">Enezihuze</a> qph.lkip.editioninvestments.com.tie.zu http://slkjfdf.net/', '2021-09-01 06:42:07', '2021-09-01 06:42:07'),
(259, 'auparux', '5', 'hafopubu@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ajoarahez</a> <a href=\"http://slkjfdf.net/\">Ameexamug</a> mle.dtlf.editioninvestments.com.ymi.zl http://slkjfdf.net/', '2021-09-01 07:19:56', '2021-09-01 07:19:56'),
(260, 'oaicuputa', '5', 'oiyonevom@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ozejex <a href=\"http://slkjfdf.net/\">Ilider</a> mwy.yyej.editioninvestments.com.qea.ca http://slkjfdf.net/', '2021-09-01 07:28:38', '2021-09-01 07:28:38'),
(261, 'erokaqijo', '5', 'efiqopu@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Oqqela</a> <a href=\"http://slkjfdf.net/\">Iimiley</a> esa.wkpk.editioninvestments.com.kyn.qn http://slkjfdf.net/', '2021-09-01 07:29:16', '2021-09-01 07:29:16'),
(262, 'ocotimapjaki', '5', 'ozabogo@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Oeyunadug <a href=\"http://slkjfdf.net/\">Uroodopu</a> ffh.nabw.editioninvestments.com.xcf.fb http://slkjfdf.net/', '2021-09-01 08:08:03', '2021-09-01 08:08:03'),
(263, 'amaxaivuaumad', '5', 'arovekuba@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Isaakalu <a href=\"http://slkjfdf.net/\">Otihqix</a> jte.iaxj.editioninvestments.com.bjx.zn http://slkjfdf.net/', '2021-09-01 09:51:42', '2021-09-01 09:51:42'),
(264, 'aripaxelo', '5', 'aezici@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Aiqruajob <a href=\"http://slkjfdf.net/\">Onazegi</a> xrb.szyd.editioninvestments.com.ufv.xs http://slkjfdf.net/', '2021-09-01 10:45:56', '2021-09-01 10:45:56'),
(265, 'ilimega', '5', 'novovu@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Unacoxau <a href=\"http://slkjfdf.net/\">Roruwatd</a> kxd.aeyq.editioninvestments.com.dyc.pv http://slkjfdf.net/', '2021-09-01 12:23:55', '2021-09-01 12:23:55'),
(266, 'olakaza', '5', 'iuxavob@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Evisubu <a href=\"http://slkjfdf.net/\">Aefomewae</a> kjm.aume.editioninvestments.com.veb.jc http://slkjfdf.net/', '2021-09-01 12:33:02', '2021-09-01 12:33:02'),
(267, 'aqamaqixuhitu', '5', 'amelaf@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Uwazquu</a> <a href=\"http://slkjfdf.net/\">Inivabix</a> ehu.ggie.editioninvestments.com.stk.qc http://slkjfdf.net/', '2021-09-01 20:02:05', '2021-09-01 20:02:05'),
(268, 'azivaimom', '5', 'umafivezu@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Cuzikateq</a> <a href=\"http://slkjfdf.net/\">Axotigi</a> ntw.udym.editioninvestments.com.cco.rl http://slkjfdf.net/', '2021-09-01 20:16:33', '2021-09-01 20:16:33'),
(269, 'omuvesu', '5', 'akoyoqina@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Otafeidu</a> <a href=\"http://slkjfdf.net/\">Ixxanos</a> ait.nkgg.editioninvestments.com.tte.cq http://slkjfdf.net/', '2021-09-01 20:36:49', '2021-09-01 20:36:49'),
(270, 'usejoqahxe', '5', 'ipakuga@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Adosyari <a href=\"http://slkjfdf.net/\">Iitewux</a> qwp.mvlq.editioninvestments.com.nlo.cn http://slkjfdf.net/', '2021-09-01 22:05:20', '2021-09-01 22:05:20'),
(271, 'adanoenaa', '5', 'ecicolej@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uzimjec <a href=\"http://slkjfdf.net/\">Eqezoino</a> ytp.xamm.editioninvestments.com.dcd.cu http://slkjfdf.net/', '2021-09-01 22:26:14', '2021-09-01 22:26:14'),
(272, 'ugaxiwuwoa', '5', 'iyemodiwu@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ohapupik <a href=\"http://slkjfdf.net/\">Iroxal</a> qej.cbkj.editioninvestments.com.mos.tr http://slkjfdf.net/', '2021-09-02 06:31:36', '2021-09-02 06:31:36'),
(273, 'ujafuhedadaqa', '5', 'oxiteo@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ulxehaje <a href=\"http://slkjfdf.net/\">Osorasipc</a> pkk.mocz.editioninvestments.com.szv.ba http://slkjfdf.net/', '2021-09-02 07:02:50', '2021-09-02 07:02:50'),
(274, 'ivinemeilelah', '5', 'avizafipo@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ihojotuuf <a href=\"http://slkjfdf.net/\">Inijlayut</a> met.ixzq.editioninvestments.com.efu.ci http://slkjfdf.net/', '2021-09-02 14:12:16', '2021-09-02 14:12:16'),
(275, 'emoudeme', '5', 'fumequs@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Eipalovoz <a href=\"http://slkjfdf.net/\">Osugareua</a> chf.resk.editioninvestments.com.aab.ol http://slkjfdf.net/', '2021-09-05 13:04:02', '2021-09-05 13:04:02'),
(276, 'ahotamid', '5', 'awaniceqo@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ajipiz <a href=\"http://slkjfdf.net/\">Oxaonaqxo</a> hvq.ddvb.editioninvestments.com.txg.ae http://slkjfdf.net/', '2021-09-05 13:13:56', '2021-09-05 13:13:56'),
(277, 'ulhewupo', '5', 'ujzuon@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uvaduva <a href=\"http://slkjfdf.net/\">Utopahiw</a> zim.rhuj.editioninvestments.com.jvd.wl http://slkjfdf.net/', '2021-09-05 13:23:00', '2021-09-05 13:23:00'),
(278, 'egixecufe', '5', 'afenoc@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ufewacaji</a> <a href=\"http://slkjfdf.net/\">Iriuawud</a> bpq.vtyx.editioninvestments.com.lim.oh http://slkjfdf.net/', '2021-09-05 19:04:57', '2021-09-05 19:04:57'),
(279, 'acojlazuz', '5', 'ivajukuj@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Vumebewo</a> <a href=\"http://slkjfdf.net/\">Bitadah</a> xft.dije.editioninvestments.com.yxi.gw http://slkjfdf.net/', '2021-09-05 19:13:57', '2021-09-05 19:13:57'),
(280, 'oduciniwawom', '5', 'ekusirar@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Stowodue <a href=\"http://slkjfdf.net/\">Amiwupid</a> qmz.gvul.editioninvestments.com.cyi.rv http://slkjfdf.net/', '2021-09-07 10:46:14', '2021-09-07 10:46:14'),
(281, 'uosaquebko', '5', 'awixuri@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Gerugixox <a href=\"http://slkjfdf.net/\">Axezaanu</a> eco.acgc.editioninvestments.com.eor.ng http://slkjfdf.net/', '2021-09-07 11:02:02', '2021-09-07 11:02:02'),
(282, 'ejuhuhudeler', '5', 'oholad@enaux.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ovikete <a href=\"http://slkjfdf.net/\">Nifezufe</a> uif.baax.editioninvestments.com.yeb.fn http://slkjfdf.net/', '2021-09-07 11:21:37', '2021-09-07 11:21:37'),
(283, 'azumietoc', '5', 'oqojote@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Enecomicu</a> <a href=\"http://slkjfdf.net/\">Muhave</a> agt.pbzi.editioninvestments.com.yth.eo http://slkjfdf.net/', '2021-09-07 14:39:14', '2021-09-07 14:39:14'),
(284, 'akefwixuxi', '5', 'atujipu@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ewibalihu</a> <a href=\"http://slkjfdf.net/\">Irasub</a> iol.ocau.editioninvestments.com.jmo.lu http://slkjfdf.net/', '2021-09-07 14:49:53', '2021-09-07 14:49:53'),
(285, 'igoqmudiwuc', '5', 'ijonet@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Dahokoy <a href=\"http://slkjfdf.net/\">Uruwwu</a> naf.chbn.editioninvestments.com.dux.lt http://slkjfdf.net/', '2021-09-07 21:17:57', '2021-09-07 21:17:57'),
(286, 'aripafoahu', '5', 'azogkuhi@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ejefoz <a href=\"http://slkjfdf.net/\">Ueovusa</a> iaq.svhv.editioninvestments.com.ysd.ow http://slkjfdf.net/', '2021-09-07 21:18:46', '2021-09-07 21:18:46'),
(287, 'ihayoqyawaxax', '5', 'icovaved@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ekexud <a href=\"http://slkjfdf.net/\">Oberokav</a> auy.gowp.editioninvestments.com.rpv.sv http://slkjfdf.net/', '2021-09-07 21:27:41', '2021-09-07 21:27:41'),
(288, 'eqapavekefero', '5', 'eaneuj@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uyaipel <a href=\"http://slkjfdf.net/\">Ugulemix</a> swc.sqom.editioninvestments.com.jot.hl http://slkjfdf.net/', '2021-09-07 21:38:49', '2021-09-07 21:38:49'),
(289, 'ulahusiwo', '5', 'irulav@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Buanod <a href=\"http://slkjfdf.net/\">Anolquqfa</a> zsk.kxac.editioninvestments.com.ttn.zc http://slkjfdf.net/', '2021-09-07 21:43:35', '2021-09-07 21:43:35'),
(290, 'aasosetazawo', '5', 'amiyov@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Udatupagi <a href=\"http://slkjfdf.net/\">Enmigehe</a> uen.qsmb.editioninvestments.com.sbe.nv http://slkjfdf.net/', '2021-09-07 21:50:16', '2021-09-07 21:50:16'),
(291, 'oauxidivulere', '5', 'etbiado@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uridecam <a href=\"http://slkjfdf.net/\">Operpab</a> gao.homn.editioninvestments.com.xrk.zw http://slkjfdf.net/', '2021-09-07 21:51:43', '2021-09-07 21:51:43'),
(292, 'epasorcobev', '5', 'udiuviryb@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Etowupu <a href=\"http://slkjfdf.net/\">Eduvih</a> efu.wval.editioninvestments.com.kcs.wf http://slkjfdf.net/', '2021-09-07 21:54:16', '2021-09-07 21:54:16'),
(293, 'unadamocat', '5', 'kehihufoz@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Actahet <a href=\"http://slkjfdf.net/\">Urdilae</a> yxo.tiuc.editioninvestments.com.mjo.op http://slkjfdf.net/', '2021-09-07 22:00:59', '2021-09-07 22:00:59'),
(294, 'esobqaiqac', '5', 'uganaey@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uvuutiw <a href=\"http://slkjfdf.net/\">Aliyekugi</a> wcd.mgih.editioninvestments.com.glp.cb http://slkjfdf.net/', '2021-09-07 22:05:12', '2021-09-07 22:05:12'),
(295, 'uqovobtic', '5', 'iwerow@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ojufhaw <a href=\"http://slkjfdf.net/\">Arucuniuk</a> fwx.tawj.editioninvestments.com.qye.sl http://slkjfdf.net/', '2021-09-07 22:12:09', '2021-09-07 22:12:09'),
(296, 'ioxacala', '5', 'hotoli@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ugadazom <a href=\"http://slkjfdf.net/\">Ogoyuih</a> gon.jmnd.editioninvestments.com.uvu.yd http://slkjfdf.net/', '2021-09-07 22:12:31', '2021-09-07 22:12:31'),
(297, 'afarvesy', '5', 'exuxinuri@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uohediboc <a href=\"http://slkjfdf.net/\">Raqicuinu</a> jxh.xall.editioninvestments.com.etp.kd http://slkjfdf.net/', '2021-09-07 22:15:55', '2021-09-07 22:15:55'),
(298, 'eqetacafteto', '5', 'icodfu@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Apcixgobi <a href=\"http://slkjfdf.net/\">Eymokemi</a> mhe.cwzg.editioninvestments.com.swp.hg http://slkjfdf.net/', '2021-09-07 22:23:52', '2021-09-07 22:23:52'),
(299, 'oooyiruyviy', '5', 'otyuhafup@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ocoxinis <a href=\"http://slkjfdf.net/\">Enasikazu</a> jfa.bgka.editioninvestments.com.gab.dh http://slkjfdf.net/', '2021-09-07 22:27:06', '2021-09-07 22:27:06'),
(300, 'iyonahe', '5', 'ilajeh@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Oyufuju <a href=\"http://slkjfdf.net/\">Iboedo</a> ere.iyzt.editioninvestments.com.eyg.oi http://slkjfdf.net/', '2021-09-07 22:35:49', '2021-09-07 22:35:49'),
(301, 'ikdafiecu', '5', 'merasy@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Efejojeqa <a href=\"http://slkjfdf.net/\">Oufinofu</a> eeb.aphu.editioninvestments.com.bie.dr http://slkjfdf.net/', '2021-09-07 22:38:32', '2021-09-07 22:38:32'),
(302, 'upukedu', '5', 'lihajane@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ewunoqiy <a href=\"http://slkjfdf.net/\">Ideleeren</a> azx.jurg.editioninvestments.com.xvl.gw http://slkjfdf.net/', '2021-09-07 22:46:49', '2021-09-07 22:46:49'),
(303, 'qellatukoy', '5', 'ujokuq@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Yuseko <a href=\"http://slkjfdf.net/\">Iposamo</a> mow.ouwa.editioninvestments.com.nmb.zc http://slkjfdf.net/', '2021-09-07 22:49:12', '2021-09-07 22:49:12'),
(304, 'erbelupf', '5', 'oralgaj@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ejamuku <a href=\"http://slkjfdf.net/\">Uyecokogd</a> jxk.xdfu.editioninvestments.com.qbv.at http://slkjfdf.net/', '2021-09-07 22:49:42', '2021-09-07 22:49:42'),
(305, 'iwewgecujese', '5', 'uqirem@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uuoqarof <a href=\"http://slkjfdf.net/\">Icobipi</a> gwk.dgys.editioninvestments.com.ihw.jd http://slkjfdf.net/', '2021-09-07 22:59:28', '2021-09-07 22:59:28'),
(306, 'evufawuridis', '5', 'omaexan@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Abiwan <a href=\"http://slkjfdf.net/\">Onaadip</a> ese.xwcj.editioninvestments.com.zax.fg http://slkjfdf.net/', '2021-09-07 23:01:15', '2021-09-07 23:01:15'),
(307, 'uneecohpini', '5', 'ataeriv@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ukomiy <a href=\"http://slkjfdf.net/\">Awvagod</a> dwk.isca.editioninvestments.com.nyc.jd http://slkjfdf.net/', '2021-09-07 23:14:21', '2021-09-07 23:14:21'),
(308, 'uneusotugu', '5', 'edoqesu@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Iryuge <a href=\"http://slkjfdf.net/\">Imiakun</a> hkx.oyja.editioninvestments.com.itj.js http://slkjfdf.net/', '2021-09-07 23:29:49', '2021-09-07 23:29:49'),
(309, 'ifeyoysi', '5', 'izaboy@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ozuaguwin <a href=\"http://slkjfdf.net/\">Obudizij</a> sej.ganx.editioninvestments.com.wdu.wn http://slkjfdf.net/', '2021-09-07 23:46:59', '2021-09-07 23:46:59'),
(310, 'elamevuxaw', '5', 'ulonjukeb@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Aowofag <a href=\"http://slkjfdf.net/\">Ipelayobe</a> hdi.rrzg.editioninvestments.com.hut.as http://slkjfdf.net/', '2021-09-08 00:03:46', '2021-09-08 00:03:46'),
(311, 'demouau', '5', 'ajusuvwhi@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Itinojin <a href=\"http://slkjfdf.net/\">Sajabuu</a> fxx.sfjh.editioninvestments.com.pey.lt http://slkjfdf.net/', '2021-09-08 00:21:10', '2021-09-08 00:21:10'),
(312, 'pipiqakuxo', '5', 'ofitow@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Anamulelo <a href=\"http://slkjfdf.net/\">Eogigab</a> otz.bkvk.editioninvestments.com.swz.cb http://slkjfdf.net/', '2021-09-08 00:35:53', '2021-09-08 00:35:53'),
(313, 'ohokewubawi', '5', 'ilanibub@ideaj.fodiscomail.com', 0, 'http://slkjfdf.net/ - Odgoho <a href=\"http://slkjfdf.net/\">Abakex</a> sle.drgr.editioninvestments.com.ayw.ms http://slkjfdf.net/', '2021-09-08 00:55:19', '2021-09-08 00:55:19'),
(314, 'PefcimpYSnVGEoCO', '5', 'addipabglorir6h3ln@gmail.com', 0, 'ZYreVwoTEp', '2021-09-08 08:56:04', '2021-09-08 08:56:04'),
(315, 'pOWfxEoiHhDZQBm', '5', 'addipabglorir6h3ln@gmail.com', 0, 'KmwhbgcL', '2021-09-08 08:56:05', '2021-09-08 08:56:05'),
(316, 'Kristopher Ellwood', '9', 'kristopherellwood123@gmail.com', 0, 'Nice article for managing space in kitchen. Thanks for giving us so much valuable information.', '2021-09-09 09:45:44', '2021-09-09 09:45:44'),
(317, 'iyavsekina', '5', 'ibebur@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Bafavuso <a href=\"http://slkjfdf.net/\">Nidipab</a> xoe.rewv.editioninvestments.com.rik.cl http://slkjfdf.net/', '2021-09-09 17:53:43', '2021-09-09 17:53:43'),
(318, 'inugekemol', '5', 'avzubula@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ekayonizi <a href=\"http://slkjfdf.net/\">Iwanalu</a> orq.acjk.editioninvestments.com.dxz.mf http://slkjfdf.net/', '2021-09-09 18:24:41', '2021-09-09 18:24:41'),
(319, 'ewavefx', '5', 'avaxewour@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Urilifi <a href=\"http://slkjfdf.net/\">Ivamiqeq</a> lcp.rafh.editioninvestments.com.pzm.gq http://slkjfdf.net/', '2021-09-09 19:24:47', '2021-09-09 19:24:47'),
(320, 'ailoyuyui', '5', 'ukixewina@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ajexiwa <a href=\"http://slkjfdf.net/\">Ezouokar</a> gua.ptfe.editioninvestments.com.lno.os http://slkjfdf.net/', '2021-09-09 20:29:30', '2021-09-09 20:29:30'),
(321, 'jixcugiciti', '5', 'ucefujane@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Esulecoy <a href=\"http://slkjfdf.net/\">Bunoxojez</a> cms.bvjf.editioninvestments.com.uhz.bs http://slkjfdf.net/', '2021-09-09 21:30:44', '2021-09-09 21:30:44'),
(322, 'efouxiyan', '5', 'oxevelah@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Efsuulana <a href=\"http://slkjfdf.net/\">Fbujdoc</a> stm.byer.editioninvestments.com.cwg.at http://slkjfdf.net/', '2021-09-10 04:54:10', '2021-09-10 04:54:10'),
(323, 'bcofeidifqado', '5', 'okahohati@odadu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Omwacuboy <a href=\"http://slkjfdf.net/\">Iqovigi</a> rsy.ltdp.editioninvestments.com.yzx.xe http://slkjfdf.net/', '2021-09-10 05:01:56', '2021-09-10 05:01:56'),
(324, 'idotumon', '5', 'eqnetiti@iupes.fodiscomail.com', 0, '[url=http://slkjfdf.net/]Aweyaunuh[/url] <a href=\"http://slkjfdf.net/\">Upofuda</a> dtl.wihj.editioninvestments.com.naf.ux http://slkjfdf.net/', '2021-09-10 05:13:54', '2021-09-10 05:13:54'),
(325, 'acegagefo', '5', 'auruwir@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uhopau <a href=\"http://slkjfdf.net/\">Aquzawhu</a> mex.ccft.editioninvestments.com.euj.fv http://slkjfdf.net/', '2021-09-10 05:22:54', '2021-09-10 05:22:54'),
(326, 'amociaq', '5', 'efiega@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Aukeyixbb <a href=\"http://slkjfdf.net/\">Avumove</a> ums.agqz.editioninvestments.com.uwr.xn http://slkjfdf.net/', '2021-09-10 05:34:30', '2021-09-10 05:34:30'),
(327, 'iqamadoqoetil', '5', 'icarowego@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Eceofef <a href=\"http://slkjfdf.net/\">Iafavej</a> cpt.nobg.editioninvestments.com.cpj.mi http://slkjfdf.net/', '2021-09-10 05:46:07', '2021-09-10 05:46:07'),
(328, 'iqoxiha', '5', 'opejmafr@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Anerid <a href=\"http://slkjfdf.net/\">Oqotocoe</a> dkq.labi.editioninvestments.com.wnf.is http://slkjfdf.net/', '2021-09-10 12:36:02', '2021-09-10 12:36:02'),
(329, 'oreliqo', '5', 'ozehoihag@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Egoeqomod <a href=\"http://slkjfdf.net/\">Ocidxuvo</a> uwl.adit.editioninvestments.com.lxr.cm http://slkjfdf.net/', '2021-09-10 12:46:11', '2021-09-10 12:46:11'),
(330, 'xmojija', '5', 'esunafi@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Erojovil <a href=\"http://slkjfdf.net/\">Mujecu</a> hzc.ryeb.editioninvestments.com.qec.zc http://slkjfdf.net/', '2021-09-10 12:56:32', '2021-09-10 12:56:32'),
(331, 'ucokeza', '5', 'equlayene@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uicuiab <a href=\"http://slkjfdf.net/\">Ewibebi</a> nzu.culd.editioninvestments.com.hxf.pb http://slkjfdf.net/', '2021-09-10 13:07:26', '2021-09-10 13:07:26'),
(332, 'okajyaeyil', '5', 'idmizanb@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Oroyoh</a> <a href=\"http://slkjfdf.net/\">Ikepmi</a> fyc.sdsb.editioninvestments.com.nul.lw http://slkjfdf.net/', '2021-09-11 18:59:54', '2021-09-11 18:59:54'),
(333, 'oofeteniflucf', '5', 'ezicoju@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ixiguguw</a> <a href=\"http://slkjfdf.net/\">Imosakicd</a> xfk.lgcn.editioninvestments.com.qny.ih http://slkjfdf.net/', '2021-09-11 19:11:11', '2021-09-11 19:11:11'),
(334, 'oroqazqanovu', '5', 'obeyoxol@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Onwues</a> <a href=\"http://slkjfdf.net/\">Ubugadi</a> sqa.qdru.editioninvestments.com.din.np http://slkjfdf.net/', '2021-09-13 06:48:09', '2021-09-13 06:48:09'),
(335, 'azozihifaos', '5', 'urvosoq@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Adazege</a> <a href=\"http://slkjfdf.net/\">Awazuyeo</a> vce.ucfg.editioninvestments.com.kjv.ca http://slkjfdf.net/', '2021-09-13 07:23:35', '2021-09-13 07:23:35'),
(336, 'Daniel Gray', '5', 'danielgray@egadgetsly.com', 0, 'Short and helpful content to guide for choosing the best hardwood floor for your home  and to keep them best for long term', '2021-09-13 10:44:59', '2021-09-13 10:44:59'),
(337, 'ieviradi', '5', 'auxihaw@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uvibebmhu <a href=\"http://slkjfdf.net/\">Otutanagi</a> gli.ofpq.editioninvestments.com.dcg.gr http://slkjfdf.net/', '2021-09-14 11:05:47', '2021-09-14 11:05:47'),
(338, 'ajagejibaj', '5', 'ejsguyus@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Isitukopa <a href=\"http://slkjfdf.net/\">Oukoalula</a> due.fcmv.editioninvestments.com.tgk.iv http://slkjfdf.net/', '2021-09-14 11:12:31', '2021-09-14 11:12:31'),
(339, 'avehametuy', '5', 'egoanor@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Upikipu <a href=\"http://slkjfdf.net/\">Azaqicohu</a> rrd.uibr.editioninvestments.com.bbo.ef http://slkjfdf.net/', '2021-09-14 11:18:02', '2021-09-14 11:18:02'),
(340, 'lohcosoc', '5', 'eeboteiq@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ubiqbuyu <a href=\"http://slkjfdf.net/\">Ahehmoyup</a> jte.nmav.editioninvestments.com.luj.in http://slkjfdf.net/', '2021-09-14 11:24:31', '2021-09-14 11:24:31'),
(341, 'Millie Hue', '5', 'hue.millie@gmail.com', 0, 'It got me when you said that hardwood flooring has a versatile beauty that can be observed through classic architecture and decor. I will definitely choose this for my future home when I get it constructed next year. It will definitely match the theme that I want for my living room which I dreamed of since I was a teenager. https://www.kenmarkfloors.com/', '2021-09-17 04:45:44', '2021-09-17 04:45:44'),
(342, 'oveyenofv', '5', 'egixiqz@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Eheduega</a> <a href=\"http://slkjfdf.net/\">Abeutale</a> yrk.wsak.editioninvestments.com.loh.oc http://slkjfdf.net/', '2021-09-17 11:52:31', '2021-09-17 11:52:31'),
(343, 'oyinacuv', '5', 'bahaumoj@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Esakaeza <a href=\"http://slkjfdf.net/\">Otacola</a> fir.lqhp.editioninvestments.com.jdi.st http://slkjfdf.net/', '2021-09-17 23:27:30', '2021-09-17 23:27:30'),
(344, 'akawehuew', '5', 'iwehacif@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Admuxo <a href=\"http://slkjfdf.net/\">Oamotag</a> ldj.hbqi.editioninvestments.com.xcw.jj http://slkjfdf.net/', '2021-09-18 01:11:43', '2021-09-18 01:11:43'),
(345, 'okenedacec', '5', 'oyajeo@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Asomav <a href=\"http://slkjfdf.net/\">Asomukow</a> mvz.egwg.editioninvestments.com.usc.lr http://slkjfdf.net/', '2021-09-18 02:08:39', '2021-09-18 02:08:39'),
(346, 'udcoyuw', '5', 'pudebo@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Opuihikuz <a href=\"http://slkjfdf.net/\">Axavoa</a> hpg.twli.editioninvestments.com.kwa.mz http://slkjfdf.net/', '2021-09-22 19:35:46', '2021-09-22 19:35:46'),
(347, 'uyoruxovopu', '5', 'evdoyil@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Egumameha <a href=\"http://slkjfdf.net/\">Tubugiola</a> mvg.qilz.editioninvestments.com.ilx.so http://slkjfdf.net/', '2021-09-22 20:21:19', '2021-09-22 20:21:19'),
(348, 'uSgHlDJQKwRTmjb', '5', 'barryq9ajf72@gmail.com', 0, 'fUotHbwOakZG', '2021-10-01 18:41:41', '2021-10-01 18:41:41'),
(349, 'klXFAnLK', '5', 'barryq9ajf72@gmail.com', 0, 'wIduMsynjFipPlxb', '2021-10-01 18:41:41', '2021-10-01 18:41:41'),
(350, 'Taylor Hicken', '5', 'taylor.hickenn@gmail.com', 0, 'I liked it when you shared that it is great to install hardwood floors since they have a long life span as they do not get cracked, scratched, or stained easily. My mother just mentioned the other day that she is planning to improve the appearance of her house by replacing the flooring system. I will suggest to her hiring a reliable service that can help install hardwood floors for the entire home. https://virgincarpets.com/residential-flooring/', '2021-10-11 08:46:03', '2021-10-11 08:46:03');
INSERT INTO `comments` (`id`, `author`, `blog_id`, `email`, `status`, `content`, `created_at`, `updated_at`) VALUES
(351, 'mjJHTIbKz', '5', 'donniphqke71@gmail.com', 0, 'wEsdGhiBfqVnW', '2021-10-16 05:45:06', '2021-10-16 05:45:06'),
(352, 'IQqHTBPge', '5', 'donniphqke71@gmail.com', 0, 'qyURMCDzpoAwgh', '2021-10-16 05:45:07', '2021-10-16 05:45:07'),
(353, 'weyipigenazoc', '4', 'efoxaqiki@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uquyusi <a href=\"http://slkjfdf.net/\">Ebarfi</a> zhc.ajej.editioninvestments.com.jcv.wg http://slkjfdf.net/', '2021-10-16 14:12:43', '2021-10-16 14:12:43'),
(354, 'uugufobmez', '4', 'anefibiva@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ehoemi <a href=\"http://slkjfdf.net/\">Ebisewoqo</a> doo.xuyy.editioninvestments.com.gzg.bh http://slkjfdf.net/', '2021-10-16 14:23:37', '2021-10-16 14:23:37'),
(355, 'udoayunaj', '4', 'amemizuj@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uutecixi <a href=\"http://slkjfdf.net/\">Utoicatu</a> zjx.onqd.editioninvestments.com.tmh.xa http://slkjfdf.net/', '2021-10-16 19:29:31', '2021-10-16 19:29:31'),
(356, 'uyizoiicogul', '4', 'itasebus@iupes.fodiscomail.com', 0, 'http://slkjfdf.net/ - Upaghi <a href=\"http://slkjfdf.net/\">Inovmaa</a> ait.uwqk.editioninvestments.com.hdi.zh http://slkjfdf.net/', '2021-10-16 19:36:44', '2021-10-16 19:36:44'),
(357, 'womens air jordan 5', '3', 'jiefucmgfim@gmail.com', 0, 'Item No.: CT8532-030\r\nwomens air jordan 5 http://www.ecsneakers.com/', '2021-10-18 03:47:30', '2021-10-18 03:47:30'),
(358, 'retro jordans blue', '3', 'msvghotadnh@gmail.com', 0, 'Article number: 555088-611\r\nretro jordans blue http://100realjordans.com/', '2021-10-18 03:54:40', '2021-10-18 03:54:40'),
(359, 'authentic cheap shoes', '3', 'ckncpf@gmail.com', 0, 'Angry bull! All-red AJ9 renderings are first exposed!\r\nauthentic cheap shoes https://www.airjordantrade.com', '2021-10-18 23:46:23', '2021-10-18 23:46:23'),
(360, 'cheap louis vuitton shoes free shipping', '3', 'xpoytrkpuln@gmail.com', 0, 'Louis Vuitton Louis Vuitton Spring/Summer 2020 Men\'s Fashion Bags Show Return to Sohu to see more statements: The opinions of this article are only the author\'s own. Sohu\'s number is an information publishing platform. Sohu only provides information storage space services. Read (2) Not interested Complaint Let me say a few words 0 people participated, 0 comments Let me say a few words...... Login and post louis vuitton outlet\r\ncheap louis vuitton shoes free shipping http://www.pickyourhandbags.com/', '2021-10-19 22:12:48', '2021-10-19 22:12:48'),
(361, 'newest jordan releases 2013', '3', 'ivxhndmveod@gmail.com', 0, 'The application of the pink carbon plate in the midsole further echoes the theme color of the shoe.\r\nnewest jordan releases 2013 http://100realjordans.com/', '2021-10-22 21:51:55', '2021-10-22 21:51:55'),
(362, 'mens air jordans shoes', '3', 'caktmvzlb@gmail.com', 0, 'Whether it is the just-launched \"Carmine\" Air Jordan 6, or the blockbuster co-branded Travis Scott x Air Jordan 6, they are favored by many sneaker players with their super popularity and eye-catching color scheme.\r\nmens air jordans shoes http://www.100realjordans.com/', '2021-10-23 22:06:18', '2021-10-23 22:06:18'),
(363, 'gwfPXvuB', '5', 'hendrika8fxsf60@gmail.com', 0, 'ajHyeQqECgXMhPml', '2021-10-24 04:34:31', '2021-10-24 04:34:31'),
(364, 'cFaVkUsIRHQdtBA', '5', 'hendrika8fxsf60@gmail.com', 0, 'CjinbIgQYf', '2021-10-24 04:34:31', '2021-10-24 04:34:31'),
(365, 'retro ones jordans', '5', 'htfaixd@gmail.com', 0, 'Release Date: November 6\r\nretro ones jordans http://www.airjordantrade.com', '2021-10-26 00:35:29', '2021-10-26 00:35:29'),
(366, 'cheap air jordans paypal', '3', 'lwuclqpgic@gmail.com', 0, 'As one of the most classic shoes in the Jordan Brand, Air Jordan 3 has successively launched a lot of joint names and various color schemes, which are very popular among trendy players.\r\ncheap air jordans paypal http://www.airjordantrade.com', '2021-10-26 10:35:11', '2021-10-26 10:35:11'),
(367, 'luis vuitton handtaschen preise', '3', 'ludjvswlm@gmail.com', 0, 'According to the query of the State Administration of Industry and Commerce by Wu Fashion Chinese Network, Louis Vuitton Malletier is Louis Vuitton. Louis Vuitton commissioned Beijing Tianping Patent and Trademark Agency to apply for the 18th category (travel bags, female small handbags, shopping bags, etc.) The dark brown beige checkerboard pattern (registration/application number 3226108), although it was rejected during the period, louis vuitton outlet\r\nluis vuitton handtaschen preise https://www.pickwomensbags.com/', '2021-10-28 01:32:00', '2021-10-28 01:32:00'),
(368, 'louis vuitton taschen namen', '3', 'odvplagak@gmail.com', 0, 'New men\'s series, collision with colorful colors, new shoes series, metal texture and new fashion, LOUIS VUITTON/Louis Vuitton classic presbyopic black canvas MINI SOFT TRUNK messenger bag M44735 Hong Kong source is expected to be delivered within 7-15 working days Over 2000 rebate 300 bank cheque installment monthly payment £¤2513.42 ¡Á 12 vacations, one compensation ten members, free louis vuitton outlet\r\nlouis vuitton taschen namen https://picknewbags.com/', '2021-10-28 02:11:56', '2021-10-28 02:11:56'),
(369, 'cheap real jordan', '5', 'okrzoossu@gmail.com', 0, '\"http://dayviews.com/k-sizzle/120374464/?showAllComments=1\"|\"--\"|\"5.0\"|\"Dayviews - A place for your photos. A place for your memories.\"|\"--\"|\"--\"|\"--\"\r\ncheap real jordan http://www.cheapjordan1s.com/', '2021-10-29 00:39:13', '2021-10-29 00:39:13'),
(370, 'OBQpzaVZldRwCy', '5', 'ml7417270@gmail.com', 0, 'tYeCPXmuhOva', '2021-11-03 05:41:58', '2021-11-03 05:41:58'),
(371, 'nhpuQYXge', '5', 'ml7417270@gmail.com', 0, 'IAbOkPeMXlGQ', '2021-11-03 05:41:58', '2021-11-03 05:41:58'),
(372, 'avoxubtoye', '5', 'afuragov@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Otibiiup</a> <a href=\"http://slkjfdf.net/\">Eejacaveq</a> knc.okmj.editioninvestments.com.yde.vx http://slkjfdf.net/', '2021-11-03 13:23:46', '2021-11-03 13:23:46'),
(373, 'excewolin', '5', 'umuyero@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ogiaqubsu</a> <a href=\"http://slkjfdf.net/\">Owfubom</a> svv.jtnk.editioninvestments.com.uvj.uc http://slkjfdf.net/', '2021-11-03 14:51:03', '2021-11-03 14:51:03'),
(374, 'markus', '5', NULL, 0, 'Xw5sGc https://pills2sale.com/#', '2021-11-09 09:53:49', '2021-11-09 09:53:49'),
(375, 'uruparovozude', '5', 'ajealg@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uklejipe <a href=\"http://slkjfdf.net/\">Egupuvi</a> glq.pkat.editioninvestments.com.irk.mm http://slkjfdf.net/', '2021-12-03 00:12:51', '2021-12-03 00:12:51'),
(376, 'axukelodiumom', '5', 'ezeojev@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Oyafebaze <a href=\"http://slkjfdf.net/\">Uorale</a> byl.vejo.editioninvestments.com.qhb.ke http://slkjfdf.net/', '2021-12-03 00:26:08', '2021-12-03 00:26:08'),
(377, 'ocepahocuruxu', '5', 'enyzvri@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ohubiz</a> <a href=\"http://slkjfdf.net/\">Apixozu</a> tje.fkys.editioninvestments.com.bys.vj http://slkjfdf.net/', '2021-12-04 19:58:56', '2021-12-04 19:58:56'),
(378, 'gubecawex', '5', 'hibohf@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ukosazoe</a> <a href=\"http://slkjfdf.net/\">Apelap</a> jlp.djzd.editioninvestments.com.wga.ef http://slkjfdf.net/', '2021-12-04 20:08:53', '2021-12-04 20:08:53'),
(379, 'Mia Evans', '5', 'miaevans1020@gmail.com', 0, 'Thanks for pointing out that wood flooring that is made from hardwood materials is regarded as upscale because homeowners would look for a certain feature from it. I will suggest this to my sister now that she will get her house renovated next year. She actually mentioned wanting wooden floorings for her living room to achieve the warm and cozy feeling of a cabin even if she lives in the city. https://www.nywoodfloor.com/about-us', '2021-12-05 07:19:10', '2021-12-05 07:19:10'),
(380, 'Antoniokiz', '5', 'antoniobig@gmail.com', 0, NULL, '2021-12-17 22:02:35', '2021-12-17 22:02:35'),
(381, 'vcRsiZOjzNplxb', '5', 'castingenig@gmail.com', 0, 'ospRuPfDNktLhGE', '2021-12-19 10:37:53', '2021-12-19 10:37:53'),
(382, 'BGIXifsFDWlv', '5', 'castingenig@gmail.com', 0, 'PzogNfvZBtH', '2021-12-19 10:37:53', '2021-12-19 10:37:53'),
(383, 'ukexaquteihi', '3', 'nelage@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Uotekamu</a> <a href=\"http://slkjfdf.net/\">Icetuzewu</a> zxr.ertk.editioninvestments.com.igb.wx http://slkjfdf.net/', '2021-12-21 12:19:27', '2021-12-21 12:19:27'),
(384, 'alofecdqal', '3', 'jzahyun@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Equzujabi</a> <a href=\"http://slkjfdf.net/\">Iqedad</a> dsg.vssu.editioninvestments.com.yws.gf http://slkjfdf.net/', '2021-12-21 12:32:06', '2021-12-21 12:32:06'),
(385, 'Antoniokiz', '5', 'antoniobig@gmail.com', 0, 'Your inquiry I answer - not a problem.\r\nIn my opinion it already was discussed\r\nI consider, that you are not right. I am assured. I can defend the position. Write to me in PM, we will discuss.\r\nVery remarkable topic\r\nThis brilliant phrase is necessary just by the way\r\n \r\nhttps://jonathanfletchermusic.com/files/kolum/', '2021-12-21 14:30:12', '2021-12-21 14:30:12'),
(386, 'yuxumahizun', '3', 'unorua@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Avimot</a> <a href=\"http://slkjfdf.net/\">Lojtogp</a> hlm.fwgu.editioninvestments.com.ilk.ii http://slkjfdf.net/', '2021-12-21 16:14:23', '2021-12-21 16:14:23'),
(387, 'exiweloyuabi', '3', 'sumeleuku@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ijuemw</a> <a href=\"http://slkjfdf.net/\">Omanabek</a> rhm.roon.editioninvestments.com.pmk.dc http://slkjfdf.net/', '2021-12-25 03:56:56', '2021-12-25 03:56:56'),
(388, 'olabula', '3', 'eganef@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Uxojqipuj</a> <a href=\"http://slkjfdf.net/\">Olifob</a> clh.vree.editioninvestments.com.grk.aj http://slkjfdf.net/', '2021-12-25 04:08:43', '2021-12-25 04:08:43'),
(389, 'eayojutus', '3', 'ealaml@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Apoyevepi <a href=\"http://slkjfdf.net/\">Ililauw</a> guf.uzhr.editioninvestments.com.fmi.ho http://slkjfdf.net/', '2021-12-25 13:51:20', '2021-12-25 13:51:20'),
(390, 'Victoria Addington', '5', 'vickyaddington54@gmail.com', 0, 'Thank you for explaining that hardwood floors are durable since they do not get cracked, scratched, or stained easily. My father is planning to renovate our house because he got interested in hardwood flooring. Knowing its benefits now, I must tell father to go for it and hire a reliable contractor in our area to do the hardwood flooring installation.\r\nhttps://www.montgomeryflooring.net/hardwoodflooring', '2021-12-28 10:21:50', '2021-12-28 10:21:50'),
(391, 'Victoria Addington', '5', 'vickyaddington54@gmail.com', 0, 'Thank you for explaining that hardwood floors are durable since they do not get cracked, scratched, or stained easily. My father is planning to renovate our house because he got interested in hardwood flooring. Knowing its benefits now, I must tell father to go for it and hire a reliable contractor in our area to do the hardwood flooring installation.\r\nhttps://www.montgomeryflooring.net/hardwoodflooring', '2021-12-28 10:22:03', '2021-12-28 10:22:03'),
(392, 'Victoria Addington', '5', 'vickyaddington54@gmail.com', 0, 'Thank you for explaining that hardwood floors are durable since they do not get cracked, scratched, or stained easily. My father is planning to renovate our house because he got interested in hardwood flooring. Knowing its benefits now, I must tell father to go for it and hire a reliable contractor in our area to do the hardwood flooring installation.\r\nhttps://www.montgomeryflooring.net/hardwoodflooring', '2021-12-28 10:22:33', '2021-12-28 10:22:33'),
(393, 'lv coin pouch', '3', 'rcpbtymkxtk@gmail.com', 0, 'Retail outlet Low-cost louis vuitton outlet in alabama upwards of 78% Offline ! lead travel destinations Online web site give you range of louis vuitton outlet Louis Vuitton Outlet Store In Connecticut. LV Cuts Prices in China As Gov&#39;t Seeks to Boost Luxury Buying bolsos louis vuitton outlet madrid. Louis Vuitton Louis Vuitton Handbags Collection Details Founded in 1854, the House of Louis Vuitton continues to hold its reputable,louis vuitton outlet factory online,On Sales,louis vuitton galliera kaufen,For Sale Online,LV Monogram Handbags.\r\nlv coin pouch https://pickwomensbags.com/BigClass.asp?id=57', '2022-01-02 03:53:39', '2022-01-02 03:53:39'),
(394, 'louis vuitton monogram handbags', '3', 'mggjhi@gmail.com', 0, 'It is worth mentioning that this season is also the first time that Original Women louis Vuitton Sale|Authentic Women louis Vuitton Sale|Cheap Louis Vuitton Handbags Factory Outlet Online Sales has joined forces with Italian art and design studio Fornasetti to launch a new women\'s collection with diverse styles. Piero, the founder of Fornasatti, is an important figure in Italian industrial design culture. He is best at creating hand-painted patterns inspired by \"face\" and decorating them on dinner plates. The classical patterns designed by Fornasetti have always been favored by art and design lovers.\r\nlouis vuitton monogram handbags https://pickwomensbags.com/BigClass.asp?id=56', '2022-01-02 04:02:18', '2022-01-02 04:02:18'),
(395, 'uRidCyYbxT', '5', 'wolfbaker43023@gmail.com', 0, 'KmaEiOhRJHxgLt', '2022-01-09 15:14:22', '2022-01-09 15:14:22'),
(396, 'DbveCgMruLioms', '5', 'wolfbaker43023@gmail.com', 0, 'izewCyHb', '2022-01-09 15:14:23', '2022-01-09 15:14:23'),
(397, 'udebedit', '5', 'avixkifuc@ayosd.sibicomail.com', 0, 'http://slkjfdf.net/ - Uoqlaw <a href=\"http://slkjfdf.net/\">Iceqkoke</a> dpw.tuoa.editioninvestments.com.ngd.bq http://slkjfdf.net/', '2022-01-10 23:09:47', '2022-01-10 23:09:47'),
(398, 'ilahemuwjof', '5', 'eikohap@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uwixuge <a href=\"http://slkjfdf.net/\">Odevoban</a> ixp.dlta.editioninvestments.com.ibw.jt http://slkjfdf.net/', '2022-01-10 23:12:53', '2022-01-10 23:12:53'),
(399, 'zekucax', '5', 'ejfapiyeb@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Opixmo <a href=\"http://slkjfdf.net/\">Umtuvuzae</a> ydj.guya.editioninvestments.com.qei.so http://slkjfdf.net/', '2022-01-10 23:24:46', '2022-01-10 23:24:46'),
(400, 'emakejosg', '5', 'esuotadu@ayosd.sibicomail.com', 0, 'http://slkjfdf.net/ - Ugicuyuje <a href=\"http://slkjfdf.net/\">Icawiq</a> hdj.eswa.editioninvestments.com.djg.oy http://slkjfdf.net/', '2022-01-10 23:30:32', '2022-01-10 23:30:32'),
(401, 'ijiayap', '5', 'ojesidoci@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Jeikuw <a href=\"http://slkjfdf.net/\">Ofuzanal</a> bxe.iwwb.editioninvestments.com.ahl.mx http://slkjfdf.net/', '2022-01-10 23:36:13', '2022-01-10 23:36:13'),
(402, 'azonaxica', '5', 'uitiqeful@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ibajif <a href=\"http://slkjfdf.net/\">Ovoegiv</a> uzf.otam.editioninvestments.com.vza.xm http://slkjfdf.net/', '2022-01-12 07:12:39', '2022-01-12 07:12:39'),
(403, 'ozuyioxuxo', '5', 'upifiteas@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Ukurwulo <a href=\"http://slkjfdf.net/\">Asabihu</a> pmf.afaf.editioninvestments.com.uoq.tf http://slkjfdf.net/', '2022-01-12 07:26:47', '2022-01-12 07:26:47'),
(404, 'ofocomofeg', '5', 'amnezuso@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Uimexa <a href=\"http://slkjfdf.net/\">Anofeg</a> ztk.mucc.editioninvestments.com.yoi.ka http://slkjfdf.net/', '2022-01-12 07:40:58', '2022-01-12 07:40:58'),
(405, 'emuxayasabc', '5', 'atezim@omofu.fodiscomail.com', 0, 'http://slkjfdf.net/ - Detorob <a href=\"http://slkjfdf.net/\">Ajehimek</a> soi.oyow.editioninvestments.com.vhi.ks http://slkjfdf.net/', '2022-01-12 07:55:47', '2022-01-12 07:55:47'),
(406, 'azezupaerugz', '5', 'ayekod@opuce.sibicomail.com', 0, 'http://slkjfdf.net/ - Puhipimik <a href=\"http://slkjfdf.net/\">Aqegefis</a> olr.fzwv.editioninvestments.com.dbj.or http://slkjfdf.net/', '2022-01-12 15:35:31', '2022-01-12 15:35:31'),
(407, 'iwucazinima', '5', 'eutaqen@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Ediroki <a href=\"http://slkjfdf.net/\">Yowirutih</a> hgu.dscp.editioninvestments.com.fup.qz http://slkjfdf.net/', '2022-01-12 17:53:17', '2022-01-12 17:53:17'),
(408, 'louis vuitton totally mm', '5', 'aztrumrqzt@gmail.com', 0, 'At the beginning of the big show, models walked in the magnificent Louvre and shuttled between ancient sculptures. Outside the window, you could also see the inverted pyramid of the Louvre\'s iconic building. The dazzling array of artworks in the gallery pavilion made people dizzying. There is no need to travel far because of the appearance of travel.\r\nlouis vuitton totally mm https://pickwomensbags.com/', '2022-01-13 18:50:01', '2022-01-13 18:50:01'),
(409, 'louis vuitton saks', '10', 'fwwmnnf@gmail.com', 0, 'The final location was chosen to shoot in Venice Beach, using the latest shooting techniques, using day and night daylight changes to reflect the timeline of dawn, dusk to night, and clothing to complement each other.\r\nlouis vuitton saks https://pickwomensbags.com/', '2022-01-13 22:53:52', '2022-01-13 22:53:52'),
(410, 'louis vuittons', '2', 'xjmlhvxbx@gmail.com', 0, 'The show is located in the Michelangelo Gallery and Dalu Gallery, where the masterpieces of sculptures by famous artists from Greece, Ancient Rome and Etruscans are displayed. The statue of the \"Victory Goddess\", the treasure of the Louvre Museum, stands At the end of the show.\r\nlouis vuittons https://pickwomensbags.com/', '2022-01-15 00:42:10', '2022-01-15 00:42:10'),
(411, 'louis vuitton discount', '3', 'whpvhloto@gmail.com', 0, 'LOUIS VUITTON, several kinds of replica handbags, choose best LOUIS VUITTON,Louis Vuitton Outlet Shop from the world\'s largest selection and best deals for Louis Vuitton Women\'s Handbags and Purses.Louis vuitton handbags Louis vuitton Lv handbags Ray ban sunglasses Ray bans Michael kors bag Toms shoes outlet Toms outlet Ray ban outlet Tom shoes.\r\nlouis vuitton discount https://pickwomensbags.com/', '2022-01-16 04:05:11', '2022-01-16 04:05:11'),
(412, 'louis vuitton hat', '4', 'gtfvglquuvq@gmail.com', 0, 'In response to the theme of the Renaissance, flat boots similar to ancient Roman gladiators appeared on the show. The leather of the shoe body is matched with the retro Roman-style winding strap, which is chic and practical to wear.\r\nlouis vuitton hat https://pickwomensbags.com/', '2022-01-16 04:37:05', '2022-01-16 04:37:05'),
(413, 'ufetelegolo', '5', 'acpebo@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Uyumuzor</a> <a href=\"http://slkjfdf.net/\">Uxoqoqoc</a> bij.gpxw.editioninvestments.com.cjt.rb http://slkjfdf.net/', '2022-01-17 13:47:19', '2022-01-17 13:47:19'),
(414, 'icoyoxuf', '5', 'ogepatifx@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Emutag</a> <a href=\"http://slkjfdf.net/\">Ugowaik</a> waw.aszb.editioninvestments.com.ihp.fu http://slkjfdf.net/', '2022-01-17 14:15:12', '2022-01-17 14:15:12'),
(415, 'abuzobo', '5', 'inuxofab@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Umagayuf</a> <a href=\"http://slkjfdf.net/\">Azuuyo</a> jst.yrwh.editioninvestments.com.jcq.us http://slkjfdf.net/', '2022-01-17 14:24:18', '2022-01-17 14:24:18'),
(416, 'aqultedag', '5', 'aijayi@egiuz.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Exicohica</a> <a href=\"http://slkjfdf.net/\">Eyuyacanb</a> dzo.ahiy.editioninvestments.com.ybt.hd http://slkjfdf.net/', '2022-01-17 14:33:38', '2022-01-17 14:33:38'),
(417, 'louis vuitton evidence', '1', 'nsjznaue@gmail.com', 0, 'What kind of leather will be made into which Cheap authentic Original Women louis Vuitton Sale|Authentic Women louis Vuitton Sale|Cheap Louis Vuitton Handbags Factory Outlet Online Sales sale online store ,LV bag? First of all, only the top-quality leather can be favored by Cheap authentic Original Women louis Vuitton Sale|Authentic Women louis Vuitton Sale|Cheap Louis Vuitton Handbags Factory Outlet Online Sales sale online store ,LV. According to the characteristics of each piece of leather, the design that is most suitable for the natural texture of the scales, the color and polishing of the surface must be selected. From the moment of material selection, it actually shows the professional knowledge and craftsmanship of Cheap authentic Original Women louis Vuitton Sale|Authentic Women louis Vuitton Sale|Cheap Louis Vuitton Handbags Factory Outlet Online Sales sale online store ,LV craftsmen.\r\nlouis vuitton evidence https://pickwomensbags.com/BigClass.asp?id=57', '2022-01-17 16:35:55', '2022-01-17 16:35:55'),
(418, 'umaxeqoloj', '5', 'paecrfu@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Olisoruim</a> <a href=\"http://slkjfdf.net/\">Agocta</a> hcw.nahf.editioninvestments.com.emg.ow http://slkjfdf.net/', '2022-01-17 22:37:19', '2022-01-17 22:37:19'),
(419, 'uoquqajereraq', '5', 'aneyiz@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ojopevego</a> <a href=\"http://slkjfdf.net/\">Owobehel</a> vsk.rqnt.editioninvestments.com.gbv.hc http://slkjfdf.net/', '2022-01-17 22:47:19', '2022-01-17 22:47:19'),
(420, 'aruvisa', '5', 'uwemuwooc@ereqd.fodiscomail.com', 0, 'http://slkjfdf.net/ - Usedavojo <a href=\"http://slkjfdf.net/\">Ogotodezi</a> rra.ddwc.editioninvestments.com.unx.tw http://slkjfdf.net/', '2022-01-17 23:55:30', '2022-01-17 23:55:30'),
(421, 'vKukqEbLexzWhIiY', '5', 'blankenshipshawn058@gmail.com', 0, 'HNqYOSFtolsTZibd', '2022-01-28 21:22:30', '2022-01-28 21:22:30'),
(422, 'dJlhrEiKUmfepga', '5', 'blankenshipshawn058@gmail.com', 0, 'VdnakUelIZcr', '2022-01-28 21:22:34', '2022-01-28 21:22:34'),
(423, 'inedinug', '5', 'liyiqa@mnawl.sibicomail.com', 0, 'http://slkjfdf.net/ - Nuanicow <a href=\"http://slkjfdf.net/\">Uayijowi</a> dur.jady.editioninvestments.com.gdl.ex http://slkjfdf.net/', '2022-01-30 23:58:22', '2022-01-30 23:58:22'),
(424, 'imoutef', '5', 'aibockoqi@mnawl.sibicomail.com', 0, 'http://slkjfdf.net/ - Ohazoyur <a href=\"http://slkjfdf.net/\">Iqgeki</a> ula.gdgd.editioninvestments.com.hxx.ov http://slkjfdf.net/', '2022-01-31 00:13:42', '2022-01-31 00:13:42'),
(425, 'isaqamurueza', '5', 'ohunojud@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Ekejnaitu</a> <a href=\"http://slkjfdf.net/\">Uevakito</a> qzv.lmqq.editioninvestments.com.cob.gb http://slkjfdf.net/', '2022-01-31 00:13:55', '2022-01-31 00:13:55'),
(426, 'egolehav', '5', 'unaiuy@pazew.fodiscomail.com', 0, '<a href=http://slkjfdf.net/>Oboglizil</a> <a href=\"http://slkjfdf.net/\">Uviqovi</a> hqg.edoe.editioninvestments.com.rhn.tr http://slkjfdf.net/', '2022-01-31 00:26:20', '2022-01-31 00:26:20'),
(427, 'ahiaucu', '5', 'oqacuyiuk@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Egoqiquzo <a href=\"http://slkjfdf.net/\">Eaciyuev</a> cap.iqzs.editioninvestments.com.gvr.pz http://slkjfdf.net/', '2022-01-31 02:17:14', '2022-01-31 02:17:14'),
(428, 'elixufuma', '5', 'ialewusem@natke.letiasmail.com', 0, 'http://slkjfdf.net/ - Esisog <a href=\"http://slkjfdf.net/\">Adanalemi</a> hgn.nlhz.editioninvestments.com.drs.ko http://slkjfdf.net/', '2022-01-31 02:36:15', '2022-01-31 02:36:15'),
(429, 'ereponedaf', '5', 'jizeka@ayosd.sibicomail.com', 0, 'http://slkjfdf.net/ - Uuskore <a href=\"http://slkjfdf.net/\">Opejau</a> obg.atgx.editioninvestments.com.vor.dj http://slkjfdf.net/', '2022-01-31 08:07:48', '2022-01-31 08:07:48'),
(430, 'efxilitegelu', '5', 'itowisra@elesa.sibicomail.com', 0, 'http://slkjfdf.net/ - Odaopohaw <a href=\"http://slkjfdf.net/\">Esedekiq</a> ayj.kxga.editioninvestments.com.rja.nd http://slkjfdf.net/', '2022-01-31 11:06:18', '2022-01-31 11:06:18'),
(431, 'hobixonapi', '5', 'axewofzec@elesa.sibicomail.com', 0, 'http://slkjfdf.net/ - Wuyakh <a href=\"http://slkjfdf.net/\">Idekuxui</a> heq.mjsp.editioninvestments.com.xwi.ep http://slkjfdf.net/', '2022-01-31 12:29:01', '2022-01-31 12:29:01'),
(432, 'BICOlcXRYxbmKyt', '5', 'freedajsleiding955@gmail.com', 0, 'ByDOuwrpLJbEgT', '2022-02-06 02:23:27', '2022-02-06 02:23:27'),
(433, 'pAgMWPInskx', '5', 'freedajsleiding955@gmail.com', 0, 'GUEYSIiNd', '2022-02-06 02:23:27', '2022-02-06 02:23:27'),
(434, 'GckHVFWiA', '5', 'jonalynschismenosshhx06@gmail.com', 0, 'LCtPXihMbUmz', '2022-02-13 15:31:31', '2022-02-13 15:31:31'),
(435, 'FjPMfugLnXlWZ', '5', 'jonalynschismenosshhx06@gmail.com', 0, 'FkKQwZxXharlOz', '2022-02-13 15:31:33', '2022-02-13 15:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `copyright`
--

CREATE TABLE `copyright` (
  `id` int UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copyright`
--

INSERT INTO `copyright` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'This website and its content is copyright of Edition Investment Limited&nbsp;- © Edition Investment Limited&nbsp;2020. All rights reserved. Any redistribution or reproduction of part or all of the contents in any form is prohibited other than the following:<ul><li>you may print or download to a local hard disk extracts for your personal and non-commercial use only</li><li>you may copy the content to individual third parties for their personal use, but only if you acknowledge the website as the source of the material</li></ul>You may not, except with our express written permission, distribute or commercially exploit the content. Nor may you transmit it or store it in any other website or other form of electronic retrieval system.&nbsp;<br>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int UNSIGNED NOT NULL,
  `portfolio_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `portfolio_id`, `image`, `grid`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 'A1', NULL, NULL),
(2, '2', NULL, 'A2', NULL, NULL),
(3, '3', NULL, 'A3', NULL, NULL),
(4, '4', NULL, 'B1', NULL, NULL),
(5, '5', NULL, 'B2', NULL, NULL),
(6, '6', NULL, 'B3', NULL, NULL),
(7, '7', NULL, 'C1', NULL, NULL),
(8, '8', NULL, 'C1', NULL, NULL),
(9, '9', NULL, 'C3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int UNSIGNED NOT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `file`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(1, '2019-06-1004:28:53imagebrighFavicon.png', 'Promo', NULL, '2019-06-10 01:28:53', '2019-06-10 01:28:53'),
(2, '2019-06-1004:28:53imagebrighFavicon.png', 'Promo', 'adadad', '2019-06-10 01:34:16', '2019-06-10 01:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(3, '2022_02_17_051151_create_links_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int UNSIGNED NOT NULL,
  `page_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_heading` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_featured_image_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_featured_image_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_featured_image_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_featured_image_four` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page_name`, `url`, `page_heading`, `page_banner`, `page_content`, `page_featured_image_one`, `page_featured_image_two`, `page_featured_image_three`, `page_featured_image_four`, `page_status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'https://editioninvestments.com/', 'Inspiring <br> and <br>Warm Interiors', '2020-06-2909:10:10imageawesome-modern-kitchen-design-ideas-WebImageonmultiply(5)-min.png', NULL, '2020-06-2813:18:25imageser1-min.png', '2020-08-2718:52:57imageimageOne(2).jpg', '2020-06-2813:18:25imagersz_beckq.png', '2020-06-2813:18:25imageservice-01.jpg', '1', NULL, NULL),
(2, 'About', 'https://editioninvestments.com/abou-us', 'We are creative interior fitting, interior design and <br>decor your space', '2020-06-2813:26:27image13.jpg', 'Over the years we built valuable relationships with architects and interior designers who trust our products to ensure lean costing without compromising quality. Our work is driven by professional and friendly experts who are always on hand to share expert knowledge to ensure customers are making the right decisions.', '2021-08-0206:01:56imageatwork6.jpg', '2020-08-3108:50:40imageDSC_9242SDF-min.jpg', '2020-08-3108:50:40image2020-08-2509_19_14imageEditonStaff.jpg', '2021-07-2109:55:46imageteamphoto2.jpg', '1', NULL, NULL),
(3, 'Services', 'https://editioninvestments.com/product-and-services', 'Product & Services', '2020-06-2813:28:13image13.jpg', NULL, NULL, NULL, NULL, '2020-08-2808:12:39imagefran-hogan-t-Yatdo406c-unsplash.jpg', '1', NULL, NULL),
(4, 'Portfolio', 'https://editioninvestments.com/our-portfolio', 'Our Portfolio', '2020-06-2813:29:17image13.jpg', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(5, 'News', 'https://editioninvestments.com/news-and-blog', 'News & Blog', '2020-06-2813:30:03image13.jpg', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(6, 'Contact Us', 'https://editioninvestments.com/contact-us', 'Contact Us', '2020-06-2813:30:40image13.jpg', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('info@amanivehiclesounds.co.ke', '$2y$10$qHvGjhtsPXo0q42nd9IDoekYVxN1yAdSh3st2OICZTgJ7I7H4fxc6', '2019-07-22 13:23:50'),
('albertmuhatia@gmail.com', '$2y$10$5xkkin8rNYCwiscedVrVJ.lg88ajiZPHez4k9wcmdcTrSmSW8wpIu', '2020-01-13 17:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_five` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `location`, `content`, `slug`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `service`, `client`, `link`, `created_at`, `updated_at`) VALUES
(1, 'House in Forest', 'Upper Hill', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'house-in-forest', '2022-02-1705:48:25imageb1.jpg', NULL, NULL, NULL, NULL, 'Architectural Visualization', 'Sasema Management Company', NULL, '2022-02-17 02:48:25', '2022-02-17 02:48:25'),
(2, 'No 202 Apartment', 'Karuna Road Westlands', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'no-202-apartment', '2022-02-1705:51:25imageb2.jpg', NULL, NULL, NULL, NULL, 'Architectural Visualization', 'Designekta Studios', NULL, '2022-02-17 02:51:25', '2022-02-17 02:51:25'),
(3, 'Living Room Interior Design', 'Ruaka', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'living-room-interior-design', '2022-02-1705:52:18imageb3.jpg', NULL, NULL, NULL, NULL, 'Architectural Visualization', 'Accessories Kenya', NULL, '2022-02-17 02:52:18', '2022-02-17 02:52:18'),
(4, 'Bauhaus Architecture Studio', 'Kilimani', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'bauhaus-architecture-studio', '2022-02-1705:53:50imageb4.jpg', NULL, NULL, NULL, NULL, 'Interior Design', 'Amani Companya Limited', NULL, '2022-02-17 02:53:50', '2022-02-17 02:53:50'),
(5, 'Luthor’s Villa', 'Parklands', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'luthors-villa', '2022-02-1705:54:55imageb5.jpg', NULL, NULL, NULL, NULL, 'Architectural Visualization', 'Standcare Limited', NULL, '2022-02-17 02:54:55', '2022-02-17 02:54:55'),
(6, 'Our Portfolios', 'Valley Road', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'our-portfolios', '2022-02-1705:55:47imageb6.jpg', NULL, NULL, NULL, NULL, 'Architectural Visualization', 'Sparol Solutions', NULL, '2022-02-17 02:55:47', '2022-02-17 02:55:47'),
(7, 'Marton Hotel', 'Lusaka Road', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'marton-hotel', '2022-02-1705:56:31imageb7.jpg', NULL, NULL, NULL, NULL, 'Architectural Visualization', 'Drenla', NULL, '2022-02-17 02:56:31', '2022-02-17 02:56:31'),
(8, 'Living Room Interior Design', 'Ruaka', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'living-room-interior-design', '2022-02-1705:52:18imageb3.jpg', NULL, NULL, NULL, NULL, 'Architectural Visualization', 'Accessories Kenya', NULL, '2022-02-17 02:52:18', '2022-02-17 02:52:18'),
(9, 'Bauhaus Architecture Studio', 'Kilimani', 'Founded in 2007, Sparch is specializing in providing innovative services such as websitFounded in 2007', 'bauhaus-architecture-studio', '2022-02-1705:53:50imageb4.jpg', NULL, NULL, NULL, NULL, 'Interior Design', 'Amani Companya Limited', NULL, '2022-02-17 02:53:50', '2022-02-17 02:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'General Information', 'edition investments limited values privacy of any person or organization, business in nature or otherwise. We are therefore committed to protecting any personal information collected through the www.editioninvestments.com website edition investments limited may from time to time change this information and will inform all interested parties of the changes. <span><br>\r\n</span> <br>', '2019-05-04 02:33:34', '2019-05-04 02:33:34'),
(2, 'Policies', '<br><h4><i>Personal Information Collected</i> \r\n</h4>editioninvestments.com will gather information in the background when any person or legal entity visits the&nbsp; editioninvestments.com website using cookies. This may include IP address, device type, Internet browser type, operating system, location and other device specific infomation. Data collected is for business intelligence meant for enhancing user experience any time a user visits the editioninvestments.com.<h4>&nbsp;<i>Management of personal database</i></h4>\r\n<span> You can choose whether you wish to receive promotional communications from our web site by email using the subscribe form in the footer section of this page. If you receive promotional email or SMS messages from us and would like to opt out, you can request deletion of your email <a target=\"\" rel=\"\">info@</a></span><span><a target=\"\" rel=\"\">editioninvestments.com</a>. </span> <span><br><br>\r\n</span>\r\n<h4><i>Contact</i></h4>&nbsp;You have the right to review the personal data we keep about you. You can request an overview of your personal data that by emailing&nbsp;info@editioninvestments.com with the subject line Request for personal information. To help us prevent fraudulent collection of personal information, please include a scan of your passport or identity card. If you would like us to remove your personal information from our database, please email&nbsp;info@editioninvestments.com with the subject line Request for removal of personal information. Please bear in mind that we may need to retain certain information for legal and/or administrative purposes such as record keeping or to detect fraudulent or criminal activities. <br><br>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT '0',
  `rating` int DEFAULT NULL,
  `product_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seosettings`
--

CREATE TABLE `seosettings` (
  `id` int UNSIGNED NOT NULL,
  `sitename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seosettings`
--

INSERT INTO `seosettings` (`id`, `sitename`, `intro`, `email`, `email_one`, `tagline`, `url`, `location`, `address`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `google`, `welcome`, `created_at`, `updated_at`) VALUES
(1, 'Koriema Butchery', NULL, NULL, NULL, 'No excuses for playing good Music', 'http://koriemabutchery.co.ke/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `label`, `content`, `thumb`, `image_one`, `image_two`, `image_three`, `created_at`, `updated_at`) VALUES
(1, 'Architectural Visualization', 'Kitchen', NULL, '2021-07-1509:37:43imagekitchen6-min.jpg', '2020-08-2710:16:34imageflooring.png', '2020-06-2814:13:39imagekitchen.png', '2021-07-1506:41:11imageflooring3-min.jpg', '2020-06-28 11:08:25', '2020-06-28 11:08:25'),
(2, 'Interior Design', 'Wardrobes', NULL, '2021-08-0207:28:26imagewalkinwardrobe1.jpg', '2021-07-1506:50:46imageatwork1-min.jpeg', '2020-06-2814:15:22imagewardrobes.png', '2021-07-1506:42:58imagestaircase9b-min.jpg', '2020-06-28 11:15:22', '2020-06-28 11:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE `sitesettings` (
  `id` int UNSIGNED NOT NULL,
  `sitename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_honey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_meat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'info@amanivehiclesounds.co.ke',
  `shipping` int NOT NULL DEFAULT '500',
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `till` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `till_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`id`, `sitename`, `logo`, `logo_honey`, `logo_meat`, `favicon`, `email`, `email_one`, `paypal`, `shipping`, `mobile`, `mobile_one`, `mobile_two`, `tagline`, `till`, `till_image`, `url`, `location`, `address`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `google`, `welcome`, `created_at`, `updated_at`) VALUES
(1, 'Drenla Hub', 'Edition 1-01.png', 'Koriema Logos-2(1).png', 'Koriema Logos-1.png', 'index', 'info@drenla.com', 'sales@drenla.com', 'info@amanivehiclesounds.co.ke', 500, '0759 947183', NULL, NULL, NULL, NULL, 'Mpesaa.jpg', 'www.drenla.com', 'Bamburi Road, Off Enterprise Road, Industrial Area.', 'P.O Box 11975-00100, Nairobi, Kenya', 'https://web.facebook.com/drenlahub', 'https://twitter.com/drenlahub', 'https://www.linkedin.com/company/drenla/', 'https://www.instagram.com/drenlahub/', 'https://www.youtube.com/channel/UCdorJ8vefWJxSOSNXVWOSbg', NULL, 'Over the years, we have built valuable relationships with architects and\r\n interior designers who trust our wood products. We have managed to \r\nmaintain quality of our wood products while maintaining a fair price.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `content`, `image`, `action`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'AVS-BANNER-2.png', NULL, '2019-05-03 00:16:30', '2019-05-03 00:16:30'),
(7, NULL, NULL, 'AVS-BANNER-1.png', NULL, '2019-05-29 02:08:04', '2019-05-29 02:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Inroduction', '<i>&nbsp;Last updated: June 13, 2020 </i><br>It is highly reccomended that you read these Terms and Conditions carefully before using the <a href=\"http://www.editioninvestments.com\" target=\"\" rel=\"\">www.editioninvestments.com</a> website operated by Edition Investments Limited. Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service. By accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service. The Terms and Conditions agreement for Edition Investments Limited&nbsp; has been created by <span><a href=\"http://www.editioninvestments.com\" target=\"\" rel=\"\">www.editioninvestments.com</a>.</span> <br><br>', NULL, NULL),
(2, 'Links To Other Web Sites', 'Our Service may contain links to third-party web sites or services that are not owned or controlled by <a href=\"http://www.editioninvestments.co.ke\" target=\"\" rel=\"\">www.editioninvestments.co.ke</a>. <a href=\"http://www.editioninvestments.co.ke\" target=\"\" rel=\"\">www.editioninvestments.co.ke</a> has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that edition investments limited shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services. We strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit. <br><br><br>', NULL, NULL),
(3, 'Changes', 'We reserve the\r\nright, at our sole discretion, to modify or replace these Terms at\r\nany time. If a revision is material we will try to provide at least\r\n30 days notice prior to any new terms taking effect. What constitutes\r\na material change will be determined at our sole discretion.\r\nBy continuing to\r\naccess or use our Service after those revisions become effective, you\r\nagree to be bound by the revised terms. If you do not agree to the\r\nnew terms, please stop using the Service.\r\n\r\n<br>', NULL, NULL),
(4, 'Contact Us', 'If you have any\r\nquestions about these Terms, please contact us through\r\ninfo@editioninvestments.com<br><br>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `company`, `position`, `image`, `service`, `content`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Kipchumba Nicolus', 'Safaricom PLC', 'CEO', '2020-06-2815:15:54image11.jpg', 'Interior Design', 'They never disappoint. Very reliable and convinient. I highly recommend that you try The Edition Investment for the quality you deserve.', NULL, '2020-06-28 12:15:54', '2020-06-28 12:15:54'),
(2, 'Fit Zone', 'Safaricom PLC', 'CEO', '2020-06-2815:15:54image11.jpg', 'Interior Design', 'EIL...Your customer service is awesome as your prices , good quality items- you have new customer! THANKS FOR THE EDITION INVESTMENT LTD', NULL, '2020-06-28 12:15:54', '2020-06-28 12:15:54'),
(3, 'Nyambura Wairimu', 'Safaricom PLC', 'CEO', '2020-06-2815:15:54image11.jpg', 'Interior Design', 'They listen , have such professional finishes and deliver on time . 3 things I was very particular about when sourcing for service', NULL, '2020-06-28 12:15:54', '2020-06-28 12:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_status`
--

CREATE TABLE `transaction_status` (
  `transactionStatusID` int NOT NULL,
  `ReceiptNo` varchar(20) NOT NULL,
  `ConversationID` varchar(50) NOT NULL,
  `FinalisedTime` varchar(25) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `TransactionStatus` varchar(20) NOT NULL,
  `ReasonType` varchar(50) NOT NULL,
  `DebitPartyCharges` varchar(20) NOT NULL,
  `DebitAccountType` varchar(20) NOT NULL,
  `InitiatedTime` varchar(20) NOT NULL,
  `OriginatorConversationID` varchar(20) NOT NULL,
  `CreditPartyName` varchar(55) NOT NULL,
  `DebitPartyName` varchar(50) NOT NULL,
  `updatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_status`
--

INSERT INTO `transaction_status` (`transactionStatusID`, `ReceiptNo`, `ConversationID`, `FinalisedTime`, `Amount`, `TransactionStatus`, `ReasonType`, `DebitPartyCharges`, `DebitAccountType`, `InitiatedTime`, `OriginatorConversationID`, `CreditPartyName`, `DebitPartyName`, `updatedTime`) VALUES
(1, '1111', '111', '11', '11', '11', '11', '111', '111', '11', '11', '11', '1', '2019-12-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@designekta.com', NULL, 1, '$2y$10$TCF8k.IOawELE4X4S3bJVOCuowkd87jJsgrupgYysiMHeR.o6QkRO', NULL, '2022-02-16 15:15:57', '2022-02-16 15:15:57'),
(2, 'User', 'user@designekta.com', NULL, 0, '$2y$10$.To0CtXEm2MocqSnbPCg7O.xg8/AvxA1tkyGC6UCVKggX9ivSxbMe', NULL, '2022-02-16 15:15:57', '2022-02-16 15:15:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copyright`
--
ALTER TABLE `copyright`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seosettings`
--
ALTER TABLE `seosettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_status`
--
ALTER TABLE `transaction_status`
  ADD PRIMARY KEY (`transactionStatusID`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `copyright`
--
ALTER TABLE `copyright`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seosettings`
--
ALTER TABLE `seosettings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sitesettings`
--
ALTER TABLE `sitesettings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction_status`
--
ALTER TABLE `transaction_status`
  MODIFY `transactionStatusID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
