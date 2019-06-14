package com.hankyung.service.member;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.member.MemberDTO;

public interface MemberService {
	public void create(MemberDTO mDto);
	public boolean login(MemberDTO mDto, HttpSession session);
}
