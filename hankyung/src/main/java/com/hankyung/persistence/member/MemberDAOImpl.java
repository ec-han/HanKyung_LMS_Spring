package com.hankyung.persistence.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.hankyung.domain.member.CnslnDTO;
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
	public int pw_update(MemberDTO mDto) {
		return sqlSession.update("member.pw_update", mDto);
	}

	@Override
	public MemberDTO info(String id) {
		return sqlSession.selectOne("member.info", id);
	}

	@Override
	public void update(MemberDTO mDto) {
		sqlSession.update("member.update", mDto);
	}

	@Override
	public void delete(String id) {
		sqlSession.delete("member.delete", id);
		
	}

	@Override
	public int pw_check(MemberDTO mDto) {
		return sqlSession.selectOne("member.pw_check", mDto);
	}

	@Override
	public List<MemberDTO> list(String type) {
		return sqlSession.selectList("member.stu_list", type);
	}

	@Override
	public void admin_update(MemberDTO mDto) {
		sqlSession.update("member.admin_update", mDto);
	}

	@Override
	public int create_check(MemberDTO mDto) {
		return sqlSession.selectOne("member.create_check", mDto);
	}

	@Override
	public List<CnslnDTO> cnslnlist() {
		return sqlSession.selectList("member.cnslnlist");
	}

	@Override
	public CnslnDTO cnslnone(String id) {
		return sqlSession.selectOne("member.cnslnone", id);
	}

}
