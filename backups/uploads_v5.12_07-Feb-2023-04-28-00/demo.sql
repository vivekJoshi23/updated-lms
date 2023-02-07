#
# TABLE STRUCTURE FOR: addons
#

DROP TABLE IF EXISTS `addons`;

CREATE TABLE `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext,
  `purchase_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: applications
#

DROP TABLE IF EXISTS `applications`;

CREATE TABLE `applications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `applications` (`id`, `user_id`, `address`, `phone`, `message`, `document`, `status`) VALUES (1, 2, '29181 West River Drive\r\nNo adress 2', '1234567891', 'Nope', 'RHpGK9nYDLwjmNE.pdf', 1);


#
# TABLE STRUCTURE FOR: blog_category
#

DROP TABLE IF EXISTS `blog_category`;

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: blog_comments
#

DROP TABLE IF EXISTS `blog_comments`;

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: blogs
#

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: category
#

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (2, '7918e5048f', 'ka karega naam jaan ke ', 0, 'ka-karega-naam-jaan-ke', 1675206000, 1675206000, 'fab fa-500px', '2d73d98c1b4e4815ce094f06fb50ce89.jpg');
INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (3, '275f6d6e9d', 'Web Development', 2, 'web-development', 1675206000, NULL, 'fab fa-leanpub', NULL);


#
# TABLE STRUCTURE FOR: ci_sessions
#

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i4igq7otqj0uac8qto8b9kkgqucn2vs0', '::1', 1675233116, '__ci_last_regenerate|i:1675233115;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h9mv6082p56c2l11uplcds2e9mbi29vd', '::1', 1675233116, '__ci_last_regenerate|i:1675233115;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bd41hphekg3b9bs5u3u3p6haeb7eoehd', '127.0.0.1', 1675236126, '__ci_last_regenerate|i:1675236105;cart_items|a:0:{}language|s:7:\"english\";custom_session_limit|i:1676100126;user_id|s:1:\"1\";role_id|s:1:\"1\";role|s:5:\"Admin\";name|s:11:\"vivek joshi\";is_instructor|s:1:\"1\";flash_message|s:19:\"Welcome vivek joshi\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}admin_login|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gfvpkds4nntf0vmlfnhhmjd8lipgnefp', '127.0.0.1', 1675312211, '__ci_last_regenerate|i:1675236193;cart_items|a:0:{}language|s:7:\"english\";custom_session_limit|i:1675917011;user_id|s:1:\"2\";role_id|s:1:\"2\";role|s:4:\"User\";name|s:11:\"joshi vivek\";is_instructor|s:1:\"1\";flash_message|s:19:\"Welcome joshi vivek\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}user_login|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('97g0bnjjba7q69d8lf01educ2fptcg6c', '::1', 1675315824, '__ci_last_regenerate|i:1675311202;cart_items|a:0:{}language|s:7:\"english\";custom_session_limit|i:1676179824;user_id|s:1:\"1\";role_id|s:1:\"1\";role|s:5:\"Admin\";name|s:11:\"vivek joshi\";is_instructor|s:1:\"1\";admin_login|s:1:\"1\";layout|s:4:\"list\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d48dl4027g313j82s7tqsbn5k7ri6lvg', '::1', 1675740474, '__ci_last_regenerate|i:1675740442;cart_items|a:0:{}language|s:7:\"english\";custom_session_limit|i:1676604472;user_id|s:1:\"1\";role_id|s:1:\"1\";role|s:5:\"Admin\";name|s:11:\"vivek joshi\";is_instructor|s:1:\"1\";admin_login|s:1:\"1\";');


#
# TABLE STRUCTURE FOR: comment
#

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: coupons
#

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: course
#

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `outcomes` longtext COLLATE utf8_unicode_ci,
  `faqs` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci,
  `requirements` longtext COLLATE utf8_unicode_ci,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT '0',
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_top_course` int(11) DEFAULT '0',
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT '0',
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`) VALUES (1, 'How Can You Do The Web Development', 'DNG WEB DEVELOPER is a creditable name in web development and web designing companies in Ahmedabad (India). Our work is commendable and our reach is in global market too. We provide effective website designing solutions to numerous domestic as well as international companies. The services we provide are unmatched and unparalleled. We have dedicated and professional approach towards providing services and our huge clientele base is the paramount review for the services we provide. Our motive is the global growth in the web development domain by providing effective services and solutions. We are a leading web developer in India alloting services in Ahmedabad since 2007.', '<p><b xss=removed>DNG WEB DEVELOPER</b><span xss=removed> is a creditable name in web development and web designing companies in Ahmedabad (India). Our work is commendable and our reach is in global market too. We provide effective website designing solutions to numerous domestic as well as international companies. The services we provide are unmatched and unparalleled. We have dedicated and professional approach towards providing services and our huge clientele base is the paramount review for the services we provide. Our motive is the global growth in the web development domain by providing effective services and solutions. We are a leading </span><strong xss=removed>web developer</strong><span xss=removed> in India alloting services in Ahmedabad since 2007.</span><b xss=removed>DNG WEB DEVELOPER</b><span xss=removed> is a creditable name in web development and web designing companies in Ahmedabad (India). Our work is commendable and our reach is in global market too. We provide effective website designing solutions to numerous domestic as well as international companies. The services we provide are unmatched and unparalleled. We have dedicated and professional approach towards providing services and our huge clientele base is the paramount review for the services we provide. Our motive is the global growth in the web development domain by providing effective services and solutions. We are a leading </span><strong xss=removed>web developer</strong><span xss=removed> in India alloting services in Ahmedabad since 2007.</span><br></p>', '[]', '[]', 'english', 2, 3, '[1]', '[]', '8000', NULL, '0', 'beginner', '1', NULL, '', 1675206000, 1675311297, 'general', 0, 1, 'active', '', '', '', NULL, 0, 1, 1);
INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`) VALUES (2, 'HTML CSS &amp; JAVASCRIPT', 'An overview: HTML provides the basic structure of sites, which is enhanced and modified by other technologies like CSS and JavaScript. CSS is used to control presentation, formatting, and layout. JavaScript is used to control the behavior of different elements.', '<p><span xss=removed>An overview: </span><b xss=removed>HTML provides the basic structure of sites, which is enhanced and modified by other technologies like CSS and JavaScript</b><span xss=removed>. CSS is used to control presentation, formatting, and layout. JavaScript is used to control the behavior of different elements.</span><span xss=removed>An overview: </span><b xss=removed>HTML provides the basic structure of sites, which is enhanced and modified by other technologies like CSS and JavaScript</b><span xss=removed>. CSS is used to control presentation, formatting, and layout. JavaScript is used to control the behavior of different elements.</span><span xss=removed>An overview: </span><b xss=removed>HTML provides the basic structure of sites, which is enhanced and modified by other technologies like CSS and JavaScript</b><span xss=removed>. CSS is used to control presentation, formatting, and layout. JavaScript is used to control the behavior of different elements.</span><br></p>', '[]', '[]', 'english', 2, 3, '[]', '[]', '8000', NULL, '0', 'beginner', '2', NULL, '', 1675292400, NULL, 'general', NULL, 0, 'active', '', '', '', NULL, 0, 0, 2);


