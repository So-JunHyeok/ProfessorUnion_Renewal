package com.kpu.professorunion.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kpu.professorunion.model.BoardFile;
import com.kpu.professorunion.model.BoardGood;
import com.kpu.professorunion.model.BoardModel;
import com.kpu.professorunion.model.Scrap;

@Repository
public class BoardDAOImpl {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<BoardModel> selectBoard_List(int page, int countpage) {
		Map map = new HashMap();
		int paging = (page - 1) * 10;
		map.put("paging", paging);
		map.put("countpage", countpage);
		return sqlSession.selectList("BOARD1.boardList",map);
	}
	

	public BoardModel view_notice_board(int wId)throws Exception{
		return sqlSession.selectOne("BOARD1.viewnoticeboard",wId);
	}
	public void insertFileUpload(Map map) {
		sqlSession.insert("BOARD1.insertFileUpload",map);
	}
	public BoardModel getCurWrid(Map map) {
		return sqlSession.selectOne("BOARD1.getCurWrid",map);
	}
	
	public int hit_notice_board(int wr_hit) {
		return sqlSession.update("BOARD1.hitnoticeboard",wr_hit);
	}
	public void delete_notice_board(int wr_id) {
		sqlSession.delete("BOARD1.deletenotice",wr_id);
	}
	public void modify_notice_board(int wr_id) {
		sqlSession.update("BOARD1.updatenotice",wr_id);
	}
	public BoardModel modify_list(int wr_id) {
		return sqlSession.selectOne("BOARD1.modifynotice",wr_id);
	}

	public BoardModel getBoardInfo(int wr_id) {
		return sqlSession.selectOne("BOARD1.getBoardInfo",wr_id);
	}

	public List<BoardModel> commentList(int wr_id) {
		return sqlSession.selectList("BOARD1.commentList",wr_id);
	}

	

	public void boardParentUpdate(int wr_id) {
		sqlSession.update("BOARD1.boardParentUpdate",wr_id);
	}

	public int getMaxComment(int wr_parent) {
		return sqlSession.selectOne("BOARD1.getMaxComment",wr_parent);
	}


	public int getMaxWrId() {
		return sqlSession.selectOne("BOARD1.getMaxWrId");
	}

	public void deletefile(int wr_id) {
		sqlSession.delete("BOARD1.deletefile",wr_id);
	}

	public int hitfile(int wr_id) {
		return sqlSession.update("BOARD1.hitdownload",wr_id);
	}

	public void insertBoardGood(int wr_id, String bo_table, String mb_id,String bg_flag) {
		Map map = new HashMap();
		map.put("wr_id", wr_id);
		map.put("bo_table", bo_table);
		map.put("mb_id", mb_id);
		map.put("bg_flag", bg_flag);
				
		sqlSession.insert("BOARD1.insertBoardGood",map);
	}

	public void updateBoardWriteGood(int wr_id) {

		sqlSession.update("BOARD1.updateBoardWriteGood",wr_id);
	}

	public BoardGood likeoverlapcheck(String bo_table, int wr_id, String mb_id,String bg_flag) {
		Map map = new HashMap();
		map.put("bo_table", bo_table);
		map.put("wr_id", wr_id);
		map.put("mb_id", mb_id);
		map.put("bg_flag", bg_flag);
		return sqlSession.selectOne("BOARD1.likeoverlapcheck",map);
	}

	public void updateBoardWritenoGood(int wr_id) {
		
		sqlSession.selectOne("BOARD1.updateBoardWritenoGood",wr_id);
	}

	public void deletelike(int wr_id, String bo_table, String mb_id) {
		Map map = new HashMap();
		map.put("bo_table", bo_table);
		map.put("wr_id", wr_id);
		map.put("mb_id", mb_id);
		
		sqlSession.delete("BOARD1.deletelike",map);
	}

	public void updateGoodcancel(int wr_id) {
		sqlSession.update("BOARD1.updateGoodcancel",wr_id);
	}

	public void updatenoGoodcancel(int wr_id) {
		sqlSession.update("BOARD1.updateGoodcancel",wr_id);
	}

	public BoardFile getFileName(String wr_id, String filename) {
		Map map = new HashMap();
		map.put("wr_id", wr_id);
		map.put("filename", filename); 
		return sqlSession.selectOne("BOARD1.getFileName",map);
	}





	public List<BoardModel> getMainNoticeBoard() {
		return sqlSession.selectList("BOARD1.getMainNoticeBoard");
	}
	
	// =============================================== //

	public int getCountList(Map map) {
		return sqlSession.selectOne("BOARD1.getCountList",map);
	}

	public List<BoardModel> getBoardList(Map map) {
		return sqlSession.selectList("BOARD1.getBoardList",map);
	}

	public List<BoardFile> getFileNames(Map map) {
		return sqlSession.selectList("BOARD1.getFileNames",map);
	}

	public BoardModel getBoardCont(Map map) {
		return sqlSession.selectOne("BOARD1.getBoardCont",map);
	}

	public void setHitBoard(Map map) {
		sqlSession.update("BOARD1.setHitBoard",map);
	}

	public List<BoardModel> getCommentList(Map map) {
		return sqlSession.selectList("BOARD1.getCommentList",map);
	}

