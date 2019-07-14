package com.hankyung.controller.lecture;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hankyung.domain.lecture.LectureAttendDTO;
import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.domain.lecture.LectureLessonDTO;
import com.hankyung.service.lecture.LectureBoardService;
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
	public void lessonPlay(LectureLessonDTO llDto, String attend_ck, HttpSession session) {
		// llDto에 있는 class_no와 lno값, session의 id와, 쿼리스트링으로 보낸 attend_ck를 보내줌. 
		String id = (String)session.getAttribute("id");
			
		int result = service.update(llDto, attend_ck, id);
		if(result > 0) {
			log.info("출석체크 업데이트 완료");
			
		} else {
			log.info("출석체크 업데이트 실패");
		}
		log.info("attend_ck: "+attend_ck);
	}
}
