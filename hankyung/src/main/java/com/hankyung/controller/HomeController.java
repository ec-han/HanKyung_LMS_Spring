package com.hankyung.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hankyung.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
@RequestMapping("/*")
public class HomeController {
	
	@Inject
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info(">>>>> 메인페이지입니다");
		
		return "home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		logger.info(">>>>> 로그인페이지 출력");
		return "/member/login";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create() {
		logger.info(">>>>> 회원가입페이지 출력");
		return "/member/create";
	}
	
}
