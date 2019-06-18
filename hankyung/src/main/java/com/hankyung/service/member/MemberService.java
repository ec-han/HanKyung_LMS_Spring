package com.hankyung.service.member;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.member.MemberDTO;

public interface MemberService {
	public void create(MemberDTO mDto);
	public boolean login(MemberDTO mDto, HttpSession session);
	public int loss_info(MemberDTO mDto);
	public String loss_id(MemberDTO mDto, HttpSession session);
	public int loss_pw(MemberDTO mDto, HttpSession session);
	public int loss_update(MemberDTO mDto);
	public void logout(HttpSession session);
}
