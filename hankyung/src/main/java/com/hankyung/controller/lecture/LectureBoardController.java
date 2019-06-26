package com.hankyung.controller.lecture;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hankyung.service.lecture.LectureBoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("lectureboard/*")
public class LectureBoardController {
	@Inject
	private LectureBoardService service;

}
