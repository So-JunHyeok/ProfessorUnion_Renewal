package com.kpu.professorunion.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.dao.CorruptionService;
import com.kpu.professorunion.model.AgonyComment;
import com.kpu.professorunion.model.Corruption;
import com.kpu.professorunion.model.CorruptionComment;
import com.kpu.professorunion.model.Criteria;
import com.kpu.professorunion.model.PageMaker;

@Controller
public class CorruptionAction {

	@Autowired
	private CorruptionService corruptionservice;
	
	@RequestMapping("/corruptionWrite")
	public ModelAndView corruptionwrite() {
		ModelAndView mv = new ModelAndView("/corruption/corruptionWrite");
		mv.addObject("boardName","corruption");
		
		return mv;
	}
	
	@RequestMapping(value="/corruptionWriter", method=RequestMethod.POST)
	public String corruptionWrite(HttpSession session, Corruption corruption)throws Exception {
		
		String aid = (String) session.getAttribute("sessionID");
		
		corruption.setCt_id(aid);
		
		corruptionservice.insertCorruption(corruption);	
		
		return "redirect:main.nhn";
	}
	
	@RequestMapping("/corruptionUserList")
	public String corruptionUserList(Model model, Criteria criteria, HttpSession session)throws Exception {
		
		String ct_id = (String)session.getAttribute("sessionID");
		criteria.setCt_id(ct_id);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		
		/*// �빐�떦 寃뚯떆湲��쓽 �뙎湲� 移댁슫�듃
		int comment = agonyservice.selectcommenttotalCount();*/
		
		List<Corruption> dto = corruptionservice.selectcorruptionUserList(criteria);
		
		// �럹�씠吏� 泥섎━�븷�븣 寃뚯떆湲��쓽 �쟾泥� 媛��닔媛� �븘�슂�빐�꽌 留뚮뱺 硫붿꽌�뱶
		pageMaker.setTotalCount(corruptionservice.selectcorruptionUserlisttotalCount(criteria));
		
		model.addAttribute("articles", dto);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("boardName", "corruption");
		
		return "/corruption/corruptionUserList";
	}
	@RequestMapping("/corruptionDetail")
	public ModelAndView corruptionDetail(HttpServletRequest request) throws Exception {
		
		int anum = Integer.parseInt(request.getParameter("ct_num"));
		
		HttpSession session = request.getSession();
		String sessionID = (String) session.getAttribute("sessionID");

		if(sessionID.equals("kpu")) {
			corruptionservice.updateRead(anum);
		}
		
		
		Corruption detail = corruptionservice.selectcorruptiondetail(anum);
		List<CorruptionComment> comment = corruptionservice.selectcorruptioncommentList(anum);
		
		int listCnt = corruptionservice.selectCount();
		session.setAttribute("ccount",listCnt);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/corruption/corruptionDetail");
		mv.addObject("detail", detail);
		mv.addObject("comment", comment);
		mv.addObject("boardName", "corruption");
		
		return mv;
	}
	
	@RequestMapping("corruptionDelete")
	public String corruptionDelete(HttpServletRequest request) throws Exception {
		
		int num = Integer.parseInt(request.getParameter("ct_num"));
		
		corruptionservice.deleteCorruption(num);
		
		return "redirect:main.nhn";
	}
	
	@RequestMapping(value="/corruptionModify", method=RequestMethod.POST)
	public ModelAndView agonyModify(HttpServletRequest request)throws Exception {
		
		int a = Integer.parseInt(request.getParameter("ct_num"));
		
		Corruption dto = corruptionservice.selectcorruptiondetail(a);
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/corruption/corruptionModify");
		mv.addObject("detail", dto);
		mv.addObject("boardName", "corruption");
		
		
		return mv;
	}
	@RequestMapping(value="/corruptionUpdate", method=RequestMethod.POST)
	public String agonyUpdate(Corruption corruption, HttpServletRequest request)throws Exception {
		
		corruptionservice.updateCorruption(corruption);
		
		return "redirect:main.nhn";
	}
	
	@RequestMapping(value="/corruptionList", method=RequestMethod.GET)
	public String corruptionList(Model model, Criteria criteria, HttpSession session,
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
		
		// �긽�떞 寃뚯떆湲� �쟾泥� 媛��닔 移댁슫�듃
		int totalcount = corruptionservice.selectcorruptiontotalCount(map);
		
		// 게시글 read의 값이 n인 게시글을 카운트
		int listCnt = corruptionservice.selectCount();
		
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("criteria", criteria);
		
		
		List<Corruption> dto = corruptionservice.selectcorruptionCriteria(map);

		
		// �럹�씠吏� 泥섎━�븷�븣 寃뚯떆湲��쓽 �쟾泥� 媛��닔媛� �븘�슂�빐�꽌 留뚮뱺 硫붿꽌�뱶
		pageMaker.setTotalCount(corruptionservice.selectcorruptiontotalCount(map));
		
		model.addAttribute("articles", dto);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("totalcount", totalcount);
		model.addAttribute("sessionID", sessionID);
		model.addAttribute("boardName", "corruption");
		
		return "/admin/corruptionList";
	}
	
	
	@RequestMapping(value="corruptionComment", method=RequestMethod.POST)
	public String agonyComment(CorruptionComment comment, HttpServletRequest request, HttpSession session)throws Exception {
		
		String cid = (String)session.getAttribute("sessionID");
		
		comment.setCc_id(cid);
		
		int anum = comment.getCt_num();
		
		corruptionservice.insertCorruptionComment(comment);
		
		return "redirect:corruptionDetail?ct_num="+anum;
	}
	
	@RequestMapping("corruptioncommentDelete")
	public String commentDelete(HttpServletRequest request)throws Exception {
		
		int anum = Integer.parseInt(request.getParameter("ct_num"));
		int cnum = Integer.parseInt(request.getParameter("cc_num"));
		
		Map map = new HashMap();
		
		map.put("anum", anum);
		map.put("cnum", cnum);
		
		
		corruptionservice.deleteCorruptionComment(map);
		
		return "redirect:corruptionDetail?ct_num="+ anum;
	}
}
