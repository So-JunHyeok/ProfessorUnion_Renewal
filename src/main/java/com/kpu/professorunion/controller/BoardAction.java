package com.kpu.professorunion.controller;

import java.io.File;


import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.dao.AdminService;
import com.kpu.professorunion.dao.BoardService;
import com.kpu.professorunion.dao.MemberService;
import com.kpu.professorunion.model.AdminConfig;
import com.kpu.professorunion.model.BoardFile;
import com.kpu.professorunion.model.BoardGood;
import com.kpu.professorunion.model.BoardLevel;
import com.kpu.professorunion.model.BoardModel;
import com.kpu.professorunion.model.Member;
import com.kpu.professorunion.model.Scrap;

@Controller
public class BoardAction {

	private static final String SAVE_PATH = "resources/community/imageUpload/";

	
	@Autowired 
	private ServletContext servletContext;

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private AdminService adminservice;
	
	@Autowired
	private MemberService memberservice;

	@RequestMapping(value = "board_list.nhn")
	public ModelAndView Board_NoticeList(Authentication auth, BoardLevel boardlevel, Member userlevel,
			@RequestParam(value="searchOption",defaultValue="titlecontent") String searchOption,
			@RequestParam(value="keyword",defaultValue="") String keyword,
			@RequestParam(value="boardName",defaultValue="none") String boardName,
			HttpServletRequest request,
			@RequestParam(value="page",defaultValue="1")int page) throws Exception {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		if(boardName.equals ("photo")|| boardName.equals ("precedent")|| boardName.equals ("precedent_Wage")|| boardName.equals ("precedent_Punishment")|| boardName.equals ("policy")|| boardName.equals ("policy_debate")) {
			 if(session.getAttribute("sessionID") == null) {
				mv.setViewName("redirect:/loginForm");
				return mv;
				}
			}
				String mb_id;
				try {
					UserDetails user = (UserDetails) auth.getPrincipal();
					mb_id = user.getUsername();
				} catch (Exception e) {
					mb_id = null;
				}
				
				userlevel = memberservice.myinfo(mb_id);
				boardlevel = adminservice.getBoatdLevel(boardName);

				
				Map map = new HashMap();
				map.put("bo_table", boardName);
				map.put("searchOption", searchOption);
				map.put("keyword", keyword);

				//�븳 �럹�씠吏��뿉 珥� 寃뚯떆臾쇱쓽 �닔
				int totalcount = boardService.getCountList(map);
				int countlist = 10;
				int countpage = 10;
				int totalpage = totalcount / countlist;
				
				
				int startpage = ((page - 1) /10) * 10+1;
				int endPage = startpage + countpage -1;
				
				int paging = (page-1) * 10;
				map.put("paging", paging);
				map.put("countpage", countpage);
				
				
				
				
				List<String> fileCheck = boardService.getfileChecklist(map);
				List<String> fileCheck_head = boardService.getfileChecklist_head(map);
				List<BoardModel> boardlist = boardService.getBoardList(map);
				List<BoardModel> boardNoticeHeadList = boardService.getboardNoticehead(map);

				
				if(totalcount % countlist > 0) {
					totalpage++;
				}
				if(totalpage < page) {
					page = totalpage;
				}
				if(endPage > totalpage) {
					endPage = totalpage;
				}
				
				mv.addObject("boardName",boardName);
				mv.addObject("page",page);
				mv.addObject("totalcount",totalcount);
				mv.addObject("totalpage",totalpage);
				mv.addObject("countlist", countlist);
				mv.addObject("startpage", startpage);
				mv.addObject("endPage", endPage);
				mv.addObject("board_noticelist", boardlist);
				mv.addObject("mb_id",mb_id);
				mv.addObject("fileCheck",fileCheck);
				mv.addObject("fileCheck_head",fileCheck_head);
				mv.addObject("boardlevel", boardlevel);
				mv.addObject("userlevel", userlevel);
				mv.addObject("boardNoticeHeadList", boardNoticeHeadList);
				
				
				

				
				if(boardName.equals("adminquestion")) {
					mv.setViewName("admin/question");
				}
				
				if(boardName.equals("question")) {
					mv.setViewName("user/question");
				}else {
					mv.setViewName("board/board_list");
				}
				
		
			
		return mv;

	}
	

