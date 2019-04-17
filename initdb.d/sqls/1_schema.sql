CREATE TABLE IF NOT EXISTS `questionnaire` (
  `questionnaire_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `question` (
  `question_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(4) NOT NULL,
  `question_content` varchar(400) NOT NULL,
  `sort_no` int(4) DEFAULT NULL,
  `questionnaire_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `index_question_on_questionnaire` (`questionnaire_id`),
  CONSTRAINT `fk_question_on_questionnaire` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaire` (`questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `question_detail` (
  `question_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_detail_content` varchar(400) NOT NULL,
  `sort_no` int(4) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`question_detail_id`),
  KEY `index_question_detail_on_question` (`question_id`),
  CONSTRAINT `fk_question_detail_on_question` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `answer_user` (
  `answer_user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `answered_at` datetime NOT NULL,
  `questionnaire_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`answer_user_id`),
  KEY `index_answer_user_on_questionnaire` (`questionnaire_id`),
  CONSTRAINT `fk_answer_user_on_questionnaire` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaire` (`questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `answer_content` (
  `answer_content_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer_user_id` bigint(20) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`answer_content_id`),
  KEY `index_answer_content_on_answer_user` (`answer_user_id`),
  KEY `index_answer_content_on_question` (`question_id`),
  CONSTRAINT `fk_answer_content_on_answer_user` FOREIGN KEY (`answer_user_id`) REFERENCES `answer_user` (`answer_user_id`),
  CONSTRAINT `fk_answer_content_on_question` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `answer_content_text` (
  `answer_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer_content` varchar(400) DEFAULT NULL,
  `answer_content_id` bigint(20) DEFAULT NULL,
  `question_detail_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`answer_detail_id`),
  KEY `index_answer_content_text_on_answer_content` (`answer_content_id`),
  KEY `index_answer_content_text_on_question_detail` (`question_detail_id`),
  CONSTRAINT `fk_answer_content_text_on_answer_content` FOREIGN KEY (`answer_content_id`) REFERENCES `answer_content` (`answer_content_id`),
  CONSTRAINT `fk_answer_content_text_on_question_detail` FOREIGN KEY (`question_detail_id`) REFERENCES `question_detail` (`question_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `answer_content_radio` (
  `answer_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer_content_id` bigint(20) DEFAULT NULL,
  `question_detail_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`answer_detail_id`),
  KEY `index_answer_content_radio_on_answer_content` (`answer_content_id`),
  KEY `index_answer_content_radio_on_question_detail` (`question_detail_id`),
  CONSTRAINT `fk_answer_content_radio_on_answer_content` FOREIGN KEY (`answer_content_id`) REFERENCES `answer_content` (`answer_content_id`),
  CONSTRAINT `fk_answer_content_radio_on_question_detail` FOREIGN KEY (`question_detail_id`) REFERENCES `question_detail` (`question_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
