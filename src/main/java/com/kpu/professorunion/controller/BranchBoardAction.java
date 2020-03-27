package com.kpu.professorunion.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.dao.BranchBoardService;
import com.kpu.professorunion.model.BranchBoard;

@Controller
public class BranchBoardAction {
	
	@Autowired
	private BranchBoardService bbService;
	
	
	@RequestMapping("/branchboardlist")
	public ModelAndView branchboardlist(ModelAndView mv, HttpServletRequest request,
			@RequestParam(value="page", defaultValue="1")int page,
			@RequestParam(value="boardName", defaultValue="")String boardName,
			@RequestParam(value="pageInfo", defaultValue="1")int pageInfo,
			@RequestParam(value="side",defaultValue="branchboardlist")String side)throws Exception {
		
		if(side != null)
		{
			boardName = side;
		}
		
		
		int countList = 10;	// �븳�럹�씠吏��뿉 蹂댁뿬二쇰뒗 寃뚯떆湲��쓽 �닔
		int countPage = 10;	// �븳�럹�씠吏��쓽 蹂댁뿬二쇰뒗 �럹�씠吏��뱾�쓽 �닔
		int totalcount = bbService.getCountList(pageInfo); 
		int totalpage = totalcount / countList;
		
		// �궓�뒗 寃뚯떆臾쇱쓣 �삱由쇱쿂由щ�� �빐�꽌 �떎�쓬 �럹�씠吏��뿉 蹂댁뿬以��떎.
		if(totalcount % countList > 0) {
			totalpage++;
		}
		
		// 珥� �럹�씠吏��쓽 �닔媛� �쁽�옱 �럹�씠吏� 踰덊샇蹂대떎 �옉�쓣�븣 �쁽�옱�럹�씠吏�瑜� 珥앺럹�씠吏� �닔濡� 諛붽퓭以��떎.		
		if(totalpage < page) {
			page = totalpage;
		}
		
		if(page < 1) {
			page=1;
		}
		
		// �떆�옉 �럹�씠吏�瑜� 援ы븯�뒗 怨듭떇
		int startPage = ((page-1)/10) * 10 + 1;
		
		// 留덉�留� �럹�씠吏�瑜� 援ы븯�뒗 怨듭떇
		int endPage = startPage + countPage - 1;
	
		// 留덉�留� �럹�씠吏�媛� 珥� �럹�씠吏� �닔 蹂대떎 �겢�븣 留덉�留� �럹�씠吏�瑜� 珥앺럹�씠吏� �닔濡� 諛붽퓭以��떎. 
		if(endPage > totalpage) {
			endPage = totalpage;
		}

		for(int iCount = startPage; iCount <= endPage; iCount++) {
			if(iCount == page) {
				System.out.print("<b>" + iCount + "<b>");
			}else {
				System.out.print(" " + iCount + " ");
			}
		}
		List<BranchBoard> list = bbService.selectbranchboard(pageInfo, page,countList);
		
		mv.setViewName("/branch/branchboardlist");
		
		mv.addObject("pageInfo", pageInfo);
		mv.addObject("list", list);
		mv.addObject("countList", countList);
		mv.addObject("countPage", countPage);
		mv.addObject("totalcount", totalcount);
		mv.addObject("totalpage", totalpage);
		mv.addObject("startPage", startPage);
		mv.addObject("page",page);
		mv.addObject("endPage", endPage);
		mv.addObject("boardName",boardName);
		
		return mv;
	}
	
	@RequestMapping("/branchboardwrite")
	public String branchboardwrite(HttpServletRequest request, Model model) {
		String pageInfo = request.getParameter("pageInfo");
		String boardName = request.getParameter("boardName");
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("boardName", boardName);
		
		return "/branch/branchboardwrite";
	}
	
	@RequestMapping("/branchwrite")
	public String branchwrite(HttpServletRequest request, Model model, BranchBoard bb)throws Exception {
		String pageInfo = request.getParameter("branchKind");
		model.addAttribute("pageInfo", pageInfo);
		bbService.insertbranchboard(bb);
		
		return "redirect:branchboardlist"; 
	}
	
	@RequestMapping(value="/branchboardmodify", method=RequestMethod.GET)
	public ModelAndView branchboardmodify(HttpServletRequest request) throws Exception {
		
		String branchNum = request.getParameter("branchNum");
		int b = Integer.parseInt(branchNum);
		
		BranchBoard bto = bbService.selectBranchBoard(b);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/branch/branchboardmodify");
		mv.addObject("bto", bto);
		
		return mv;
	}
	
	@RequestMapping(value="/branchmodify", method=RequestMethod.POST)
	public String branchmodify(BranchBoard bb, HttpServletRequest request) throws Exception {
		
		String b = request.getParameter("branchNum");
		int branchNum = Integer.parseInt(b);
		
		bbService.updatebranchboard(bb);
		
		return "redirect:branchboardlist";
	}
	
	@RequestMapping(value="branchboarddelete")
	public String branchboarddelete(@RequestParam(value="branchNum") int branchNum, HttpServletRequest request) throws Exception{
		String pageInfo = request.getParameter("pageInfo");
		bbService.deletebranchboard(branchNum);
		
		return "redirect:branchboardlist";
	}
	
	@RequestMapping("/branchboardGuidance")
	public ModelAndView branchboardGuidance() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/branch/branchboardGuidance");
		mv.addObject("boardName","guidance");
		
		return mv;
	}
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
}
