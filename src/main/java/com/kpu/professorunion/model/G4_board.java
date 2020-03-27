package com.kpu.professorunion.model;

//테이블 구조 `g4_board`	 
public class G4_board {
	private String bo_table;
	private String gr_id;
	private String bo_subject;
	private String bo_admin;
	private int bo_list_level;
	private int bo_read_level;
	private int bo_write_level;
	private int bo_reply_level;
	private int bo_comment_level;
	private int bo_upload_level;
	private int bo_download_level;
	private int bo_html_level;
	private int bo_link_level;
	private int bo_trackback_level;
	private int bo_count_delete;
	private int bo_count_modify;
	private int bo_read_point;
	private int bo_write_point;
	private int bo_comment_point;
	private int bo_download_point;
	private int bo_use_category;
	private String bo_category_list;
	private String bo_disable_tags;
	private int bo_use_sideview;
	private int bo_use_file_content;
	private int bo_use_secret;
	private int bo_use_dhtml_editor;
	private int bo_use_rss_view;
	private int bo_use_comment;
	private int bo_use_good;
	private int bo_use_nogood;
	private int bo_use_name;
	private int bo_use_signature;
	private int bo_use_ip_view;
	private int bo_use_trackback;
	private int bo_use_list_view;
	private int bo_use_list_content;
	private int bo_table_width;
	private int bo_subject_len;
	private int bo_page_rows;
	private int bo_new;
	private int bo_hot;
	private int bo_image_width;
	private String bo_skin;
	private String bo_image_head;
	private String bo_image_tail;
	private String bo_include_head;
	private String bo_include_tail;
	private String bo_content_head;
	private String bo_content_tail;
	private String bo_insert_content;
	private int bo_gallery_cols;
	private int bo_upload_size;
	private int  bo_reply_order;
	private int bo_use_search;
	private int bo_order_search;
	private int bo_count_write;
	private int bo_count_comment;
	private int bo_write_min;
	private int bo_write_max;
	private int bo_comment_min;
	private int bo_comment_max;
	private String bo_notice;
	private int bo_upload_count;
	private int bo_use_email;
	private String bo_sort_field;
	private String bo_1_subj;
	private String bo_2_subj;
	private String bo_3_subj;
	private String bo_4_subj;
	private String bo_5_subj;
	private String bo_6_subj;
	private String bo_7_subj;
	private String bo_8_subj;
	private String bo_9_subj;
	private String bo_10_subj;
	private String bo_1;
	private String bo_2;
	private String bo_3;
	private String bo_4;
	private String bo_5;
	private String bo_6;
	private String bo_7;
	private String bo_8;
	private String bo_9;
	private String bo_10;
		   
  public G4_board() {
			   
   }

