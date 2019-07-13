package com.hankyung.controller.lecture;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		LectureLessonDTO one = service.read(llDto);
		log.info("학습방 상세 출력>>>> " + llDto);
		model.addAttribute("one",one);
		return "lectureboard/lessonview";
	}
	
	@ResponseBody
	@PostMapping(value="lessonview")
	public void lessonPlay(LectureLessonDTO llDto, String admit_ck) {
		int result = service.update(llDto);
		if(result > 0) {
			log.info("출석체크 업데이트 완료");
		} else {
			log.info("출석체크 업데이트 실패");
		}
		log.info("admit_ck: "+admit_ck+", DTO: "+llDto.toString());
	}
}
