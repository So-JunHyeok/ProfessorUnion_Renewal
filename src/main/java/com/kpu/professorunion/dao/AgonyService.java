package com.kpu.professorunion.dao;

import java.util.List;
import java.util.Map;

import com.kpu.professorunion.model.Agony;
import com.kpu.professorunion.model.AgonyComment;
import com.kpu.professorunion.model.Criteria;

public interface AgonyService {
	// 상담 게시글 작성 처리
	public void insertAgony (Agony agony) throws Exception;
	// 읽지않은(n) 게시글 카운트 처리
	public int selectCount () throws Exception;
	// 상담 게시글 리스트 전체 카운트
	public Integer selectagonytotalCount(Map map) throws Exception;
	// 상담 해당 유저의 게시글 전체 카운트
	public int selectagonyUserlisttotalCount(Criteria criteria) throws Exception;
	// 페이징 처리를 위한 메서드(limit 15개씩)
	public List<Agony> selectagonyCriteria(Map map) throws Exception;
	// 해당 유저 게시글 리스트 호출
	public List<Agony> selectagonyUserList(Criteria criteria) throws Exception;
	// 상담 게시글 상세내용 호출
	public Agony selectAgonydetail(int a)throws Exception;
	// 상담 게시글 삭제
	public void deleteAgony(int num)throws Exception;
	// 상담 게시글 수정
	public void updateAgony(Agony agony)throws Exception;
	// 상담 게시글 읽음 여부
	public void updateRead(int anum)throws Exception;
	
	// 상담 게시글 댓글 작성
	public void insertComment(AgonyComment comment)throws Exception;
	// 상담 게시글 댓글 리스트
	public List<AgonyComment> selectcommentList(int a)throws Exception;
	// 상담 게시글 댓글 삭제
	public void deleteComment(Map map)throws Exception;
	// 상담 최신글 5개 
	public List<Agony> newagonylist(int count) throws Exception;
}