		public G4_board(String bo_table, String gr_id, String bo_subject, String bo_admin, int bo_list_level,
				int bo_read_level, int bo_write_level, int bo_reply_level, int bo_comment_level, int bo_upload_level,
				int bo_download_level, int bo_html_level, int bo_link_level, int bo_trackback_level, int bo_count_delete,
				int bo_count_modify, int bo_read_point, int bo_write_point, int bo_comment_point, int bo_download_point,
				int bo_use_category, String bo_category_list, String bo_disable_tags, int bo_use_sideview,
				int bo_use_file_content, int bo_use_secret, int bo_use_dhtml_editor, int bo_use_rss_view,
				int bo_use_comment, int bo_use_good, int bo_use_nogood, int bo_use_name, int bo_use_signature,
				int bo_use_ip_view, int bo_use_trackback, int bo_use_list_view, int bo_use_list_content, int bo_table_width,
				int bo_subject_len, int bo_page_rows, int bo_new, int bo_hot, int bo_image_width, String bo_skin,
				String bo_image_head, String bo_image_tail, String bo_include_head, String bo_include_tail,
				String bo_content_head, String bo_content_tail, String bo_insert_content, int bo_gallery_cols,
				int bo_upload_size, int bo_reply_order, int bo_use_search, int bo_order_search, int bo_count_write,
				int bo_count_comment, int bo_write_min, int bo_write_max, int bo_comment_min, int bo_comment_max,
				String bo_notice, int bo_upload_count, int bo_use_email, String bo_sort_field, String bo_1_subj,
				String bo_2_subj, String bo_3_subj, String bo_4_subj, String bo_5_subj, String bo_6_subj, String bo_7_subj,
				String bo_8_subj, String bo_9_subj, String bo_10_subj, String bo_1, String bo_2, String bo_3, String bo_4,
				String bo_5, String bo_6, String bo_7, String bo_8, String bo_9, String bo_10) {
			
			this.bo_table = bo_table;
			this.gr_id = gr_id;
			this.bo_subject = bo_subject;
			this.bo_admin = bo_admin;
			this.bo_list_level = bo_list_level;
			this.bo_read_level = bo_read_level;
			this.bo_write_level = bo_write_level;
			this.bo_reply_level = bo_reply_level;
			this.bo_comment_level = bo_comment_level;
			this.bo_upload_level = bo_upload_level;
			this.bo_download_level = bo_download_level;
			this.bo_html_level = bo_html_level;
			this.bo_link_level = bo_link_level;
			this.bo_trackback_level = bo_trackback_level;
			this.bo_count_delete = bo_count_delete;
			this.bo_count_modify = bo_count_modify;
			this.bo_read_point = bo_read_point;
			this.bo_write_point = bo_write_point;
			this.bo_comment_point = bo_comment_point;
			this.bo_download_point = bo_download_point;
			this.bo_use_category = bo_use_category;
			this.bo_category_list = bo_category_list;
			this.bo_disable_tags = bo_disable_tags;
			this.bo_use_sideview = bo_use_sideview;
			this.bo_use_file_content = bo_use_file_content;
			this.bo_use_secret = bo_use_secret;
			this.bo_use_dhtml_editor = bo_use_dhtml_editor;
			this.bo_use_rss_view = bo_use_rss_view;
			this.bo_use_comment = bo_use_comment;
			this.bo_use_good = bo_use_good;
			this.bo_use_nogood = bo_use_nogood;
			this.bo_use_name = bo_use_name;
			this.bo_use_signature = bo_use_signature;
			this.bo_use_ip_view = bo_use_ip_view;
			this.bo_use_trackback = bo_use_trackback;
			this.bo_use_list_view = bo_use_list_view;
			this.bo_use_list_content = bo_use_list_content;
			this.bo_table_width = bo_table_width;
			this.bo_subject_len = bo_subject_len;
			this.bo_page_rows = bo_page_rows;
			this.bo_new = bo_new;
			this.bo_hot = bo_hot;
			this.bo_image_width = bo_image_width;
			this.bo_skin = bo_skin;
			this.bo_image_head = bo_image_head;
			this.bo_image_tail = bo_image_tail;
			this.bo_include_head = bo_include_head;
			this.bo_include_tail = bo_include_tail;
			this.bo_content_head = bo_content_head;
			this.bo_content_tail = bo_content_tail;
			this.bo_insert_content = bo_insert_content;
			this.bo_gallery_cols = bo_gallery_cols;
			this.bo_upload_size = bo_upload_size;
			this.bo_reply_order = bo_reply_order;
			this.bo_use_search = bo_use_search;
			this.bo_order_search = bo_order_search;
			this.bo_count_write = bo_count_write;
			this.bo_count_comment = bo_count_comment;
			this.bo_write_min = bo_write_min;
			this.bo_write_max = bo_write_max;
			this.bo_comment_min = bo_comment_min;
			this.bo_comment_max = bo_comment_max;
			this.bo_notice = bo_notice;
			this.bo_upload_count = bo_upload_count;
			this.bo_use_email = bo_use_email;
			this.bo_sort_field = bo_sort_field;
			this.bo_1_subj = bo_1_subj;
			this.bo_2_subj = bo_2_subj;
			this.bo_3_subj = bo_3_subj;
			this.bo_4_subj = bo_4_subj;
			this.bo_5_subj = bo_5_subj;
			this.bo_6_subj = bo_6_subj;
			this.bo_7_subj = bo_7_subj;
			this.bo_8_subj = bo_8_subj;
			this.bo_9_subj = bo_9_subj;
			this.bo_10_subj = bo_10_subj;
			this.bo_1 = bo_1;
			this.bo_2 = bo_2;
			this.bo_3 = bo_3;
			this.bo_4 = bo_4;
			this.bo_5 = bo_5;
			this.bo_6 = bo_6;
			this.bo_7 = bo_7;
			this.bo_8 = bo_8;
			this.bo_9 = bo_9;
			this.bo_10 = bo_10;
		}