	public BoardFile getFileName(Map map) {
		return sqlSession.selectOne("BOARD1.getFileName",map);
	}	
	public void insertBoard(Map map)  {
		sqlSession.insert("BOARD1.insertBoard",map);
	}

	public void setBoardParent(Map map) {
		sqlSession.update("BOARD1.setBoardParent",map);
	}

	public void setBoardFileHit(Map map) {
		sqlSession.update("BOARD1.setBoardFileHit",map);
	}

	public BoardGood likeOverLapCheck(Map map) {
		return sqlSession.selectOne("BOARD1.likeOverLapCheck",map);
	}

	public void insertBoardGood(Map map) {
		sqlSession.insert("BOARD1.insertBoardGood",map);
	}

	public void updateBoardWriteGood(Map map) {
		sqlSession.update("BOARD1.updateBoardWriteGood",map);
	}

	public void deleteLike(Map map) {
		sqlSession.delete("BOARD1.deleteLike",map);
	}

	public void updateGoodCancel(Map map) {
		sqlSession.update("BOARD1.updateGoodCancel",map);
	}
	public void updateNoGoodCancel(Map map) {
		sqlSession.update("BOARD1.updateNoGoodCancel",map);
	}
	public void updateBoardWritenoGood(Map map) {
		sqlSession.update("BOARD1.updateBoardWritenoGood",map);
	}
	public BoardModel getModifyBoard(Map map) {
		return sqlSession.selectOne("BOARD1.getModifyBoard",map);
	}
	public void modifyBoard(Map map) {
		sqlSession.update("BOARD1.modifyBoard",map);
	}

	public void deleteBoard(Map map) {
		sqlSession.delete("BOARD1.deleteBoard",map);
	}

	public void deleteFileBoard(Map map) {
		sqlSession.delete("BOARD1.deleteFileBoard",map);
	}
	public int getMaxComment(Map map) {
		return sqlSession.selectOne("BOARD1.getMaxComment",map);
	}
	public int getWr_1(Map map) {
		return sqlSession.selectOne("BOARD1.getWr_1",map);
	}
	public String getReplyLevel(Map map) {
		return sqlSession.selectOne("BOARD1.getReplyLevel",map);
	}
	public void updateWr_1(Map map) {
		sqlSession.update("BOARD1.updateWr_1",map);
	}
	public int commentInsert(Map map) {
		return sqlSession.insert("BOARD1.commentInsert",map);
	}


	public void insertScrap(Map map) {
		
		sqlSession.insert("BOARD1.insertScrap",map);
	}


	public List<Scrap> getScrapList(Map map) {
		return sqlSession.selectList("BOARD1.getScrapList",map);
	}


	public boolean scrapOverlapcheck(Map map) {
		int result = sqlSession.selectOne("BOARD1.scrapOverlapcheck",map);
		if(result > 0 ) {
			return false;
		}else {
			return true;
		}
	}


	public void deleteScrap(Map map) {
		sqlSession.delete("BOARD1.deleteScrap",map);
	}

	public int getReplyComment(Map map) {
		return sqlSession.selectOne("BOARD1.getReplyComment",map);
	}
	public void insertReplyBoard(Map map) {
		sqlSession.insert("BOARD1.insertReplyBoard", map);
	}


	public String getBoardReplyLevel(Map map) {
		return sqlSession.selectOne("BOARD1.getBoardReplyLevel",map);
	}


	public int deleteboardcheck(Map map) {
		return sqlSession.delete("BOARD1.deleteboardcheck",map);
	}


	public List<BoardModel> getboardListScrap(Map map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("BOARD1.getboardListScrap", map);
	}


	public List<BoardModel> getboardNoticehead(Map map) {
		
		return sqlSession.selectList("BOARD1.getboardNoticehead",map);
	}


	public List<BoardModel> getMainStatementBoard() {
		return sqlSession.selectList("BOARD1.getMainStatementBoard");
	}


	public List<BoardModel> getMainNewsBoard() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("BOARD1.getMainNewsBoard");
	}
	
	
	public List<BoardModel> getMainPressBoard() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("BOARD1.getMainPressBoard");
	}


	public List<BoardModel> getMainReportBoard() {
		return sqlSession.selectList("BOARD1.getMainReportBoard");
	}


	public List<BoardFile> getImageBoard() {
		return sqlSession.selectList("BOARD1.getImageBoard");
	}


	public List<String> getfileChecklist(Map map) {
		return sqlSession.selectList("BOARD1.getfileChecklist", map);
	}

	public List<String> getfileChecklist_head(Map map) {
		return sqlSession.selectList("BOARD1.getfileChecklist_head", map);
	}
	
	public void updateBoardWrComment(Map map) {
		sqlSession.update("BOARD1.updateBoardWrComment",map);
	}


	public int getMaxCommentCount(Map map) {
		return sqlSession.selectOne("BOARD1.getMaxCommentCount",map);
	}


	public int totalscrap(Map map) {
		
		return sqlSession.selectOne("BOARD1.totalscrap",map);
	}


	public List<Scrap> getscrapcount(Map map) {
		return sqlSession.selectList("BOARD1.getscrapcount",map);
	}

}
