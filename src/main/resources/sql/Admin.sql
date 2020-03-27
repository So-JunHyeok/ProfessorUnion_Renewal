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

drop table g4_config;

select cf_filter from g4_config;

select cf_use_copy_log, cf_title, cf_admin, cf_popular_del, cf_open_modify,
cf_login_minutes, cf_visit_del, cf_new_rows, cf_cut_name, cf_nick_modify, 
cf_intercept_ip, cf_filter
from g4_config;

insert into `g4_config` (`cf_use_copy_log`, `cf_title`, `cf_admin`, `cf_popular_del`, `cf_open_modify`,
`cf_login_minutes`, `cf_visit_del`, `cf_new_rows`, `cf_cut_name`, `cf_nick_modify`, `cf_intercept_ip`)
values('10', '��������', 'kpu', '10', '10', '10', '10', '10', '10', '10', '10');


INSERT INTO `g4_config` (`cf_title`, `cf_admin`, `cf_use_point`, `cf_use_norobot`, `cf_use_copy_log`, `cf_use_email_certify`, `cf_login_point`, `cf_cut_name`, `cf_nick_modify`, `cf_new_skin`, `cf_login_skin`, `cf_new_rows`, `cf_search_skin`, `cf_connect_skin`, `cf_read_point`, `cf_write_point`, `cf_comment_point`, `cf_download_point`, `cf_search_bgcolor`, `cf_search_color`, `cf_write_pages`, `cf_link_target`, `cf_delay_sec`, `cf_filter`, `cf_possible_ip`, `cf_intercept_ip`, `cf_register_skin`, `cf_member_skin`, `cf_use_homepage`, `cf_req_homepage`, `cf_use_tel`, `cf_req_tel`, `cf_use_hp`, `cf_req_hp`, `cf_use_addr`, `cf_req_addr`, `cf_use_signature`, `cf_req_signature`, `cf_use_profile`, `cf_req_profile`, `cf_register_level`, `cf_register_point`, `cf_icon_level`, `cf_use_recommend`, `cf_recommend_point`, `cf_leave_day`, `cf_search_part`, `cf_email_use`, `cf_email_wr_super_admin`, `cf_email_wr_group_admin`, `cf_email_wr_board_admin`, `cf_email_wr_write`, `cf_email_wr_comment_all`, `cf_email_mb_super_admin`, `cf_email_mb_member`, `cf_email_po_super_admin`, `cf_prohibit_id`, `cf_prohibit_email`, `cf_new_del`, `cf_memo_del`, `cf_visit_del`, `cf_popular_del`, `cf_use_jumin`, `cf_use_member_icon`, `cf_member_icon_size`, `cf_member_icon_width`, `cf_member_icon_height`, `cf_login_minutes`, `cf_image_extension`, `cf_flash_extension`, `cf_movie_extension`, `cf_formmail_is_member`, `cf_page_rows`, `cf_visit`, `cf_max_po_id`, `cf_stipulation`, `cf_privacy`, `cf_open_modify`, `cf_memo_send_point`, `cf_1_subj`, `cf_2_subj`, `cf_3_subj`, `cf_4_subj`, `cf_5_subj`, `cf_6_subj`, `cf_7_subj`, `cf_8_subj`, `cf_9_subj`, `cf_10_subj`, `cf_1`, `cf_2`, `cf_3`, `cf_4`, `cf_5`, `cf_6`, `cf_7`, `cf_8`, `cf_9`, `cf_10`) VALUES
('���������뵿����', 'kpu', 1, 0, 1, 0, 100, 15, 60, 'basic', '', 15, 'basic', 'basic', -1, 5, 1, 0, 'YELLOW', 'RED', 10, '_blank', 30, 0, '', '', 'basic', 'basic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1000, 2, 0, 0, 30, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 180, 180, 180, 0, 2, 5000, 22, 22, 10, 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 1, 15, '����:82,����:256,�ִ�:979,��ü:569224', 0, 0, 0, 0, 500, '', '', '', '', '', '', '', '', '', '', '�մ�|�Ϲ�ȸ��|��ȸ��|���տ�|�繫��|�ĺ�������||||������', '', '', '', '', '', '', '', '', '');

SELECT   mb_no,   mb_id,   mb_name,   mb_nick,   mb_level,   mb_open, 
mb_intercept_date   FROM g4_member 


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




INSERT INTO `g4_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_trackback_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_disable_tags`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_comment`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_trackback`, `bo_use_list_view`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_image_head`, `bo_image_tail`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order_search`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('agony', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('corruption', 'groub0', '대학비리고발', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('quest', 'groub0', 'QA', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');


INSERT INTO `g4_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_trackback_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_disable_tags`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_comment`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_trackback`, `bo_use_list_view`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_image_head`, `bo_image_tail`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order_search`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('precedent_Wage', 'groub1', '임금판례자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('precedent_Punishment', 'groub1', '징계자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');


INSERT INTO `g4_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_trackback_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_disable_tags`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_comment`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_trackback`, `bo_use_list_view`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_image_head`, `bo_image_tail`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order_search`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('policy_debate', 'groub0', '토론회자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');


INSERT INTO `g4_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_trackback_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_disable_tags`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_comment`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_trackback`, `bo_use_list_view`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_image_head`, `bo_image_tail`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order_search`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('notice', 'groub0', '공지사항', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('news', 'groub0', '소식', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('statement', 'groub0', '성명서', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('report', 'groub0', '보도자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('photo', 'groub0', '사진자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('policy', 'groub0', '정책자료', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('free', 'groub0', '자유게시판', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('corruption', 'groub0', '대학비리고발', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('quest', 'groub0', 'Q&A', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('precedent_Wage', '', '임금판례', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('precedent_Punishment', 'groub0', '징계판례', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('policy_debate', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('precedent', 'groub0', '재임용판례', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'groub0', '상담신청', '', 0, 0, 0, 0, 0, 0, 0, 9, 3, 10, 1, 1, 0, 10, 5, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 760, 60, 10, 24, 100, 600, 'basic', '', '', '../_head.php', '../_tail.php', '', '', '', 4, 524288, 1, 0, 0, 3208, 138, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),













update g4_board set bo_table ='question' where bo_subject ='QA';


		select bo_subject, bo_list_level, bo_read_level, bo_write_level, bo_reply_level, 
		bo_comment_level, bo_upload_level, bo_download_level
		from g4_board
		where bo_table = "notice";





insert into `g4_config();

create table main_img_file(
	cf_path varchar(255) PRIMARY KEY not null,
	cf_source varchar(255) not null,
	cf_file varchar(255) not null,
	cf_filesize int(11) default 0 not null,
	cf_datetime datetime default current_timestamp on update current_timestamp not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from main_img_file;






CREATE TABLE IF NOT EXISTS `g4_visit` (
  `vi_id` int(11) NOT NULL AUTO_INCREMENT,
  `vi_ip` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text COLLATE euckr_bin NOT NULL,
  `vi_agent` varchar(255) COLLATE euckr_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`vi_id`),
  UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  KEY `index2` (`vi_date`)
) ENGINE=MyISAM DEFAULT CHARSET=euckr COLLATE=euckr_bin;

drop table g4_visit;
select * from g4_visit;
select * from g4_member where mb_id = 'so'

delete from g4_member mb_id = 'so'

select * from main_img_file;
drop table main_img_file;

insert into main_img_file values('mainbanner','source1','file1','1','0000-00-00-0000');
insert into main_img_file values('prbanner1','source2','file2','2','0000-00-00-0000');
insert into main_img_file values('prbanner2','source3','file3','3','0000-00-00-0000');
insert into main_img_file values('prbanner3','source4','file4','4','0000-00-00-0000');

select cf_path, cf_source, cf_file, cf_filesize from main_img_file;
select cf_path, cf_datetime from main_img_file;








