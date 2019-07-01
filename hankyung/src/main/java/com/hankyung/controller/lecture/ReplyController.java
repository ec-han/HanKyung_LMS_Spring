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
	
//	@ResponseBody // 이렇게 하면 동작 멈춰버림. AJax지만 이 경우에만 @RequestBody안붙임. data로 인식해버림. 
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String listAll(Model model, LectureBoardDTO lbDto) {
		log.info(">>>>>> 댓글 목록 출력");
		int bno = lbDto.getBno();
		List<ReplyDTO> list = service.list(bno);
		model.addAttribute("replyList",list);
		log.info(list.toString());
		return "lectureboard/commentlist";
	}

//	댓글 등록 및 삭제 시 댓글갯수 증감이 같이 이뤄져야하지만 그건 service에서 하나의 비즈니스 로직으로 이뤄져야 함 
	@ResponseBody 
	@RequestMapping(value="create", method=RequestMethod.POST)
	public void create(ReplyDTO rDto, HttpSession session) { // 댓글 등록
		log.info(">>>>>> 댓글 등록");
		log.info("@@@@@"+rDto.toString());
//		session을 사용하는 방법: 이 방법으로 하면  화면단의 <input type="hidden" name="writer" value="${sessionScope.userid}">로 받아올 필요 없음 
//		String writer = (String)session.getAttribute("userid");
//		rDto.setWriter(writer);
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
