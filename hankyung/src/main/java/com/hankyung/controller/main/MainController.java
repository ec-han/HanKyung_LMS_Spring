package com.hankyung.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

// 한은체 
@Controller
@Slf4j
@RequestMapping("main/*")
public class MainController {
	
	@RequestMapping(value = "/old", method = RequestMethod.GET)
	public String home() {
		log.info(">>>이전 샘플 페이지");
		
		return "main/old_sample";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String test() {
		log.info(">>>test페이지");
		
		return "main/real_new_sample";
	}
	
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice() {
		log.info(">>> 관리자 공지사항 페이지 이동");
		
		return "main/notice";
	}
	
	
	
	
}
