package com.kpu.professorunion.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.dao.AgonyService;
import com.kpu.professorunion.dao.BoardService;
import com.kpu.professorunion.dao.MemberService;
import com.kpu.professorunion.model.Criteria;
import com.kpu.professorunion.model.Member;
import com.kpu.professorunion.model.PageMaker;
import com.kpu.professorunion.model.Scrap;
import com.kpu.professorunion.util.ShaEncoder;

@Controller
 public class MemberAction {
	@Autowired
	private MemberService memberService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private AgonyService agonyService;
	
	@Resource(name="shaEncoder")
	private ShaEncoder encoder;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "/user/loginForm";
	}
	@RequestMapping("/login")
	public String login() {
		return "/user/login";
	}
	@RequestMapping("/join")
	public String join(Authentication auth) {
		try {
			UserDetails user = (UserDetails)auth.getPrincipal();
			String mb_id = user.getUsername();
			if(mb_id != null) {
				return "/main/main";
			}
		} catch (Exception e) {
			// TODO: handle exception
			return "/user/join";
		}
		return "/user/join";
	}
	@RequestMapping("/mypage")
	public ModelAndView mypage(Authentication authentication, HttpServletRequest request, Model model,Scrap scrap, Criteria criteria,
			@RequestParam(value="scrappage",defaultValue="1")int scrappage, @RequestParam(value="page",defaultValue="1")int page) throws Exception{
		ModelAndView mv = new ModelAndView("/user/mypage");
		String sessionid;
		try {
			UserDetails user = (UserDetails)authentication.getPrincipal();
			sessionid = user.getUsername();
			criteria.setAid(sessionid);
			criteria.setPerPageNum(5);
		} catch (Exception e) {
			mv.setViewName("/user/loginForm");
			return mv;
		}
		Map map = new HashMap();
		map.put("mb_id", sessionid);
		
		int totalcount = boardService.totalscrap(map);
		int countlist = 10;
		int countpage = 5;
		int totalpage = totalcount / countlist;
		
		int startpage = ((scrappage -1) / 10) * 10+1;
		int endPage = startpage + countpage -1;
		
		int paging = (scrappage-1) * 10;
		map.put("paging", paging);
		map.put("countpage", countpage);
		
		List<Scrap> scrapList = boardService.getscrapcount(map);
		
		if(totalcount % countlist > 0) {
			totalpage++;
		}
		if(totalpage < scrappage) {
			scrappage = totalpage;
		}
		if(endPage > totalpage) {
			endPage = totalpage;
		}
		mv.addObject("scrappage",scrappage);
		mv.addObject("totalcount",totalcount);
		mv.addObject("countlist",countlist);
		mv.addObject("startpage",startpage);
		mv.addObject("endPage",endPage);
		mv.addObject("page", page);
		
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(agonyService.selectagonyUserlisttotalCount(criteria));
		mv.addObject("pageMaker", pageMaker);
		mv.addObject("agonyList", agonyService.selectagonyUserList(criteria));
		mv.addObject("pageInfo", request.getParameter("pageInfo"));
		Member member = (Member)memberService.myinfo(sessionid);
		request.setAttribute("member", member);
		mv.addObject("scrapList",scrapList);
		return mv;
	}
	@RequestMapping("/userfind")
	public ModelAndView userfind(HttpServletRequest request, ModelAndView mv) {
		String pageInfo = request.getParameter("pageInfo");
		mv.addObject("pageInfo", pageInfo);
		mv.setViewName("/user/userfind");
		return mv;
	}
	@RequestMapping("/mailauth")
	public String mailauth(HttpServletRequest request) {
		if(request.getParameter("agreement1") == null || request.getParameter("agreement1") == "") {
			return "/user/join";
		}
		if(request.getParameter("agreement2") == null || request.getParameter("agreement1") == "") {
			return "/user/join";
		}
		return "/user/mailauth";
	}
	@RequestMapping("/register")
	public ModelAndView register(HttpServletRequest request, ModelAndView mv, HttpSession session) throws Exception {
		session = request.getSession();
		String mb_email = (String) session.getAttribute("mb_email");
		if(mb_email == null || mb_email == "") {
			mv.setViewName("/user/join");
			return mv;
		}
		try {
			Member m = memberService.id_find(mb_email);
			if(m.getMb_id() != null) {
				mv.setViewName("/user/join");
				return mv;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		mv.addObject("mb_email", mb_email);
		mv.setViewName("/user/register");
		return mv;
	}

	@RequestMapping("checkAuth")
	public String checkAuth(Locale locale, Model model, Authentication auth) {
		Member vo = (Member)auth.getPrincipal();
		model.addAttribute("auth", auth);
		model.addAttribute("vo", vo);
		return "/user/login";
	}
	
	@RequestMapping("/insertUser")
	public String insertUser(Member m,HttpServletRequest request) 
			throws Exception {
		int i = memberService.idCheck(m.getMb_id());
		if (i == 1) {
			return "/user/loginForm";
		}
		String dbPw = encoder.saltEncoding(m.getMb_password(),m.getMb_id());
		m.setMb_password(dbPw);
		m.setMb_level(1);
		this.memberService.insertMember(m);
		request.setAttribute("mb_name", m.getMb_name());
		request.setAttribute("mb_id", m.getMb_id());
		return "/user/success";
	}
	
	@RequestMapping("/idcheck")
	public @ResponseBody String idcheck(HttpServletRequest request) 
			throws Exception {
		String checkId = request.getParameter("mb_id");
		int i = memberService.idCheck(checkId);
		if (i == 1) {
			return "NO";
		}
		return "OK";
	}
	
	@RequestMapping("/nickcheck")
	public @ResponseBody String nickcheck(HttpServletRequest request) throws Exception {
		String mb_nick = request.getParameter("mb_nick");
		try {
			String db_id = memberService.nick_overlap(mb_nick);
			if(db_id != null) {
				return "NO";
			}
			return "OK";
		} catch (Exception e) {
			// TODO: handle exception
			return "OK";
		}
	}
	
	@RequestMapping("/idfind")
	public @ResponseBody String idfind(HttpServletRequest request, Model model) throws Exception {
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		try {
			Member m = memberService.id_find(email);
			System.out.println("input : "+name);
			System.out.println("db : "+m.getMb_name());
			if(!m.getMb_name().equals(name)) {
				return "nameNo";
			}
			request.setAttribute("dbid", m.getMb_id());
			return m.getMb_id();
		} catch (Exception e) {
			// TODO: handle exception
			return "";
		}
	}

	@RequestMapping("/modify")
	public @ResponseBody String modify(HttpServletRequest request, Authentication authentication) throws Exception {
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		Member m = new Member();
		String mb_name = request.getParameter("mb_name");
		String mb_nick = request.getParameter("mb_nick");
		String mb_email = request.getParameter("mb_email");
		String mb_id = userDetails.getUsername();
		try {
			String dbnick_id = memberService.nick_overlap(mb_nick);
			if(!dbnick_id.equals(mb_id)) {
				return "nickNO";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		try {
			Member m2 = memberService.id_find(mb_email);
			if(m2.getMb_id().equals(mb_id)) {
				m.setMb_id(mb_id);
				m.setMb_name(mb_name);
				m.setMb_nick(mb_nick);
				m.setMb_email(mb_email);
				memberService.modify(m);
				return "OK";
			}
			return "emailNO";
		} catch (Exception e) {
			// TODO: handle exception
			m.setMb_id(mb_id);
			m.setMb_name(mb_name);
			m.setMb_nick(mb_nick);
			m.setMb_email(mb_email);
			memberService.modify(m);
			return "OK";             
		}
	}
	
	@RequestMapping("/mailling")
	public @ResponseBody String maillingservice(HttpServletRequest request, Authentication authentication) throws Exception {
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		Member m = new Member();
		int mb_mailling;
		String re_mailling = request.getParameter("mb_mailling");
		System.out.println("============================");
		System.out.println(re_mailling);
		System.out.println("============================");
		String mb_id = userDetails.getUsername();
		mb_mailling = Integer.parseInt(re_mailling);
		m.setMb_id(mb_id);
		m.setMb_mailling(mb_mailling);
		memberService.mailling(m);
		if(mb_mailling == 1) {
			return "NO";
		}else {
			return "OK";
		}
	}
	@RequestMapping("/open")
	public @ResponseBody String open(HttpServletRequest request, Authentication authentication) throws Exception {
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		Member m = new Member();
		int mb_open;
		String re_open = request.getParameter("mb_open");
		System.out.println("============================");
		System.out.println(re_open);
		System.out.println("============================");
		String mb_id = userDetails.getUsername();
		mb_open = Integer.parseInt(re_open);
		m.setMb_id(mb_id);
		m.setMb_open(mb_open);
		memberService.open(m);
		if(mb_open == 1) {
			return "NO";
		}else {
			return "OK";
		}
	}
	@RequestMapping("/passchange")
	public @ResponseBody String passchange(HttpServletRequest request, Authentication authentication) throws Exception {
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		String mb_id = userDetails.getUsername();
		Member m = memberService.myinfo(mb_id);
		String befor_password = request.getParameter("befor_password");
		String after_password = request.getParameter("after_password");
		String befor_hashpass = encoder.saltEncoding(befor_password, mb_id);
		if(!m.getMb_password().equals(befor_hashpass)) {
			return "beforNO";
		}
		String after_hashpass = encoder.saltEncoding(after_password, mb_id);
		if(m.getMb_password().equals(after_hashpass)) {
			return "befor_after";
		}
		m.setMb_password(after_hashpass);
		memberService.temporary_pass(m);
		return "OK";
	}
	@RequestMapping("/deletemember")
	public @ResponseBody String deletemember(HttpServletRequest request, Authentication authentication) throws Exception {
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		String mb_id = userDetails.getUsername();
		if(mb_id == "admin") {
			return "adminNO";
		}
		Member m = memberService.myinfo(mb_id);
		String mb_password = request.getParameter("pass");
		String deletepass = encoder.saltEncoding(mb_password, mb_id);
		if(!m.getMb_password().equals(deletepass)) {
			return "passNO";
		}
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyyMMdd", Locale.KOREA );
		Date currentTime = new Date ();
		m.setMb_password("");
		System.out.println(mSimpleDateFormat.format(currentTime));
		m.setMb_leave_date(mSimpleDateFormat.format(currentTime));
		memberService.delete(m);
		return "OK";
	}
}

