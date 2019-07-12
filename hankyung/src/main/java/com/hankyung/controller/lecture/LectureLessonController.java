package com.hankyung.controller.lecture;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.domain.lecture.LectureLessonDTO;
import com.hankyung.service.lecture.LectureLessonService;

import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("lecturelesson/*")
public class LectureLessonController {
	
	@Inject
	private LectureLessonService service;
	
	@GetMapping(value="classroom")
	public String classroom(HttpSession session,Model model) {
		LectureDTO lDto = (LectureDTO)session.getAttribute("lDto");
		int lno = lDto.getLno();
		List<LectureLessonDTO> list = service.list(lno);
		model.addAttribute("list",list);
		return "lectureboard/classroom";
	}
	
	@GetMapping(value="lessonview")
	public String lessonView(Model model, LectureLessonDTO llDto) {
		//List<LectureLessonDTO> list = service.list(lno);
		//LectureLessonDTO one = service.read(lno);
		//model.addAttribute("one",one);
		return "lectureboard/lessonview";
	}
}
