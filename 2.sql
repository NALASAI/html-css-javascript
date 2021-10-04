-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.4-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- webstudy 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `webstudy` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `webstudy`;

-- 테이블 webstudy.user_mst 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_mst` (
  `user_id` varchar(20) NOT NULL,
  `user_password` varchar(16) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_birthday` varchar(15) NOT NULL,
  `user_gender` int(1) NOT NULL DEFAULT 0,
  `user_email` varchar(25) NOT NULL,
  `user_phone` varchar(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 webstudy.user_mst:~2 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`user_id`, `user_password`, `user_name`, `user_birthday`, `user_gender`, `user_email`, `user_phone`, `create_date`, `update_date`) VALUES
	('junil', '1234', '김준일', '2021-09-28', 1, 'aaaa@gmail.com', '01011112222', '2021-09-28', '2021-09-28'),
	('junil1', '1234', '김준일', '2021-09-28', 1, 'aaaa@gmail.com', '01011112222', '2021-09-28', '2021-09-28'),
	('junil2', '1234', '김준일', '2021-09-28', 1, 'aaaa@gmail.com', '01011112222', '2021-09-28', '2021-09-28');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