#
# TABLE STRUCTURE FOR: currency
#

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT '0',
  `iyzico_supported` int(11) DEFAULT '0',
  `paystack_supported` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);


#
# TABLE STRUCTURE FOR: custom_page
#

DROP TABLE IF EXISTS `custom_page`;

CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`custom_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: enrol
#

DROP TABLE IF EXISTS `enrol`;

CREATE TABLE `enrol` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES (1, 2, 1, 1675292400, NULL);


#
# TABLE STRUCTURE FOR: frontend_settings
#

DROP TABLE IF EXISTS `frontend_settings`;

CREATE TABLE `frontend_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (1, 'banner_title', 'Start learning from best Platform');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (4, 'about_us', '<p></p><h2><span xss=removed>This is about us</span></h2><p><span xss=\"removed\">Welcome to Academy. It will help you to learn in a new ways</span></p>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (13, 'theme', 'default');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (15, 'cookie_status', 'active');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (17, 'banner_image', 'home-banner.jpg');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (18, 'light_logo', '625862f0704f30d1398aa6e22508ee65.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (19, 'dark_logo', '89760519c6f067d438f5f0db374a20ab.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (20, 'small_logo', '8430445454669181ee6a757a6cd3c53a.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (21, 'favicon', '44f5aced9f0489844960c317c3b44685.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (22, 'recaptcha_status', '0');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (23, 'recaptcha_secretkey', 'Valid-secret-key');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (24, 'recaptcha_sitekey', 'Valid-site-key');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (26, 'facebook', 'https://facebook.com');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (27, 'twitter', 'https://twitter.com');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (28, 'linkedin', '');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (31, 'blog_page_title', 'Where possibilities begin');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (33, 'blog_page_banner', 'blog-page.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (34, 'instructors_blog_permission', '0');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (35, 'blog_visibility_on_the_home_page', '1');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=597 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (1, 'english', 'English');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (2, '404_page_not_found', '404 page not found');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (3, '404_page_not_found', '404 page not found');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (4, 'categories', 'Categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (5, 'menu', 'Menu');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (6, 'all_courses', 'All courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (7, 'all_courses', 'All courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (8, 'search_for_courses', 'Search for courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (9, 'total', 'Total');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (10, 'go_to_cart', 'Go to cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (11, 'your_cart_is_empty', 'Your cart is empty');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (12, 'log_in', 'Log in');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (13, 'sign_up', 'Sign up');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (14, 'cookie_policy', 'Cookie policy');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (15, 'accept', 'Accept');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (16, 'oh_snap', 'Oh snap');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (17, 'this_is_not_the_web_page_you_are_looking_for', 'This is not the web page you are looking for');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (18, 'back_to_home', 'Back to home');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (19, 'top_categories', 'Top categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (20, 'useful_links', 'Useful links');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (21, 'blog', 'Blog');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (22, 'help', 'Help');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (23, 'about_us', 'About us');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (24, 'privacy_policy', 'Privacy policy');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (25, 'terms_and_condition', 'Terms and condition');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (26, 'refund_policy', 'Refund policy');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (27, 'all_rights_reserved', 'All rights reserved');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (28, 'step', 'Step');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (29, 'how_would_you_rate_this_course_overall', 'How would you rate this course overall');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (30, 'write_a_public_review', 'Write a public review');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (31, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (32, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', 'What did the instructor do well and what could use some improvement');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (33, 'next', 'Next');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (34, 'previous', 'Previous');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (35, 'publish', 'Publish');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (36, 'are_you_sure', 'Are you sure');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (37, 'yes', 'Yes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (38, 'no', 'No');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (39, 'view_less', 'View less');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (40, 'view_more', 'View more');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (41, 'login', 'Login');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (42, 'provide_your_valid_login_credentials', 'Provide your valid login credentials');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (43, 'email', 'Email');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (44, 'password', 'Password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (45, 'forgot_password', 'Forgot password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (46, 'do_not_have_an_account', 'Do not have an account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (47, 'provide_your_valid_email_address', 'Provide your valid email address');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (48, 'your_email', 'Your email');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (49, 'send_request', 'Send request');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (50, 'want_to_go_back', 'Want to go back');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (51, 'welcome', 'Welcome');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (52, 'dashboard', 'Dashboard');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (53, 'quick_actions', 'Quick actions');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (54, 'create_course', 'Create course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (55, 'add_course', 'Add course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (56, 'add_new_lesson', 'Add new lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (57, 'add_lesson', 'Add lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (58, 'add_student', 'Add student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (59, 'enrol_a_student', 'Enrol a student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (60, 'enrol_student', 'Enrol student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (61, 'help_center', 'Help center');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (62, 'read_documentation', 'Read documentation');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (63, 'watch_video_tutorial', 'Watch video tutorial');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (64, 'get_customer_support', 'Get customer support');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (65, 'order_customization', 'Order customization');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (66, 'request_a_new_feature', 'Request a new feature');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (67, 'browse_addons', 'Browse addons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (68, 'admin', 'Admin');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (69, 'my_account', 'My account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (70, 'settings', 'Settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (71, 'logout', 'Logout');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (72, 'visit_website', 'Visit website');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (73, 'navigation', 'Navigation');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (74, 'courses', 'Courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (75, 'manage_courses', 'Manage courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (76, 'add_new_course', 'Add new course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (77, 'course_category', 'Course category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (78, 'coupons', 'Coupons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (79, 'enrolment', 'Enrolment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (80, 'course_enrollment', 'Course enrollment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (81, 'enrol_history', 'Enrol history');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (82, 'report', 'Report');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (83, 'admin_revenue', 'Admin revenue');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (84, 'instructor_revenue', 'Instructor revenue');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (85, 'purchase_history', 'Purchase history');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (86, 'users', 'Users');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (87, 'admins', 'Admins');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (88, 'manage_admins', 'Manage admins');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (89, 'add_new_admin', 'Add new admin');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (90, 'instructors', 'Instructors');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (91, 'manage_instructors', 'Manage instructors');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (92, 'add_new_instructor', 'Add new instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (93, 'instructor_payout', 'Instructor payout');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (94, 'instructor_settings', 'Instructor settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (95, 'applications', 'Applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (96, 'students', 'Students');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (97, 'manage_students', 'Manage students');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (98, 'add_new_student', 'Add new student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (99, 'message', 'Message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (100, 'all_blogs', 'All blogs');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (101, 'pending_blog', 'Pending blog');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (102, 'blog_category', 'Blog category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (103, 'blog_settings', 'Blog settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (104, 'addons', 'Addons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (105, 'themes', 'Themes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (106, 'system_settings', 'System settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (107, 'website_settings', 'Website settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (108, 'academy_cloud', 'Academy cloud');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (109, 'drip_content_settings', 'Drip content settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (110, 'payment_settings', 'Payment settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (111, 'language_settings', 'Language settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (112, 'smtp_settings', 'Smtp settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (113, 'social_login', 'Social login');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (114, 'custom_page', 'Custom page');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (115, 'data_center', 'Data center');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (116, 'about', 'About');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (117, 'manage_profile', 'Manage profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (118, 'admin_revenue_this_year', 'Admin revenue this year');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (119, 'number_courses', 'Number courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (120, 'number_of_lessons', 'Number of lessons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (121, 'number_of_enrolment', 'Number of enrolment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (122, 'number_of_student', 'Number of student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (123, 'course_overview', 'Course overview');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (124, 'active_courses', 'Active courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (125, 'pending_courses', 'Pending courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (126, 'requested_withdrawal', 'Requested withdrawal');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (127, 'january', 'January');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (128, 'february', 'February');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (129, 'march', 'March');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (130, 'april', 'April');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (131, 'may', 'May');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (132, 'june', 'June');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (133, 'july', 'July');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (134, 'august', 'August');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (135, 'september', 'September');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (136, 'october', 'October');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (137, 'november', 'November');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (138, 'december', 'December');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (139, 'this_year', 'This year');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (140, 'active_course', 'Active course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (141, 'pending_course', 'Pending course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (142, 'heads_up', 'Heads up');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (143, 'congratulations', 'Congratulations');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (144, 'please_fill_all_the_required_fields', 'Please fill all the required fields');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (145, 'close', 'Close');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (146, 'cancel', 'Cancel');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (147, 'continue', 'Continue');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (148, 'ok', 'Ok');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (149, 'success', 'Success');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (150, 'successfully', 'Successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (151, 'div_added_to_bottom_', 'Div added to bottom ');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (152, 'div_has_been_deleted_', 'Div has been deleted ');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (153, 'import_your_data', 'Import your data');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (154, 'choose_your_demo_file', 'Choose your demo file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (155, 'import', 'Import');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (156, 'import_your_language_file', 'Import your language file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (157, 'choose_your_json_file', 'Choose your json file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (158, 'backup_data', 'Backup data');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (159, 'backup_your_current_data', 'Backup your current data');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (160, 'keep_a_backup', 'Keep a backup');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (161, 'no_backup', 'No backup');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (162, 'private_messaging', 'Private messaging');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (163, 'private_message', 'Private message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (164, 'new_message', 'New message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (165, 'choose_an_option_from_the_left_side', 'Choose an option from the left side');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (166, 'home', 'Home');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (167, 'administrator', 'Administrator');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (168, 'start_learning_from_best_platform', 'Start learning from best platform');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (169, 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (170, 'what_do_you_want_to_learn', 'What do you want to learn');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (171, 'search', 'Search');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (172, 'online_courses', 'Online courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (173, 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (174, 'expert_instruction', 'Expert instruction');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (175, 'find_the_right_course_for_you', 'Find the right course for you');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (176, 'lifetime_access', 'Lifetime access');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (177, 'learn_on_your_schedule', 'Learn on your schedule');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (178, 'top_courses', 'Top courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (179, 'top', 'Top');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (180, 'latest_courses', 'Latest courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (181, 'join_now_to_start_learning', 'Join now to start learning');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (182, 'get_started', 'Get started');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (183, 'become_a_new_instructor', 'Become a new instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (184, 'join_now', 'Join now');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (185, 'add_to_cart', 'Add to cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (186, 'added_to_cart', 'Added to cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (187, 'frontend_settings', 'Frontend settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (188, 'banner_title', 'Banner title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (189, 'banner_sub_title', 'Banner sub title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (190, 'cookie_status', 'Cookie status');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (191, 'active', 'Active');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (192, 'inactive', 'Inactive');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (193, 'cookie_note', 'Cookie note');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (194, 'facebook', 'Facebook');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (195, 'twitter', 'Twitter');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (196, 'linkedin', 'Linkedin');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (197, 'update_settings', 'Update settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (198, 'recaptcha_settings', 'Recaptcha settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (199, 'recaptcha_status', 'Recaptcha status');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (200, 'recaptcha_sitekey', 'Recaptcha sitekey');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (201, 'recaptcha_secretkey', 'Recaptcha secretkey');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (202, 'update_recaptcha_settings', 'Update recaptcha settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (203, 'update_banner_image', 'Update banner image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (204, 'upload_banner_image', 'Upload banner image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (205, 'update_light_logo', 'Update light logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (206, 'upload_light_logo', 'Upload light logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (207, 'update_dark_logo', 'Update dark logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (208, 'upload_dark_logo', 'Upload dark logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (209, 'update_small_logo', 'Update small logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (210, 'upload_small_logo', 'Upload small logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (211, 'update_favicon', 'Update favicon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (212, 'upload_favicon', 'Upload favicon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (213, 'manage_your_drip_content_settings', 'Manage your drip content settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (214, 'lesson_completion_role', 'Lesson completion role');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (215, 'video_percentage_wise', 'Video percentage wise');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (216, 'video_duration_wise', 'Video duration wise');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (217, 'minimum_duration_to_watch', 'Minimum duration to watch');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (218, 'minimum_percentage_to_watch', 'Minimum percentage to watch');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (219, 'message_for_locked_lesson', 'Message for locked lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (220, 'save_changes', 'Save changes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (221, 'attention', 'Attention');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (222, 'the_auto_checkmark_is_only_applicable_for_video_lessons', 'The auto checkmark is only applicable for video lessons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (223, 'learn_more', 'Learn more');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (224, 'protocol', 'Protocol');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (225, 'smtp_crypto', 'Smtp crypto');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (226, 'smtp_host', 'Smtp host');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (227, 'smtp_port', 'Smtp port');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (228, 'smtp_username', 'Smtp username');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (229, 'smtp_password', 'Smtp password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (230, 'save', 'Save');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (231, 'smtp_settings_updated_successfully', 'Smtp settings updated successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (232, 'sign_up_and_start_learning', 'Sign up and start learning');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (233, 'first_name', 'First name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (234, 'last_name', 'Last name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (235, 'already_have_an_account', 'Already have an account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (236, 'your_registration_has_been_successfully_done', 'Your registration has been successfully done');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (237, 'instructor', 'Instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (238, 'my_courses', 'My courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (239, 'go_to_wishlist', 'Go to wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (240, 'your_wishlist_is_empty', 'Your wishlist is empty');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (241, 'explore_courses', 'Explore courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (242, 'hi', 'Hi');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (243, 'welcome_back', 'Welcome back');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (244, 'my_wishlist', 'My wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (245, 'my_messages', 'My messages');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (246, 'user_profile', 'User profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (247, 'log_out', 'Log out');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (248, 'become_an_instructor', 'Become an instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (249, 'student', 'Student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (250, 'instructor_application_form', 'Instructor application form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (251, 'name', 'Name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (252, 'your_name_will_go_here', 'Your name will go here');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (253, 'your_name_is_required', 'Your name is required');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (254, 'email_address', 'Email address');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (255, 'your_email_will_go_here', 'Your email will go here');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (256, 'your_email_is_required', 'Your email is required');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (257, 'address', 'Address');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (258, 'your_address_is_required', 'Your address is required');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (259, 'phone_number', 'Phone number');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (260, 'your_phone_number_will_go_here', 'Your phone number will go here');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (261, 'your_phone_number_is_required', 'Your phone number is required');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (262, 'any_message', 'Any message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (263, 'if_any_message_you_want_to_share', 'If any message you want to share');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (264, 'document', 'Document');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (265, 'if_any_document_you_want_to_share', 'If any document you want to share');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (266, 'are_accepted', 'Are accepted');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (267, 'apply', 'Apply');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (268, 'application_submitted_successfully', 'Application submitted successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (269, 'your_application', 'Your application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (270, 'details', 'Details');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (271, 'status', 'Status');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (272, 'applicant_details', 'Applicant details');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (273, 'application_details', 'Application details');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (274, 'download', 'Download');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (275, 'pending', 'Pending');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (276, 'applicant', 'Applicant');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (277, 'instructor_application', 'Instructor application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (278, 'instructor_applications', 'Instructor applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (279, 'list_of_applications', 'List of applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (280, 'pending_applications', 'Pending applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (281, 'approved_applications', 'Approved applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (282, 'action', 'Action');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (283, 'approve', 'Approve');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (284, 'delete', 'Delete');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (285, 'application_approved_successfully', 'Application approved successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (286, 'approved', 'Approved');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (287, 'free_courses', 'Free courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (288, 'paid_courses', 'Paid courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (289, 'course_list', 'Course list');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (290, 'all', 'All');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (291, 'private', 'Private');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (292, 'price', 'Price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (293, 'free', 'Free');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (294, 'paid', 'Paid');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (295, 'filter', 'Filter');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (296, 'title', 'Title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (297, 'category', 'Category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (298, 'lesson_and_section', 'Lesson and section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (299, 'enrolled_student', 'Enrolled student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (300, 'actions', 'Actions');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (301, 'website_name', 'Website name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (302, 'website_title', 'Website title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (303, 'website_keywords', 'Website keywords');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (304, 'website_description', 'Website description');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (305, 'author', 'Author');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (306, 'slogan', 'Slogan');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (307, 'system_email', 'System email');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (308, 'phone', 'Phone');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (309, 'youtube_api_key', 'Youtube api key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (310, 'get_youtube_api_key', 'Get youtube api key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (311, 'vimeo_api_key', 'Vimeo api key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (312, 'get_vimeo_api_key', 'Get vimeo api key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (313, 'purchase_code', 'Purchase code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (314, 'system_language', 'System language');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (315, 'student_email_verification', 'Student email verification');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (316, 'enable', 'Enable');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (317, 'disable', 'Disable');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (318, 'course_accessibility', 'Course accessibility');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (319, 'publicly', 'Publicly');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (320, 'only_logged_in_users', 'Only logged in users');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (321, 'number_of_authorized_devices', 'Number of authorized devices');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (322, 'how_many_devices_do_you_want_to_allow_for_logging_in_using_a_single_account', 'How many devices do you want to allow for logging in using a single account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (323, 'course_selling_tax', 'Course selling tax');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (324, 'enter_0_if_you_want_to_disable_the_tax_option', 'Enter 0 if you want to disable the tax option');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (325, 'google_analytics_id', 'Google analytics id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (326, 'keep_it_blank_if_you_want_to_disable_it', 'Keep it blank if you want to disable it');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (327, 'meta_pixel_id', 'Meta pixel id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (328, 'footer_text', 'Footer text');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (329, 'footer_link', 'Footer link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (330, 'update_product', 'Update product');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (331, 'file', 'File');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (332, 'update', 'Update');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (333, 'system_settings_updated', 'System settings updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (334, 'course_adding_form', 'Course adding form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (335, 'back_to_course_list', 'Back to course list');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (336, 'basic', 'Basic');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (337, 'info', 'Info');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (338, 'pricing', 'Pricing');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (339, 'media', 'Media');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (340, 'seo', 'Seo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (341, 'finish', 'Finish');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (342, 'course_title', 'Course title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (343, 'enter_course_title', 'Enter course title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (344, 'short_description', 'Short description');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (345, 'description', 'Description');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (346, 'select_a_category', 'Select a category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (347, 'select_sub_category', 'Select sub category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (348, 'level', 'Level');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (349, 'beginner', 'Beginner');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (350, 'advanced', 'Advanced');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (351, 'intermediate', 'Intermediate');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (352, 'language_made_in', 'Language made in');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (353, 'enable_drip_content', 'Enable drip content');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (354, 'keep_it_as_a_private_course', 'Keep it as a private course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (355, 'check_if_this_course_is_top_course', 'Check if this course is top course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (356, 'course_faq', 'Course faq');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (357, 'faq_question', 'Faq question');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (358, 'answer', 'Answer');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (359, 'requirements', 'Requirements');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (360, 'provide_requirements', 'Provide requirements');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (361, 'outcomes', 'Outcomes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (362, 'provide_outcomes', 'Provide outcomes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (363, 'check_if_this_is_a_free_course', 'Check if this is a free course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (364, 'course_price', 'Course price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (365, 'enter_course_course_price', 'Enter course course price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (366, 'check_if_this_course_has_discount', 'Check if this course has discount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (367, 'discounted_price', 'Discounted price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (368, 'this_course_has', 'This course has');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (369, 'discount', 'Discount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (370, 'course_overview_provider', 'Course overview provider');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (371, 'youtube', 'Youtube');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (372, 'vimeo', 'Vimeo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (373, 'html5', 'Html5');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (374, 'course_overview_url', 'Course overview url');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (375, 'course_thumbnail', 'Course thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (376, 'meta_keywords', 'Meta keywords');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (377, 'write_a_keyword_and_then_press_enter_button', 'Write a keyword and then press enter button');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (378, 'meta_description', 'Meta description');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (379, 'thank_you', 'Thank you');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (380, 'you_are_just_one_click_away', 'You are just one click away');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (381, 'submit', 'Submit');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (382, 'add_new_category', 'Add new category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (383, 'add_category', 'Add category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (384, 'category_add_form', 'Category add form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (385, 'category_code', 'Category code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (386, 'category_title', 'Category title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (387, 'parent', 'Parent');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (388, 'none', 'None');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (389, 'select_none_to_create_a_parent_category', 'Select none to create a parent category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (390, 'icon_picker', 'Icon picker');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (391, 'category_thumbnail', 'Category thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (392, 'the_image_size_should_be', 'The image size should be');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (393, 'choose_thumbnail', 'Choose thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (394, 'data_added_successfully', 'Data added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (395, 'sub_categories', 'Sub categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (396, 'edit', 'Edit');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (397, 'edit_category', 'Edit category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (398, 'update_category', 'Update category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (399, 'update_category_form', 'Update category form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (400, 'data_deleted', 'Data deleted');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (401, 'course_has_been_added_successfully', 'Course has been added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (402, 'edit_course', 'Edit course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (403, 'course_manager', 'Course manager');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (404, 'view_on_frontend', 'View on frontend');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (405, 'curriculum', 'Curriculum');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (406, 'add_new_section', 'Add new section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (407, 'add_section', 'Add section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (408, 'instructor_of_this_course', 'Instructor of this course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (409, 'hours', 'Hours');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (410, 'reviews', 'Reviews');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (411, 'compare', 'Compare');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (412, 'lectures', 'Lectures');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (413, 'last_updated', 'Last updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (414, 'lessons', 'Lessons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (415, 'shopping_cart', 'Shopping cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (416, 'courses_in_cart', 'Courses in cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (417, 'remove', 'Remove');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (418, 'tax_included', 'Tax included');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (419, 'apply_coupon_code', 'Apply coupon code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (420, 'checkout', 'Checkout');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (421, 'there_are_no_courses_on_your_cart', 'There are no courses on your cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (422, 'pay_for_purchasing_course', 'Pay for purchasing course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (423, 'payment', 'Payment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (424, 'make_payment', 'Make payment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (425, 'select_payment_gateway', 'Select payment gateway');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (426, 'by', 'By');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (427, 'pay_with_stripe', 'Pay with stripe');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (428, 'please_wait', 'Please wait');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (429, 'setup_payment_informations', 'Setup payment informations');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (430, 'system_currency_settings', 'System currency settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (431, 'system_currency', 'System currency');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (432, 'select_system_currency', 'Select system currency');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (433, 'currency_position', 'Currency position');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (434, 'left', 'Left');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (435, 'right', 'Right');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (436, 'left_with_a_space', 'Left with a space');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (437, 'right_with_a_space', 'Right with a space');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (438, 'update_system_currency', 'Update system currency');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (439, 'want_to_keep_test_mode_enabled', 'Want to keep test mode enabled');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (440, 'select_currency', 'Select currency');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (441, 'sandbox_client_id', 'Sandbox client id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (442, 'sandbox_secret_key', 'Sandbox secret key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (443, 'production_client_id', 'Production client id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (444, 'production_secret_key', 'Production secret key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (445, 'public_key', 'Public key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (446, 'secret_key', 'Secret key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (447, 'public_live_key', 'Public live key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (448, 'secret_live_key', 'Secret live key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (449, 'key_id', 'Key id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (450, 'theme_color', 'Theme color');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (451, 'ensure_that_the_system_currency_and_all_active_payment_gateway_currencies_are_same', 'Ensure that the system currency and all active payment gateway currencies are same');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (452, 'payment_settings_updated_successfully', 'Payment settings updated successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (453, 'mark_as_pending', 'Mark as pending');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (454, 'section_and_lesson', 'Section and lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (455, 'edit_this_course', 'Edit this course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (456, 'view_course_on_frontend', 'View course on frontend');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (457, 'go_to_course_playing_page', 'Go to course playing page');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (458, 'total_section', 'Total section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (459, 'total_lesson', 'Total lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (460, 'total_enrolment', 'Total enrolment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (461, 'sales_report', 'Sales report');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (462, 'payout_report', 'Payout report');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (463, 'payout_settings', 'Payout settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (464, 'number_of_courses', 'Number of courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (465, 'pending_balance', 'Pending balance');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (466, 'requested_withdrawal_amount', 'Requested withdrawal amount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (467, 'draft_courses', 'Draft courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (468, 'no_data_found', 'No data found');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (469, 'course_added_successfully', 'Course added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (470, 'please_wait_untill_admin_approves_it', 'Please wait untill admin approves it');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (471, 'favicon_updated', 'Favicon updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (472, 'logo_updated', 'Logo updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (473, 'mark_as_active', 'Mark as active');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (474, 'course', 'Course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (475, 'ratings', 'Ratings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (476, 'students_enrolled', 'Students enrolled');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (477, 'created_by', 'Created by');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (478, 'curriculum_for_this_course', 'Curriculum for this course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (479, 'other_related_courses', 'Other related courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (480, 'updated', 'Updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (481, 'about_instructor', 'About instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (482, 'student_feedback', 'Student feedback');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (483, 'add_to_wishlist', 'Add to wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (484, 'buy_now', 'Buy now');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (485, 'includes', 'Includes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (486, 'on_demand_videos', 'On demand videos');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (487, 'access_on_mobile_and_tv', 'Access on mobile and tv');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (488, 'full_lifetime_access', 'Full lifetime access');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (489, 'compare_this_course_with_other', 'Compare this course with other');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (490, 'added_to_wishlist', 'Added to wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (491, 'payment_successfully_done', 'Payment successfully done');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (492, 'payment_not_configured_yet', 'Payment not configured yet');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (493, 'already_purchased', 'Already purchased');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (494, 'featured_instructor', 'Featured instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (495, 'wishlists', 'Wishlists');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (496, 'messages', 'Messages');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (497, 'profile', 'Profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (498, 'reset', 'Reset');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (499, 'search_my_courses', 'Search my courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (500, 'completed', 'Completed');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (501, 'edit_rating', 'Edit rating');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (502, 'cancel_rating', 'Cancel rating');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (503, 'start_lesson', 'Start lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (504, 'out_of', 'Out of');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (505, 'write_your_review_here', 'Write your review here');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (506, 'publish_rating', 'Publish rating');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (507, 'course_updated_successfully', 'Course updated successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (508, 'all_category', 'All category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (509, 'language', 'Language');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (510, 'showing', 'Showing');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (511, 'of', 'Of');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (512, 'results', 'Results');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (513, 'sort_by', 'Sort by');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (514, 'newest', 'Newest');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (515, 'highest_rating', 'Highest rating');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (516, 'discounted', 'Discounted');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (517, 'lowest_price', 'Lowest price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (518, 'highest_price', 'Highest price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (519, 'show_more', 'Show more');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (520, 'show_less', 'Show less');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (521, 'provide_a_section_name', 'Provide a section name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (522, 'section_has_been_added_successfully', 'Section has been added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (523, 'add_new_quiz', 'Add new quiz');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (524, 'add_quiz', 'Add quiz');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (525, 'sort_sections', 'Sort sections');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (526, 'section', 'Section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (527, 'sort_lessons', 'Sort lessons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (528, 'sort_lesson', 'Sort lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (529, 'update_section', 'Update section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (530, 'edit_section', 'Edit section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (531, 'delete_section', 'Delete section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (532, 'select_lesson_type', 'Select lesson type');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (533, 'video', 'Video');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (534, 'secured', 'Secured');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (535, 'video_file', 'Video file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (536, 'video_url', 'Video url');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (537, 'google_drive_video', 'Google drive video');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (538, 'document_file', 'Document file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (539, 'text', 'Text');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (540, 'image_file', 'Image file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (541, 'iframe_embed', 'Iframe embed');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (542, 'please_select_a_course', 'Please select a course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (543, 'lesson_type', 'Lesson type');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (544, 'change', 'Change');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (545, 'this_video_will_be_shown_on_web_application', 'This video will be shown on web application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (546, 'duration', 'Duration');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (547, 'thumbnail', 'Thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (548, 'caption', 'Caption');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (549, '.vtt', '.vtt');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (550, 'choose_your_caption_file', 'Choose your caption file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (551, 'lesson_provider', 'Lesson provider');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (552, 'for_mobile_application', 'For mobile application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (553, 'only', 'Only');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (554, 'type_video_is_acceptable_for_mobile_application', 'Type video is acceptable for mobile application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (555, 'summary', 'Summary');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (556, 'do_you_want_to_keep_it_free_as_a_preview_lesson', 'Do you want to keep it free as a preview lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (557, 'mark_as_free_lesson', 'Mark as free lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (558, 'uploading', 'Uploading');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (559, 'analyzing_the_url', 'Analyzing the url');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (560, 'invalid_url', 'Invalid url');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (561, 'your_video_source_has_to_be_either_youtube_or_vimeo', 'Your video source has to be either youtube or vimeo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (562, 'lesson_has_been_added_successfully', 'Lesson has been added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (563, 'update_lesson', 'Update lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (564, 'lesson', 'Lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (565, 'basic_info', 'Basic info');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (566, 'facebook_link', 'Facebook link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (567, 'twitter_link', 'Twitter link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (568, 'linkedin_link', 'Linkedin link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (569, 'a_short_title_about_yourself', 'A short title about yourself');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (570, 'skills', 'Skills');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (571, 'write_your_skill_and_click_the_enter_button', 'Write your skill and click the enter button');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (572, 'biography', 'Biography');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (573, 'photo', 'Photo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (574, 'the_image_size_should_be_any_square_image', 'The image size should be any square image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (575, 'choose_file', 'Choose file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (576, 'update_profile', 'Update profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (577, 'current_password', 'Current password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (578, 'new_password', 'New password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (579, 'confirm_new_password', 'Confirm new password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (580, 'update_password', 'Update password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (581, 'user_update_successfully', 'User update successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (582, 'social_login_configuration', 'Social login configuration');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (583, 'issue', 'Issue');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (584, 'you_must_use_an_ssl_supported_server_to_use_the_facebook_login_feature', 'You must use an ssl supported server to use the facebook login feature');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (585, 'facebook_login', 'Facebook login');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (586, 'facebook_app_creation_instruction', 'Facebook app creation instruction');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (587, 'facebook_app_id', 'Facebook app id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (588, 'facebook_app_secret', 'Facebook app secret');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (589, 'please_select_your_zip_file', 'Please select your zip file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (590, 'your_backup_file_has_been_stored_successfully', 'Your backup file has been stored successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (591, 'export', 'Export');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (592, '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (593, 'mail_subject', 'Mail subject');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (594, 'mail_body', 'Mail body');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (595, 'send_mail', 'Send mail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (596, 'course_status_updated', 'Course status updated');


#
# TABLE STRUCTURE FOR: lesson
#

DROP TABLE IF EXISTS `lesson`;

CREATE TABLE `lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8_unicode_ci,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `is_free` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `video_type_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (1, 'How To Handle A Fake Experience', '00:15:11', 1, 1, 'YouTube', NULL, 'https://youtu.be/s7zOcKjkL7k', 1675292400, NULL, 'video', NULL, 'url', NULL, '', 0, 0, 'html5', 'https://www.html5rocks.com/en/tutorials/video/basics/devstories.webm', '00:01:10');


#
# TABLE STRUCTURE FOR: log
#

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: message_thread
#

DROP TABLE IF EXISTS `message_thread`;

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: payment
#

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT '0',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `course_id`, `amount`, `date_added`, `last_modified`, `admin_revenue`, `instructor_revenue`, `tax`, `instructor_payment_status`, `transaction_id`, `session_id`, `coupon`) VALUES (1, 2, 'paypal', 1, '9999', 1675292400, NULL, '9999', '0', '999.9', 1, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: payment_gateways
#

DROP TABLE IF EXISTS `payment_gateways`;

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keys` text COLLATE utf8_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES (1, 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AUtjdhQm_tazGg4I5jFfFdNXcRmkOPgEsH2owsHzThUB-Mvtc6jYcJ6mBErYKT_J1GbeQ7T7-F1cMrqd\",\"sandbox_secret_key\":\"EIVLWc3cxF7ioRvzyVUxoW-bBP_OIkPpdrz6V3z5c0qO-42CzHafgYAQ2td-RF5U4KgWWxlFxNaVcJun\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', 1, 1, 0, '', '1675236452');
INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES (2, 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_51M2qXsSHVC4ngsfvsPbnZfmsDG98g5HNTpzaVFLT7FDww9pDvEd9XIinYGr1vajGw6vbdVBPPdDILlJiSghfGXud00BtHBJ38z\",\"secret_key\":\"sk_test_51M2qXsSHVC4ngsfv2Uy9jDN8LDl8XLMHs9wn6rlnivTb4XnG5KtaIyTY6AXXBdKjBXB0COukNwD41nV4436JyrXM00hedmyX6I\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', 1, 1, 0, '', '1675236306');
INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES (3, 'razorpay', 'USD', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#ff8000\"}', 'Payment_model', 1, 0, 0, '', '1675236476');


#
# TABLE STRUCTURE FOR: payout
#

DROP TABLE IF EXISTS `payout`;

CREATE TABLE `payout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: permissions
#

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: question
#

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `correct_answers` longtext COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: quiz_results
#

DROP TABLE IF EXISTS `quiz_results`;

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_submitted` int(11) NOT NULL,
  PRIMARY KEY (`quiz_result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: rating
#

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: role
#

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES (1, 'Admin', 1234567890, 1234567890);
INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES (2, 'User', 1234567890, 1234567890);


#
# TABLE STRUCTURE FOR: section
#

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES (1, 'Step:1', 1, 0);


#
# TABLE STRUCTURE FOR: settings
#

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `settings` (`id`, `key`, `value`) VALUES (1, 'language', 'english');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (2, 'system_name', 'Learning Management System ');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (3, 'system_title', 'Academy Learning Club');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (4, 'system_email', 'academy@example.com');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (5, 'address', 'Vadodra,Gujarat');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (6, 'phone', '+143-52-9933631');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (7, 'purchase_code', 'your-purchase-code');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (10, 'youtube_api_key', 'AIzaSyDm4DCuC8GbMhvcFyIoQvg11zQo5p6L7tU');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (11, 'vimeo_api_key', '39258384b69994dba483c10286825b5c');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (12, 'slogan', 'A course based video CMS');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (13, 'text_align', NULL);
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (14, 'allow_instructor', '1');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (15, 'instructor_revenue', '70');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (16, 'system_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (17, 'paypal_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (18, 'stripe_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (19, 'author', 'Vivek Joshi');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (20, 'currency_position', 'left');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (22, 'website_keywords', 'LMS,Learning Management System,.item,Academy LMS');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (23, 'footer_text', '');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (24, 'footer_link', 'Bambu.com');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (25, 'protocol', 'smtp');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (26, 'smtp_host', 'smtp.gmail.com');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (27, 'smtp_port', '465');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (28, 'smtp_user', 'vivekjoshiv04@gmail.com');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (29, 'smtp_pass', 'gtblkmotnztumodc');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (30, 'version', '5.12');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (31, 'student_email_verification', 'disable');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (34, 'razorpay_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (35, 'fb_app_id', 'facebook-app-id');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (36, 'fb_app_secret', 'facebook-app-secret-key');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (37, 'fb_social_login', '0');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (38, 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":10,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (41, 'course_accessibility', 'publicly');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (42, 'smtp_crypto', 'tls');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (43, 'allowed_device_number_of_loging', '10');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (48, 'course_selling_tax', '10');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (50, 'ccavenue_currency', 'INR');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (52, 'iyzico_currency', 'TRY');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (54, 'paystack_currency', 'NGN');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (57, 'google_analytics_id', '');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (58, 'meta_pixel_id', '');


#
# TABLE STRUCTURE FOR: tag
#

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skills` longtext COLLATE utf8_unicode_ci NOT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci,
  `biography` longtext COLLATE utf8_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `payment_keys` longtext COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessions` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES (1, 'vivek', 'joshi', 'vivekjoshiv04@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 1, NULL, 1675312073, NULL, '', '', NULL, 1, 1, '90daf85dd2f293f608f292efa1abff80', '');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES (2, 'joshi', 'vivek', 'vivekjoshiv04@hotmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1675233644, NULL, '[]', NULL, '[]', '177804', 1, 1, NULL, '[\"gfvpkds4nntf0vmlfnhhmjd8lipgnefp\"]');


#
# TABLE STRUCTURE FOR: watch_histories
#

DROP TABLE IF EXISTS `watch_histories`;

CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext COLLATE utf8_unicode_ci NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`watch_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: watched_duration
#

DROP TABLE IF EXISTS `watched_duration`;

CREATE TABLE `watched_duration` (
  `watched_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`watched_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

