package com.kpu.professorunion.dao;

import java.util.List;
import java.util.Map;

import com.kpu.professorunion.model.Agony;
import com.kpu.professorunion.model.AgonyComment;
import com.kpu.professorunion.model.Corruption;
import com.kpu.professorunion.model.CorruptionComment;
import com.kpu.professorunion.model.Criteria;

public interface CorruptionService {
	// 비리 게시글 작성 처리
	public void insertCorruption (Corruption corruption) throws Exception;
	// 읽지않은(n) 게시글 카운트 처리
	public int selectCount () throws Exception;
	// 비리 게시글 리스트 전체 카운트
	public int selectcorruptiontotalCount(Map map) throws Exception;
	// 비리 해당 유저의 게시글 전체 카운트
	public int selectcorruptionUserlisttotalCount(Criteria criteria) throws Exception;
	// 비리페이징 처리를 위한 메서드(limit 15개씩)
	public List<Corruption> selectcorruptionCriteria(Map map) throws Exception;
	// 해당 유저 비리 게시글 리스트 호출
	public List<Corruption> selectcorruptionUserList(Criteria criteria) throws Exception;
	// 비리 게시글 상세내용 호출
	public Corruption selectcorruptiondetail(int anum)throws Exception;
	// 비리 게시글 삭제
	public void deleteCorruption(int num)throws Exception;
	// 비리 게시글 수정
	public void updateCorruption(Corruption corruption)throws Exception;
	// 비리 게시글 읽음 여부
	public void updateRead(int anum)throws Exception;
	
	
	
	// 비리 게시글 댓글 작성
	public void insertCorruptionComment(CorruptionComment comment)throws Exception;
	// 비리 게시글 댓글 리스트
	public List<CorruptionComment> selectcorruptioncommentList(int anum)throws Exception;
	// 비리 게시글 댓글 삭제
	public void deleteCorruptionComment(Map map)throws Exception;
	
	public List<Corruption> newcorruptionlist(int count) throws Exception;
}
