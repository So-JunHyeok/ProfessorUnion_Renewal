package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_memo
public class G4_memo {
	
	  private int me_id;
	  private String me_recv_mb_id;
	  private String me_send_mb_id;
	  private Timestamp me_send_datetime;
	  private Timestamp me_read_datetime;
	  private String me_memo;
	
	public G4_memo() {
		
	}

	public G4_memo(int me_id, String me_recv_mb_id, String me_send_mb_id, Timestamp me_send_datetime,
			Timestamp me_read_datetime, String me_memo) {
	
		this.me_id = me_id;
		this.me_recv_mb_id = me_recv_mb_id;
		this.me_send_mb_id = me_send_mb_id;
		this.me_send_datetime = me_send_datetime;
		this.me_read_datetime = me_read_datetime;
		this.me_memo = me_memo;
	}

	public int getMe_id() {
		return me_id;
	}

	public void setMe_id(int me_id) {
		this.me_id = me_id;
	}

	public String getMe_recv_mb_id() {
		return me_recv_mb_id;
	}

	public void setMe_recv_mb_id(String me_recv_mb_id) {
		this.me_recv_mb_id = me_recv_mb_id;
	}

	public String getMe_send_mb_id() {
		return me_send_mb_id;
	}

	public void setMe_send_mb_id(String me_send_mb_id) {
		this.me_send_mb_id = me_send_mb_id;
	}

	public Timestamp getMe_send_datetime() {
		return me_send_datetime;
	}

	public void setMe_send_datetime(Timestamp me_send_datetime) {
		this.me_send_datetime = me_send_datetime;
	}

	public Timestamp getMe_read_datetime() {
		return me_read_datetime;
	}

	public void setMe_read_datetime(Timestamp me_read_datetime) {
		this.me_read_datetime = me_read_datetime;
	}

	public String getMe_memo() {
		return me_memo;
	}

	public void setMe_memo(String me_memo) {
		this.me_memo = me_memo;
	}
}
