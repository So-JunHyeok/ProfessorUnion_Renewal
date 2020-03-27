package com.kpu.professorunion.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.dao.QuestionService;
import com.kpu.professorunion.model.Criteria;
import com.kpu.professorunion.model.PageMaker;
import com.kpu.professorunion.model.Question;

@Controller
public class QuestionAction {
	@Autowired
	private QuestionService questionService;
	
	@RequestMapping("/question")
	public String question(HttpServletRequest request, Model model) {
		String boardName = request.getParameter("boardName");
		model.addAttribute("boardName", boardName);
		return "/user/question";
	}
	@RequestMapping("/question_write")
	public String question_write(HttpServletRequest request, Authentication auth) throws Exception {
		UserDetails user = (UserDetails)auth.getPrincipal();
		String mb_id = user.getUsername();
		String wr_subject = request.getParameter("qu_subject");
		String wr_content = request.getParameter("qu_content");
		SimpleDateFormat date = new SimpleDateFormat("yyyy.MM.dd HH:mm", Locale.KOREA);
		Date wTime = new Date();
		String wr_datetime = date.format(wTime);
		Question q = new Question();
		q.setMb_id(mb_id);
		q.setWr_subject(wr_subject);
		q.setWr_content(wr_content);
		q.setWr_datetime(wr_datetime);
		questionService.question_write(q);
		return "redirect:question";
	}
	@RequestMapping("question_list")
	public String question_list(Model model, Criteria criteria, Authentication auth, HttpServletRequest request) throws Exception{
		String boardName = request.getParameter("boardName");
		try {
			UserDetails user = (UserDetails)auth.getPrincipal();
			criteria.setAid(user.getUsername());
		} catch (Exception e) {
			request.setAttribute("error", "로그인 후 이용해주세요.");
			return "/user/loginForm";
		}
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(questionService.countquestion(criteria));
		model.addAttribute("boardName", boardName);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list",questionService.question_list(criteria));
		return "/user/myquestion";
	}
	
	@RequestMapping("myquestion_cont.nhn")
	public ModelAndView myquestion_cont(HttpServletRequest request,@RequestParam(value="wr_id")int wr_id,
			@RequestParam(value="boardName",defaultValue="none") String boardName, Authentication auth) throws Exception {
		ModelAndView mv = new ModelAndView("user/myquestion_cont");
		UserDetails user = (UserDetails)auth.getPrincipal();	
		String mb_id = user.getUsername();
		
		Map map = new HashMap();
		
		map.put("wr_id", wr_id);
		
		Question ques = questionService.contview(map);
		
		mv.addObject("ques",ques);
		mv.addObject("wr_id",wr_id);
		mv.addObject("boardName",boardName);
		
		return mv;
	}
}