	@RequestMapping(value = "board_cont.nhn")
	public ModelAndView board_cont(HttpServletRequest request,@RequestParam(value="wr_id")int wr_id,
			@RequestParam(value="boardName",defaultValue="none") String boardName) throws Exception {
		ModelAndView mv = new ModelAndView("board/board_cont");
			
		

		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");
		

		Map map = new HashMap();
		map.put("wr_id",wr_id);
		map.put("bo_table", boardName);
		
		List<BoardFile> files = boardService.getFileNames(map);
		BoardModel board = boardService.getBoardCont(map);
		boardService.setHitBoard(map);
		
		String date = board.getWr_datetime();
		board.setWr_datetime(date.substring(0,11));
		
		// �뜤湲� 遺덈윭�삤�뒗 遺�遺�
		map.put("wr_reply", board.getWr_reply());
		map.put("wr_parent", board.getWr_parent());
		List<BoardModel> comentlist = boardService.getCommentList(map);
		
		mv.addObject("board", board);
		mv.addObject("files", files);
		mv.addObject("wr_id", wr_id);
		mv.addObject("comentlist", comentlist);
		mv.addObject("boardName",boardName);
		mv.addObject("mb_id",mb_id);

		return mv;
	}
	
	@RequestMapping(value = "downloadaction")
	public ModelAndView downloadaction(@RequestParam(value = "wr_id") int wr_id, 
			@RequestParam(value="boardName",defaultValue="none") String boardName,
			@RequestParam(value = "filename") String reqfile) throws Exception {
		ModelAndView mv = new ModelAndView();
		Map map = new HashMap();
		
		String filename = reqfile;

		map.put("wr_id", wr_id);
		map.put("filename",filename);
		map.put("bo_table", boardName);

		
		System.out.println("boardFile : " + filename );
		BoardFile file = boardService.getFileName(map);
		String originalPath = file.getBf_file();
	
		
		System.out.println("bf_file : " + file.getBf_file() );

		boardService.setBoardFileHit(map);

			File f = new File(servletContext.getRealPath("/") + SAVE_PATH + originalPath);			

		mv.addObject("download", f);
		mv.setViewName("download");

		return mv;
	}
	@RequestMapping(value="partnerform.nhn")
	public ModelAndView partnerForm(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String path = servletContext.getRealPath("/") + SAVE_PATH;
		String fileName = "form.hwp";
		String safeFile = path+fileName;
		
		File f = new File(safeFile);
		
		
		mv.addObject("download",f);
		mv.addObject("safeFile",safeFile);
		mv.addObject("path",path);
		mv.setViewName("download");
		
		
		return mv;
	}
	

	@RequestMapping(value = "board_write.nhn")
	public ModelAndView board_Write(
			@RequestParam(value = "replyBoard", defaultValue="board") String replyBoard,
			@RequestParam(value="boardName",defaultValue="none") String boardName) throws Exception {
		ModelAndView mv = new ModelAndView("board/board_Write");
		
		AdminConfig getConfigContemt = adminservice.getConfigContemt();
		
		mv.addObject("getConfigContemt", getConfigContemt);
		
		mv.addObject("boardName",boardName);
		
		
		return mv;
	}
	
	@RequestMapping(value = "board_writer.nhn"/* ,method= {RequestMethod.POST,RequestMethod.GET} */)
	public ModelAndView board_writer(BoardModel model, HttpServletRequest request,
			@RequestParam(value = "replyBoard", defaultValue="board") String replyBoard,
			@RequestParam(value="boardName",defaultValue="none") String boardName,
			@RequestParam(value="chk_info", defaultValue="normal") String wr_option,
			@RequestParam(value = "wr_1", defaultValue="reappointment") String wr_1,
			@RequestParam(value = "filename") List<MultipartFile> files)
			throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/board_list.nhn");
		BoardFile boardfile = new BoardFile();
		
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("sessionID");
	
		
		Map map = new HashMap();
		if(boardName.equals("precedent"))
		{
		model.setWr_1(wr_1);
		}
		map.put("model", model);
		map.put("bo_table", boardName);

