package com.kpu.professorunion.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kpu.professorunion.model.Member;

@Repository
public class MemberDAOImpl {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertMember(Member m) throws Exception {
		sqlSession.insert("member_join", m);
	}
	
	public Member selectLogin(String id) throws Exception {
		return (Member) sqlSession.selectOne("login_check", id);
	}
	
	public Member id_find(String email) throws Exception {
		return sqlSession.selectOne("id_find", email);
	}
	
	public String nick_overlap(String nick) throws Exception {
		return (String) sqlSession.selectOne("nick_overlap", nick);
	}
	
	public Member pass_find(String id) throws Exception {
		return (Member) sqlSession.selectOne("pass_find", id);
	}
	
	public void temporary_pass(Member m) throws Exception {
		sqlSession.update("temporary_pass", m);
	}
	
	public Member myinfo(String id) throws Exception {
		return (Member) sqlSession.selectOne("myinfo", id);
	}
	
	public void mailling(Member m) throws Exception {
		sqlSession.update("mailling", m);
	}
	
	public void open(Member m) throws Exception {
		sqlSession.update("open", m);
	}
	
	public void modify(Member m) throws Exception {
		sqlSession.update("modify", m);
	}
	
	public void delete(Member m) throws Exception {
		sqlSession.update("delete", m);
	}
	
	public void login(Member m) throws Exception {
		sqlSession.update("login", m);
	}
	
	/*
	 * @Transactional() �Ӽ�
	 * 
	 * 	isolation Ʈ����� �ݸ� ������ ����. Isolation ������ Ÿ�Կ� ���� ���ǵǾ� ����
	 *  noRollbackFor Ʈ������� �ѹ����� ���� ���� Ÿ���� ���� ex) noRollbackFor=(ItemNotFoundException.class)
	 *  propagation Ʈ����� ���� ��Ģ�� ����. Propagation ������ Ÿ�Կ� ���� ���ǵǾ� ���� �⺻���� Propagation.REQUIRED
	 *  readOnly �ϱ� ���� ���θ� ����. boolean ���� �����ϸ�, �⺻���� false
	 *  timeout Ʈ������� Ÿ�Ӿƿ� �ð��� �� ������ ����
	 * 
	 * */
}