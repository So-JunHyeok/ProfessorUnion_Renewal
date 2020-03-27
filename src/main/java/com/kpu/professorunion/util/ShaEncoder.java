package com.kpu.professorunion.util;

import javax.annotation.Resource;


import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Service;

@Service("shaEncoder")
public class ShaEncoder {
	@Resource(name = "passwordEncoder")
	private ShaPasswordEncoder encoder;
	
	/* ��ȣȭ  ��й�ȣ = hash 64 ������ ��й�ȣ �Է°��� ���� ������ hash ���� return */
	public String encoding(String str) {
		return encoder.encodePassword(str, null);
	}
	
	/* ���̵� + ��й�ȣ = hash 64 ��й�ȣ �Է°��� ���̵� ���Ͽ� hash ���� return */
	public String saltEncoding(String str, String salt) {
		return encoder.encodePassword(str, salt);
	}
}
