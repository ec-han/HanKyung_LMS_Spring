package com.hankyung.controller.main;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hankyung.service.lecture.MainLectureService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("mainlecture/*")
public class MainLectureController {
	
	@Inject
	private MainLectureService service;
	
	@GetMapping("/list")
	public String LectureList() {
		return "/main/admin_lecture_list";
	}
}