		model.setWr_option(wr_option);
		model.setMb_id(userId);
		model.setWr_name(userId);
		
		Iterator<MultipartFile> it = files.iterator();	
		
		String uploadFileName = "";
		String filename = "";
		long fileSize = 0;
		int imgWidth = 0;
		int imgHeight = 0;
		int fileindex = 0;
		int currentTime = 0;
		
		boardService.insertBoard(map);
		BoardModel board = boardService.getCurWrid(map);
		int wr_id = board.getWr_id();

	
		while(it.hasNext()) {
			MultipartFile file = it.next();
			currentTime = (int) System.currentTimeMillis();
			filename = file.getOriginalFilename();
			uploadFileName = currentTime + filename; 	
			imgWidth = new ImageIcon(filename).getImage().getWidth(null);
			imgHeight = new ImageIcon(filename).getImage().getHeight(null);
			fileSize = file.getSize();
			
			
			
			File uploadfile = new File(servletContext.getRealPath("/") + SAVE_PATH +uploadFileName);
			
			try {
					if(filename.length()>0)
						
					file.transferTo(uploadfile);
				
			} catch (Exception e) {
				e.printStackTrace();
			}			
			
			boardfile.setBf_file(uploadFileName);
			boardfile.setBf_width(imgWidth);
			boardfile.setBf_height(imgHeight);
			boardfile.setBf_filesize(fileSize);
			boardfile.setBf_source(filename);
			boardfile.setBf_no(fileindex);
			
			fileindex++;
			
			map.put("boardfile", boardfile);
			map.put("wr_id", wr_id);
			map.put("bf_no", fileindex);
			
			if(filename.length()>0)
			boardService.insertFileUpload(map);
		}		
		
		// 蹂대뱶 �깮�꽦 �썑 洹� 踰덊샇瑜� 遺덈윭�� �떎�떆 Parant�뿉 �꽔�뼱以��떎
		boardService.setBoardParent(map);
		
		mv.addObject("boardName",boardName);
		
		
		
