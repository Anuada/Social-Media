-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 05:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elevateher`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountId` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` enum('woman','admin','lawyer','counselor','livelihood_provider') NOT NULL,
  `recovery_token` varchar(100) DEFAULT NULL,
  `verify_token` varchar(100) DEFAULT NULL,
  `isVerify` tinyint(4) NOT NULL,
  `isLogin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountId`, `email`, `username`, `password`, `user_type`, `recovery_token`, `verify_token`, `isVerify`, `isLogin`) VALUES
('00b7c14e-8ea0-4ddb-8567-967183cb02d7', 'ladyglitter@mailinator.com', 'ladyglitter', '$2y$10$GX9nf5fJhmLAH.iB/vRq3O8XCQF9EuLI0n7NNzWlKBbc0oe7F6Nq.', 'woman', NULL, '', 1, 1),
('01724280-f007-4d10-8c82-d3b8bab99ee7', 'ericson@mailinator.com', 'Ericrocroc', '$2y$10$RK3y5xJYOQPAR.A2Oe7PqOSbPAh9uDjzj.RsbN6K42RzTcn4D7YLO', 'livelihood_provider', '', '', 1, 1),
('07f219e0-9973-44bd-a9f0-c9bd4d029142', 'poconglesly21@gmail.com', 'poconglesly21', '$2y$10$c6dbpu6eObnkN9qqqpz3re8aVSJIpwVYQI9JfGPguopylqFlvVca.', 'admin', '', '', 1, 0),
('129ae133-870b-465d-aefd-c0028e2f78da', 'jargondee@mailinator.com', 'jargondee', '$2y$10$cdLGN3Q73Enplvg0DfABWOBJoAhyeGXyuZGgpbBfSq7seqlhQXgNW', 'livelihood_provider', NULL, '', 1, 0),
('2d4a4038-0fda-4bde-a1f6-0bcc67700aee', 'bookhubnavos@gmail.com', 'angelbaby1995', '$2y$10$eXRZ2Qwr5UMiS0PPJAa3tOk0uzwb9Co484lArf4xtyafYEU2lnQJu', 'lawyer', '', '', 1, 0),
('33fd7c72-f1b0-4216-b4e8-5d2c3f5f26c9', 'jadeeydon@gmail.com', 'jadeeydon', '$2y$10$7ANOJIP0TU8K1oUdVQgCKOVYbDQZuVGSVf9xwa.eavxAF8rDI99n6', 'admin', '', '', 1, 0),
('3ea0fc83-9747-4a66-87ab-8e1d15c63d51', 'taylorgrande@mailinator.com', 'taylorgrande', '$2y$10$XiCZ3TQ7fIpuDQsUrAQ4de7hP.ZNXTkCmXGwPH9UdkIEOfY/kHjKq', 'counselor', NULL, '', 1, 1),
('535d6bbb-d0e4-474a-b0d0-8e3056e2a4ad', 'Daryl@mailinator.com', 'Daryl', '$2y$10$Ak8bVSzvcaluYyz7tsOLFuDocLmpp/zFLExYpdg/A/688fwS.nPim', 'lawyer', NULL, '', 1, 0),
('7180e242-4047-4cdc-950f-5eebaf70b2cd', 'bethbeth@mailinator.com', 'we', '$2y$10$LV5hkaeLJApP1c4mFKc.dOSZwlzeG6U6XWnllf90cfIpoxo8vh582', 'lawyer', NULL, '', 1, 1),
('79366383-f21d-4369-ba94-6f818c926352', 'ladyglittersmackles@gmail.com', 'queen1982', '$2y$10$BuTQvXWHuPcOrxHlWXSNEuki121TTCsESwX7HTC4YxNZ8pmrC1cdq', 'woman', '', '', 1, 0),
('7c3a50c2-2c66-41ed-aef0-edb542be9202', 'erneloyd@gmail.com', 'Garry', '$2y$10$Gd5496fEycXK8pQK2vQJiONlNb4OwcLR1JVwWGQFzW/MuKRNBSD8W', 'lawyer', '', '57010b4f-1a86-436c-90de-53fae4cd01bd', 0, 0),
('7d10161f-005e-474b-b076-6eec95e58b1b', 'Torya@mailinator.com', 'Torya', '$2y$10$aSILrFuvuq6jKCe30Va.W.0HwMbZtpJ8.r6J0xGfbZy20PvivBC.G', 'counselor', NULL, '', 1, 0),
('7d38935a-a860-4c53-9b07-101844b544f7', 'Mika@mailinator.com', 'Mika', '$2y$10$SvlQfigAs42NcQiaYpxFTeUuFrSriUPe7KDvUaO0F06uj13UiYC72', 'lawyer', NULL, '', 1, 0),
('7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'ericsonanuada18@mailinator.com', 'moonlight_butera', '$2y$10$drOB.U98IdSFRptyqB7BEOJB9bHkMyilJrdhc2Zz3ps0iNdQvnrWG', 'woman', NULL, '', 1, 0),
('7ea7162a-7291-4251-8ab4-1dfb4a516f7f', 'pirate_1218@mailinator.com', 'pirate_1218', '$2y$10$8BXiop8nubu5BeBZtyWCeuGndWhdfU1fv0JjuQqanhinsQ9CG2lWm', 'lawyer', '', '', 1, 0),
('a6f3b99c-e83f-4d33-a1e0-e316829294b8', 'daryl.anuada@mailinator.com', 'daryl.anuada', '$2y$10$GOC8WnAj4D9bBYeWIEKaiunu2388GvfyvjxWi9ih63ChT9WqqBY8K', 'livelihood_provider', NULL, '', 1, 0),
('b8306bae-434b-4f79-989a-8aaae37b6687', 'Lyka@mailinator.com', 'Aryana', '$2y$10$.VTLPsP1szU.oHtUe0mk8eDjSC4i.zdBdWMrvfP5.r5kBpyU6AVoy', 'woman', NULL, '', 1, 1),
('dd763b6e-53e3-44d5-b522-a55d34a1afbd', 'Quibol@mailinator.com', 'Quibol.Daryl', '$2y$10$KKJNqjmKlKnEizZEGCin4OBbIHLrf2EWrMK5SEUe4IaNp19HZoVhW', 'livelihood_provider', NULL, '', 1, 0),
('e52a7a6d-cd99-4b1e-b7c4-5ebc6911ca2b', 'dominicnavos@gmail.com', 'minic2002', '$2y$10$ITKFr1Rm/rokbFeHSAmKmOCWrRJ/gf1W9lLpgzkxF/m6rAwEZPaSO', 'admin', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `accountId` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `profileImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`accountId`, `fname`, `lname`, `address`, `DOB`, `contactNo`, `profileImage`) VALUES
('07f219e0-9973-44bd-a9f0-c9bd4d029142', 'Lesly Ann', 'Pocong', 'Brgy. Kalunasan, Cebu City', '1999-12-26', '09638743328', ''),
('33fd7c72-f1b0-4216-b4e8-5d2c3f5f26c9', 'Ralph Jade', 'Engis', '28-C P.Del Rosario St. Cebu City', '2000-05-18', '09953979552', ''),
('e52a7a6d-cd99-4b1e-b7c4-5ebc6911ca2b', 'Dominic', 'Navos', 'L. Flores St. Pasil, Cebu City', '2002-02-09', '09990990990', '');

