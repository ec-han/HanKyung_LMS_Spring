package com.hankyung.persistence.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.hankyung.domain.member.MemberDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void create(MemberDTO mDto) {
		sqlSession.insert("member.create", mDto);
		
	}

	@Override
	public MemberDTO login(MemberDTO mDto) {
		return sqlSession.selectOne("member.login", mDto);
	}

	@Override
	public int loss_info(MemberDTO mDto) {
		return sqlSession.selectOne("member.loss_info", mDto);
	}

	@Override
	public String loss_id(MemberDTO mDto) {
		return sqlSession.selectOne("member.loss_id", mDto);
	}

	@Override
	public int loss_pw(MemberDTO mDto) {
		return sqlSession.selectOne("member.loss_pw", mDto);
	}

	@Override
	public int loss_update(MemberDTO mDto) {
		return sqlSession.update("member.loss_update", mDto);
	}
	
}
