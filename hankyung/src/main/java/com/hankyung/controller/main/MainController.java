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
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String notice(Model model,int btype) {
		log.info(">>> 게시글 목록 페이지 이동");
		List<BoardDTO> list = service.list(btype);

		model.addAttribute("boardList", list);
		if(btype==0) {
			log.info(">>> 공지사항 페이지 이동");
			return "main/notice";
		} else if(btype==1) {
			log.info(">>> QnA 페이지 이동");
			return "main/qna";
		} else {
			return "/";
		}
		
	}
	
	@RequestMapping(value = "/summernote", method = RequestMethod.GET)
	public String summernote(Model model) {
		log.info(">>> summernote 예제");

		return "main/summernote";
	}
	
	
	
}
