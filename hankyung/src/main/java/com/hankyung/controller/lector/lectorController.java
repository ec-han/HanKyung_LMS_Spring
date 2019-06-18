package com.hankyung.controller.lector;

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


@Controller
@Slf4j
@RequestMapping("lector/*")
public class lectorController {
	
	@Inject
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(lectorController.class);
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart() {
		logger.info(">>>>> 메인페이지입니다");
		
		return "lector/cart";
	}
	
}
