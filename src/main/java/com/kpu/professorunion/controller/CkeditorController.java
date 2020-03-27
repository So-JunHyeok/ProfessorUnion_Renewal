package com.kpu.professorunion.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CkeditorController {
	
	@RequestMapping(value = "/community/imageUpload/", method = { RequestMethod.POST, RequestMethod.GET })
	public void communityImageUpload(HttpServletRequest request, HttpServletResponse response,
			@RequestParam MultipartFile upload) throws UnsupportedEncodingException {
		
		request.setCharacterEncoding("utf-8"); 

		OutputStream out = null;	
		PrintWriter printWriter = null;
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		try {
			HttpSession session = request.getSession();
			String root_path = session.getServletContext().getRealPath("/resources/community/imageUpload/");
			String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();
			String uploadPath = root_path + fileName;

			out = new FileOutputStream(new File(uploadPath));
			out.write(bytes);
			String callback = request.getParameter("CKEditorFuncNum");
			printWriter = response.getWriter();
			
			String fileUrl = "resources\\\\community\\\\imageUpload\\\\" + fileName;
			System.out.println("fileUrl : "+fileUrl);
			System.out.println("fileUrl : "+fileUrl);
			printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(" + callback
					+ ",'" + fileUrl + "','이미지를 업로드 하였습니다.'" + ")</script>");
			printWriter.flush();

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (out != null) {
					out.close();
				}
				if (printWriter != null) {
					printWriter.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return;
	}
}
