package com.kpu.professorunion.dao;

import com.kpu.professorunion.model.Member;

public interface MemberService {
	
	public void insertMember(Member m) throws Exception;
	public Member selectLogin(String id) throws Exception;
	public int idCheck(String id) throws Exception;
	public Member id_find(String email) throws Exception;
	public String nick_overlap(String nick) throws Exception;
	public Member pass_find(String id) throws Exception;
	public void temporary_pass(Member m) throws Exception;
	public Member myinfo(String id) throws Exception;
	public void mailling(Member m) throws Exception;
	public void open(Member m) throws Exception;
	public void modify(Member m) throws Exception;
	public void delete(Member m) throws Exception;
	public void login(Member m) throws Exception;
}
