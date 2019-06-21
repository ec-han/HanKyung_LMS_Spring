package com.hankyung.controller.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
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
	public String login(MemberDTO mDto, HttpSession session, Model  model) {
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
			return "redirect:/";
		}
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)	
	public String logout(HttpSession session) {
		log.info(">>>>> 로그아웃"+session);
		service.logout(session);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/loss_info", method = RequestMethod.GET)
	public String loss_info(MemberDTO mDto, HttpSession session) {
		log.info("아이디, 비밀번호 찾기 페이지");

		return"member/loss_info";
	}
	
	@ResponseBody
	@RequestMapping(value = "/loss_id", method = RequestMethod.POST)
	public HashMap<String, Object> loss_id(MemberDTO mDto, HttpSession session) {
		log.info("아이디 찾기");
		String id = service.loss_id(mDto, session);
		//아이디 찾기, 비밀번호 찾기에 대한 세션 플래그
		session.removeAttribute("flag");
		log.info(id);
		//아이디 찾기가 있을경우, 없을경우
		String flag = "-1";
		if(id != null) {
			flag = "1";
		}
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("flag", flag);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/loss_pw", method = RequestMethod.POST)
	public HashMap<String, Object> loss_pw(MemberDTO mDto, HttpSession session) {
		log.info("패스워드 찾기");
		int pw = service.loss_pw(mDto, session);
		session.removeAttribute("flag");
		session.setAttribute("flag", 1);
		log.info(""+pw);
		String flag = "-1";
		if(pw > 0) {
			flag = "1";
		}		
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", mDto.getId());
		map.put("flag", flag);
		return map;
	}
	
	@RequestMapping(value = "/find_info", method = RequestMethod.POST)
	public String find_info(MemberDTO mDto, HttpSession session, Model model) {
		log.info("정보찾기 페이지");
		
		model.addAttribute("id", mDto.getId());
		return "member/find_info";
	}
	
	@RequestMapping(value = "/pw_update", method = RequestMethod.POST)
	public String pw_update(MemberDTO mDto, HttpSession session) {
		log.info("비밀번호 변경");
		service.pw_update(mDto);

		return "redirect:/member/login";
	}
	
	@RequestMapping(value="/info", method=RequestMethod.GET)
	public String info() {
		log.info(">>>>> 학생정보조회 페이지 출력");
		return "member/student_info";
	}
	
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update_view(HttpSession session, MemberDTO mDto, Model model) {
		log.info("학생정보수정 페이지 출력");
		log.info((String)session.getAttribute("id"));
		String id = (String)session.getAttribute("id");

		mDto = service.info(id);
		
		model.addAttribute("one", mDto);
		return "member/update_info";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update_info(HttpSession session, MemberDTO mDto, Model model) {
		log.info("학생정보수정");

		service.update(mDto);
		
		return "member/update_info";
	}
	
	
	
}
