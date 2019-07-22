
SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` varchar(4) NOT NULL,
  `student_id` varchar(3) NOT NULL,
  `subject_id` varchar(4) NOT NULL,
  `score` double(20,1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `score` VALUES ('1', '001', '1001', '80.0');
INSERT INTO `score` VALUES ('2', '002', '1002', '60.0');
INSERT INTO `score` VALUES ('3', '001', '1001', '70.0');
INSERT INTO `score` VALUES ('4', '002', '1002', '60.5');


DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_student_id` FOREIGN KEY (`id`) REFERENCES `score` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `student` VALUES ('001', '张三', '18', '男');
INSERT INTO `student` VALUES ('002', '李四', '20', '女');


DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` varchar(4) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_subject_id` FOREIGN KEY (`id`) REFERENCES `score` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `subject` VALUES ('1001', '语文', '王老师', '本次考试比较简单');
INSERT INTO `subject` VALUES ('1002', '数学', '刘老师', '本次考试比较难');