-- --------------------------------------------------------

--
-- Table structure for table `bookingcounselor`
--

CREATE TABLE `bookingcounselor` (
  `id` int(11) NOT NULL,
  `womanId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `counselorId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `specialize` varchar(100) NOT NULL,
  `Reason` varchar(250) DEFAULT NULL,
  `postLink` varchar(250) DEFAULT NULL,
  `postdateLink` varchar(250) DEFAULT NULL,
  `availability_id` int(11) NOT NULL,
  `bookingStatus` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookinglawyer`
--

CREATE TABLE `bookinglawyer` (
  `id` int(11) NOT NULL,
  `womanId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lawyerId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `availability_id` int(11) NOT NULL,
  `specialize` varchar(255) DEFAULT NULL,
  `Reason` varchar(250) DEFAULT NULL,
  `bookingStatus` varchar(50) NOT NULL,
  `postLink` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookinglawyer`
--

INSERT INTO `bookinglawyer` (`id`, `womanId`, `lawyerId`, `availability_id`, `specialize`, `Reason`, `bookingStatus`, `postLink`, `created_at`) VALUES
(30, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', '2d4a4038-0fda-4bde-a1f6-0bcc67700aee', 53, 'mental health', NULL, 'Pending', NULL, '2024-04-11 08:33:33'),
(31, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', '7ea7162a-7291-4251-8ab4-1dfb4a516f7f', 49, 'mental health', NULL, 'Pending', NULL, '2024-04-11 08:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `bookinglivelihood`
--

CREATE TABLE `bookinglivelihood` (
  `id` int(11) NOT NULL,
  `womanId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Livelihood_providerId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Course` varchar(250) NOT NULL,
  `BookingStatus` varchar(100) NOT NULL,
  `postLink` varchar(100) DEFAULT NULL,
  `livelihoodavail_Id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counselor`
--

CREATE TABLE `counselor` (
  `accountId` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `profileImage` varchar(100) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `TimeDuration` varchar(11) DEFAULT NULL,
  `About` varchar(250) DEFAULT NULL,
  `ExperienceWork` varchar(250) DEFAULT NULL,
  `service` varchar(250) DEFAULT NULL,
  `LicenseImage` varchar(100) DEFAULT NULL,
  `QrCode` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counselor`
--

INSERT INTO `counselor` (`accountId`, `fname`, `lname`, `address`, `DOB`, `contactNo`, `profileImage`, `Price`, `TimeDuration`, `About`, `ExperienceWork`, `service`, `LicenseImage`, `QrCode`) VALUES
('3ea0fc83-9747-4a66-87ab-8e1d15c63d51', 'Taylor', 'Grande', 'Lower Kalunasan', '1989-06-26', '09393945901', '3ea0fc83-9747-4a66-87ab-8e1d15c63d51.png', 2000, '15 mins', 'Singer', '20 years', 'Dancer', '../assets/img/license/counselor_license/3ea0fc83-9747-4a66-87ab-8e1d15c63d51.png', '../assets/img/QrcodeCounselor/L-3ea0fc83-9747-4a66-87ab-8e1d15c63d51.png'),
('7d10161f-005e-474b-b076-6eec95e58b1b', 'Torya', 'Miguel', 'cebu city', '1998-03-19', '09695327153', '7d10161f-005e-474b-b076-6eec95e58b1b.png', 300, '1hrs', 'am a dedicated and passionate instructor w', '12 years of Psychology', 'Mental health, Family Therapy and ', '../assets/img/license/counselor_license/7d10161f-005e-474b-b076-6eec95e58b1b.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counseloravailability`
--

CREATE TABLE `counseloravailability` (
  `id` int(11) NOT NULL,
  `Avail_Cdate` date NOT NULL,
  `Avail_startCtime` time NOT NULL,
  `Avail_EndCtime` time NOT NULL,
  `counselor_Id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `counseloravailability`
--

INSERT INTO `counseloravailability` (`id`, `Avail_Cdate`, `Avail_startCtime`, `Avail_EndCtime`, `counselor_Id`) VALUES
(22, '2024-03-12', '15:01:00', '15:01:00', '7d10161f-005e-474b-b076-6eec95e58b1b'),
(25, '2024-05-02', '15:01:00', '12:03:00', '3ea0fc83-9747-4a66-87ab-8e1d15c63d51');

-- --------------------------------------------------------

--
-- Table structure for table `counselor_feedback`
--

CREATE TABLE `counselor_feedback` (
  `id` int(11) NOT NULL,
  `womanId` varchar(100) NOT NULL,
  `counselorId` varchar(100) NOT NULL,
  `Info_woman` varchar(250) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `postDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counselor_feedback`
--

INSERT INTO `counselor_feedback` (`id`, `womanId`, `counselorId`, `Info_woman`, `rate`, `postDate`) VALUES
(4, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', '3ea0fc83-9747-4a66-87ab-8e1d15c63d51', '', 4, '2024-04-08 14:38:37'),
(5, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', '3ea0fc83-9747-4a66-87ab-8e1d15c63d51', 'cbfcb', 4, '2024-04-10 01:28:17'),
(6, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', '3ea0fc83-9747-4a66-87ab-8e1d15c63d51', 'sxvdx', 4, '2024-04-10 01:29:21'),
(7, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', '7d10161f-005e-474b-b076-6eec95e58b1b', '', 5, '2024-04-10 01:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `counselor_payment`
--

CREATE TABLE `counselor_payment` (
  `id` int(11) NOT NULL,
  `booked_counselor_id` int(11) NOT NULL,
  `receipt` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_post`
--

CREATE TABLE `forum_post` (
  `postId` varchar(100) NOT NULL,
  `accountId` varchar(100) NOT NULL,
  `postContent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_post`
--

INSERT INTO `forum_post` (`postId`, `accountId`, `postContent`, `created_at`) VALUES
('174ee919-44a4-44d2-8512-2964946b286a', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'bang', '2024-04-10 00:19:21'),
('50160922-623e-4c68-94ad-276afc6ee608', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'You\'re just my eternal sunshine', '2024-04-07 07:26:32'),
('66d7e7d7-bd2b-4fc2-a64f-7ae5b28c8957', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'ETERNALLY', '2024-04-02 15:22:25'),
('8622a661-2410-42ae-a194-a002521059ff', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'where you at', '2024-04-07 12:44:11'),
('94a0b587-4f1d-4ea6-a5a6-d3febb06fb06', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'kain', '2024-04-07 12:44:52'),
('969e936e-d978-4d82-988f-007f0238c316', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'bushet', '2024-04-11 08:13:18'),
('b2038e73-22e4-44af-a466-8ffa26ea08e4', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'fact', '2024-04-11 08:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `forum_post_comment`
--

CREATE TABLE `forum_post_comment` (
  `commentId` varchar(100) NOT NULL,
  `postId` varchar(100) NOT NULL,
  `accountId` varchar(100) NOT NULL,
  `commentContent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_post_comment`
--

INSERT INTO `forum_post_comment` (`commentId`, `postId`, `accountId`, `commentContent`, `created_at`) VALUES
('0a822b8a-06f4-4881-b563-2db2f5f1e922', '66d7e7d7-bd2b-4fc2-a64f-7ae5b28c8957', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'tried to wipe my mind', '2024-04-04 12:41:45'),
('224b2d91-b986-423d-b155-716905ffc7b6', '94a0b587-4f1d-4ea6-a5a6-d3febb06fb06', 'b8306bae-434b-4f79-989a-8aaae37b6687', 'what?', '2024-04-08 08:18:56'),
('d9af9c28-8997-458c-a2b8-7c2832f11cef', '66d7e7d7-bd2b-4fc2-a64f-7ae5b28c8957', 'b8306bae-434b-4f79-989a-8aaae37b6687', 'sanaol', '2024-04-04 12:44:50'),
('fc1f28bf-5b47-4bba-9768-aec0f7651d9a', '94a0b587-4f1d-4ea6-a5a6-d3febb06fb06', '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'naunsa ka mads?', '2024-04-07 14:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `forum_post_comment_report`
--

CREATE TABLE `forum_post_comment_report` (
  `id` int(11) NOT NULL,
  `comment_id` varchar(100) NOT NULL DEFAULT '',
  `report_category` enum('Misleading','Sexually-inappropriate','Offensive','Violence','Prohibited-content','Spam','Fake-news','Political-issue','Other') NOT NULL DEFAULT 'Other',
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_post_react`
--

CREATE TABLE `forum_post_react` (
  `reactId` varchar(100) NOT NULL,
  `postId` varchar(100) NOT NULL,
  `womanId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_post_react`
--

INSERT INTO `forum_post_react` (`reactId`, `postId`, `womanId`) VALUES
('2deee418-dba4-4632-b16f-3a916a7abe26', '969e936e-d978-4d82-988f-007f0238c316', '7e6c2e67-9baf-4b21-8450-07209d5aff9e'),
('48deee99-0c08-4a6a-b133-198226b14d56', '66d7e7d7-bd2b-4fc2-a64f-7ae5b28c8957', '00b7c14e-8ea0-4ddb-8567-967183cb02d7'),
('530ff3f8-81fa-46a7-b39d-282e6fd7a14f', '174ee919-44a4-44d2-8512-2964946b286a', 'b8306bae-434b-4f79-989a-8aaae37b6687'),
('5cc4010e-48c9-4706-9662-4ce097db2d4a', '174ee919-44a4-44d2-8512-2964946b286a', '7e6c2e67-9baf-4b21-8450-07209d5aff9e'),
('75ddd163-6dcb-4482-9e26-567a33f261e9', '66d7e7d7-bd2b-4fc2-a64f-7ae5b28c8957', 'b8306bae-434b-4f79-989a-8aaae37b6687'),
('b7b463ff-fa2d-4543-bda3-7dbe07380fad', '50160922-623e-4c68-94ad-276afc6ee608', '7e6c2e67-9baf-4b21-8450-07209d5aff9e'),
('bfcf5d5b-d2c0-49bb-8095-016049069ab0', '94a0b587-4f1d-4ea6-a5a6-d3febb06fb06', '7e6c2e67-9baf-4b21-8450-07209d5aff9e'),
('f4f4e1d6-de29-474f-a041-1fc9e11e6668', '8622a661-2410-42ae-a194-a002521059ff', '7e6c2e67-9baf-4b21-8450-07209d5aff9e'),
('f8a3befb-5ed5-421a-9226-05b9b533c963', '66d7e7d7-bd2b-4fc2-a64f-7ae5b28c8957', '7e6c2e67-9baf-4b21-8450-07209d5aff9e');

-- --------------------------------------------------------

--
-- Table structure for table `forum_post_report`
--

CREATE TABLE `forum_post_report` (
  `id` int(11) NOT NULL,
  `post_id` varchar(100) NOT NULL,
  `report_category` enum('Misleading','Sexually-inappropriate','Offensive','Violence','Prohibited-content','Spam','Fake-news','Political-issue','Other') NOT NULL DEFAULT 'Other',
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lawyer`
--

CREATE TABLE `lawyer` (
  `accountId` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `profileImage` varchar(100) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `TimeDuration` varchar(11) DEFAULT NULL,
  `About` varchar(250) DEFAULT NULL,
  `ExperienceWork` varchar(250) DEFAULT NULL,
  `service` varchar(250) DEFAULT NULL,
  `LicenseImage` varchar(100) DEFAULT NULL,
  `QrCode` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lawyer`
--

INSERT INTO `lawyer` (`accountId`, `fname`, `lname`, `address`, `DOB`, `contactNo`, `profileImage`, `Price`, `TimeDuration`, `About`, `ExperienceWork`, `service`, `LicenseImage`, `QrCode`) VALUES
('2d4a4038-0fda-4bde-a1f6-0bcc67700aee', 'Troye', 'Sivan', 'Sydney, Australia', '1995-06-05', '09394493029', '2d4a4038-0fda-4bde-a1f6-0bcc67700aee.png', 504, '3hrsf', 'am a dedicated and passionate attorney committed to providing exceptional legal representation to my clients. With 6 years of experience in psychology, I have honed my skills in understanding human behavior and effectively communicating with indivi', '6 yearsd', 'Immigraddtion', '../assets/img/license/lawyer/2d4a4038-0fda-4bde-a1f6-0bcc67700aee.png', '../assets/img/QrcodeLawyer/L-2d4a4038-0fda-4bde-a1f6-0bcc67700aee.png'),
('535d6bbb-d0e4-474a-b0d0-8e3056e2a4ad', 'Daryl', 'galos', 'Baryo Laguna', '2024-03-04', '56435', '535d6bbb-d0e4-474a-b0d0-8e3056e2a4ad.png', NULL, NULL, NULL, NULL, '', NULL, ''),
('7180e242-4047-4cdc-950f-5eebaf70b2cd', 'Mendoza', 'Bulacao', 'Lahug City', '1998-03-26', '123456789', NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('7c3a50c2-2c66-41ed-aef0-edb542be9202', 'Garry', 'Montilso', 'cebu city', '1998-02-07', '092345678', '', 70, '1hrs', 'Im a lawyer with 13 years of experience.', '12 years', '', '', ''),
('7d38935a-a860-4c53-9b07-101844b544f7', 'Mika', 'Relay', 'cebu city South', '1998-03-17', '9326785435', NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('7ea7162a-7291-4251-8ab4-1dfb4a516f7f', 'Billie', 'Eilish', 'Los Angeles, California, United States', '2001-12-18', '09567682039', '7ea7162a-7291-4251-8ab4-1dfb4a516f7f.png', 80, '1hrs', 'Im a lawyer .cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', '12 years', '', '', '../assets/img/QrcodeLawyer/L-7ea7162a-7291-4251-8ab4-1dfb4a516f7f.png');

-- --------------------------------------------------------

--
-- Table structure for table `lawyeravailability`
--

CREATE TABLE `lawyeravailability` (
  `id` int(11) NOT NULL,
  `Avail_startLtime` time NOT NULL,
  `Avail_EndLtime` time NOT NULL,
  `Avail_Ldate` date NOT NULL,
  `lawyer_Id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lawyeravailability`
--

INSERT INTO `lawyeravailability` (`id`, `Avail_startLtime`, `Avail_EndLtime`, `Avail_Ldate`, `lawyer_Id`) VALUES
(48, '16:00:00', '17:00:00', '2024-04-06', '7ea7162a-7291-4251-8ab4-1dfb4a516f7f'),
(49, '17:00:00', '18:00:00', '2024-04-06', '7ea7162a-7291-4251-8ab4-1dfb4a516f7f'),
(53, '16:35:00', '19:32:00', '2024-04-25', '2d4a4038-0fda-4bde-a1f6-0bcc67700aee'),
(54, '16:34:00', '16:34:00', '2024-04-24', '7ea7162a-7291-4251-8ab4-1dfb4a516f7f');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_feedback`
--

CREATE TABLE `lawyer_feedback` (
  `id` int(11) NOT NULL,
  `womanId` varchar(100) NOT NULL,
  `lawyerId` varchar(100) NOT NULL,
  `Info_woman` varchar(250) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `postDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lawyer_feedback`
--

INSERT INTO `lawyer_feedback` (`id`, `womanId`, `lawyerId`, `Info_woman`, `rate`, `postDate`) VALUES
(74, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', '2d4a4038-0fda-4bde-a1f6-0bcc67700aee', 'Anuada kuan', 4, '2024-04-08 14:29:24'),
(75, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', '2d4a4038-0fda-4bde-a1f6-0bcc67700aee', 'edssss', 3, '2024-04-11 02:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_payment`
--

CREATE TABLE `lawyer_payment` (
  `id` int(11) NOT NULL,
  `booked_lawyer_id` int(11) NOT NULL,
  `receipt` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lawyer_payment`
--

INSERT INTO `lawyer_payment` (`id`, `booked_lawyer_id`, `receipt`, `created_at`) VALUES
(18, 30, '../assets/img/receipt/bookedLawyer/BOOKED-LAWYER-6b8557dd-0014-47b9-a8fc-e34f7ba0f29f.png', '2024-04-11 08:33:34'),
(19, 31, '../assets/img/receipt/bookedLawyer/BOOKED-LAWYER-4ed1f01a-f1c2-419b-ac35-7f10e8d4b555.png', '2024-04-11 08:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `linkvideotutrial`
--

CREATE TABLE `linkvideotutrial` (
  `id` int(11) NOT NULL,
  `uploadvideo` varchar(250) NOT NULL,
  `postContentdate` date NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `LivelihoodProvider_Id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `linkvideotutrial`
--

INSERT INTO `linkvideotutrial` (`id`, `uploadvideo`, `postContentdate`, `Title`, `Description`, `LivelihoodProvider_Id`) VALUES
(50, '../assets/video/VideoTutoriaLivelihood/learn-php-in-four-minutes.mp4', '2024-04-26', 'Php Tutorial', 'Php full stuck', '129ae133-870b-465d-aefd-c0028e2f78da'),
(51, '../assets/video/VideoTutoriaLivelihood/videoplayback.webm', '2024-05-01', 'Manicure', 'Manicure for beauty', '01724280-f007-4d10-8c82-d3b8bab99ee7');

-- --------------------------------------------------------

--
-- Table structure for table `livelihoodavailability`
--

CREATE TABLE `livelihoodavailability` (
  `id` int(11) NOT NULL,
  `StartdayOfMonth` date NOT NULL,
  `EnddayOfMonth` date NOT NULL,
  `SelectMonth` varchar(100) NOT NULL,
  `day1` varchar(100) NOT NULL,
  `day2` varchar(100) NOT NULL,
  `mentorId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livelihoodavailability`
--

INSERT INTO `livelihoodavailability` (`id`, `StartdayOfMonth`, `EnddayOfMonth`, `SelectMonth`, `day1`, `day2`, `mentorId`) VALUES
(29, '2024-03-14', '2024-03-27', 'ddd', 'Monday', '0', '01724280-f007-4d10-8c82-d3b8bab99ee7'),
(30, '2024-04-18', '2024-04-10', '2 montth', 'friday', '0', '01724280-f007-4d10-8c82-d3b8bab99ee7'),
(31, '2024-04-17', '2024-04-19', '2 montth', 'friday', '0', '01724280-f007-4d10-8c82-d3b8bab99ee7'),
(32, '2024-04-11', '2024-04-23', '1 montth', 'Tuesday', 'Friday', '01724280-f007-4d10-8c82-d3b8bab99ee7');

-- --------------------------------------------------------

--
-- Table structure for table `livelihood_provider`
--

CREATE TABLE `livelihood_provider` (
  `accountId` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `profileImage` varchar(100) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `About` varchar(250) DEFAULT NULL,
  `ExperienceWork` varchar(250) DEFAULT NULL,
  `Service` varchar(250) DEFAULT NULL,
  `SerDefinition` varchar(250) DEFAULT NULL,
  `LicenseImage` varchar(250) DEFAULT NULL,
  `QrCode` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livelihood_provider`
--

INSERT INTO `livelihood_provider` (`accountId`, `fname`, `lname`, `address`, `DOB`, `contactNo`, `profileImage`, `Price`, `About`, `ExperienceWork`, `Service`, `SerDefinition`, `LicenseImage`, `QrCode`) VALUES
('01724280-f007-4d10-8c82-d3b8bab99ee7', 'Eric', 'son', 'Lorega St. Sanciangko Cebu', '2024-02-05', '0934566', 'e76bf93a-044a-4619-96b8-c2ae7a84b9e5.png', 100002, 'am a dedicated and passionate instructorS', '12 years', 'Cosmetics', 'Manicure skills refer to the techniques and abilities needed to perform manicure services effectively. Manicures involve the care and beautification of the hands and nails, and mastering various skills is essential for providing high-quality manicure', '', '../assets/img/QrcodeLivelihood-Provider/L-01724280-f007-4d10-8c82-d3b8bab99ee7.png'),
('129ae133-870b-465d-aefd-c0028e2f78da', 'Jargon', 'Dee', 'L. Flores St. Pasil, Cebu City', '1999-05-09', '09994096196', NULL, 1000, 'am a dedicated and passionate instructor', '12 years', 'Programing', 'PHP LANGUAGE FULL STUCK', '../assets/img/license/livelihood_provider_license/129ae133-870b-465d-aefd-c0028e2f78da.png', NULL),
('a6f3b99c-e83f-4d33-a1e0-e316829294b8', 'Daryl', 'Anuada', 'Lahug City', '2024-02-25', '09943022839', NULL, 1000, 'am a dedicated and passionate instructor w', '12 years', 'Sewing', 'ewing is the activity of making or mending clothes or other things using a needle and thread. Her mother had always done all the sewing. Synonyms: needlework, stitching, needlecraft More Synonyms of sewing.', '../assets/img/license/livelihood_provider_license/a6f3b99c-e83f-4d33-a1e0-e316829294b8.png', NULL),
('dd763b6e-53e3-44d5-b522-a55d34a1afbd', 'Quibol Daryl', 'Ryl', 'cebu city', '2024-02-28', '5464646', 'dd763b6e-53e3-44d5-b522-a55d34a1afbd.png', 1000, 'am a dedicated and passionate instructor w', '12 years', 'Manicure', 'Hair cutting is a skill that requires time, practice, and patience to master. Before masterfully executing every haircut, you must acquire a set of basic skills. Learn how to divide hair into five and seven sections. Work on successfully creating a l', '../assets/img/license/livelihood_provider_license/dd763b6e-53e3-44d5-b522-a55d34a1afbd.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `livelihood_provider_feedback`
--

CREATE TABLE `livelihood_provider_feedback` (
  `id` int(11) NOT NULL,
  `womanId` varchar(100) NOT NULL,
  `Livelihood_providerId` varchar(100) NOT NULL,
  `Info_woman` varchar(250) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `postDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livelihood_provider_feedback`
--

INSERT INTO `livelihood_provider_feedback` (`id`, `womanId`, `Livelihood_providerId`, `Info_woman`, `rate`, `postDate`) VALUES
(5, '7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'a6f3b99c-e83f-4d33-a1e0-e316829294b8', 'ddgn', 4, '2024-04-10 01:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `livelihood_provider_payment`
--

CREATE TABLE `livelihood_provider_payment` (
  `id` int(11) NOT NULL,
  `booked_livelihood_provider_id` int(11) NOT NULL,
  `receipt` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woman`
--

CREATE TABLE `woman` (
  `accountId` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `About` varchar(250) NOT NULL,
  `SocialMedia` varchar(100) NOT NULL,
  `profileImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `woman`
--

INSERT INTO `woman` (`accountId`, `fname`, `lname`, `address`, `DOB`, `contactNo`, `About`, `SocialMedia`, `profileImage`) VALUES
('00b7c14e-8ea0-4ddb-8567-967183cb02d7', 'Lady', 'Glitter', 'Guadalupe', '2006-01-10', '09932091919', '', '', NULL),
('7e6c2e67-9baf-4b21-8450-07209d5aff9e', 'Ariana', 'Grande', 'Lorega Street Cebu City', '2024-04-14', '09334533', '', '', '../assets/img/profile/woman/7e6c2e67-9baf-4b21-8450-07209d5aff9e.png'),
('b8306bae-434b-4f79-989a-8aaae37b6687', 'Lyka', 'Bulacao', 'Lahug City', '2024-04-08', '56456454353', '', '', '../assets/img/profile/woman/b8306bae-434b-4f79-989a-8aaae37b6687.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `bookingcounselor`
--
ALTER TABLE `bookingcounselor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `womanId` (`womanId`),
  ADD KEY `counselorId` (`counselorId`),
  ADD KEY `availability_id` (`availability_id`);

--
-- Indexes for table `bookinglawyer`
--
ALTER TABLE `bookinglawyer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `womanId` (`womanId`),
  ADD KEY `lawyerId` (`lawyerId`),
  ADD KEY `availability_id` (`availability_id`);

--
-- Indexes for table `bookinglivelihood`
--
ALTER TABLE `bookinglivelihood`
  ADD PRIMARY KEY (`id`),
  ADD KEY `womanId` (`womanId`),
  ADD KEY `Livelihood_providerId` (`Livelihood_providerId`),
  ADD KEY `livelihoodavail_Id` (`livelihoodavail_Id`);

--
-- Indexes for table `counselor`
--
ALTER TABLE `counselor`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `counseloravailability`
--
ALTER TABLE `counseloravailability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counselor_Id` (`counselor_Id`);

--
-- Indexes for table `counselor_feedback`
--
ALTER TABLE `counselor_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__woman` (`womanId`),
  ADD KEY `FK_counselor_feedback_counselor` (`counselorId`);

--
-- Indexes for table `counselor_payment`
--
ALTER TABLE `counselor_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_counselor_payment_bookingcounselor` (`booked_counselor_id`);

--
-- Indexes for table `forum_post`
--
ALTER TABLE `forum_post`
  ADD PRIMARY KEY (`postId`),
  ADD KEY `accountId` (`accountId`);

--
-- Indexes for table `forum_post_comment`
--
ALTER TABLE `forum_post_comment`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `postId` (`postId`),
  ADD KEY `accountId` (`accountId`);

--
-- Indexes for table `forum_post_comment_report`
--
ALTER TABLE `forum_post_comment_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__forum_post_comment` (`comment_id`);

--
-- Indexes for table `forum_post_react`
--
ALTER TABLE `forum_post_react`
  ADD PRIMARY KEY (`reactId`),
  ADD KEY `FK_forum_post_react_forum_post` (`postId`),
  ADD KEY `FK_forum_post_react_woman` (`womanId`);

--
-- Indexes for table `forum_post_report`
--
ALTER TABLE `forum_post_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__forum_post` (`post_id`);

--
-- Indexes for table `lawyer`
--
ALTER TABLE `lawyer`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `lawyeravailability`
--
ALTER TABLE `lawyeravailability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lawyerId` (`lawyer_Id`);

--
-- Indexes for table `lawyer_feedback`
--
ALTER TABLE `lawyer_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `woman_feedback_Id` (`womanId`),
  ADD KEY `lawyerId_recieve_feedback_Id` (`lawyerId`);

--
-- Indexes for table `lawyer_payment`
--
ALTER TABLE `lawyer_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booked_lawyer_id` (`booked_lawyer_id`);

--
-- Indexes for table `linkvideotutrial`
--
ALTER TABLE `linkvideotutrial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LivelihoodProvider_Id` (`LivelihoodProvider_Id`);

--
-- Indexes for table `livelihoodavailability`
--
ALTER TABLE `livelihoodavailability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mentorId` (`mentorId`);

--
-- Indexes for table `livelihood_provider`
--
ALTER TABLE `livelihood_provider`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `livelihood_provider_feedback`
--
ALTER TABLE `livelihood_provider_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_livelihood_provider_feedback_woman` (`womanId`),
  ADD KEY `FK_livelihood_provider_feedback_livelihood_provider` (`Livelihood_providerId`);

--
-- Indexes for table `livelihood_provider_payment`
--
ALTER TABLE `livelihood_provider_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livelihood_provider_payment_ibfk_1` (`booked_livelihood_provider_id`);

--
-- Indexes for table `woman`
--
ALTER TABLE `woman`
  ADD PRIMARY KEY (`accountId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingcounselor`
--
ALTER TABLE `bookingcounselor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bookinglawyer`
--
ALTER TABLE `bookinglawyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bookinglivelihood`
--
ALTER TABLE `bookinglivelihood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `counseloravailability`
--
ALTER TABLE `counseloravailability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `counselor_feedback`
--
ALTER TABLE `counselor_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counselor_payment`
--
ALTER TABLE `counselor_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forum_post_comment_report`
--
ALTER TABLE `forum_post_comment_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forum_post_report`
--
ALTER TABLE `forum_post_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lawyeravailability`
--
ALTER TABLE `lawyeravailability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `lawyer_feedback`
--
ALTER TABLE `lawyer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `lawyer_payment`
--
ALTER TABLE `lawyer_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `linkvideotutrial`
--
ALTER TABLE `linkvideotutrial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `livelihoodavailability`
--
ALTER TABLE `livelihoodavailability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `livelihood_provider_feedback`
--
ALTER TABLE `livelihood_provider_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `livelihood_provider_payment`
--
ALTER TABLE `livelihood_provider_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookingcounselor`
--
ALTER TABLE `bookingcounselor`
  ADD CONSTRAINT `bookingcounselor_ibfk_1` FOREIGN KEY (`womanId`) REFERENCES `woman` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookingcounselor_ibfk_2` FOREIGN KEY (`counselorId`) REFERENCES `counselor` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookingcounselor_ibfk_3` FOREIGN KEY (`availability_id`) REFERENCES `counseloravailability` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookinglawyer`
--
ALTER TABLE `bookinglawyer`
  ADD CONSTRAINT `bookinglawyer_ibfk_1` FOREIGN KEY (`womanId`) REFERENCES `woman` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookinglawyer_ibfk_2` FOREIGN KEY (`lawyerId`) REFERENCES `lawyer` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookinglawyer_ibfk_3` FOREIGN KEY (`availability_id`) REFERENCES `lawyeravailability` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookinglivelihood`
--
ALTER TABLE `bookinglivelihood`
  ADD CONSTRAINT `bookinglivelihood_ibfk_1` FOREIGN KEY (`womanId`) REFERENCES `woman` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookinglivelihood_ibfk_2` FOREIGN KEY (`Livelihood_providerId`) REFERENCES `livelihood_provider` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookinglivelihood_ibfk_3` FOREIGN KEY (`livelihoodavail_Id`) REFERENCES `livelihoodavailability` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counselor`
--
ALTER TABLE `counselor`
  ADD CONSTRAINT `counselor_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counseloravailability`
--
ALTER TABLE `counseloravailability`
  ADD CONSTRAINT `counseloravailability_ibfk_1` FOREIGN KEY (`counselor_Id`) REFERENCES `counselor` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counselor_feedback`
--
ALTER TABLE `counselor_feedback`
  ADD CONSTRAINT `FK__woman` FOREIGN KEY (`womanId`) REFERENCES `woman` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_counselor_feedback_counselor` FOREIGN KEY (`counselorId`) REFERENCES `counselor` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counselor_payment`
--
ALTER TABLE `counselor_payment`
  ADD CONSTRAINT `FK_counselor_payment_bookingcounselor` FOREIGN KEY (`booked_counselor_id`) REFERENCES `bookingcounselor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_post`
--
ALTER TABLE `forum_post`
  ADD CONSTRAINT `forum_post_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `woman` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_post_comment`
--
ALTER TABLE `forum_post_comment`
  ADD CONSTRAINT `forum_post_comment_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `forum_post` (`postId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_post_comment_ibfk_2` FOREIGN KEY (`accountId`) REFERENCES `woman` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_post_comment_report`
--
ALTER TABLE `forum_post_comment_report`
  ADD CONSTRAINT `FK__forum_post_comment` FOREIGN KEY (`comment_id`) REFERENCES `forum_post_comment` (`commentId`);

--
-- Constraints for table `forum_post_react`
--
ALTER TABLE `forum_post_react`
  ADD CONSTRAINT `FK_forum_post_react_forum_post` FOREIGN KEY (`postId`) REFERENCES `forum_post` (`postId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_forum_post_react_woman` FOREIGN KEY (`womanId`) REFERENCES `woman` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_post_report`
--
ALTER TABLE `forum_post_report`
  ADD CONSTRAINT `FK__forum_post` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`postId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lawyer`
--
ALTER TABLE `lawyer`
  ADD CONSTRAINT `lawyer_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lawyeravailability`
--
ALTER TABLE `lawyeravailability`
  ADD CONSTRAINT `lawyeravailability_ibfk_1` FOREIGN KEY (`lawyer_Id`) REFERENCES `lawyer` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lawyer_feedback`
--
ALTER TABLE `lawyer_feedback`
  ADD CONSTRAINT `lawyer_feedback_ibfk_1` FOREIGN KEY (`womanId`) REFERENCES `woman` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lawyer_feedback_ibfk_2` FOREIGN KEY (`lawyerId`) REFERENCES `lawyer` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lawyer_payment`
--
ALTER TABLE `lawyer_payment`
  ADD CONSTRAINT `lawyer_payment_ibfk_1` FOREIGN KEY (`booked_lawyer_id`) REFERENCES `bookinglawyer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `linkvideotutrial`
--
ALTER TABLE `linkvideotutrial`
  ADD CONSTRAINT `linkvideotutrial_ibfk_1` FOREIGN KEY (`LivelihoodProvider_Id`) REFERENCES `livelihood_provider` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livelihoodavailability`
--
ALTER TABLE `livelihoodavailability`
  ADD CONSTRAINT `livelihoodavailability_ibfk_1` FOREIGN KEY (`mentorId`) REFERENCES `livelihood_provider` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livelihood_provider`
--
ALTER TABLE `livelihood_provider`
  ADD CONSTRAINT `livelihood_provider_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livelihood_provider_feedback`
--
ALTER TABLE `livelihood_provider_feedback`
  ADD CONSTRAINT `FK_livelihood_provider_feedback_livelihood_provider` FOREIGN KEY (`Livelihood_providerId`) REFERENCES `livelihood_provider` (`accountId`),
  ADD CONSTRAINT `FK_livelihood_provider_feedback_woman` FOREIGN KEY (`womanId`) REFERENCES `woman` (`accountId`);

--
-- Constraints for table `livelihood_provider_payment`
--
ALTER TABLE `livelihood_provider_payment`
  ADD CONSTRAINT `livelihood_provider_payment_ibfk_1` FOREIGN KEY (`booked_livelihood_provider_id`) REFERENCES `bookinglivelihood` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `woman`
--
ALTER TABLE `woman`
  ADD CONSTRAINT `woman_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
