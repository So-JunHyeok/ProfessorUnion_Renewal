package com.kpu.professorunion.dao;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kpu.professorunion.model.BoardFile;
import com.kpu.professorunion.model.BoardGood;
import com.kpu.professorunion.model.BoardModel;
import com.kpu.professorunion.model.Scrap;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAOImpl Bdao;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	

	@Override
	public List<BoardModel> selectBoard_List(int page, int countpage) throws Exception {
		
		return Bdao.selectBoard_List(page,countpage);
	}
	@Override
	public BoardModel view_notice_Board(int wId) throws Exception {
		
		return Bdao.view_notice_board(wId);
	}
	@Override
	public void insertFileUpload(Map map) throws Exception {
		Bdao.insertFileUpload(map);
		
	}
	@Override
	public BoardModel getCurWrid(Map map) throws Exception {
		return Bdao.getCurWrid(map);
		
	}
	@Override
	public void delete_notice_board(int wr_id) throws Exception {
		
		Bdao.delete_notice_board(wr_id);
	}
	@Override
	public void modify_notice_board(int wr_id) throws Exception {
		
		Bdao.modify_notice_board(wr_id);
	}
	@Override
	public BoardModel modify_list(int wr_id) throws Exception {
		return Bdao.modify_list(wr_id);
	}
	@Override
	public int commentCount() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<BoardModel> commentList(int wr_id) throws Exception {
		return Bdao.commentList(wr_id);
	}
	
	@Override
	public int commentUpdate(BoardModel model) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int commentDelete(int wr_comment) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public BoardModel getBoardInfo(int wr_id) throws Exception {
		return Bdao.getBoardInfo(wr_id);
	}
	@Override
	public void boardParentUpdate(int wr_id) throws Exception {
		Bdao.boardParentUpdate(wr_id);
		
	}
	@Override
	public int getMaxComment(int wr_parent) throws Exception {
		return Bdao.getMaxComment(wr_parent);
		
	}

	@Override
	public int getMaxWrId() throws Exception {
		return Bdao.getMaxWrId();
	}
	@Override
	public void delete_file_board(int wr_id) throws Exception {
		Bdao.deletefile(wr_id);
	}
	@Override
	public int board_file_downloadhit(int wr_id) throws Exception {
		return Bdao.hitfile(wr_id);
	}


		
	@Override
	public void insertBoardGood(int wr_id, String bo_table, String mb_id,String bg_flag) throws Exception{
		Bdao.insertBoardGood(wr_id,bo_table,mb_id,bg_flag);
		
	}
	@Override
	public void updateBoardWriteGood(int wr_id)throws Exception {
		Bdao.updateBoardWriteGood(wr_id);
	}
	@Override
	public BoardGood likeoverlapcheck(String bo_table, int wr_id, String mb_id,String bg_flag) throws Exception{
		return Bdao.likeoverlapcheck(bo_table,wr_id,mb_id,bg_flag);
	}
	

	@Override
	public void updateBoardWritenoGood(int wr_id) throws Exception{
		Bdao.updateBoardWritenoGood(wr_id);
	}
	@Override
	public void deletelike(int wr_id, String bo_table, String mb_id) throws Exception{
		Bdao.deletelike(wr_id,bo_table,mb_id);
	}
	@Override
	public void updateGoodcancel(int wr_id)throws Exception {
		Bdao.updateGoodcancel(wr_id);
	}
	@Override
	public void updatenoGoodcancel(int wr_id) throws Exception{
		Bdao.updatenoGoodcancel(wr_id);
	}

	@Override
	public List<BoardModel> getMainNoticeBoard() throws Exception {
		return Bdao.getMainNoticeBoard();
	}
	// =======================================================// 

	@Override
	public int getCountList(Map map) {
		return Bdao.getCountList(map);
	}

	@Override
	public List<BoardModel> getBoardList(Map map) {
		return Bdao.getBoardList(map);
	}
	@Override
	public List<BoardFile> getFileNames(Map map) {
		return Bdao.getFileNames(map);
	}
	@Override
	public BoardModel getBoardCont(Map map) {
		return Bdao.getBoardCont(map);
	}
	@Override
	public void setHitBoard(Map map) {
		Bdao.setHitBoard(map);
	}
	@Override
	public List<BoardModel> getCommentList(Map map) {
		return Bdao.getCommentList(map);
	}
	@Override
	public BoardFile getFileName(Map map) {
		return Bdao.getFileName(map);
	}	
	@Override
	public void insertBoard(Map map) throws Exception {
		Bdao.insertBoard(map);
	}
	@Override
	public void setBoardParent(Map map) {
		Bdao.setBoardParent(map);
	}
	@Override
	public void setBoardFileHit(Map map) {
		Bdao.setBoardFileHit(map);
	}
	@Override
	public BoardGood likeOverLapCheck(Map map) {
		return Bdao.likeOverLapCheck(map);
	}
	@Override
	public void insertBoardGood(Map map) {
		Bdao.insertBoardGood(map);
	}
	@Override
	public void updateBoardWriteGood(Map map) {
		Bdao.updateBoardWriteGood(map);
	}
	@Override
	public void deleteLike(Map map) {
		Bdao.deleteLike(map);
	}
	@Override
	public void updateGoodCancel(Map map) {
		Bdao.updateGoodCancel(map);
	}
	@Override
	public void updateNoGoodCancel(Map map) {
		Bdao.updateNoGoodCancel(map);
	}
	@Override
	public void updateBoardWritenoGood(Map map) {
		Bdao.updateBoardWritenoGood(map);
	}
	@Override
	public BoardModel getModifyBoard(Map map) {
		return Bdao.getModifyBoard(map);
	}
	@Override
	public void modifyBoard(Map map) {
		Bdao.modifyBoard(map);
	}
	@Override
	public void deleteBoard(Map map) {
		Bdao.deleteBoard(map);
	}
	@Override
	public void deleteFileBoard(Map map) {
		Bdao.deleteFileBoard(map);
	}
	@Override
	public int getMaxComment(Map map) {
		return Bdao.getMaxComment(map);
	}	
	@Override
	public int getWr_1(Map map) throws Exception {
		return Bdao.getWr_1(map);
	}	
	@Override
	public String getReplyLevel(Map map) {
		return Bdao.getReplyLevel(map);
	}
	@Override
	public void updateWr_1(Map map) throws Exception {
		Bdao.updateWr_1(map);
	}
	@Override
	public int commentInsert(Map map) throws Exception {
		return Bdao.commentInsert(map);
	}
	@Override
	public void insertScrap(Map map) throws Exception {
		Bdao.insertScrap(map);
	}
	@Override
	public List<Scrap> getScrapList(Map map) throws Exception {
		return Bdao.getScrapList(map);
	}
	@Override
	public boolean scrapOverlapcheck(Map map) {
		
		return Bdao.scrapOverlapcheck(map);
	}
	@Override
	public void deleteScrap(Map map) throws Exception {
		Bdao.deleteScrap(map);
	}
	@Override
	public int getReplyComment(Map map) {
		return Bdao.getReplyComment(map);
	}
	@Override
	public void insertReplyBoard(Map map) {
		Bdao.insertReplyBoard(map);
	}
	@Override
	public String getBoardReplyLevel(Map map) {
		return Bdao.getBoardReplyLevel(map);
	}
	@Override
	public int boardcheckdelete(Map map) {
		return Bdao.deleteboardcheck(map);
	}
	@Override
	public List<BoardModel> getboardNoticehead(Map map) {
		return Bdao.getboardNoticehead(map);
	}
	@Override
	public List<BoardModel> getMainStatementBoard() throws Exception {
		return Bdao.getMainStatementBoard();
	}
	@Override
	public List<BoardModel> getMainNewsBoard() throws Exception {
		return Bdao.getMainNewsBoard();
	}
	@Override
	public List<BoardModel> getMainPressBoard() throws Exception {
		return Bdao.getMainPressBoard();
	}
	@Override
	public List<BoardModel> getMainReportBoard() {
		return Bdao.getMainReportBoard();
	}
	@Override
	public List<BoardFile> getImageBoard() {
		return Bdao.getImageBoard();
	}
	@Override
	public List<String> getfileChecklist(Map map) {
		return Bdao.getfileChecklist(map);
	}
	@Override
	public List<String> getfileChecklist_head(Map map) {
		return Bdao.getfileChecklist_head(map);
	}
	
	@Override
	public void updateBoardWrComment(Map map) {
		Bdao.updateBoardWrComment(map);
	}
	@Override
	public int getMaxCommentCount(Map map) {
		return Bdao.getMaxCommentCount(map);
	}
	@Override
	public int totalscrap(Map map) throws Exception {
		return Bdao.totalscrap(map);
	}
	@Override
	public List<Scrap> getscrapcount(Map map) {
		return Bdao.getscrapcount(map);
	}
}
