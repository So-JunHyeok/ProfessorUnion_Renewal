package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 `g4_board_file`
public class G4_board_file {
	
	   private String bo_table;
	   private int wr_id;
	   private int bf_no;
	   private String bf_source;
	   private String bf_file;
	   private String bf_download;
	   private String bf_content;
	   private int bf_filesize;
	   private int bf_width;
	   private int bf_height;
	   private int bf_type;
	   private Timestamp bf_datetime;
	
	   public G4_board_file() {
		   
	   }
	   
	   public G4_board_file(String bo_table, int wr_id, int bf_no, String bf_source, String bf_file, String bf_download,
			String bf_content, int bf_filesize, int bf_width, int bf_height, int bf_type, Timestamp bf_datetime) {
		
		this.bo_table = bo_table;
		this.wr_id = wr_id;
		this.bf_no = bf_no;
		this.bf_source = bf_source;
		this.bf_file = bf_file;
		this.bf_download = bf_download;
		this.bf_content = bf_content;
		this.bf_filesize = bf_filesize;
		this.bf_width = bf_width;
		this.bf_height = bf_height;
		this.bf_type = bf_type;
		this.bf_datetime = bf_datetime;
	}

	public String getBo_table() {
		return bo_table;
	}

	public void setBo_table(String bo_table) {
		this.bo_table = bo_table;
	}

	public int getWr_id() {
		return wr_id;
	}

	public void setWr_id(int wr_id) {
		this.wr_id = wr_id;
	}

	public int getBf_no() {
		return bf_no;
	}

	public void setBf_no(int bf_no) {
		this.bf_no = bf_no;
	}

	public String getBf_source() {
		return bf_source;
	}

	public void setBf_source(String bf_source) {
		this.bf_source = bf_source;
	}

	public String getBf_file() {
		return bf_file;
	}

	public void setBf_file(String bf_file) {
		this.bf_file = bf_file;
	}

	public String getBf_download() {
		return bf_download;
	}

	public void setBf_download(String bf_download) {
		this.bf_download = bf_download;
	}

	public String getBf_content() {
		return bf_content;
	}

	public void setBf_content(String bf_content) {
		this.bf_content = bf_content;
	}

	public int getBf_filesize() {
		return bf_filesize;
	}

	public void setBf_filesize(int bf_filesize) {
		this.bf_filesize = bf_filesize;
	}

	public int getBf_width() {
		return bf_width;
	}

	public void setBf_width(int bf_width) {
		this.bf_width = bf_width;
	}

	public int getBf_height() {
		return bf_height;
	}

	public void setBf_height(int bf_height) {
		this.bf_height = bf_height;
	}

	public int getBf_type() {
		return bf_type;
	}

	public void setBf_type(int bf_type) {
		this.bf_type = bf_type;
	}

	public Timestamp getBf_datetime() {
		return bf_datetime;
	}

	public void setBf_datetime(Timestamp bf_datetime) {
		this.bf_datetime = bf_datetime;
	}
}
