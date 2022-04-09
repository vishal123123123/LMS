
--
-- Database: `lmsdb`
--

DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE IF NOT EXISTS `tbl_login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(70) DEFAULT NULL,
  `user_password` varchar(70) DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `pass_valid_from` date DEFAULT NULL,
  `pass_valid_till` date DEFAULT NULL,
  `user_dvc_imei` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_dvc_macadd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_dvc_notitoken` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for login
--

INSERT INTO `tbl_login` (`login_id`, `user_email`, `user_password`, `ip_address`, `last_login`, `updated_time`, `is_active`, `pass_valid_from`, `pass_valid_till`, `user_dvc_imei`, `user_dvc_macadd`, `user_dvc_notitoken`) VALUES
(1, 'amit@gmail.com', 'amit@123', NULL, NULL, NULL, 0, '2021-03-12', '2021-03-12', NULL, NULL, NULL);

--
-- Table structure for table `tbl_user_creation`
--

DROP TABLE IF EXISTS `tbl_user_details`;
CREATE TABLE IF NOT EXISTS `tbl_user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_mname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_lname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `user_gender` varchar(6) DEFAULT NULL,
  `user_dob` date DEFAULT NULL,
  `user_prim_contact` bigint(10) DEFAULT NULL,
  `user_alt_contact` bigint(10) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_gov_id_number` bigint(15) DEFAULT NULL,
  `user_gov_id_type` varchar(30) DEFAULT NULL,
  `user_gov_id_image` longblob,
  `user_create_date` datetime DEFAULT NULL,
  `user_create_by` datetime DEFAULT NULL,
  `user_updated_by` datetime DEFAULT NULL,
  `user_is_ative` tinyint(1) DEFAULT NULL,
  `address_cur_id` int(11) DEFAULT NULL,
  `address_perm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `address_cur_id` (`address_cur_id`),
  KEY `address_perm_id` (`address_perm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_user_details`
--

INSERT INTO `tbl_user_details` (`user_id`, `user_fname`, `user_mname`, `user_lname`, `user_type`, `user_gender`, `user_dob`, `user_prim_contact`, `user_alt_contact`, `user_email`, `user_gov_id_number`, `user_gov_id_type`, `user_gov_id_image`, `user_create_date`, `user_create_by`, `user_updated_by`, `user_is_ative`, `address_cur_id`, `address_perm_id`) VALUES
(1, 'Amit', 'Kumar', 'Yadav', 'admin', 'Male', '0000-00-00', 90412121234, 92345678912, 'amit@gmail.com', NULL, NULL, NULL, '2020-05-13 00:00:00', '0000-00-00 00:00:00', NULL, 1, 2, 1);




DROP TABLE IF EXISTS `tbl_address_current`;
CREATE TABLE IF NOT EXISTS `tbl_address_current` (
  `address_cur_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(50) DEFAULT NULL,
  `add_area` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `tahsil` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL,
  `pincode` bigint(6) DEFAULT NULL,
  `add_created_date` datetime DEFAULT NULL,
  `add_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`address_cur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_address_current`
--

INSERT INTO `tbl_address_current` (`address_cur_id`, `address`, `add_area`, `landmark`, `state`, `district`, `tahsil`, `village`, `pincode`, `add_created_date`, `add_modified_date`) VALUES
(1, 'magarpatta', 'magarpatta', "gold gym", 'Maharashtra', 'Pune', 'Pune', 'Hadapsar', 411013, '2021-03-12 00:00:00', '2021-03-12 00:00:00');



DROP TABLE IF EXISTS `tbl_address_permanent`;
CREATE TABLE IF NOT EXISTS `tbl_address_permanent` (
  `address_perm_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(50) DEFAULT NULL,
  `add_area` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `tahsil` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL,
  `pincode` bigint(6) DEFAULT NULL,
  `add_created_date` datetime DEFAULT NULL,
  `add_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`address_perm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_address_permanent`
--

INSERT INTO `tbl_address_permanent` (`address_perm_id`, `address`, `add_area`, `landmark`, `state`, `district`, `tahsil`, `village`, `pincode`, `add_created_date`, `add_modified_date`) VALUES
(1, 'Magarpatta', 'magarpatta', 'Near gold gym', 'Maharashtra', 'Pune', 'Pune', 'Hadapsar', 411013, '2021-03-12 00:00:00', '2020-03-12 00:00:00');
