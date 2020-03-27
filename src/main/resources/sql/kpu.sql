CREATE TABLE IF NOT EXISTS `g4_config` (
  `cf_title` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_admin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_use_point` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_norobot` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT '0',
  `cf_login_point` int(11) NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT '0',
  `cf_nick_modify` int(11) NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_login_skin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_point` int(11) NOT NULL DEFAULT '0',
  `cf_comment_point` int(11) NOT NULL DEFAULT '0',
  `cf_download_point` int(11) NOT NULL DEFAULT '0',
  `cf_search_bgcolor` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_search_color` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_write_pages` int(11) NOT NULL DEFAULT '0',
  `cf_link_target` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_delay_sec` int(11) NOT NULL DEFAULT '0',
  `cf_filter` text COLLATE euckr_bin NOT NULL,
  `cf_possible_ip` text COLLATE euckr_bin NOT NULL,
  `cf_intercept_ip` text COLLATE euckr_bin NOT NULL,
  `cf_register_skin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT 'basic',
  `cf_member_skin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_point` int(11) NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT '0',
  `cf_recommend_point` int(11) NOT NULL DEFAULT '0',
  `cf_leave_day` int(11) NOT NULL DEFAULT '0',
  `cf_search_part` int(11) NOT NULL DEFAULT '0',
  `cf_email_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_prohibit_id` text COLLATE euckr_bin NOT NULL,
  `cf_prohibit_email` text COLLATE euckr_bin NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_memo_del` int(11) NOT NULL DEFAULT '0',
  `cf_visit_del` int(11) NOT NULL DEFAULT '0',
  `cf_popular_del` int(11) NOT NULL DEFAULT '0',
  `cf_use_jumin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT '0',
  `cf_member_icon_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_height` int(11) NOT NULL DEFAULT '0',
  `cf_login_minutes` int(11) NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT '0',
  `cf_stipulation` text COLLATE euckr_bin NOT NULL,
  `cf_privacy` text COLLATE euckr_bin NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT '0',
  `cf_memo_send_point` int(11) NOT NULL DEFAULT '0',
  `cf_1_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `cf_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/* agonydb*/

create table Member (
	UID VARCHAR(20),
	UPW VARCHAR(20),
	ENABLED VARCHAR(20),
	AUTHORITY VARCHAR(20)
)



select * from g4_write_notice order by datetime desc limit 0,5




create table Agony (
	ANUM int auto_increment primary key,
	AID VARCHAR(100),
	ANAME VARCHAR(20),
	AUTHORITY VARCHAR(100),
	AUNIVERSITY VARCHAR(50),
	ATITLE VARCHAR(1000),
	ACONTENT text(255),
	ADATE DATE,
	AREAD VARCHAR(10)
)
drop table Agony

insert into Agony values('1','asd','TEST','TEST','TEST','TEST','TEST','2018-10-19','n');

create table AgonyComment (
	CNUM int auto_increment primary key,
	ANUM int(10) NOT NULL,
	CID varchar(100) NOT NULL,
	CCONTENT VARCHAR(100) NOT NULL,
	CDATE DATE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table Corruption (
	CT_NUM int auto_increment primary key,
	CT_ID VARCHAR(100),
	CT_NAME VARCHAR(20),
	CT_AUTHORITY VARCHAR(100),
	CT_UNIVERSITY VARCHAR(50),
	CT_TITLE VARCHAR(1000),
	CT_CONTENT text(255),
	CT_DATE DATE,
	CT_READ VARCHAR(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table CorruptionComment (
	CC_NUM int auto_increment primary key,
	CT_NUM int(10) NOT NULL,
	CC_ID varchar(100) NOT NULL,
	CC_CONTENT text(100) NOT NULL,
	CC_DATE DATE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from AgonyComment where anum = '3';

select count(*) from Agony where aconfirm='n'

insert into Agony(AID, ATITLE, ACONTENT, ACONFIRM, ADATE) values("hong", "tt", "ㅁㄴㅇㅁㄴㅇㄴㅁ", "n", "2018-10-23");
insert into Agony values('asd','ㅁㄴㅇㄹ','ㅁㄴㅇㄹ','2018-10-19','n');

update Agony set ATITLE='testestestest', ACONTENT='test' where ATITLE='test1';

select * from AgonyComment where anum = '3'
select * from AgonyComment;
select * from Agony;
select * from CorruptionComment;
select * from Agony where ANUM='3';
select * from Agony order by ADATE desc;
select * from Agony order by bNum desc;

DROP TABLE Agony;

delete from Agony where anum='25';


/*branchsql*/

create table branchboard(
	branchNum INT(4) auto_increment primary key,					
	branchArea varchar(255),				
	branchPosition varchar(255),				
	branchName varchar(255),
	branchUni varchar(255),
	branchMail varchar(255),
	branchKind INT(4)
)default character set utf8 collate utf8_general_ci;

show variables like 占쎌걼har%占쏙옙;

create table test(...........) 
ALTER TABLE branchboard convert to charset utf8;

select * from branchboard;

select * from branchboard WHERE branchKind = 1 order by branchNum asc
		 limit 0, 10
select * from branchboard order by branchNum limit(1),10;

drop table branchboard;

select count(*) from branchboard;

select * from branchboard order by branchNum asc limit 110, 10;

		insert 
		into 
		branchboard(
		branchNum,
		branchArea,
		branchPosition,
		branchName,
		branchUni,
		branchMail
		)
		values( 
		0,
		'占쎄퐣占쎌뒻占쏙옙筌욑옙占쎌돳',
		'�룯�빘�삢',
		'占쎌읈占쎌뒭燁삼옙',
		'揶쏅베沅볩옙占쏙옙釉경뤃占�');
		
		insert 
		into 
		branchboard(
		branchNum,
		branchArea,
		branchPosition,
		branchName,
		branchUni,
		branchMail
		)
		values( 
		0,
		'占쎈땾占쎌뜚筌욑옙�겫占�',
		'占쎈린占쎄문',
		'占쎌넺占쎄쉐沃섓옙',
		'占쎄쉐域뱀쥒占쏙옙占쏙옙釉경뤃占�');
		 
			insert 
		into 
		branchboard(
		branchNum,
		branchArea,
		branchPosition,
		branchName,
		branchUni
		)
		values( 
		0,
		'占쎄퐬占쎌뵠甕곌쑴占썽겫占�',
		'占쎈린占쎄문',
		'占쎌넺占쎄쉐沃섓옙',
		'疫꿸퀣釉욑옙占�')
		
		
		
		/*게시판 설정*/
		
CREATE TABLE IF NOT EXISTS `g4_board` (
  `bo_table` varchar(20) COLLATE euckr_bin NOT NULL DEFAULT '',
  `gr_id` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_subject` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_admin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_write_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_download_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_html_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_link_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_trackback_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_point` int(11) NOT NULL DEFAULT '0',
  `bo_write_point` int(11) NOT NULL DEFAULT '0',
  `bo_comment_point` int(11) NOT NULL DEFAULT '0',
  `bo_download_point` int(11) NOT NULL DEFAULT '0',
  `bo_use_category` tinyint(4) NOT NULL DEFAULT '0',
  `bo_category_list` text COLLATE euckr_bin NOT NULL,
  `bo_disable_tags` text COLLATE euckr_bin NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_comment` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_good` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_name` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_trackback` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_table_width` int(11) NOT NULL DEFAULT '0',
  `bo_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_new` int(11) NOT NULL DEFAULT '0',
  `bo_hot` int(11) NOT NULL DEFAULT '0',
  `bo_image_width` int(11) NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_image_head` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_image_tail` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_content_head` text COLLATE euckr_bin NOT NULL,
  `bo_content_tail` text COLLATE euckr_bin NOT NULL,
  `bo_insert_content` text COLLATE euckr_bin NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT '0',
  `bo_upload_size` int(11) NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_search` tinyint(4) NOT NULL DEFAULT '0',
  `bo_order_search` int(11) NOT NULL DEFAULT '0',
  `bo_count_write` int(11) NOT NULL DEFAULT '0',
  `bo_count_comment` int(11) NOT NULL DEFAULT '0',
  `bo_write_min` int(11) NOT NULL DEFAULT '0',
  `bo_write_max` int(11) NOT NULL DEFAULT '0',
  `bo_comment_min` int(11) NOT NULL DEFAULT '0',
  `bo_comment_max` int(11) NOT NULL DEFAULT '0',
  `bo_notice` text COLLATE euckr_bin NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_1` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_2` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_3` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_4` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_5` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_6` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_7` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_8` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_9` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `bo_10` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bo_table`),
  UNIQUE KEY `bo_table` (`bo_table`),
  FULLTEXT KEY `bo_table_2` (`bo_table`)
) ENGINE=MyISAM DEFAULT CHARSET=euckr COLLATE=euckr_bin;

