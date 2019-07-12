package com.hankyung.service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.member.CnslnDTO;
import com.hankyung.domain.member.MemberDTO;

public interface MemberService {
	public void create(MemberDTO mDto);
	public void create_cnsln(MemberDTO mDto);
	public boolean login(MemberDTO mDto, HttpSession session);
	public int loss_info(MemberDTO mDto);
	public String loss_id(MemberDTO mDto, HttpSession session);
	public int loss_pw(MemberDTO mDto, HttpSession session);
	public int pw_update(MemberDTO mDto);
	public void logout(HttpSession session);
	public MemberDTO info(String id);
	public void update(MemberDTO mDto);
	public void delete(String id);
	public int pw_check(MemberDTO mDto);	
	public List<MemberDTO> list(String type);
	public void admin_update(MemberDTO mDto);
	public int create_check(MemberDTO mDto);
	public List<CnslnDTO> cnslnlist();
	public CnslnDTO cnslnone(String id);
	
}