		public String getBo_table() {
			return bo_table;
		}

		public void setBo_table(String bo_table) {
			this.bo_table = bo_table;
		}

		public String getGr_id() {
			return gr_id;
		}

		public void setGr_id(String gr_id) {
			this.gr_id = gr_id;
		}

		public String getBo_subject() {
			return bo_subject;
		}

		public void setBo_subject(String bo_subject) {
			this.bo_subject = bo_subject;
		}

		public String getBo_admin() {
			return bo_admin;
		}

		public void setBo_admin(String bo_admin) {
			this.bo_admin = bo_admin;
		}

		public int getBo_list_level() {
			return bo_list_level;
		}

		public void setBo_list_level(int bo_list_level) {
			this.bo_list_level = bo_list_level;
		}

		public int getBo_read_level() {
			return bo_read_level;
		}

		public void setBo_read_level(int bo_read_level) {
			this.bo_read_level = bo_read_level;
		}

		public int getBo_write_level() {
			return bo_write_level;
		}

		public void setBo_write_level(int bo_write_level) {
			this.bo_write_level = bo_write_level;
		}

		public int getBo_reply_level() {
			return bo_reply_level;
		}

		public void setBo_reply_level(int bo_reply_level) {
			this.bo_reply_level = bo_reply_level;
		}

		public int getBo_comment_level() {
			return bo_comment_level;
		}

		public void setBo_comment_level(int bo_comment_level) {
			this.bo_comment_level = bo_comment_level;
		}

		public int getBo_upload_level() {
			return bo_upload_level;
		}

		public void setBo_upload_level(int bo_upload_level) {
			this.bo_upload_level = bo_upload_level;
		}

		public int getBo_download_level() {
			return bo_download_level;
		}

		public void setBo_download_level(int bo_download_level) {
			this.bo_download_level = bo_download_level;
		}

		public int getBo_html_level() {
			return bo_html_level;
		}

		public void setBo_html_level(int bo_html_level) {
			this.bo_html_level = bo_html_level;
		}

		public int getBo_link_level() {
			return bo_link_level;
		}

		public void setBo_link_level(int bo_link_level) {
			this.bo_link_level = bo_link_level;
		}

		public int getBo_trackback_level() {
			return bo_trackback_level;
		}

		public void setBo_trackback_level(int bo_trackback_level) {
			this.bo_trackback_level = bo_trackback_level;
		}

		public int getBo_count_delete() {
			return bo_count_delete;
		}

		public void setBo_count_delete(int bo_count_delete) {
			this.bo_count_delete = bo_count_delete;
		}

		public int getBo_count_modify() {
			return bo_count_modify;
		}

		public void setBo_count_modify(int bo_count_modify) {
			this.bo_count_modify = bo_count_modify;
		}

		public int getBo_read_point() {
			return bo_read_point;
		}

		public void setBo_read_point(int bo_read_point) {
			this.bo_read_point = bo_read_point;
		}

		public int getBo_write_point() {
			return bo_write_point;
		}

		public void setBo_write_point(int bo_write_point) {
			this.bo_write_point = bo_write_point;
		}

		public int getBo_comment_point() {
			return bo_comment_point;
		}

		public void setBo_comment_point(int bo_comment_point) {
			this.bo_comment_point = bo_comment_point;
		}

