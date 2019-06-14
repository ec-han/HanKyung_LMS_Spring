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
	public String login() {
		log.info("로그인 화면");
		
		return "member/login";
	}
	
	@RequestMapping(value = "/constract", method = RequestMethod.GET)
	public String constract() {
		log.info("회원가입 동의 화면");
		
		return "member/constract";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String createView() {
		log.info("회원가입 화면");
		
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
		boolean result = service.login(mDto, session);
		if(result == false) {
			log.info("로그인 실패");
			return "member/login";
		} else {
			log.info("로그인 성공");
			model.addAttribute("session", session);
			return "redirect:/board/main";
		}
	}
	
	@RequestMapping(value = "/losspw", method = RequestMethod.POST)
	public String losspw(MemberDTO mDto) {
		log.info("비밀번호 찾기");
		service.losspw(mDto);
		return"";
	}
	
}
