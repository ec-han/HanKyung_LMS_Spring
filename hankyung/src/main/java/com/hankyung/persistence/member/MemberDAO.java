package com.hankyung.persistence.member;

import com.hankyung.domain.member.MemberDTO;

public interface MemberDAO {
	public void create(MemberDTO mDto);
	public MemberDTO login(MemberDTO mDto);
	public void losspw(MemberDTO mDto);
}
