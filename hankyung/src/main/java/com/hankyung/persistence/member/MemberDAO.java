package com.hankyung.persistence.member;

import java.util.List;

import com.hankyung.domain.member.CnslnDTO;
import com.hankyung.domain.member.MemberDTO;

public interface MemberDAO {
	public void create(MemberDTO mDto);
	public void create_cnsln(MemberDTO mDto);
	public MemberDTO login(MemberDTO mDto);
	public int id_check(String id);
	public int loss_info(MemberDTO mDto);
	public String loss_id(MemberDTO mDto);
	public int loss_pw(MemberDTO mDto);
	public int pw_update(MemberDTO mDto);
	public MemberDTO info(String id);
	public void update(MemberDTO mDto);
	public void delete(String id);
	public int pw_check(MemberDTO mDto);
	public List<MemberDTO> list(String type);
	public void admin_update(MemberDTO mDto);
	public int create_check(MemberDTO mDto);
	public List<CnslnDTO> cnslnlist();
	public CnslnDTO cnslnone(String id);
	public void cnsln_update(CnslnDTO cDto);
}
