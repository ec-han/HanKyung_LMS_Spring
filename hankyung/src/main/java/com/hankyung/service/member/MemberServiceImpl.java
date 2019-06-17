package com.hankyung.service.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.hankyung.domain.member.MemberDTO;
import com.hankyung.persistence.member.MemberDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO mDao;
	
	@Override
	public void create(MemberDTO mDto) {
		mDao.create(mDto);
	}

	@Override
	public boolean login(MemberDTO mDto, HttpSession session) {
		mDto = mDao.login(mDto);
		boolean result = false;
		if(mDto != null) {
			session.removeAttribute("id");
			session.removeAttribute("name");
			session.setAttribute("id", mDto.getId());
			session.setAttribute("name", mDto.getName());
			result = true;
			log.info("session : "+session.getAttribute("name"));
		}
		
		return result;
	}

	@Override
	public int loss_info(MemberDTO mDto) {
		return mDao.loss_info(mDto);
	}

	@Override
	public String loss_id(MemberDTO mDto, HttpSession session) {
		mDto.setId(mDao.loss_id(mDto));
		session.setAttribute("id", mDto.getId());
		return mDao.loss_id(mDto);
	}

	@Override
	public int loss_pw(MemberDTO mDto, HttpSession session) {
		return mDao.loss_pw(mDto);
	}

	@Override
	public int loss_update(MemberDTO mDto) {
		return mDao.loss_update(mDto);
	}

}