		public int getBo_download_point() {
			return bo_download_point;
		}

		public void setBo_download_point(int bo_download_point) {
			this.bo_download_point = bo_download_point;
		}

		public int getBo_use_category() {
			return bo_use_category;
		}

		public void setBo_use_category(int bo_use_category) {
			this.bo_use_category = bo_use_category;
		}

		public String getBo_category_list() {
			return bo_category_list;
		}

		public void setBo_category_list(String bo_category_list) {
			this.bo_category_list = bo_category_list;
		}

		public String getBo_disable_tags() {
			return bo_disable_tags;
		}

		public void setBo_disable_tags(String bo_disable_tags) {
			this.bo_disable_tags = bo_disable_tags;
		}

		public int getBo_use_sideview() {
			return bo_use_sideview;
		}

		public void setBo_use_sideview(int bo_use_sideview) {
			this.bo_use_sideview = bo_use_sideview;
		}

		public int getBo_use_file_content() {
			return bo_use_file_content;
		}

		public void setBo_use_file_content(int bo_use_file_content) {
			this.bo_use_file_content = bo_use_file_content;
		}

		public int getBo_use_secret() {
			return bo_use_secret;
		}

		public void setBo_use_secret(int bo_use_secret) {
			this.bo_use_secret = bo_use_secret;
		}

		public int getBo_use_dhtml_editor() {
			return bo_use_dhtml_editor;
		}

		public void setBo_use_dhtml_editor(int bo_use_dhtml_editor) {
			this.bo_use_dhtml_editor = bo_use_dhtml_editor;
		}

		public int getBo_use_rss_view() {
			return bo_use_rss_view;
		}

		public void setBo_use_rss_view(int bo_use_rss_view) {
			this.bo_use_rss_view = bo_use_rss_view;
		}

		public int getBo_use_comment() {
			return bo_use_comment;
		}

		public void setBo_use_comment(int bo_use_comment) {
			this.bo_use_comment = bo_use_comment;
		}

		public int getBo_use_good() {
			return bo_use_good;
		}

		public void setBo_use_good(int bo_use_good) {
			this.bo_use_good = bo_use_good;
		}

		public int getBo_use_nogood() {
			return bo_use_nogood;
		}

		public void setBo_use_nogood(int bo_use_nogood) {
			this.bo_use_nogood = bo_use_nogood;
		}

		public int getBo_use_name() {
			return bo_use_name;
		}

		public void setBo_use_name(int bo_use_name) {
			this.bo_use_name = bo_use_name;
		}

		public int getBo_use_signature() {
			return bo_use_signature;
		}

		public void setBo_use_signature(int bo_use_signature) {
			this.bo_use_signature = bo_use_signature;
		}

		public int getBo_use_ip_view() {
			return bo_use_ip_view;
		}

		public void setBo_use_ip_view(int bo_use_ip_view) {
			this.bo_use_ip_view = bo_use_ip_view;
		}

		public int getBo_use_trackback() {
			return bo_use_trackback;
		}

		public void setBo_use_trackback(int bo_use_trackback) {
			this.bo_use_trackback = bo_use_trackback;
		}

		public int getBo_use_list_view() {
			return bo_use_list_view;
		}

		public void setBo_use_list_view(int bo_use_list_view) {
			this.bo_use_list_view = bo_use_list_view;
		}

		public int getBo_use_list_content() {
			return bo_use_list_content;
		}

		public void setBo_use_list_content(int bo_use_list_content) {
			this.bo_use_list_content = bo_use_list_content;
		}

		public int getBo_table_width() {
			return bo_table_width;
		}

		public void setBo_table_width(int bo_table_width) {
			this.bo_table_width = bo_table_width;
		}

		public int getBo_subject_len() {
			return bo_subject_len;
		}

		public void setBo_subject_len(int bo_subject_len) {
			this.bo_subject_len = bo_subject_len;
		}

		public int getBo_page_rows() {
			return bo_page_rows;
		}

