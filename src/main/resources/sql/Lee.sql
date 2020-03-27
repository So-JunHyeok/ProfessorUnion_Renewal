CREATE TABLE IF NOT EXISTS `g4_write_notice` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) COLLATE euckr_bin NOT NULL DEFAULT '',
  `ca_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_option` set('normal','noti','secret','mail','html2','html1') COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_subject` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_content` text COLLATE euckr_bin NOT NULL,
  `wr_link1` text COLLATE euckr_bin NOT NULL,
  `wr_link2` text COLLATE euckr_bin NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_trackback` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_password` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_email` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_homepage` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_last` varchar(19) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
)

CREATE TABLE IF NOT EXISTS `g4_write_press`(
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) COLLATE euckr_bin NOT NULL DEFAULT '',
  `ca_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_option` set('normal','noti','secret','mail','html2','html1') COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_subject` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_content` text COLLATE euckr_bin NOT NULL,
  `wr_link1` text COLLATE euckr_bin NOT NULL,
  `wr_link2` text COLLATE euckr_bin NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_trackback` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_password` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_email` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_homepage` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_last` varchar(19) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
)










CREATE TABLE IF NOT EXISTS `g4_write_question` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) COLLATE euckr_bin NOT NULL DEFAULT '',
  `ca_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_option` set('normal','noti','secret','mail','html2','html1') COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_subject` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_content` text COLLATE euckr_bin NOT NULL,
  `wr_link1` text COLLATE euckr_bin NOT NULL,
  `wr_link2` text COLLATE euckr_bin NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_trackback` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_password` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_email` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_homepage` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_last` varchar(19) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
)
select * from  g4_write_question
create table g4_write_question

INSERT INTO `g4_write_question` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_trackback`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_last`, `wr_ip`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(2, -3, '', 2, 0, 0, '', '일반', 'normal', '[알림] 홈페이지 개편 안내', '교수노조 홈페이지가 전면 개편중입니다.\r\n\r\n회원가입 등 일부기능은 제한적으로 사용중입니다.\r\n\r\n빠른 시일내에 테스트를 마치고 홈페이지 개편을 마치겠습니다.\r\n\r\n홈페이지 개편에 대한 의견이 있으신 분은 교수노조 E-mail(kpu@kpu.or.kr)로 연락주시기 바랍니다.\r\n\r\n', '', '', 0, 0, '', 3346, 0, 0, '', '1dafe0b436a2d8d5', '교육선전실', 'gyosu21@chol.com', '', '2004-04-12 16:29:11', '2004-04-12 16:29:11', '211.186.71.192', '', '', '', '', '', '', '', '', '', ''),
(3, -2, '', 3, 0, 0, '', '일반', 'normal', '[알림] 홈페이지 개편 안내', '교수노조 홈페이지가 전면 개편중입니다.\r\n\r\n회원가입 등 일부기능은 제한적으로 사용중입니다.\r\n\r\n빠른 시일내에 테스트를 마치고 홈페이지 개편을 마치겠습니다.\r\n\r\n홈페이지 개편에 대한 의견이 있으신 분은 교수노조 E-mail(kpu@kpu.or.kr)로 연락주시기 바랍니다.\r\n\r\n', '', '', 0, 0, '', 3346, 0, 0, '', '1dafe0b436a2d8d5', '교육선전실', 'gyosu21@chol.com', '', '2004-04-12 16:29:11', '2004-04-12 16:29:11', '211.186.71.192', '', '', '', '', '', '', '', '', '', '')



<<<<<<< HEAD
select * from g4_write_notice where wr_is_comment = 0 order wr_date
select * from g4_board_file
order by wr_datetime desc  
limit 10 , 10 

select * from g4_write_notice where wr_is_comment = 0 order by wr_datetime desc limit 4
select * from g4_write_notice where wr_option = 'noti' order by wr_datetime desc limit 4
select * from g4_write_notice where wr_option = 'noti' order by wr_datetime desc limit 4

delete from g4_write_precedent

select count(*) from g4_scrap
select * from g4_scrap order by ms_datetime desc
select * from g4_scrap order by ms_datetime desc limit 2,10

select * from g4_scrap order by ms_datetime desc limit 7
select * from g4_write_notice WHERE wr_option = 'secret' or wr_optuo 'normal'  and wr_subject like '%%' or wr_content like'%%' and wr_is_comment = 0 

select * from g4_write_notice WHERE  wr_option = 'secret' or wr_optuo 'normal' 
select * from g4_write_notice WHERE wr_is_comment = 0 and (wr_subject like '%공지%' or wr_content like'%') and wr_option not in ('noti')
order by wr_parent desc, wr_datetime desc

select * from g4_write_notice WHERE wr_option = 'secret' or 
wr_optuo 'normal'  and wr_subject like '%%'
or wr_content like'%%' and wr_is_comment = 0 
(SELECT * FROM g4_write_notice WHERE wr_option = 'secret' and 'normal')

delete from g4_write_notice where wr_id=792 and mb_id = 'so'

select * from g4_write_notice order by wr_datetime desc


		select * from g4_board_file where wr_id = #{wr_id} and bf_source = #{filename}
=======
    select * from g4_write_notice where wr_parent = 588 and wr_is_comment = 1 order by wr_comment_reply 
>>>>>>> refs/remotes/origin/LeeTJ23

 ENGINE=MyISAM  DEFAULT CHARSET=euckr COLLATE=euckr_bin AUTO_INCREMENT=444 ;
drop table g4_write_notice

<<<<<<< HEAD
select * from g4_board_file;
delete from g4_write_notice;

=======
select * from g4_write_notice order by wr_comment_reply 
>>>>>>> refs/remotes/origin/LeeTJ23
alter table g4_write_question auto_increment=1;

		select count(*) from g4_write_${bo_table}
		where wr_is_comment = 0 and wr_subject like '공지'

		
select NOW() + INTERVAL 1 DAY

select curdate()+1

select sysdate()

select wr_datetime from g4_write_notice where wr_datetime = curdate()+1


insert into g4_membert

drop table g4_member
select * from g4_board_good

select * from g4_write_notice
select * from g4_board_file order by wr_id desc
select * from g4_write_notice order by wr_id desc
select count(*) from g4_write_notice where wr_is_comment =0

delete from g4_write_photo


select max(wr_comment) from g4_write_notice where wr_parent = 449

CREATE TABLE `g4_member` (
  `mb_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_password` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_nick` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_password_q` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_password_a` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT '0',
  `mb_jumin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_sex` char(1) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_birth` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_tel` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_hp` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_zip1` char(3) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_zip2` char(3) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_signature` text COLLATE euckr_bin NOT NULL,
  `mb_recommend` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_memo` text COLLATE euckr_bin NOT NULL,
  `mb_lost_certify` varchar(255) COLLATE euckr_bin NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text COLLATE euckr_bin NOT NULL,
  `mb_memo_call` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `mb_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=MyISAM  DEFAULT CHARSET=euckr COLLATE=euckr_bin AUTO_INCREMENT=1700 ;

