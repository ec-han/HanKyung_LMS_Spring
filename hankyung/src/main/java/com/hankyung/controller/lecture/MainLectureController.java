package com.hankyung.controller.lecture;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.service.lecture.MainLectureService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("mainlecture/*")
public class MainLectureController {
	
	@Inject
	private MainLectureService service;
	
	@GetMapping("/list")
	public String LectureList(Model model) {
		log.info(">>>>> 강좌목록 리스트 출력");
		List<LectureDTO> list = service.LectureList();
		model.addAttribute("list", list);
		return "/main/admin_lecture_list";
	}
	
	@GetMapping("/insert")
	public String LectureInsert(Model model) {
		log.info(">>>>> 강좌목록 추가 페이지 출력");
		return "/main/admin_lecture_insert";
	}
}
