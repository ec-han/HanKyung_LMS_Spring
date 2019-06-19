package com.hankyung.controller.board;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hankyung.domain.board.BoardDTO;
import com.hankyung.service.board.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("board/*")
public class BoardController {
	@Inject
	private BoardService service;
	
	@RequestMapping(value ="create", method = RequestMethod.GET)
	public String createView() {
		log.info(">>> 게시글 등록 페이지 출력");
		
		return "/main/regi";
	}
	
	@RequestMapping(value="create", method=RequestMethod.POST)
	public String createPlay(BoardDTO bDto, String btype) {
		log.info(">>>>>>> DB를 통한 게시글 등록 액션");
		log.info(bDto.toString());
		bDto.setBtype(btype);
		int result = service.create(bDto);	
		if(result>0) {
			if(btype.equals("0")) {
				log.info(">>>> 공지사항 게시글 등록 성공");
				return "redirect:/main/notice"; 
			}else if(btype.equals("1")){
				log.info(">>>> QnA 게시글 등록 성공");
				return "redirect:/main/qna"; 
			}
		} else {
			log.info(">>>>게시글 등록 실패");
			if(btype.equals("0")) {
				return "/main/notice";
			}else if(btype.equals("1")){
				return "/main/qna"; 
			}
		}
		return "/main/"; //if문 안탈경우의 처리가 필요함 
	}
}