show variables like 'lower_case_table_names'; 

select mb_no, mb_id, mb_password, mb_name, mb_nick, mb_nick_date,
mb_email, mb_homepage, mb_password_q, mb_password_a, mb_level, mb_jumin, mb_sex, mb_birth, mb_tel,
mb_hp, mb_zip1, mb_zip2, mb_addr1, mb_addr2, mb_signature, mb_recommend, mb_point, mb_today_login, 
mb_login_ip, mb_datetime, mb_ip, mb_leave_date, mb_intercept_date, mb_email_certify, mb_memo, mb_lost_certify,
mb_mailling, mb_sms, mb_open, mb_open_date, mb_profile, mb_memo_call, mb_1, mb_2, mb_3, mb_4, mb_5, mb_6, mb_7,
mb_8, mb_9, mb_10 from g4_member

mb_open_date
mb_nick_date
select mb_email_certify from g4_member

select * from g4_member

 SELECT
      mb_id as mb_id,
      mb_password as mb_password,
      mb_level as mb_level
      FROM g4_member
      WHERE mb_id = 'admin';

select from g4_member inner join g4_write_notice


select mb_no, mb_id, mb_password, mb_name, mb_nick, mb_email, mb_homepage,mb_password_q, mb_password_a, mb_level, mb_jumin, mb_sex, mb_birth, mb_tel,
mb_hp, mb_zip1, mb_zip2, mb_addr1, mb_addr2, mb_signature, mb_recommend, mb_point, mb_today_login,
mb_login_ip, mb_datetime, mb_ip, mb_leave_date, mb_intercept_date, mb_memo, mb_lost_certify,
mb_mailling,mb_sms,mb_open,mb_profile,mb_memo_call,
mb_1, mb_2, mb_3, mb_4, mb_5, mb_6, mb_7,
mb_8, mb_9, mb_10
from g4_member