		public void setBo_page_rows(int bo_page_rows) {
			this.bo_page_rows = bo_page_rows;
		}

		public int getBo_new() {
			return bo_new;
		}

		public void setBo_new(int bo_new) {
			this.bo_new = bo_new;
		}

		public int getBo_hot() {
			return bo_hot;
		}

		public void setBo_hot(int bo_hot) {
			this.bo_hot = bo_hot;
		}

		public int getBo_image_width() {
			return bo_image_width;
		}

		public void setBo_image_width(int bo_image_width) {
			this.bo_image_width = bo_image_width;
		}

		public String getBo_skin() {
			return bo_skin;
		}

		public void setBo_skin(String bo_skin) {
			this.bo_skin = bo_skin;
		}

		public String getBo_image_head() {
			return bo_image_head;
		}

		public void setBo_image_head(String bo_image_head) {
			this.bo_image_head = bo_image_head;
		}

		public String getBo_image_tail() {
			return bo_image_tail;
		}

		public void setBo_image_tail(String bo_image_tail) {
			this.bo_image_tail = bo_image_tail;
		}

		public String getBo_include_head() {
			return bo_include_head;
		}

		public void setBo_include_head(String bo_include_head) {
			this.bo_include_head = bo_include_head;
		}

		public String getBo_include_tail() {
			return bo_include_tail;
		}

		public void setBo_include_tail(String bo_include_tail) {
			this.bo_include_tail = bo_include_tail;
		}

		public String getBo_content_head() {
			return bo_content_head;
		}

		public void setBo_content_head(String bo_content_head) {
			this.bo_content_head = bo_content_head;
		}

		public String getBo_content_tail() {
			return bo_content_tail;
		}

		public void setBo_content_tail(String bo_content_tail) {
			this.bo_content_tail = bo_content_tail;
		}

		public String getBo_insert_content() {
			return bo_insert_content;
		}

		public void setBo_insert_content(String bo_insert_content) {
			this.bo_insert_content = bo_insert_content;
		}

		public int getBo_gallery_cols() {
			return bo_gallery_cols;
		}

		public void setBo_gallery_cols(int bo_gallery_cols) {
			this.bo_gallery_cols = bo_gallery_cols;
		}

		public int getBo_upload_size() {
			return bo_upload_size;
		}

		public void setBo_upload_size(int bo_upload_size) {
			this.bo_upload_size = bo_upload_size;
		}

		public int getBo_reply_order() {
			return bo_reply_order;
		}

		public void setBo_reply_order(int bo_reply_order) {
			this.bo_reply_order = bo_reply_order;
		}

		public int getBo_use_search() {
			return bo_use_search;
		}

		public void setBo_use_search(int bo_use_search) {
			this.bo_use_search = bo_use_search;
		}

		public int getBo_order_search() {
			return bo_order_search;
		}

		public void setBo_order_search(int bo_order_search) {
			this.bo_order_search = bo_order_search;
		}

		public int getBo_count_write() {
			return bo_count_write;
		}

		public void setBo_count_write(int bo_count_write) {
			this.bo_count_write = bo_count_write;
		}

		public int getBo_count_comment() {
			return bo_count_comment;
		}

		public void setBo_count_comment(int bo_count_comment) {
			this.bo_count_comment = bo_count_comment;
		}

		public int getBo_write_min() {
			return bo_write_min;
		}

		public void setBo_write_min(int bo_write_min) {
			this.bo_write_min = bo_write_min;
		}

		public int getBo_write_max() {
			return bo_write_max;
		}

		public void setBo_write_max(int bo_write_max) {
			this.bo_write_max = bo_write_max;
		}

		public int getBo_comment_min() {
			return bo_comment_min;
		}

		public void setBo_comment_min(int bo_comment_min) {
			this.bo_comment_min = bo_comment_min;
		}

		public int getBo_comment_max() {
			return bo_comment_max;
		}

		public void setBo_comment_max(int bo_comment_max) {
			this.bo_comment_max = bo_comment_max;
		}

