package com.kpu.professorunion.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.dao.AdminService;
import com.kpu.professorunion.dao.AgonyService;
import com.kpu.professorunion.dao.BoardService;
import com.kpu.professorunion.model.AdminConfig;
import com.kpu.professorunion.model.Agony;
import com.kpu.professorunion.model.BoardFile;
import com.kpu.professorunion.model.BoardModel;

@Controller
public class MainAction {
	
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private AdminService adimService;
	
	@Autowired
	private AgonyService agonyservice;
	
	
	@RequestMapping(value="main.nhn")
	public ModelAndView mainmain(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
				
		int listCnt = agonyservice.selectCount();
	
		
		Map map = new HashMap();
		ModelAndView mv = new ModelAndView("/main/main");
		
		String vi_date   = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
		String vi_time   = new java.text.SimpleDateFormat("HHmmss").format(new java.util.Date());

		System.out.println("�궇吏�" +vi_date);
		System.out.println(vi_time);
		
		
		String vi_ip = request.getRemoteAddr();
		System.out.println("�젒�냽�븘�씠�뵾�뒗 :" +vi_ip);
		String vi_agent = request.getHeader("user-agent");
		System.out.println("�젒�냽釉뚮씪�슦�졇�뒗 :" +vi_agent);
		String vi_referer = request.getHeader("referer");
		if(vi_referer == null) {
			vi_referer = "";
		}
		System.out.println("�씠�쟾寃쎈줈 :" +vi_referer);
		
		String db_date = adimService.getVisitInfoall(vi_ip, vi_date);
		
		map.put("vi_ip", vi_ip);
		map.put("vi_agent", vi_agent);
		map.put("vi_referer", vi_referer);
		map.put("vi_date", vi_date);
		map.put("vi_time", vi_time);

		
		
		System.out.println("값비교" +db_date);
		
		if(!vi_date.equals(db_date) ) {
			adimService.setVisitInfo(map);
			System.out.println("�떎�뻾");
		}
		else {
			System.out.println("방문기록있음");
		}
		
		
		
		AdminConfig getConfigContemt = adimService.getConfigContemt();
		
		mv.addObject("getConfigContemt", getConfigContemt);
		/*mv.addObject("sessionID", sessionID);*/
		

		List<BoardModel> mainNotice= boardService.getMainNoticeBoard();
		List<BoardModel> mainStatement= boardService.getMainStatementBoard();
		List<BoardModel> mainNews= boardService.getMainNewsBoard();
		List<BoardModel> mainPress= boardService.getMainPressBoard();
		List<BoardModel> mainReport= boardService.getMainReportBoard();
		List<BoardFile> mainImage= boardService.getImageBoard();
		

		List photoboard = new ArrayList();
		
		if(mainImage!=null) {
	/*	for(int i=0; i<mainImage.size(); i++) {
			int leng = mainImage.get(i).getBf_file().lastIndexOf("/");
			photoboard.add(i, mainImage.get(i).getBf_file().substring(leng+1));
			}*/
			
			for(int i=0; i<mainImage.size(); i++) {
				photoboard.add(i, mainImage.get(i).getBf_file());
			}
		}
		
		session.setAttribute("acount",listCnt);
		
		
		
		mv.addObject("mainNotice",mainNotice);
		mv.addObject("mainStatement",mainStatement);
		mv.addObject("mainNews",mainNews);
		mv.addObject("mainPress",mainPress);
		mv.addObject("mainReport",mainReport);
		mv.addObject("photoboard",photoboard);
		
		String mainbanner = "mainbanner";
		String prbanner1 = "prbanner1";
		String prbanner2 = "prbanner2";
		String prbanner3 = "prbanner3";
		
		
		String MainImg = adimService.getMainImgFile(mainbanner);
		String PrImg1 = adimService.getMainImgFile(prbanner1);
		String PrImg2 = adimService.getMainImgFile(prbanner2);
		String PrImg3 = adimService.getMainImgFile(prbanner3);
		
		
		
	
		mv.addObject("MainImg", MainImg);
		mv.addObject("PrImg1", PrImg1);
		mv.addObject("PrImg2", PrImg2);
		mv.addObject("PrImg3", PrImg3);

		return mv;
	}
		
	
}