INSERT INTO `g4_member` (`mb_no`) values (1);


INSERT INTO `g4_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_password_q`, `mb_password_a`, `mb_level`, `mb_jumin`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
(3, 'asd', 'asd222', '문혁이형', 'ㅁ', '2016-00-00', 'aasdwd@domain.do', 's', 'a', '', 4, '231', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 133, '2012-10-07 12:53:13', '123', '2018-03-23 11:11:22', '1512', '', '', '2018-10-23 20:35:25', '1', '1', 2, 0, 1, '0000-00-00', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '');


INSERT INTO `g4_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_password_q`, `mb_password_a`, `mb_level`, `mb_jumin`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
(1, 'admin', '*0F5CE378DBAB85E45A005FCCDC8323DE9D2537C8', '최고관리자', '최고관리자', '0000-00-00', 'admin@domain', '', '', '', 10, '*EC2A66B6D554020B8C68D442F5F31E1558D4AE69', '', '', '', '', '', '', '', '', '', '', 700, '2012-06-07 12:53:13', '27.1.72.198', '2012-03-23 20:35:25', '127.0.0.1', '', '', '2012-03-23 20:35:25', '', '', 1, 0, 1, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'kpu', '*83EEBDC5E661080F26B87E52266D0C82E0E360AD', '교수노조', '교수노조', '0000-00-00', 'kpu@kpu.or.kr', 'kpu.or.kr', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', 72369, '2018-10-26 14:19:29', '14.47.10.68', '2003-10-03 12:10:00', '', '', '', '0000-00-00 00:00:00', '', '', 0, 0, 0, '0000-00-00', '', '', 'zeroboard', '', '', '', '', '', '', '', '', '');

INSERT INTO `g4_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_password_q`, `mb_password_a`, `mb_level`, `mb_jumin`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
(4, 'seolgeum', '6c98e87c3fcf60ff', '이랜드지원대책위', '이랜드지원대책위', '0000-00-00', 'true-linux@hanmail.net', '', '', '', 3, '', '', '19750517', '', '', '', '', '', '', '', '', 20, '0000-00-00 00:00:00', '', '2007-07-19 08:42:51', '', '', '', '0000-00-00 00:00:00', '', '', 0, 0, 0, '0000-00-00', '', '', 'zeroboard', '', '', '', '', '', '', '', '', '');


INSERT INTO `g4_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_password_q`, `mb_password_a`, `mb_level`, `mb_jumin`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
(4, 'seolgeum', '6c98e87c3fcf60ff', '이랜드지원대책위', '이랜드지원대책위', '0000-00-00', 'true-linux@hanmail.net', '', '', '', 3, '', '', '19750517', '', '', '', '', '', '', '', '', 20, '0000-00-00 00:00:00', '', '2007-07-19 08:42:51', '', '', '', '0000-00-00 00:00:00', '', '', 0, 0, 0, '0000-00-00', '', '', 'zeroboard', '', '', '', '', '', '', '', '', '');


	select * from g4_write_notice order by wr_datetime desc
---------파일


CREATE TABLE IF NOT EXISTS `g4_board_file` (
  `bo_table` varchar(20) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `bf_no` int(11) NOT NULL DEFAULT '0',
  `bf_source` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bf_file` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bf_download` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bf_content` text COLLATE euckr_bin NOT NULL,
  `bf_filesize` int(11) NOT NULL DEFAULT '0',
  `bf_width` int(11) NOT NULL DEFAULT '0',
  `bf_height` smallint(6) NOT NULL DEFAULT '0',
  `bf_type` tinyint(4) NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=euckr COLLATE=euckr_bin;

select * from g4_board_file;

select * from g4_board_good;
select * from g4_write_notice;




CREATE TABLE IF NOT EXISTS `g4_board_good` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bg_flag` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bg_id`),
  UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=euckr COLLATE=euckr_bin AUTO_INCREMENT=13 ;

-

select * from g4_board_file where wr_id = 676 and bf_source = 'edit.jpg'
delete from g4_board_good

select * from g4_board_file

select * from g4_board_good
		where bo_table = 'notice' and 
		wr_id = 641 and
		mb_id = '문혁'
		
		select * from g4_board_good where 	mb_id = '문혁'
		select * from g4_board_good where bo_table = 'notice'
		select * from g4_board_good where wr_id = 641
		select * from g4_board_good where bg_id = 15
	

--
-- 테이블의 덤프 데이터 `g4_board_file`
--

INSERT INTO `g4_board_file` (`bo_table`, `wr_id`, `bf_no`, `bf_source`, `bf_file`, `bf_download`, `bf_content`, `bf_filesize`, `bf_width`, `bf_height`, `bf_type`, `bf_datetime`) VALUES
('c2', 2, 0, '한남대사태1.pdf', 'data_c2_한남대사태1.pdf', '2', '', 189468, 0, 0, 0, '2004-04-20 10:36:33'),
('c5', 2, 0, '등록금후불제서명용지(3).hwp', 'data_c5_등록금후불제서명용지(3).hwp', '210', '', 27136, 0, 0, 0, '2006-09-15 11:49:56'),
('c6', 2, 0, '060314_copy.jpg', 'data_c6_060314_copy.jpg', '30', '', 797925, 0, 0, 0, '2006-08-12 13:20:27'),
('c7', 1, 0, '후불제쟁점들.hwp', 'data_c7_후불제쟁점들.hwp', '99', '', 64516, 0, 0, 0, '2006-12-05 16:20:37'),
('c7', 2, 0, '후불제_재정계획.hwp', 'data_c7_후불제_재정계획.hwp', '86', '', 78848, 0, 0, 0, '2006-12-05 16:21:41'),
('m', 1, 0, '상집49_2m40225.hwp', 'data_m_상집49_2m40225.hwp', '1', '', 39424, 0, 0, 0, '2004-02-27 12:06:14'),



스크랩

CREATE TABLE IF NOT EXISTS `g4_scrap` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_subject` varchar(500) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_table` varchar(20) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_id` varchar(15) COLLATE euckr_bin NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ms_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=euckr COLLATE=euckr_bin AUTO_INCREMENT=6 ;

drop table g4_scrap

select bo_table,wr_id from g4_scrap where mb_id = 'so'
select * from g4_scrap
select count(*) from g4_scrap where mb_id = 'so' and bo_table = 'notice' and wr_id = 1

select wr_id,wr_subject from g4_write_notice where wr_id = 658


		select bo_table,wr_id,mb_id from g4_scrap where mb_id = 'so'
		''
select wr_subject w from g4_write_notice left join g4_scrap

select wr_subject,g.mb_id,d.mb_id,f.mb_id,g.wr_id,d.wr_id,f.wr_id
from g4_write_notice g 
left outer join g4_scrap d 
on g.wr_id = d.wr_id
left outer join g4_write_statement f 
on g.wr_id = f.wr_id
;

select * from g4_scrap

select n.wr_subject, n.wr_id, n.mb_id, sc.bo_table
from g4_scrap sc  left join g4_write_notice n
on n.wr_id = sc.wr_id 
left join g4_write_statement s 
on sc.wr_id = s.wr_id 
where bo_table != 'null'


select n.wr_subject, s.wr_subject, n.wr_id, n.mb_id, sc.bo_table
from g4_scrap sc  left join g4_write_notice n
on n.wr_id = sc.wr_id 
left join g4_write_statement s 
on sc.wr_id = s.wr_id 
where bo_table != 'null'

select * from g4_scrap , 

select n.wr_subject, sc.wr_id, sc.mb_id, sc.bo_table
from g4_scrap sc left join g4_write_notice n on n.wr_id = sc.wr_id 
left join g4_write_statement s on sc.wr_id = s.wr_id 





select n.wr_subject, sc.wr_id, sc.mb_id, sc.bo_table
from g4_write_notice n join g4_scrap and join 

where s.mb_id = 'so'


Select * From A left JOIN B
ON A.name = B.name
left JOIN C
ON A.name = C.name

출처: https://delirussum.tistory.com/142 [jihoon Docs]
;
		
select * from g4_scrap

ALTER TABLE g4_write_question CONVERT TO character SET utf8;

select * from g4_scrap 
where mb_id = 'so'
order by ms_id desc


delete from g4_scrap


select * from g4_scrap where mb_id = #{mb_id}
select * from g4_scrap where mb_id = 'so'




INSERT INTO `g4_write_precedent` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_trackback`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_last`, `wr_ip`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(3, -2, '', 3, 0, 0, '', '일반', 'normal', '테스트', '교수노조 홈페이지가 전면 개편중입니다.\r\n\r\n회원가입 등 일부기능은 제한적으로 사용중입니다.\r\n\r\n빠른 시일내에 테스트를 마치고 홈페이지 개편을 마치겠습니다.\r\n\r\n홈페이지 개편에 대한 의견이 있으신 분은 교수노조 E-mail(kpu@kpu.or.kr)로 연락주시기 바랍니다.\r\n\r\n', '', '', 0, 0, '', 3346, 0, 0, '', '1dafe0b436a2d8d5', '교육선전실', 'gyosu21@chol.com', '', '2004-04-12 16:29:11', '2004-04-12 16:29:11', '211.186.71.192', 'reappointment', '', '', '', '', '', '', '', '', '')
(4, -2, '', 4, 0, 0, '', '일반', 'normal', '테스트', '교수노조 홈페이지가 전면 개편중입니다.\r\n\r\n회원가입 등 일부기능은 제한적으로 사용중입니다.\r\n\r\n빠른 시일내에 테스트를 마치고 홈페이지 개편을 마치겠습니다.\r\n\r\n홈페이지 개편에 대한 의견이 있으신 분은 교수노조 E-mail(kpu@kpu.or.kr)로 연락주시기 바랍니다.\r\n\r\n', '', '', 0, 0, '', 3346, 0, 0, '', '1dafe0b436a2d8d5', '교육선전실', 'gyosu21@chol.com', '', '2004-04-12 16:29:11', '2004-04-12 16:29:11', '211.186.71.192', 'Wage', '', '', '', '', '', '', '', '', '')


CREATE TABLE IF NOT EXISTS `g4_write_precedent_Wage` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) COLLATE euckr_bin NOT NULL DEFAULT '',
  `ca_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_option` set('normal','noti','secret','mail','html2','html1') COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_subject` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_content` text COLLATE euckr_bin NOT NULL,
  `wr_link1` text COLLATE euckr_bin NOT NULL,
  `wr_link2` text COLLATE euckr_bin NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_trackback` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_password` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_email` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_homepage` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_last` varchar(19) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
)


CREATE TABLE IF NOT EXISTS `g4_write_precedent_Punishment` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) COLLATE euckr_bin NOT NULL DEFAULT '',
  `ca_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_option` set('normal','noti','secret','mail','html2','html1') COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_subject` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_content` text COLLATE euckr_bin NOT NULL,
  `wr_link1` text COLLATE euckr_bin NOT NULL,
  `wr_link2` text COLLATE euckr_bin NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_trackback` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_password` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_email` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_homepage` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_last` varchar(19) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
)


CREATE TABLE IF NOT EXISTS `g4_write_policy_debate` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) COLLATE euckr_bin NOT NULL DEFAULT '',
  `ca_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_option` set('normal','noti','secret','mail','html2','html1') COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_subject` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_content` text COLLATE euckr_bin NOT NULL,
  `wr_link1` text COLLATE euckr_bin NOT NULL,
  `wr_link2` text COLLATE euckr_bin NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_trackback` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_password` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_name` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_email` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_homepage` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_last` varchar(19) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`wr_id`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
)



