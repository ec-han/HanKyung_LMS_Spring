package com.hankyung.controller.lecture;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value ="board", method = RequestMethod.GET)
	public String boardView() {
		log.info(">>> 게시판 페이지 출력");
		return "/lectureboard/board";
	}
	
	/*
	 * @RequestMapping(value = "boardlist", method = RequestMethod.POST) public
	 * ModelAndView boardList(@RequestParam(defaultValue="new") String sort_option,
	 * 
	 * @RequestParam(defaultValue="all") String search_option,
	 * 
	 * @RequestParam(defaultValue="") String keyword,
	 * 
	 * @RequestParam(defaultValue="1") int
	 * curPage, @RequestParam(defaultValue="all") String viewoption, int btype) {
	 * log.info(">>> 게시판 글 목록 출력");
	 * 
	 * // 레코드 갯수 계산 int count = service.countArticle(btype, search_option, keyword);
	 * 
	 * // 페이지 관련 설정 Pager pager = new Pager(count, curPage); int start =
	 * pager.getPageBegin(); int end = pager.getPageEnd();
	 * 
	 * // 페이지에 출력할 게시글 목록 List<LectureBoardDTO> list = service.list(sort_option,
	 * search_option, keyword, viewoption, btype, start, end);
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * 
	 * HashMap<String, Object> map = new HashMap<>();
	 * 
	 * map.put("list", list); // mapper에서 sql문 실행결과를 담은 list를 map에 넣음
	 * 
	 * for (LectureBoardDTO lbDTO : list) { log.info(lbDTO.toString()); }
	 * 
	 * map.put("count", count); // Pager에서 계산한 count (Pager클래스에 전역변수로 선언된 count는 없음.
	 * 매개변수로 메서드로 가져가서 지역변수로 계산되고 돌아옴) map.put("pager", pager); // Pager 클래스가 가지고 있는
	 * 변수들을 가지고 감 (선언된 전역변수) map.put("sort_option", sort_option);
	 * map.put("search_option", search_option); map.put("viewoption", viewoption);
	 * map.put("keyword", keyword);
	 * 
	 * mav.addObject("map", map); // 데이터 전송
	 * 
	 * log.info(pager.toString());
	 * 
	 * mav.setViewName("/lectureboard/board"); // 페이지 이동경로
	 * 
	 * log.info(">>> 게시판 페이지 이동");
	 * 
	 * return mav; }
	 */
}
