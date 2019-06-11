package com.hankyung.controller.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
@RequestMapping("member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "/constract", method = RequestMethod.GET)
	public String constract() {
		log.info("회원가입 동의 화면");
		
		return "member/constract";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create() {
		log.info("회원가입 화면");
		
		return "member/create";
	}
	
}
