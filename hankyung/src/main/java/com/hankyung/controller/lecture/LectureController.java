package com.hankyung.controller.lecture;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.service.lecture.LectureService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
@RequestMapping("lecture/*")
public class LectureController {
	
	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@Inject
	private LectureService service;
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(HttpSession session, Model model) {
		logger.info("강좌바구니 출력");
		
		List<LectureDTO> list = service.cartlist(session);
		
		model.addAttribute("cartList", list);
		return "lecture/cart";
	}
	
	@RequestMapping(value="view", method = RequestMethod.GET)
	public String lectureView() {
		
		return "lecture/lecture_view";
	}
	
}
