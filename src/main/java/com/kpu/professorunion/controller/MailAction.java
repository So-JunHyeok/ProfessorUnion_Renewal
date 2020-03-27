package com.kpu.professorunion.controller;

import java.util.Random;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kpu.professorunion.dao.MemberService;
import com.kpu.professorunion.model.Member;
import com.kpu.professorunion.util.EmailThread;
import com.kpu.professorunion.util.ShaEncoder;

@Controller
public class MailAction {
	
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private MemberService memberService;
	@Resource(name="shaEncoder")
	private ShaEncoder encoder;
	
	@RequestMapping("/regimail")
	public @ResponseBody String regimail(HttpServletRequest request, HttpSession session, EmailThread emt) 
			throws Exception {
		String email = request.getParameter("mb_email");
		System.out.println("email : "+email);
		try {
			Member m = memberService.id_find(email);
			if(m.getMb_id() != null) {
				return "NO";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		int min = 100001;
		int max = 999999;
		Random random = new Random();
		int randomnum = random.nextInt(max - min + 1) + min;
		String joinCode = String.valueOf(randomnum);
		emt = new EmailThread(session, joinCode);
		emt.start();
		String setfrom = "kpunion1@gmail.com";
		String tomail = email;
		String title = "전국교수노동조합 회원가입 이메일 발송입니다.";
		String content = "회원님의 이메일 인증번호 : " + randomnum;
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title);
			messageHelper.setText(content);
			mailSender.send(message);
		} catch (Exception e) {
			return "RE";
		}
		return "OK";
	}
	
	@RequestMapping("/emctf")
	public @ResponseBody String emctf(HttpServletRequest request, HttpSession session) {
		String emctf = request.getParameter("emctf");
		session = request.getSession();
		String joinCode = (String) session.getAttribute("joinCode");
		if(emctf.equals(joinCode)) {
			session.setAttribute("mb_email", request.getParameter("email"));
			System.out.println(request.getParameter("email"));
			return "OK";
		}
		System.out.println(emctf);
		System.out.println(joinCode);
		return "NO";
	}
	
	@RequestMapping("/passfind")
	public @ResponseBody String passfind(HttpServletRequest request, Model model) throws Exception {
		System.out.println("passfind()");
		String email = request.getParameter("email");
		String id = request.getParameter("id");
		System.out.println(id);
		try {
			Member m = memberService.pass_find(id);
			System.out.println("member ======================");
			System.out.println(m.getMb_id());
			System.out.println("member ======================");
			if(m.getMb_email().equals(email)) {
				int min = 100001;
				int max = 999999;
				Random random = new Random();
				int randomnum = random.nextInt(max - min + 1) + min;
				String ranstring = String.valueOf(randomnum);
				String dbPw = encoder.saltEncoding(ranstring, id);
				m.setMb_password(dbPw);
				memberService.temporary_pass(m);
				String setfrom = "kpunion1@gmail.com";
				String tomail = email;
				String title = "전국교수노동조합 임시 비밀번호 전송";
				String content = "임시비밀번호: " + randomnum;
				try {
					MimeMessage message = mailSender.createMimeMessage();
					MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
					messageHelper.setFrom(setfrom); // �����»�� �����ϰų� �ϸ� �����۵��� ����
					messageHelper.setTo(tomail); // �޴»�� �̸���
					messageHelper.setSubject(title);
					messageHelper.setText(content);
					mailSender.send(message);
				} catch (Exception e) {
					return "EMAILNO";
				}
				return "OK";
			}
			return "EMAILNO";
		} catch (Exception e) {
			// TODO: handle exception
			return "IDNO";
		}
	}
}
