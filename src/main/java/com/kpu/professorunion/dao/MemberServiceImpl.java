package com.kpu.professorunion.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kpu.professorunion.model.Member;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAOImpl mdao;
	
	/* 회원 가입 */
	@Override
	public void insertMember(Member m) throws Exception {
		mdao.insertMember(m);
	}
	
	/* 로그인 */
	@Override
	public Member selectLogin(String id) throws Exception {
		return mdao.selectLogin(id);
	}
	
	/* 중복 체크 */
	@Override
	public int idCheck(String id) throws Exception {
		int i = 0;
		Member m = mdao.selectLogin(id);
		if(m != null) {
			i = 1;
		}
		return i;
	}

	/* 닉네임 중복 */
	@Override
	public String nick_overlap(String nick) throws Exception {
		return mdao.nick_overlap(nick);
	}
	
	/* 아이디 찾기 */
	@Override
	public Member id_find(String email) throws Exception {
		return mdao.id_find(email);
	}

	/* 비밀번호 찾기 */
	@Override
	public Member pass_find(String id) throws Exception {
		return mdao.pass_find(id);
	}
	
	/* 임시비밀번호 발급 */
	@Override
	public void temporary_pass(Member m) throws Exception {
		mdao.temporary_pass(m);
	}
	
	/* My page */
	@Override
	public Member myinfo(String id) throws Exception {
		return mdao.myinfo(id);
	}
	
	/* 메일 수신 */
	@Override
	public void mailling(Member m) throws Exception {
		mdao.mailling(m);
	}
	
	/* 정보 공개 */
	@Override
	public void open(Member m) throws Exception {
		mdao.open(m);
	}
	
	/* 정보 수정 */
	@Override
	public void modify(Member m) throws Exception {
		mdao.modify(m);
	}

	/* 회원 탈퇴 */
	@Override
	public void delete(Member m) throws Exception {
		mdao.delete(m);
	}

	/* 로그인 ip, 시간 */
	@Override
	public void login(Member m) throws Exception {
		mdao.login(m);
	}
}
