package com.hankyung.controller.lecture;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hankyung.domain.lecture.LectureBoardDTO;
import com.hankyung.service.Pager;
import com.hankyung.service.lecture.LectureBoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("lectureboard/*")
public class LectureBoardController {
	@Inject
	private LectureBoardService service;
//  @RequestMapping(value="list", method=RequestMethod.GET) 와 같음	
	@GetMapping(value="list")
	public ModelAndView list(@RequestParam(defaultValue="all") String viewoption,
			@RequestParam(defaultValue="all") String search_option,
			@RequestParam(defaultValue="") String keyword,
			@RequestParam(defaultValue="1") int curPage) {
		
		log.info(">>> 게시판 이동");
		
		// 레코드 갯수 계산
		int count = service.countArticle(viewoption, search_option, keyword);

		// 페이지 관련 설정
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		// 페이지에 출력할 게시글 목록 
		List<LectureBoardDTO> list = service.list(viewoption, search_option, keyword, start, end);
		ModelAndView mav = new ModelAndView(); // 화면 갈 때 보내는 거 
		HashMap<String, Object> map = new HashMap<>();
		map.put("list", list);	
		map.put("count", count);
		map.put("pager", pager); 
		map.put("viewoption", viewoption); 
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		mav.addObject("map", map);
		
		mav.setViewName("lectureboard/board");	
		
		return mav;
	}
	
	@RequestMapping(value ="create", method = RequestMethod.GET)
	public String createView() {
		log.info(">>> 게시글 등록 페이지 출력");
		return "/lectureboard/regi";
	}
	
	@RequestMapping(value="create", method=RequestMethod.POST)
	public String createPlay(LectureBoardDTO lbDto, String viewoption) {
		log.info(">>>>>>> DB를 통한 게시글 등록 액션");
		lbDto.setBtype(viewoption);
		
		int result = service.create(lbDto);	
		log.info(lbDto.toString());
		
		if(result>0) {
			if(viewoption.equals("0")) { // 공지사항 
				log.info(">>>> 공지사항 게시글 등록 성공");
				return "redirect:/lectureboard/read?bno="+lbDto.getBno()+"&btype="+lbDto.getBtype()+"&code=1";   
			}else if(viewoption.equals("1")){ // 묻고답하기
				log.info(">>>> 묻고답하기 게시글 등록 성공");
				return "redirect:/lectureboard/read?bno="+lbDto.getBno()+"&btype="+lbDto.getBtype()+"&code=1";     
			}else if(viewoption.equals("2")) { // 일반게시글
				log.info(">>>> 일반게시글 게시글 등록 성공");
				return "redirect:/lectureboard/read?bno="+lbDto.getBno()+"&btype="+lbDto.getBtype()+"&code=1";    
			}
		} else {
			log.info(">>>>게시글 등록 실패");
			return "/lectureboard/list?viewoption="+viewoption;  
		}
		return "/main/"; //if문 안탈경우의 처리가 필요함 
	}
	// 게시글 등록할때 데이터를 하나 보내줘서 들어오면은 조회수 증가가 안되게 처리. param으로 디폴트값 주고 
	// 게시글 1건(상세게시글) 출력 // bno받고 상세게시글 출력이라고 log찍기 
	@RequestMapping(value="read", method=RequestMethod.GET)
	public String view(LectureBoardDTO lbDto, Model model,HttpSession session,@RequestParam(defaultValue="0") int code) {
		log.info(">>>>>>> 상세 게시글 출력");
		// 조회수 증가 처리 
		int bno = lbDto.getBno();
		log.info("@@@@@@ "+bno+","+code);
		
		if(code==0) {
			log.info(">>>>>>> 조회수 증가 처리");
			service.increaseViewCnt(lbDto, session);
		} 
		
		lbDto = service.read(lbDto);
		model.addAttribute("one",lbDto);
		
		return "lectureboard/view";
	}
}
