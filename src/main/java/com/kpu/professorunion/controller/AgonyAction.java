package com.kpu.professorunion.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.dao.AgonyService;
import com.kpu.professorunion.model.Agony;
import com.kpu.professorunion.model.AgonyComment;
import com.kpu.professorunion.model.Criteria;
import com.kpu.professorunion.model.PageMaker;

@Controller
public class AgonyAction {
 
	@Autowired
	private AgonyService agonyservice;
	
	@RequestMapping("/agonyUserList")
	public String agonyUserList(Model model, Criteria criteria, HttpSession session)throws Exception {
		
		String aid = (String)session.getAttribute("sessionID");
		criteria.setAid(aid);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		
		/*// �빐�떦 寃뚯떆湲��쓽 �뙎湲� 移댁슫�듃
		int comment = agonyservice.selectcommenttotalCount();*/
		
		List<Agony> dto = agonyservice.selectagonyUserList(criteria);
		
		// �럹�씠吏� 泥섎━�븷�븣 寃뚯떆湲��쓽 �쟾泥� 媛��닔媛� �븘�슂�빐�꽌 留뚮뱺 硫붿꽌�뱶
		pageMaker.setTotalCount(agonyservice.selectagonyUserlisttotalCount(criteria));
		
		model.addAttribute("articles", dto);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("boardName","agony");
		
		return "/agony/agonyUserList";
	}
	
	@RequestMapping("/agonyWrite")
	@Secured("ROLE_ADMIN")
	public ModelAndView agonywrite() {
		ModelAndView mv = new ModelAndView("/agony/agonyWrite");
		mv.addObject("boardName","agony");
		return mv;
	}
	@RequestMapping("/agonyDetail")
	public ModelAndView agonyDetail(HttpServletRequest request) throws Exception {
		
		int anum = Integer.parseInt(request.getParameter("anum"));
		
		HttpSession session = request.getSession();
		String sessionID = (String) session.getAttribute("sessionID");

		if(sessionID.equals("kpu")) {
			agonyservice.updateRead(anum);
		}
		
		Agony detail = agonyservice.selectAgonydetail(anum);
		List<AgonyComment> comment = agonyservice.selectcommentList(anum);
		
		int listCnt = agonyservice.selectCount();
		session.setAttribute("acount",listCnt);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/agony/agonyDetail");
		mv.addObject("detail", detail);
		mv.addObject("comment", comment);
		mv.addObject("boardName","agony");
		
		return mv;
	}

	@RequestMapping(value="/agonyList", method=RequestMethod.GET)
	public String agonyList(Model model, Criteria criteria, HttpSession session,
			@RequestParam(value="searchOption",defaultValue="titlecontent") String searchOption,
			@RequestParam(value="keyword",defaultValue="") String keyword
			)throws Exception {
		// Criteria, Model ���엯�쓽 蹂��닔 criteria�� model瑜� �뙆�씪誘명꽣濡� �궗�슜�븳�떎
		// Model 媛앹껜瑜� �궗�슜�븯�뿬 pagemaker�뿉�꽌 怨꾩궛�솚 寃곌낵 媛믪쓣 ���옣�븳�떎
		Map map = new HashMap();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		
		String sessionID = (String) session.getAttribute("sessionID");

		
		/*// �빐�떦 寃뚯떆湲��쓽 �뙎湲� 移댁슫�듃
		int comment = agonyservice.selectcommenttotalCount();*/
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("criteria", criteria);
		
		// �긽�떞 寃뚯떆湲� �쟾泥� 媛��닔 移댁슫�듃
		int totalcount = agonyservice.selectagonytotalCount(map);
		// 게시글 read의 값이 n인 게시글을 카운트
	
		int listCnt = agonyservice.selectCount();

		
		
		List<Agony> dto = 	agonyservice.selectagonyCriteria(map);

		
		// �럹�씠吏� 泥섎━�븷�븣 寃뚯떆湲��쓽 �쟾泥� 媛��닔媛� �븘�슂�빐�꽌 留뚮뱺 硫붿꽌�뱶
		pageMaker.setTotalCount(agonyservice.selectagonytotalCount(map));
		
		model.addAttribute("articles", dto);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("totalcount", totalcount);
		model.addAttribute("sessionID", sessionID);
		model.addAttribute("boardName","agony");
		
		return "/admin/agonyList";
	}
	
	@RequestMapping(value="/agonyWriter", method=RequestMethod.POST)
	public String agonyWrite(HttpSession session, Agony agony)throws Exception {
		
		String aid = (String) session.getAttribute("sessionID");
		
		agony.setAid(aid);
		
		agonyservice.insertAgony(agony);
		
		return "redirect:main.nhn";
	}
	@RequestMapping(value="/agonyModify", method=RequestMethod.POST)
	public ModelAndView agonyModify(HttpServletRequest request)throws Exception {
		
		String anum = request.getParameter("anum");
		int a = Integer.parseInt(anum);
		
		Agony dto = agonyservice.selectAgonydetail(a);
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/agony/agonyModify");
		mv.addObject("detail", dto);
		mv.addObject("boardName","agony");
		
		
		return mv;
	}
	@RequestMapping(value="/agonyUpdate", method=RequestMethod.POST)
	public String agonyUpdate(Agony agony, HttpServletRequest request)throws Exception {
		
		agonyservice.updateAgony(agony);
		
		return "redirect:main.nhn";
	}
	
	@RequestMapping("agonyDelete")
	public String agonyDelete(HttpServletRequest request) throws Exception {
		
		String anum = request.getParameter("anum");
		int num = Integer.parseInt(anum);
		
		agonyservice.deleteAgony(num);
		
		return "redirect:main.nhn";
	}
	
	@RequestMapping(value="agonyComment", method=RequestMethod.POST)
	public String agonyComment(AgonyComment comment, HttpServletRequest request, HttpSession session)throws Exception {
		
		String cid = (String)session.getAttribute("sessionID");
		
		comment.setCid(cid);
		
		int anum = comment.getAnum();
		
		agonyservice.insertComment(comment);
		
		return "redirect:agonyDetail?anum="+anum;
	}
	
	
	@RequestMapping("commentDelete")
	public String commentDelete(HttpServletRequest request)throws Exception {
		
		String a = request.getParameter("anum");
		int anum = Integer.parseInt(a);
		String c = request.getParameter("cnum");
		int cnum = Integer.parseInt(c);
		
		Map map = new HashMap();
		
		map.put("anum", anum);
		map.put("cnum", cnum);
		
		
		agonyservice.deleteComment(map);
		
		return "redirect:agonyDetail?anum="+anum;
	}
}
