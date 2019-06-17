package com.hankyung.controller.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hankyung.domain.member.MemberDTO;
import com.hankyung.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
@RequestMapping("member/*")
public class MemberController {
	
	@Inject
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session) {
		log.info("로그인 페이지");
		session.removeAttribute("loginck");
		return "member/login";
	}
	
	@RequestMapping(value = "/constract", method = RequestMethod.GET)
	public String constract() {
		log.info("회원가입 동의 화면");
		
		return "member/constract";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String createView() {
		log.info("회원가입 페이지");
		
		return "member/create";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String createPlay(MemberDTO mDto) {
		log.info("회원가입");
		service.create(mDto);
		log.info("회원가입 완료");
		return "redirect:/member/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberDTO mDto, HttpSession session, Model model) {
		log.info("로그인 체크");
		session.removeAttribute("loginck");
		boolean result = service.login(mDto, session);
		if(result == false) {
			log.info("로그인 실패");
			session.setAttribute("loginck", "* 아이디 혹은 패스워드가 잘못되었습니다.");
			return "member/login";
		} else {
			log.info("로그인 성공");
			model.addAttribute("session", session);
			return "redirect:/board/main";
		}
	}
	
	@RequestMapping(value = "/loss_info", method = RequestMethod.GET)
	public String loss_info(MemberDTO mDto, HttpSession session) {
		log.info("아이디, 비밀번호 찾기 페이지");

		return"member/loss_info";
	}
	
	@ResponseBody
	@RequestMapping(value = "/loss_id", method = RequestMethod.POST)
	public String loss_id(MemberDTO mDto, HttpSession session) {
		log.info("아이디 찾기");
		String id = service.loss_id(mDto, session);
		log.info(id);
		String flag = "-1";
		if(id != null) {
			flag = "1";
		}
		log.info(flag);
		return flag;
	}
	
	@ResponseBody
	@RequestMapping(value = "/loss_pw", method = RequestMethod.POST)
	public String loss_pw(MemberDTO mDto, HttpSession session) {
		log.info("패스워드 찾기");
		int pw = service.loss_pw(mDto, session);
		log.info(""+pw);
		
		String flag = "-1";
		if(pw > 0) {
			flag = "1";
		}
		log.info(flag);
		return flag;
	}
	
	@RequestMapping(value = "/loss_update", method = RequestMethod.POST)
	public String loss_update(MemberDTO mDto) {
		log.info("비밀번호 변경");
		service.loss_update(mDto);
		
		return "redirect:/member/login";
	}
	
	
	
	
	
	
}
