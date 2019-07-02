package com.hankyung.controller.lecture;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hankyung.controller.lecture.ReplyController;
import com.hankyung.domain.lecture.LectureBoardDTO;
import com.hankyung.domain.lecture.ReplyDTO;
import com.hankyung.service.lecture.ReplyService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("reply/*")
@Controller
public class ReplyController {
	@Inject
	private ReplyService service;
	
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String listAll(Model model, LectureBoardDTO lbDto) {
		log.info(">>>>>> 댓글 목록 출력");
		int bno = lbDto.getBno();
		List<ReplyDTO> list = service.list(bno);
		model.addAttribute("replyList",list);
		log.info(list.toString());
		return "lectureboard/commentlist";
	}

	@ResponseBody 
	@RequestMapping(value="create", method=RequestMethod.POST)
	public void create(ReplyDTO rDto, HttpSession session) { // 댓글 등록
		log.info(">>>>>> 댓글 등록");
		log.info("@@@@@"+rDto.toString());
		service.create(rDto);
	}
	@ResponseBody 
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public void delete(ReplyDTO rDto) { // 댓글 삭제 
		log.info(">>>>>> 댓글 삭제");
		log.info("@@@@@"+rDto.toString());
		service.delete(rDto);
	}
	
}
