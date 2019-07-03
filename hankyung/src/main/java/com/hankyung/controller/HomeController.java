package com.hankyung.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.service.lecture.LectureService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
@RequestMapping("/*")
public class HomeController {
	
	@Inject
	private LectureService service;
	
	// private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		log.info(">>>>> 메인페이지입니다.");
		
		HashMap<String, List<LectureDTO>> map = service.homeList();
		
		model.addAttribute("map", map);
		
		//for (LectureDTO lectureDTO : list) {
		//	log.info(lectureDTO.toString());
		//}
		
		return "home";
	}
	
	@GetMapping("/noticeView")
	public String noticeView() {
		log.info(">>>>> 공지사항 페이지 출력");
		return "/notice/home_notice";
	}
	
	@GetMapping("/qnaView")
	public String qnaView() {
		log.info(">>>>> Q&A 페이지 출력");
		return "/notice/home_qna";
	}
}
