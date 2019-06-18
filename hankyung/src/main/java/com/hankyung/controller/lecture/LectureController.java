package com.hankyung.controller.lecture;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hankyung.service.lecture.LectureService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
@RequestMapping("lecture/*")
public class LectureController {
	
	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart() {
		logger.info(">>>>> 메인페이지입니다");
		
		return "lecture/cart";
	}
	
	@RequestMapping(value="view", method = RequestMethod.GET)
	public String lectureView() {
		
		return "lecture/lecture_view";
	}
	
}
