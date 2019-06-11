package com.hankyung.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

// 한은체 
@Controller
@Slf4j
@RequestMapping("board/*")
public class BoardController {
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home() {
		log.info(">>>LMS 메인 화면");
		
		return "board/main";
	}
	
}
