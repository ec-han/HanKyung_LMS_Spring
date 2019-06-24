package com.hankyung.controller.main;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hankyung.domain.board.BoardDTO;
import com.hankyung.service.board.BoardService;

import lombok.extern.slf4j.Slf4j;

// 한은체 
@Controller
@Slf4j
@RequestMapping("main/*")
public class MainController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String test() {
		log.info(">>>test페이지");
		
		return "main/sample";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView notice(@RequestParam(defaultValue="new") String sort_option,
			@RequestParam(defaultValue="all") String search_option,
			@RequestParam(defaultValue="") String keyword,
			@RequestParam(defaultValue="1") int curPage, Model model,int btype) {
		log.info(">>> 게시글 목록 페이지 이동");
		
		// 레코드 갯수 계산
		/*
		 * int count = service.countArticle(search_option, keyword);
		 * 
		 * // 페이지 관련 설정 Pager pager = new Pager(count, curPage); int start =
		 * pager.getPageBegin(); int end = pager.getPageEnd();
		 * 
		 * // 페이지에 출력할 게시글 목록 List<BoardDTO> list = service.list(btype,sort_option,
		 * search_option, keyword, start, end); // Model: 데이터 보내는 것 View: 페이지 이동
		 * ModelAndView mav = new ModelAndView(); // 화면 갈 때 보내는 거 HashMap<String,
		 * Object> map = new HashMap<>(); map.put("list", list); // mapper에서 sql문 실행결과를
		 * 담은 list를 map에 넣음 map.put("count", count); // Pager에서 계산한 count (Pager클래스에
		 * 전역변수로 선언된 count는 없음. 매개변수로 메서드로 가져가서 지역변수로 계산되고 돌아옴) map.put("pager", pager);
		 * // Pager 클래스가 가지고 있는 변수들을 가지고 감 (선언된 전역변수) map.put("sort_option",
		 * sort_option); map.put("search_option", search_option); map.put("keyword",
		 * keyword);
		 * 
		 * mav.addObject("map", map); // 데이터 전송
		 * 
		 * 
		 * model.addAttribute("boardList", list); if(btype==0) {
		 * mav.setViewName("main/notice"); // 페이지 이동경로 log.info(">>> 공지사항 페이지 이동");
		 * return mav; } else if(btype==1) { mav.setViewName("main/qna"); // 페이지 이동경로
		 * log.info(">>> QnA 페이지 이동"); return mav; } else { mav.setViewName("/"); return
		 * mav; }
		 */
		return null;
	}
	
	@RequestMapping(value = "/summernote", method = RequestMethod.GET)
	public String summernote(Model model) {
		log.info(">>> summernote 예제");

		return "main/summernote";
	}
	
	
	
}