		public String getBo_notice() {
			return bo_notice;
		}

		public void setBo_notice(String bo_notice) {
			this.bo_notice = bo_notice;
		}

		public int getBo_upload_count() {
			return bo_upload_count;
		}

		public void setBo_upload_count(int bo_upload_count) {
			this.bo_upload_count = bo_upload_count;
		}

		public int getBo_use_email() {
			return bo_use_email;
		}

		public void setBo_use_email(int bo_use_email) {
			this.bo_use_email = bo_use_email;
		}

		public String getBo_sort_field() {
			return bo_sort_field;
		}

		public void setBo_sort_field(String bo_sort_field) {
			this.bo_sort_field = bo_sort_field;
		}

		public String getBo_1_subj() {
			return bo_1_subj;
		}

		public void setBo_1_subj(String bo_1_subj) {
			this.bo_1_subj = bo_1_subj;
		}

		public String getBo_2_subj() {
			return bo_2_subj;
		}

		public void setBo_2_subj(String bo_2_subj) {
			this.bo_2_subj = bo_2_subj;
		}

		public String getBo_3_subj() {
			return bo_3_subj;
		}

		public void setBo_3_subj(String bo_3_subj) {
			this.bo_3_subj = bo_3_subj;
		}

		public String getBo_4_subj() {
			return bo_4_subj;
		}

		public void setBo_4_subj(String bo_4_subj) {
			this.bo_4_subj = bo_4_subj;
		}

		public String getBo_5_subj() {
			return bo_5_subj;
		}

		public void setBo_5_subj(String bo_5_subj) {
			this.bo_5_subj = bo_5_subj;
		}

		public String getBo_6_subj() {
			return bo_6_subj;
		}

		public void setBo_6_subj(String bo_6_subj) {
			this.bo_6_subj = bo_6_subj;
		}

		public String getBo_7_subj() {
			return bo_7_subj;
		}

		public void setBo_7_subj(String bo_7_subj) {
			this.bo_7_subj = bo_7_subj;
		}

		public String getBo_8_subj() {
			return bo_8_subj;
		}

		public void setBo_8_subj(String bo_8_subj) {
			this.bo_8_subj = bo_8_subj;
		}

		public String getBo_9_subj() {
			return bo_9_subj;
		}

		public void setBo_9_subj(String bo_9_subj) {
			this.bo_9_subj = bo_9_subj;
		}

		public String getBo_10_subj() {
			return bo_10_subj;
		}

		public void setBo_10_subj(String bo_10_subj) {
			this.bo_10_subj = bo_10_subj;
		}

		public String getBo_1() {
			return bo_1;
		}

		public void setBo_1(String bo_1) {
			this.bo_1 = bo_1;
		}

		public String getBo_2() {
			return bo_2;
		}

		public void setBo_2(String bo_2) {
			this.bo_2 = bo_2;
		}

		public String getBo_3() {
			return bo_3;
		}

		public void setBo_3(String bo_3) {
			this.bo_3 = bo_3;
		}

		public String getBo_4() {
			return bo_4;
		}

		public void setBo_4(String bo_4) {
			this.bo_4 = bo_4;
		}

		public String getBo_5() {
			return bo_5;
		}

		public void setBo_5(String bo_5) {
			this.bo_5 = bo_5;
		}

		public String getBo_6() {
			return bo_6;
		}

		public void setBo_6(String bo_6) {
			this.bo_6 = bo_6;
		}

		public String getBo_7() {
			return bo_7;
		}

		public void setBo_7(String bo_7) {
			this.bo_7 = bo_7;
		}

		public String getBo_8() {
			return bo_8;
		}

		public void setBo_8(String bo_8) {
			this.bo_8 = bo_8;
		}

		public String getBo_9() {
			return bo_9;
		}

		public void setBo_9(String bo_9) {
			this.bo_9 = bo_9;
		}

		public String getBo_10() {
			return bo_10;
		}

		public void setBo_10(String bo_10) {
			this.bo_10 = bo_10;
		}	   
}
