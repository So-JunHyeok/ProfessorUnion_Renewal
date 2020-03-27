package com.kpu.professorunion.controller;



import java.io.File;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.dao.AdminService;
import com.kpu.professorunion.dao.AgonyService;
import com.kpu.professorunion.dao.CorruptionService;
import com.kpu.professorunion.dao.MemberService;
import com.kpu.professorunion.dao.QuestionService;
import com.kpu.professorunion.model.AdminConfig;
import com.kpu.professorunion.model.Agony;
import com.kpu.professorunion.model.BoardLevel;
import com.kpu.professorunion.model.Corruption;
import com.kpu.professorunion.model.Criteria;
import com.kpu.professorunion.model.MainImgUplod;
import com.kpu.professorunion.model.Member;
import com.kpu.professorunion.model.PageMaker;
import com.kpu.professorunion.model.Question;
import com.kpu.professorunion.model.VisitrecordBean;

@Controller
public class ConfigAction {
	
	private static final String SAVE_PATH = "resources/community/imageUpload/";

	@Autowired  
	private ServletContext servletContext;
	
	@Autowired
	private AdminService adminservice;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AgonyService agonyservice;
	
	@Autowired
	private CorruptionService corruptionsrtvice;
	
	@Autowired
	private QuestionService questionService;

	
	@RequestMapping(value="admin_con")
	@Secured("ROLE_ADMIN")
	public ModelAndView mainmain() throws Exception {
		ModelAndView mv = new ModelAndView("/admin/AdminConfigForm");
		
		//愿�由ъ옄�럹�씠吏� �꽕�젙媛� �뜕吏�湲� 
		AdminConfig getConfigContemt = adminservice.getConfigContemt();
		
		mv.addObject("getConfigContemt", getConfigContemt);
		
		//愿�由ъ옄�럹�씠吏� �꽕�젙�맂 �씠誘몄�
		
		String mainbanner = "mainbanner";
		String prbanner1 = "prbanner1";
		String prbanner2 = "prbanner2";
		String prbanner3 = "prbanner3";
		
		
		String MainImg = adminservice.getMainImgFile(mainbanner);
		String PrImg1 = adminservice.getMainImgFile(prbanner1);
		String PrImg2 = adminservice.getMainImgFile(prbanner2);
		String PrImg3 = adminservice.getMainImgFile(prbanner3);
		
		
		
	
		mv.addObject("MainImg", MainImg);
		mv.addObject("PrImg1", PrImg1);
		mv.addObject("PrImg2", PrImg2);
		mv.addObject("PrImg3", PrImg3);

		
		return mv;
	}
	
