package com.hankyung.controller.main;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hankyung.domain.board.BoardDTO;
import com.hankyung.service.board.BoardService;

import lombok.extern.slf4j.Slf4j;

// 한은체 
@Controller
@Slf4j
@RequestMapping("main/*")
public class MainController {
	
	@Inject
	private BoardService service;
	
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
	public String notice(Model model) {
		log.info(">>> 공지사항 페이지 이동");
		int btype = 0;
		List<BoardDTO> list = service.list(btype);

		model.addAttribute("boardList", list);
		return "main/notice";
	}
	
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String qna(Model model) {
		log.info(">>> 공지사항 페이지 이동");
		int btype = 1;
		List<BoardDTO> list = service.list(btype);

		model.addAttribute("boardList", list);
		return "main/qna";
	}
	
	
	
}