		return mv;
	}

	
	@RequestMapping(value = "board_like_nhn")
	public ModelAndView board_like_Action(HttpServletRequest request, HttpServletResponse response
			, @RequestParam(value="boardName",defaultValue="none") String boardName
			, @RequestParam(value="wr_id") int wr_id) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:board_cont.nhn");
		
		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");
		
		
		Map map = new HashMap();
		map.put("wr_id", wr_id);
		map.put("mb_id", mb_id);
		map.put("bo_table", boardName);
		map.put("bg_flag", "good");
		
		BoardGood boardgood = boardService.likeOverLapCheck(map);
		
		if(boardgood==null) {
			mv.addObject("wr_id",wr_id);
			boardService.insertBoardGood(map);
			boardService.updateBoardWriteGood(map);
			mv.addObject("boardName",boardName);
			mv.addObject("wr_id",wr_id);
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('좋아요를 누르셨습니다.'); history.go(-1);</script>");
			out.flush();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			boardService.deleteLike(map);
			boardService.updateGoodCancel(map);
			out.println("<script>alert('좋아요를 취소하셨습니다.'); history.go(-1);</script>");
			out.flush();
		}
		return null;
	}
	
	/*@RequestMapping(value = "board_bad_nhn")
	public ModelAndView board_bad_Action(HttpServletRequest request, HttpServletResponse response
			, @RequestParam(value="boardName",defaultValue="none") String boardName
			, @RequestParam(value="wr_id") int wr_id
			) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:board_cont.nhn");
		
		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");
		
		
		Map map = new HashMap();
		map.put("wr_id", wr_id);
		map.put("mb_id", mb_id);
		map.put("bo_table", boardName);
		map.put("bg_flag", "nogood");
		
		BoardGood boardgood = boardService.likeOverLapCheck(map);
		
		if(boardgood==null) {
			mv.addObject("wr_id",wr_id);
			boardService.insertBoardGood(map);
			boardService.updateBoardWritenoGood(map);
			mv.addObject("boardName",boardName);
			return mv;
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			boardService.deleteLike(map);
			boardService.updateNoGoodCancel(map);
			out.println("<script>alert('�떕�뼱�슂瑜� 痍⑥냼�븯�뀲�뒿�땲�떎.'); history.go(-1);</script>");
			out.flush();
		}
		return null;
	}*/
	

	@RequestMapping(value = "board_modify.nhn")
	public ModelAndView modifyform(HttpServletRequest request, Authentication authentication
			 ,@RequestParam(value="boardName",defaultValue="none") String boardName
			 ,@RequestParam(value="wr_id") int wr_id
			 ) throws Exception {
		UserDetails user = (UserDetails)authentication.getPrincipal();
		
		String mb_id = user.getUsername();
		
		Map map = new HashMap();
		map.put("wr_id", wr_id);
		map.put("bo_table", boardName);
		

		List<BoardFile> filenmaes = boardService.getFileNames(map);
		
		
		BoardModel model = boardService.getModifyBoard(map);
		ModelAndView mv = new ModelAndView("board/board_notice_modify");
	
		mv.addObject("modify", model);
		mv.addObject("boardName",boardName);
		mv.addObject("filenmaes",filenmaes);

		return mv;
	}

	@RequestMapping(value = "board_modify_action.nhn")
	public ModelAndView updatenotice(HttpServletRequest request
			 ,@RequestParam(value="boardName",defaultValue="none") String boardName
			 ,@RequestParam(value = "filename") List<MultipartFile> files
			 ,@RequestParam(value="wr_id") int wr_id, BoardModel board
			) throws Exception {
		
		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");
		ModelAndView mv = new ModelAndView("redirect:board_list.nhn");

		Map map = new HashMap();
		map.put("mb_id", mb_id);
		map.put("bo_table", boardName);
		map.put("wr_id", wr_id);
		map.put("board", board);
		
		
		if(!files.get(0).getOriginalFilename().equals("")) {
		BoardFile boardfile = new BoardFile();
		List<BoardFile> filenames = boardService.getFileNames(map);
		
		for(int i=0; i<filenames.size(); i++) {
			File file = new File(filenames.get(i).getBf_file());
			if (file.exists() == true) {
				file.delete();				
			}
			boardService.deleteFileBoard(map);
		}
		Iterator<MultipartFile> it = files.iterator();	
		
		String uploadFileName = "";
		String filename = "";
		long fileSize = 0;
		int imgWidth = 0;
		int imgHeight = 0;
		int fileindex = 0;
		
		while(it.hasNext()) {
			MultipartFile file = it.next();
			filename = file.getOriginalFilename();
			uploadFileName = System.currentTimeMillis() + filename; 
			imgWidth = new ImageIcon(filename).getImage().getWidth(null);
			imgHeight = new ImageIcon(filename).getImage().getHeight(null);
			fileSize = file.getSize();
			
			File uploadfile = new File(servletContext.getRealPath("/") + SAVE_PATH +uploadFileName);
			
			try {
					if(filename.length()>0)
					file.transferTo(uploadfile);
				
				} catch (Exception e) {
					e.printStackTrace();
					
					
				}			
			
			boardfile.setBf_file(uploadFileName);
			boardfile.setBf_width(imgWidth);
			boardfile.setBf_height(imgHeight);
			boardfile.setBf_filesize(fileSize);
			boardfile.setBf_source(filename);
			boardfile.setBf_no(fileindex);
			
				fileindex++;
			
			map.put("boardfile", boardfile);
			map.put("wr_id", wr_id);
			map.put("bf_no", fileindex);
			
			if(filename.length()>0)
			boardService.insertFileUpload(map);
			
			}
		}
		
		boardService.modifyBoard(map);
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value = "board_delete.nhn")
	public ModelAndView deleteboard( HttpServletRequest request,
			@RequestParam(value="boardName",defaultValue="none") String boardName
			,@RequestParam(value="wr_id") int wr_id) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:board_list.nhn");

		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");
		
		Map map = new HashMap();
		map.put("bo_table", boardName);
		map.put("wr_id", wr_id);
		map.put("mb_id", mb_id);
		
		boardService.deleteBoard(map);
		List<BoardFile> files = boardService.getFileNames(map);
		
		
		for(int i=0; i<files.size(); i++) {
			File file = new File(files.get(i).getBf_file());
			if (file.exists() == true) {
				file.delete();				
		}
	

		}
		boardService.deleteFileBoard(map);
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value = "board_notice_comment")
	public ModelAndView board_notice_comment(BoardModel board, HttpServletRequest request,HttpServletResponse response,
			@RequestParam(value = "wr_parent") int wr_parent,
			@RequestParam(value = "wr_id") int wr_id,
			@RequestParam(value="boardName",defaultValue="none") String boardName,
			@RequestParam(value = "is_wr_comment_reply", defaultValue = "noreply") String is_wr_comment_reply)
			throws Exception {

		ModelAndView mv = new ModelAndView();
		char[] y = { 'A', 'B', 'C', 'D', 'E' };


		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");

		
		
		Map map = new HashMap();
		board.setMb_id(mb_id);
		
		map.put("board", board);
		map.put("bo_table", boardName);
		
		int commentNum = 0;
		int count = 0;

		if (is_wr_comment_reply.equals("reply")) {
			// ���뙎湲��씠 �븘�땶 寃쎌슦 利� comment媛믪씠 1�뵫 利앷��빐�빞�븿
			commentNum = boardService.getMaxComment(map);

			// "" �씤寃쎌슦 A B C D E �닚�쑝濡� �닚李⑥쟻�쑝濡� 利앷�

			board.setWr_comment_reply(String.valueOf(""));
			board.setWr_comment(commentNum+1);
			
		}else {
			// ���뙎湲��쓽 寃쎌슦�뒗 湲곗〈 肄붾㎤�듃媛� �쑀吏�
			commentNum = boardService.getReplyComment(map);
			board.setWr_comment(commentNum);
			boardService.updateWr_1(map);
			
			//wr_id
			int wr1 = boardService.getWr_1(map);

			//wr_id
			String reply = boardService.getReplyLevel(map);

			reply += String.valueOf(y[wr1-1]);
			board.setWr_comment_reply(reply);
			
			
		}
		// 寃뚯떆湲��씠 �븘�땲�씪 �뙎湲��씠湲� �븣臾몄뿉
		board.setWr_is_comment(1);

		// ���뙎湲��씤 寃쎌슦 wr_parent�쓽 媛믪씠 0�씠 �븘�땲湲� �븣臾몄뿉
		board.setWr_content(board.getWr_content());
		board.setWr_link1(""); 
		board.setWr_link2("");
		
		boardService.commentInsert(map);
		mv.addObject("wr_id",board.getWr_parent());		
		
		map.put("reply",board.getWr_reply());
		
		int commentcount = boardService.getMaxCommentCount(map);

		map.put("commentcount",commentcount);

		boardService.updateBoardWrComment(map); 

		mv.addObject("boardName",boardName);
		mv.setViewName("redirect:board_cont.nhn");

		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('덧글을 등록하셨습니다.'); history.back();</script>");
		out.flush();

		return null;
		
		
	}
	
	@RequestMapping(value="boardScrap.nhn")
	public ModelAndView insertScrap(HttpServletRequest request,HttpServletResponse response,
			@RequestParam(value="wr_id")int wr_id,
			@RequestParam(value="boardName",defaultValue="none")String boardName)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		
		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");
		String wr_subject = request.getParameter("wr_subject");
		
		Map map = new HashMap();
		map.put("wr_id", wr_id);
		map.put("mb_id", mb_id);
		map.put("wr_subject",wr_subject);
		map.put("bo_table", boardName);
		
		
		boolean check = boardService.scrapOverlapcheck(map);
		
		if(check == true) {
			boardService.insertScrap(map);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('스크랩을 하셨습니다. 마이페이지에서 확인하세요!'); history.go(-1);</script>");
			out.flush();
		}else {
			boardService.deleteScrap(map);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('스크랩을 취소하셨습니다.'); history.go(-1);</script>");
			out.flush();
		}
		return null;
	}
	
	/*@RequestMapping(value="testScrap")
	public ModelAndView getScrapList(HttpServletRequest request,Scrap scrap)  throws Exception{
		ModelAndView mv = new ModelAndView("board/testScrap");
		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");
		
		
		Map map = new HashMap();
		map.put("mb_id", mb_id);
		
		List<Scrap> scrapList = boardService.getScrapList(map);
		
		mv.addObject("scrapList",scrapList);
		
		return mv;
	}*/
	
	@RequestMapping(value="deleteScrap")
	public ModelAndView deleteScrap(HttpServletRequest request,
			@RequestParam(value="wr_id")int wr_id)throws Exception{
		ModelAndView mv = new ModelAndView("redirect:testScrap");
		
		Map map = new HashMap();
		map.put("wr_id", wr_id);
		
		boardService.deleteScrap(map);
		
		
		mv.addObject("wr_id",wr_id);
		
		
		return mv;
		
	}
	
	
	@RequestMapping(value = "replyBoardWrite.nhn")
	public ModelAndView replyBoardWrite(@RequestParam(value = "replyBoard", defaultValue="board") String replyBoard,
			@RequestParam(value = "wr_parent") int wr_parent,  @RequestParam(value = "wr_id") int wr_id, 
			@RequestParam(value="boardName",defaultValue="none") String boardName) throws Exception {
		ModelAndView mv = new ModelAndView("board/board_Write");

		AdminConfig getConfigContemt = adminservice.getConfigContemt();
		
		mv.addObject("getConfigContemt", getConfigContemt);
		
		
		mv.addObject("wr_id",wr_id);
		mv.addObject("wr_parent",wr_parent);
		mv.addObject("replyBoard","replyBoard");
		mv.addObject("boardName",boardName);
		
		return mv;
	}
	
	@RequestMapping(value = "replyBoardWriter.nhn")
	public ModelAndView replyBoardWrite(BoardModel board, HttpServletRequest request,
			@RequestParam(value="boardName",defaultValue="none") String boardName,
			@RequestParam(value="wr_id",defaultValue="none") String wr_id)
			throws Exception {

		ModelAndView mv = new ModelAndView();
		char[] y = { 'A', 'B', 'C', 'D', 'E' };

		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("sessionID");
		
		Map map = new HashMap();
		board.setMb_id(mb_id);
		
		map.put("board", board);
		map.put("bo_table", boardName);
		map.put("wr_id", wr_id);
				
		int commentNum = 0;
		int count = 0;
		int wr1 = boardService.getWr_1(map);
		System.out.println(wr1);
		map.put("wr1", wr1);
			// ���뙎湲��쓽 寃쎌슦�뒗 湲곗〈 肄붾㎤�듃媛� �쑀吏�
			boardService.updateWr_1(map);
			String reply = boardService.getBoardReplyLevel(map);
			reply += String.valueOf(y[wr1]);
			board.setWr_reply(reply);
		
		boardService.insertReplyBoard(map);

		mv.setViewName("redirect:board_list.nhn");
		mv.addObject("boardName",boardName);

		return mv;
	}
	//泥댄겕 �궘�젣 誘멸뎄�쁽
	/*@RequestMapping(value="checkboard_delete",method= {RequestMethod.POST})
	public ModelAndView checkboard_delete(HttpServletRequest request,Authentication authentication,
			@RequestParam(value="checkdelete")String[] checkdelete,
			@RequestParam(value="wr_id")int wr_id,
			@RequestParam(value="mb_id")String mb_id,
			@RequestParam(value="boardName",defaultValue="none")String bo_table) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:board_list");
		UserDetails user = (UserDetails)authentication.getPrincipal();
		Map map = new HashMap();
		
		map.put("wr_id", wr_id);
		map.put("boardName", bo_table);
		
		
		
		return mv;
	}*/
	@RequestMapping(value="404errorPage")
	public String errorPage(HttpServletRequest request){
		
		return "main/404errorPage";
	}
}