	@RequestMapping(value="admin_config")
	@Secured("ROLE_ADMIN")
	public ModelAndView main_view_config(AdminConfig model, 
	 @RequestParam(value="mainbanner")MultipartFile file,
	 @RequestParam(value="prbanner1")MultipartFile file1,  
	 @RequestParam(value="prbanner2")MultipartFile file2,
	 @RequestParam(value="prbanner3")MultipartFile file3)throws Exception{

		ModelAndView mv = new ModelAndView("redirect:/admin_con");
		MainImgUplod mu = new MainImgUplod();
		
		String cf_file = file.getOriginalFilename();
		String cf_file1 = file1.getOriginalFilename();
		String cf_file2 = file2.getOriginalFilename();
		String cf_file3 = file3.getOriginalFilename();
		
	if(null != cf_file) {
		String Cf_path = file.getName();
		System.out.println("filename :" + Cf_path);
		
		int cf_filesize = (int)file.getSize();
		String cf_source = servletContext.getRealPath("/") + SAVE_PATH + cf_file;
		File uploadfile = new File(cf_source);
		try {
			if(!file.isEmpty()) {file.transferTo(uploadfile);}
		}
		catch(Exception e) {e.printStackTrace();}
		
		mu.setCf_file(cf_file);
		mu.setCf_filesize(cf_filesize);
		mu.setCf_source(cf_source);
		mu.setCf_path(Cf_path);
		
		if(cf_file != "") {
		adminservice.MainImgUpdate(mu);
		}
	}
		
		if(null != cf_file1){
		String Cf_path1 = file1.getName();
		System.out.println("filename :" + Cf_path1);
		
		int cf_filesize1 = (int)file1.getSize();
		String cf_source1 = servletContext.getRealPath("/") + SAVE_PATH + cf_file1;
		
		File uploadfile1 = new File(cf_source1);
		try {
			if(!file1.isEmpty()) {
				file1.transferTo(uploadfile1);				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		mu.setCf_file(cf_file1);
		mu.setCf_filesize(cf_filesize1);
		mu.setCf_source(cf_source1);
		mu.setCf_path(Cf_path1);
	
		if(cf_file1 != "") {
		adminservice.MainImgUpdate(mu);
		}
		}
		
		if(null != cf_file2){
		String Cf_path2 = file2.getName();
		System.out.println("filename :" + Cf_path2);
		
		int cf_filesize2 = (int)file2.getSize();
		String cf_source2 = servletContext.getRealPath("/") + SAVE_PATH + cf_file2;
		
		File uploadfile2 = new File(cf_source2);
		try {
			if(!file2.isEmpty()) {
				file2.transferTo(uploadfile2);				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
		mu.setCf_file(cf_file2);
		mu.setCf_filesize(cf_filesize2);
		mu.setCf_source(cf_source2);
		mu.setCf_path(Cf_path2);
	
		
		if(cf_file2 != "") {
		adminservice.MainImgUpdate(mu);
		}
		}		
			
		//�꽑�쟾�솉蹂대Ъ �씠誘몄�3
		if(null != cf_file3){
		String Cf_path3 = file3.getName();
		System.out.println("filename :" + Cf_path3);
		
		//System.out.println("�뙆�씪�씠由꾩� :" + file3.getOriginalFilename());
		
		
		
		int cf_filesize3 = (int)file3.getSize();
		String cf_source3 = servletContext.getRealPath("/") + SAVE_PATH  + cf_file3;
		
		File uploadfile3 = new File(cf_source3);
		try {
			if(!file3.isEmpty()) {
				file3.transferTo(uploadfile3);				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
		mu.setCf_file(cf_file3);
		mu.setCf_filesize(cf_filesize3);
		mu.setCf_source(cf_source3);
		mu.setCf_path(Cf_path3);
	
		
		if(cf_file3 != "") {
		adminservice.MainImgUpdate(mu);
		}
		}		

		adminservice.setConfigContent(model);
		return mv;
	}

	
	@RequestMapping(value="RequestManagement")
	@Secured("ROLE_ADMIN")
	public ModelAndView ReauestManagement() throws Exception {
		ModelAndView mv = new ModelAndView("/admin/RequestManagement");
		int count = 5;
		List<Agony> dto = agonyservice.newagonylist(count);
		mv.addObject("articles", dto);
		List<Corruption> cdto = corruptionsrtvice.newcorruptionlist(count);		
		mv.addObject("corrup", cdto);
		List<Question> Qdto = questionService.newquestion_list(count);
		mv.addObject("quest", Qdto);
		return mv;
	}
	
			
	
	
	@RequestMapping(value="MemberManagement.nhn")
	@Secured("ROLE_ADMIN")
	public ModelAndView MemberManagement(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/MemberManagement");
		Map map = new HashMap();
		int PageSize = 10;
		String PagNum = request.getParameter("PagNum");
		
		if (PagNum == null){PagNum = "1";}																							
		int CurrentPage = Integer.parseInt(PagNum);																							
		int count = 0;																							
		int StarRow = (CurrentPage - 1) * PageSize;
		String searchOption = request.getParameter("searchOption");
		String keyword = request.getParameter("keyword");
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("StarRow", StarRow);
		map.put("PageSize", PageSize);
		
		List<Member> member = adminservice.getManagementMemberlist(map);
		
		count = adminservice.getMembercount();
		int pageblock = 10;
		int StartPage = 1;
		int Pageconut = count / PageSize;
		
		if(count % PageSize > 0){Pageconut ++;}
	
		if(Pageconut < CurrentPage ){Pageconut = CurrentPage;}

		if(CurrentPage % pageblock !=0){
		StartPage = (int)((CurrentPage)/pageblock) * pageblock+1;
		}
		else{
		StartPage = ((int)(CurrentPage/pageblock)-1) * pageblock+1;
		}
		int EndPage = StartPage + pageblock  - 1;
		if(EndPage > Pageconut){EndPage = Pageconut;}
		if(EndPage < 0){EndPage = 1;}
		
		AdminConfig getConfigContemt = adminservice.getConfigContemt();

		mv.addObject("getConfigContemt", getConfigContemt);
		mv.addObject("CurrentPage", CurrentPage);
		mv.addObject("EndPage", EndPage);
		mv.addObject("member", member);
		mv.addObject("pageblock", pageblock);
		mv.addObject("Pageconut", Pageconut);
		mv.addObject("StartPage", StartPage);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="MemberManagementmodify")
	@Secured("ROLE_ADMIN")
	public Map<String, Object> MemberManagementmodify(
	 @RequestParam (value="mb_id") String[] mb_id, 
	 @RequestParam(value="mb_level") int[] mb_level,
	 @RequestParam(value="mb_open") int[] mb_open,
	 @RequestParam(value="mb_intercept_date")String[] mb_intercept_date)
	  throws Exception {
		int i;
		for(i=0; i<mb_id.length; i++)
		{
			Member member = new Member();
			member.setMb_id(mb_id[i]);
			member.setMb_level(mb_level[i]);
			member.setMb_open(mb_open[i]);
			member.setMb_intercept_date(mb_intercept_date[i]);
			adminservice.setMemberManagementModify(member);
		}
		Map map = new HashMap();

		return map;
	}
		
	/*			System.out.println("�븘�븘�뵒:" + mb_id[i]);
	System.out.println("�젅踰�:" + mb_level[i]);
	System.out.println("�삤�뵂:" + mb_open[i]);
	System.out.println("李⑤떒:" + mb_intercept_date[i]);*/
	
	
	@ResponseBody
	@RequestMapping(value="MemberManagementdel")
	@Secured("ROLE_ADMIN")
	public Map<String, Object> MemberManagementdel(
			@RequestParam(value="check")String[]check
			) throws Exception {

			System.out.println(check.length);
			
			for(int i=0; i<check.length; i++) {
			Member member = new Member();
			member.setMb_id(check[i]);
			System.out.println("�븘�븘�뵒:" + check[i]);

			System.out.println(member.getMb_id());

			adminservice.MemberManagementDel(member);
			
		}
		
			
		
		
		Map map = new HashMap();
		

		
		
		
		return map;
	}
	
	
	@RequestMapping(value="adminmypage")
	@Secured("ROLE_ADMIN")
	public ModelAndView AdmiimMemberMypageaccess(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/user/mypage");	
		
		String mb_id = request.getParameter("mb_id");
		String pageInfo = request.getParameter("pageInfo");
		
		Member member = memberService.myinfo(mb_id);
		
		mv.addObject("member", member);
		mv.addObject("pageInfo", pageInfo);
				
				
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="memberOnedel")
	@Secured("ROLE_ADMIN")
	public ModelAndView MemberManagementOnedel(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/MemberManagement.nhn");	
		
		String mb_id = request.getParameter("mb_id");
		adminservice.MemberManagementOneDel(mb_id);
	
	
		return mv;
	}
	
	
		
	@RequestMapping(value="visitHistory.nhn")
	@Secured("ROLE_ADMIN")
	public ModelAndView VisitHistory(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/VisitFrom");	
		
		
		//�븳�럹�씠吏��뿉 蹂댁뿬以� 寃뚯떆湲��쓽 �닔  
				int PageSize = 10;
				
				//
				String PagNum = request.getParameter("PagNum");
				
				if (PagNum == null) //�럹�씠吏�踰덊샇媛� �뾾�쑝硫� 1�럹�씠吏��쓽 �궡�슜�씠 �솕硫댁뿉 �몴�떆
			    {
					PagNum = "1";
			    }
				
				//�쁽�옱�럹�씠吏��쓽 媛쒖닔 (PageNum�뿉 �뵲�씪 �럹�씠吏��뿉 �몴�떆�릺�뒗 寃뚯떆湲��씠 �떖�씪�졇�빞 �븿.)
				int CurrentPage = Integer.parseInt(PagNum);
				
				// 寃뚯떆湲��쓽 珥� 媛쒖닔 (寃뚯떆湲��쓽 珥앷컻�닔/PageSize濡� �럹�씠吏��쓽 媛쒖닔瑜� 援ы븷 �닔 �엳�쓬)
				int count = 0;
				
				//�럹�씠吏� �꽆踰꾩뿉 �뵲�씪 db�뿉�꽌 �뼱�뼡 寃뚯떆湲��쓣 媛��졇���빞�븯�뒗吏� �젙�빐以�
				int StarRow = (CurrentPage - 1) * PageSize;
				
			
				//db�뿉�꽌 寃뚯떆湲� 由ъ뒪�듃�� 媛쒖닔瑜쇨��졇�샂
				List<VisitrecordBean> visit = adminservice.getVisitInfo(StarRow, PageSize);
				
				
				count = adminservice.visitcount();
				
				
				
				//�럹�씠吏뺤쿂由� 遺�遺� 
				
				//�럹�씠吏� 媛쒖닔
				int pageblock = 10;
				//�떆�옉�럹�씠吏�
				int StartPage = 1;
				//�럹�씠吏� 媛쒖닔
				int Pageconut = count / PageSize;
				// �굹癒몄�媛� 0蹂대떎 �겕寃� �굹�삤硫�  �럹�씠吏� 移댁슫�듃瑜� 利앷�
				if(count % PageSize > 0)
				{
					Pageconut ++;
				}
				// �쁽�옱 �럹�씠吏�媛� �럹�씠吏� 媛쒖닔蹂대떎 �겙寃쎌슦 �럹�씠吏� 移댁슫�듃�� 媛숇떎 
				if(Pageconut < CurrentPage )
				{
					Pageconut = CurrentPage;
				}
				
				if(CurrentPage % pageblock !=0) 
				{
				StartPage = (int)((CurrentPage)/pageblock) * pageblock+1;
				}
				else
				{
				StartPage = ((int)(CurrentPage/pageblock)-1) * pageblock+1;
			
				}
				

				
					
				int EndPage = StartPage + pageblock  - 1;
				
				if(EndPage > Pageconut) 
				{
					EndPage = Pageconut;
				}
				if(EndPage < 0)
				{
					EndPage = 1;
				}

				
				mv.addObject("CurrentPage", CurrentPage);
				mv.addObject("EndPage", EndPage);
				mv.addObject("visit", visit);
				mv.addObject("pageblock", pageblock);
				mv.addObject("Pageconut", Pageconut);
				mv.addObject("StartPage", StartPage);
				
		
		return mv;
	
	}
	
	
	@ResponseBody
	@RequestMapping(value="BoardLevelManagementmodify")
	@Secured("ROLE_ADMIN")
	public Map<String, Object> BoardLevelManagementmodify(
			@RequestParam (value="bo_table") String[] bo_table, 
			@RequestParam (value="bo_subject") String[] bo_subject,
			@RequestParam(value="bo_list_level") int[] bo_list_level,
			@RequestParam(value="bo_read_level") int[] bo_read_level,
			@RequestParam(value="bo_write_level") int[] bo_write_level,
			@RequestParam(value="bo_reply_level") int[] bo_reply_level,
			@RequestParam(value="bo_comment_level") int[] bo_comment_level,
			@RequestParam(value="bo_upload_level") int[] bo_upload_level,
			@RequestParam(value="bo_download_level") int[] bo_download_level
			) throws Exception {
			
			System.out.println(bo_table);
		int i;
		for(i=0; i<bo_table.length; i++)
		{	
			BoardLevel boardlevel = new BoardLevel();
			
			boardlevel.setBo_table(bo_table[i]);
			boardlevel.setBo_subject(bo_subject[i]);
			boardlevel.setBo_list_level(bo_list_level[i]);
			boardlevel.setBo_read_level(bo_read_level[i]);
			boardlevel.setBo_write_level(bo_write_level[i]);
			boardlevel.setBo_reply_level(bo_reply_level[i]);
			boardlevel.setBo_comment_level(bo_comment_level[i]);
			boardlevel.setBo_upload_level(bo_upload_level[i]);
			boardlevel.setBo_download_level(bo_download_level[i]);
	
			adminservice.UpeateBoardLevel(boardlevel);
			
		}		
		Map map = new HashMap();
		return map;
	}
	
	
	
	
	@RequestMapping(value="BoardManagement.nhn")
	@Secured("ROLE_ADMIN")
	public ModelAndView BoardManagement(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/BoardManagement");	
		
		int PageSize = 11;
		
		//
		String PagNum = request.getParameter("PagNum");
		
		if (PagNum == null) //�럹�씠吏�踰덊샇媛� �뾾�쑝硫� 1�럹�씠吏��쓽 �궡�슜�씠 �솕硫댁뿉 �몴�떆
	    {
			PagNum = "1";
	    }
		
		//�쁽�옱�럹�씠吏��쓽 媛쒖닔 (PageNum�뿉 �뵲�씪 �럹�씠吏��뿉 �몴�떆�릺�뒗 寃뚯떆湲��씠 �떖�씪�졇�빞 �븿.)
		int CurrentPage = Integer.parseInt(PagNum);
		
		// 寃뚯떆湲��쓽 珥� 媛쒖닔 (寃뚯떆湲��쓽 珥앷컻�닔/PageSize濡� �럹�씠吏��쓽 媛쒖닔瑜� 援ы븷 �닔 �엳�쓬)
		int count = 0;
		
		//�럹�씠吏� �꽆踰꾩뿉 �뵲�씪 db�뿉�꽌 �뼱�뼡 寃뚯떆湲��쓣 媛��졇���빞�븯�뒗吏� �젙�빐以�
		int StarRow = (CurrentPage - 1) * PageSize;
		
				List<BoardLevel>BoardLevelList = adminservice.getBoardLevelList(StarRow, PageSize);
				
				mv.addObject("BoardLevelList", BoardLevelList);
				
		return mv;
	}
	
	

	@RequestMapping("adminmyquestion_cont.nhn")
	public ModelAndView question_list(Model model, Criteria criteria, Authentication auth, HttpServletRequest request, BoardLevel boardlevel, Member userlevel) throws Exception{
		String boardName = "question";
		String mb_id;
		ModelAndView mv = new ModelAndView();
		try {
			UserDetails user = (UserDetails)auth.getPrincipal();
			criteria.setAid(user.getUsername());
			mb_id = user.getUsername();
		} catch (Exception e) {
			mb_id = null;
			request.setAttribute("error", "로그인 후 이용해주세요.");
			mv.setViewName("/user/loginForm");
			
			
		}
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(questionService.countquestion(criteria));
		model.addAttribute("boardName", boardName);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list",questionService.admin_question_list(criteria));
		mv.setViewName("/admin/Quest");
		
		
		userlevel = memberService.myinfo(mb_id);
		boardlevel = adminservice.getBoatdLevel(boardName);

		
		return mv;

	}
	
	
	
	
	
	

	
	
	
}	