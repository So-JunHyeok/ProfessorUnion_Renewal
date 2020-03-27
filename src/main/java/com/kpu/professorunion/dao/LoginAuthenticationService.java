package com.kpu.professorunion.dao;

import java.net.InetAddress;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kpu.professorunion.model.Member;

               /* login �씤利� 媛앹껜 */

@Service("userAutenticationservice")
public class LoginAuthenticationService implements UserDetailsService{
   private static final Logger logger = LoggerFactory.getLogger(LoginAuthenticationService.class);

	@Resource(name="MemberService")
	private MemberService dao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Member member = null;
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy.MM.dd HH:mm:ss", Locale.KOREA );
		Date currentTime = new Date ();
		String mTime = mSimpleDateFormat.format ( currentTime );
		String ip;
		InetAddress local;
		List<GrantedAuthority> gas = new ArrayList<GrantedAuthority>();
		try {
			member = dao.selectLogin(username);
			String level = "";
			if(member.getMb_level() == 1) {
				level = "ROLE_USER";
			}else if (member.getMb_level() == 2) {
				level = "ROLE_UNIONMEMBER";
			}else if (member.getMb_level() == 3) {
				level = "ROLE_employees";
			}else if (member.getMb_level() == 4) {
				level = "ROLE_ADMIN";
			}
			if(member == null) throw new UsernameNotFoundException("User not authorized");
			logger.info(member.toString());
			gas.add(new SimpleGrantedAuthority(level));
			local = InetAddress.getLocalHost();
			ip = local.getHostAddress();
			member.setMb_today_login(mTime);
			member.setMb_login_ip(ip);
			dao.login(member);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return member.user(member.getMb_id(), member.getMb_password(), true,
				true, true, true, gas);
	}
}
