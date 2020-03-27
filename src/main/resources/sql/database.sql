CREATE TABLE IF NOT EXISTS `g4_write_question` (
  `qu_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `qu_subject` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `qu_content` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `qu_hit` int(11) NOT NULL DEFAULT '0',
  `qu_wr_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`qu_id`),
  KEY `qu_wr_date` (`qu_wr_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=euckr COLLATE=euckr_bin AUTO_INCREMENT=0 ;


drop table g4_write_question
ALTER TABLE g4_question CONVERT TO character SET utf8;
UPDATE g4_member SET mb_level = 4 WHERE mb_id = 'so';

INSERT INTO `user2` VALUES ('guest','guest',1,'ROLE_USER'),('niee','zzzz',1,'ROLE_ADMIN'),('test','test',1,'ROLE_USER');
select * from user2;
select * from g4_question;

select mb_id as mb_id, mb_name as mb_name from g4_member where mb_email = 'jsw6948@naver.com';
select * from g4_member where mb_id = 'test1';
select mb_open from g4_member where mb_id = 'test1';
delete from g4_member where mb_id = 'test9';
drop table g4_question;
drop table user2;
drop table member;

select * from g4_question

SELECT mb_id as mb_id, mb_name as mb_name, mb_email as mb_email FROM g4_member WHERE mb_email = 'jsw6948'
SELECT * FROM g4_question WHERE mb_id = 'test1';
		SELECT
		*
		FROM g4_question
		WHERE qu_id > 0 AND
		mb_id = 'test1'
		ORDER BY qu_id DESC, qu_wr_date DESC
		LIMIT 0, 15
		
    select * from g4_write_notice  where wr_parent = 467 and wr_is_comment = 1  order by wr_comment , wr_comment_reply

select * from g4_question where mb_id = 'test1' ORDER BY qu_wr_date desc limit 4
rollback;
