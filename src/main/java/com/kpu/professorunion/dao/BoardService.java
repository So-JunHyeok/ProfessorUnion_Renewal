package com.kpu.professorunion.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kpu.professorunion.model.BoardFile;
import com.kpu.professorunion.model.BoardGood;
import com.kpu.professorunion.model.BoardModel;
import com.kpu.professorunion.model.Scrap;

public interface BoardService {
	
	public List<BoardModel> selectBoard_List(int page, int countpage) throws Exception;
	public void insertBoard(Map map) throws Exception;
	public BoardModel view_notice_Board(int wId)throws Exception;
	public void insertFileUpload(Map map) throws Exception;
	public BoardModel getCurWrid(Map map) throws Exception;
	public void delete_notice_board(int wr_id) throws Exception;
	public void modify_notice_board(int wr_id) throws Exception;
	public BoardModel modify_list(int wr_id) throws Exception;
	public void delete_file_board(int wr_id) throws Exception;
	public int board_file_downloadhit(int wr_id) throws Exception;



	/*댓글*/
	// 댓글 개수
    public int commentCount() throws Exception;
    // 댓글 목록
    public List<BoardModel> commentList(int wr_id) throws Exception;
    // 댓글 수정
    public int commentUpdate(BoardModel model) throws Exception;
    // 댓글 삭제
    public int commentDelete(int wr_comment) throws Exception;
    // 게시글 정보가져오기 (매개변수로 wr_id)
	public BoardModel getBoardInfo(int wr_id) throws Exception;
	
	public void boardParentUpdate(int wr_id)throws Exception;
	
	public int getMaxComment(int wr_id)throws Exception;
	
	
	public int getMaxWrId()throws Exception;



	
	public void insertBoardGood(int wr_id, String bo_table, String mb_id, String bg_flag)throws Exception;
	
	public void updateBoardWriteGood(int wr_id)throws Exception;
	
	
	public void updateBoardWritenoGood(int wr_id)throws Exception;
	
	public BoardGood likeoverlapcheck(String bo_table, int wr_id, String mb_id, String bg_flag)throws Exception;
	
	public void deletelike(int wr_id, String bo_table, String mb_id)throws Exception;
	
	public void updateGoodcancel(int wr_id)throws Exception;
	
	public void updatenoGoodcancel(int wr_id)throws Exception;
	
	//메인화면에 보여줄 공지사항 글
	public List<BoardModel> getMainNoticeBoard() throws Exception;
	

	
	// ================== 이곳을 기점으로 11-07 ==================== // 
	
	// 게시글 총 개수
	public int getCountList(Map map);
	// 개시글 (리스트) 불러오기
	public List<BoardModel> getBoardList(Map map);
	// 다운로드 목록 불러오기
	public List<BoardFile> getFileNames(Map map);
	// 게시글 한개 불러오기
	public BoardModel getBoardCont(Map map);
	// 게시글 조회수 올리기
	public void setHitBoard(Map map);
	// 해당 게시글에 대한 댓글
	public List<BoardModel> getCommentList(Map map);
	// 다운로드 한개의 파일
	public BoardFile getFileName(Map map);
	// 게시글을 작성 할때는 wr_id값을 알 수 없기 때문에 인설트 이후에 업데이트 해줌
	public void setBoardParent(Map map);
	// 다운로드 조회수 올리기
	public void setBoardFileHit(Map map);
	// 좋이요 중복체크
	public BoardGood likeOverLapCheck(Map map);
	// 좋아요 
	public void insertBoardGood(Map map);
	// 게시글에 좋아요 올리기
	public void updateBoardWriteGood(Map map);
	// 좋아요 기록 제거
	public void deleteLike(Map map);
	// 좋아요 취소
	public void updateGoodCancel(Map map);
	// 게시글 나빠요 올리기
	public void updateBoardWritenoGood(Map map);
	// 나빠요 취소
	public void updateNoGoodCancel(Map map);
	// 수정 할 게시글 가져오기
	public BoardModel getModifyBoard(Map map);
	// 게시글 수정하기
	public void modifyBoard(Map map);
	// 게시판 제거
	public void deleteBoard(Map map);
	// 파일 제거
	public void deleteFileBoard(Map map);
	
	
	//public int getMaxWrId(Map map);
	
	//현재 코멘트를 구해서 새로운 댓글이면 증가
	public int getMaxComment(Map map);
	

	public String getReplyLevel(Map map)throws Exception;
	
	public void updateWr_1(Map map) throws Exception;
	
	public int getWr_1(Map map) throws Exception;

    public int commentInsert(Map map) throws Exception;
    
    //스크랩 추가
    public void insertScrap(Map map)throws Exception;
    
    public List<Scrap> getScrapList(Map map)throws Exception;
    
    public int totalscrap(Map map) throws Exception;
    
	public boolean scrapOverlapcheck(Map map);
	
	public void deleteScrap(Map map)throws Exception;
	
    
    // 대댓글의 Comment 구하기
	public int getReplyComment(Map map);
	// 답글
	public void insertReplyBoard(Map map);
	
	public String getBoardReplyLevel(Map map);
	
	public int boardcheckdelete(Map map);
	
	public List<BoardModel> getboardNoticehead(Map map);
	public List<BoardModel> getMainStatementBoard() throws Exception;
	public List<BoardModel> getMainNewsBoard() throws Exception;
	public List<BoardModel> getMainPressBoard() throws Exception;
	
	public List<BoardModel> getMainReportBoard();
	public List<BoardFile> getImageBoard();
	public List<String> getfileChecklist(Map map);
	public List<String> getfileChecklist_head(Map map);
	public void updateBoardWrComment(Map map);
	public int getMaxCommentCount(Map map);
	
	
	public List<Scrap> getscrapcount(Map map);
	
}
