package com.kpu.professorunion.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

				/* 로그인 실패 후 수행 */

public class UserLoginFailureHandler implements AuthenticationFailureHandler {
	private static final Logger logger = LoggerFactory.getLogger(UserLoginFailureHandler.class);
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException auth) throws IOException, ServletException {
		// TODO Auto-generated method stub
		logger.info(auth.getLocalizedMessage());
		logger.info(auth.getMessage());
		for(StackTraceElement s : auth.getStackTrace()) {
			logger.info(s.getClassName());
			logger.info(s.getFileName());
			logger.info(s.getMethodName());
			logger.info(s.getLineNumber()+"");
			logger.info(s.isNativeMethod()+"");
		}
		request.setAttribute("errMsg", auth.getMessage());
		request.setAttribute("loginfail", "아이디와 비밀번호를 확인해주세요.");
		request.getRequestDispatcher("/WEB-INF/views/user/loginForm.jsp").forward(request, response);
	}
}