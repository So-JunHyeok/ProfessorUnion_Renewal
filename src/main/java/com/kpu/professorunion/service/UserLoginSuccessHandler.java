package com.kpu.professorunion.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

				/* 로그인 성공 시  */

public class UserLoginSuccessHandler implements AuthenticationSuccessHandler {
	private static final Logger logger = LoggerFactory.getLogger(UserLoginSuccessHandler.class);
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth) throws IOException, ServletException {
		// TODO Auto-generated method stub
		logger.info(auth.getName());
		logger.info(auth.getAuthorities().toString());
		logger.info(auth.getDetails().toString());
		logger.info(auth.getPrincipal().toString());
		for(GrantedAuthority a : auth.getAuthorities()) {
			logger.info(a.getAuthority());
		}
		
		UserDetails u = (UserDetails) auth.getPrincipal();
		HttpSession session = request.getSession();
		
		session.setAttribute("sessionID", u.getUsername());
		logger.info(String.valueOf(u.isAccountNonExpired()));
		logger.info(String.valueOf(u.isAccountNonLocked()));
		logger.info(String.valueOf(u.isCredentialsNonExpired()));
		logger.info(String.valueOf(u.isEnabled()));
		response.sendRedirect(request.getContextPath()+"/main.nhn");
	}
	
}