drop table g4_board;

INSERT INTO `g4_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_trackback_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_disable_tags`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_comment`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_trackback`, `bo_use_list_view`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_image_head`, `bo_image_tail`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order_search`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('notice', 'groub0', '�������׼ҽ�/��������', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('news', 'groub0', '�������׼ҽ�/�ҽ�', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('statement', 'groub0', '���������ڷ�/����', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('report', 'groub0', '���������ڷ�/�����ڷ�', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('precedent', 'groub0', '�ڷ��/�Ƿ��ڷ�', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('photo', 'groub0', '�ڷ��/�����ڷ�', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('policy', 'groub0', '�ڷ��/��å�ڷ�', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('free', 'groub0', '��������/�����Խ���', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
('agony', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('corruption', 'groub0', '대학비리고발', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('quest', 'groub0', 'QA', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
('precedent_Wage', 'groub1', '임금판례자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('precedent_Punishment', 'groub1', '징계자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
('policy_debate', 'groub0', '토론회자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
		



INSERT INTO `g4_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_trackback_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_disable_tags`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_comment`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_trackback`, `bo_use_list_view`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_image_head`, `bo_image_tail`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order_search`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES


INSERT INTO `g4_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_trackback_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_disable_tags`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_comment`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_trackback`, `bo_use_list_view`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_image_head`, `bo_image_tail`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order_search`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES


INSERT INTO `g4_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_trackback_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_disable_tags`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_comment`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_trackback`, `bo_use_list_view`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_image_head`, `bo_image_tail`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order_search`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES

		
		
		
		/*게시판*/
drop table g4_write_notice
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


CREATE TABLE IF NOT EXISTS `g4_write_news` (
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

CREATE TABLE IF NOT EXISTS `g4_write_statement` (
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

CREATE TABLE IF NOT EXISTS `g4_write_report` (
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

CREATE TABLE IF NOT EXISTS `g4_write_precedent` (
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


CREATE TABLE IF NOT EXISTS `g4_write_photo` (
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


CREATE TABLE IF NOT EXISTS `g4_write_policy` (
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


CREATE TABLE IF NOT EXISTS `g4_write_free` (
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


CREATE TABLE IF NOT EXISTS `g4_write_myquestion` (
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


CREATE TABLE IF NOT EXISTS `g4_write_press` (
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



insert into Agony(AID, ATITLE, ACONTENT, ACONFIRM, ADATE) values("hong", "tt", "ㅁㄴㅇㅁㄴㅇㄴㅁ", "n", "2018-10-23");
