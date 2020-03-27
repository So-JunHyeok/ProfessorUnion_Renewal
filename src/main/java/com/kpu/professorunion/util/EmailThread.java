package com.kpu.professorunion.util;

import javax.servlet.http.HttpSession;

public class EmailThread extends Thread {
	HttpSession session;
	String joinCode;
	public EmailThread(HttpSession session, String joinCode) {
		// TODO Auto-generated constructor stub
		this.session = session;
		this.joinCode = joinCode;
	}
	public EmailThread() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public void run() {
		try {
			session.setAttribute("joinCode", joinCode);
			System.out.println(joinCode);
			Thread.sleep(1000*186);
			session.setAttribute("joinCode", null);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
		}
	}
}
