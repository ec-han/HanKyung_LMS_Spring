package com.hankyung.controller.board;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String createPlay(BoardDTO bDto, int btype) {
		log.info(">>>>>>> DB를 통한 게시글 등록 액션");
		String sBtype = Integer.toString(btype);
		bDto.setBtype(sBtype);
		int result = service.create(bDto);	
		log.info(bDto.toString());
		if(result>0) {
			if(btype==0) { // btype.equals("0")
				log.info(">>>> 공지사항 게시글 등록 성공");
				return "redirect:/board/dbread?bno="+bDto.getBno()+"&btype="+bDto.getBtype();   
			}else if(btype==1){
				log.info(">>>> QnA 게시글 등록 성공");
				//bDto = service.read(bDto);
				//log.info(bDto.toString());
				return "redirect:/board/dbread?bno="+bDto.getBno()+"&btype="+bDto.getBtype();   
			}
		} else {
			log.info(">>>>게시글 등록 실패");
			if(btype==0) {
				return "/main/list?btype="+btype;  
			}else if(btype==1){
				return "/main/list?btype="+btype;  
			}
		}
		return "/main/"; //if문 안탈경우의 처리가 필요함 
	}
	
	@RequestMapping(value ="delete", method = RequestMethod.GET)
	public String delete(BoardDTO bDto) {
		log.info(">>> DB를 통한 게시글 삭제 액션");
		String btype = bDto.getBtype();
		int result = service.delete(bDto);
		if(result>0) {
			if(btype.equals("0")) { 
				log.info(">>>> 공지사항 게시글 삭제 성공");
				return "redirect:/main/list?btype="+btype;  
			}else if(btype.equals("1")){
				log.info(">>>> QnA 게시글 삭제 성공");
				return "redirect:/main/list?btype="+btype; 
			}
		} else {
			log.info(">>>>게시글 삭제 실패");
			if(btype.equals("0")) {
				return "/main/list?btype="+btype;  
			}else if(btype.equals("1")){
				return "/main/list?btype="+btype;  
			}
		}
		return "/main/list?btype="+btype;  
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET)
	public String update(BoardDTO bDto, Model model) {
		log.info(">>> 게시글 수정 페이지 출력");
		bDto = service.read(bDto);
		log.info(bDto.toString());
		model.addAttribute("update", bDto);
		return "/main/update";
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(BoardDTO bDto) {
		log.info(">>>> DB를 통한 게시글 수정 액션");
		String btype = bDto.getBtype();
		int result = service.update(bDto);
		log.info(bDto.toString());
		if(result>0) {
			log.info(">>>> 게시글 수정 성공");
			if(btype.equals("0")) { // 화면단에서 btype을 가져오지 않고 원래 DTO에 담긴 btype만 꺼내오면 됨.
				// 화면단에서도 input의 value로 btype을 가져오고 DTO에서도 꺼내니까 DTO에 btype이 두게 담아져서 해당 if문을 안탔었음.
				log.info(">>>> 공지사항 게시글 수정 성공");
				return "redirect:/board/dbread?bno="+bDto.getBno()+"&btype="+btype;   
			}else if(btype.equals("1")){
				log.info(">>>> QnA 게시글 수정 성공");
				return "redirect:/board/dbread?bno="+bDto.getBno()+"&btype="+btype;   
			}
		} else {
			log.info(">>>>게시글 수정 실패");
			if(btype.equals("0")) {
				return "/main/notice";  
			}else if(btype.equals("1")){
				return "/main/qna";  
			}
		}
		return "/main/"; //if문 안탈경우의 처리가 필요함 
	}
	
	// 게시글 1건(상세게시글) 출력 // bno받고 상세게시글 출력이라고 log찍기 
	@RequestMapping(value="read", method=RequestMethod.GET)
	public String view(BoardDTO bDto, Model model,HttpSession session) {
		log.info(">>>>>>> 상세 게시글 출력");
		// 조회수 증가 처리 
		int bno = bDto.getBno();
		String btype = bDto.getBtype();
		log.info("@@@@@@ "+bno+","+btype);
		service.increaseViewCnt(bDto, session);
		log.info(">>>>>>> 조회수 증가 처리");
		bDto = service.read(bDto);
		model.addAttribute("one",bDto);
		
		return "main/view";
	}
	@RequestMapping(value="dbread", method=RequestMethod.GET)
	public String viewOnly(BoardDTO bDto, Model model,HttpSession session) {// DB통한 게시글 등록 및 수정액션 후 view
		log.info(">>>>>>> 상세 게시글 출력");
		
		bDto = service.read(bDto);
		model.addAttribute("one",bDto);
		
		return "main/view";
	}
}
