package com.kpu.professorunion.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;

import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ParticipationAction {


	private static final String SAVE_PATH = "resources/community/imageUpload/";
	

	@Autowired 
	private ServletContext servletContext;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	@RequestMapping(value="partner.nhn")
	public ModelAndView partner(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("participation/partner");
		mv.addObject("boardName","partner");
		return mv;
	}
	@RequestMapping(value="mailSending.nhn")
	public ModelAndView mailService(HttpServletRequest request,
			@RequestParam(value="aname")String aname,
			@RequestParam(value="auniversity")String auniversity,
			@RequestParam(value="content")String content,
			@RequestParam(value="tomail")String tomail,
			@RequestParam(value="title")String title,
			@RequestParam(value="filetest")MultipartFile filetest) throws UnsupportedEncodingException {
		ModelAndView mv = new ModelAndView("redirect:partner.nhn");
		
			
		request.setCharacterEncoding("utf-8");
		String originalFileName = filetest.getOriginalFilename();
		String setfrom = "kpunion1@gmail.com";
		content = "작성자 이름 : "+ aname + "\n" +"작성자 소속 대학교 : " +auniversity ;
		final String safeFile = servletContext.getRealPath("/")  + SAVE_PATH + originalFileName + "submit";
		
		
		
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
			
			messageHelper.setFrom(setfrom);
			messageHelper.setTo(tomail);
			messageHelper.setSubject(title);
			messageHelper.setText(content);
			
			
			
			if(!filetest.isEmpty()) {
			  try {
				  filetest.transferTo(new File(safeFile));
			} catch (Exception e) {
				e.printStackTrace();
			}
			  
	            messageHelper.addAttachment(MimeUtility.encodeText(filetest.getOriginalFilename()), new File(safeFile));
			}
			
			

			mailSender.send(message);
			
			File filedel = new File(safeFile);
			if(filedel.exists()){
				filedel.delete();
			}
				
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return mv;
		
	}

}
