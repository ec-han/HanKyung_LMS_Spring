package com.hankyung.controller.lecture;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.service.Pager;
import com.hankyung.service.lecture.LectureService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
@RequestMapping("lecture/*")
public class LectureController {
	
	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@Inject
	private LectureService service;
	
	@RequestMapping(value="list", method = RequestMethod.GET)
	public ModelAndView list(Model model,
			@RequestParam(defaultValue="new") String sort_option,
			@RequestParam(defaultValue="all") String search_option,
			@RequestParam(defaultValue="") String keyword,
			@RequestParam(defaultValue="1") int curPage
			) {
		log.info(">>>>> 과정 및 강좌 목록 페이지 출력");
		// 레코드 갯수 계산
		int count = service.countArticle(search_option, keyword);
		//페이지 관련 설정
		int pageScale = 9;
		Pager pager = new Pager(count, curPage, pageScale); 
		log.info(">>> pageScale : "+pager.getPageScale());
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
				
		List<LectureDTO> list = service.lectureList(sort_option, search_option, keyword, start, end);
		log.info(">> search_option : "+search_option+", keyword : "+keyword+", sort_option : "+sort_option+", count : "+count);
		
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		map.put("sort_option", sort_option);
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		
		mav.setViewName("lecture/lecture_list");
		mav.addObject("map", map);
		return mav;
	}
	
	@RequestMapping(value="view", method = RequestMethod.GET)
	public String lectureView(int lno, Model model) {
		log.info(">>>>> 과정 상세정보 페이지 출력");
		LectureDTO lDto = service.lectureView(lno);
		model.addAttribute("lDto", lDto);
		return "lecture/lecture_view";
	}
	
	
	@ResponseBody
	@RequestMapping(value="wishCheck", method = RequestMethod.POST)
	public int wishCheck(int lno, String id) {
		log.info(">>>>> 위시리스트 눌렀는지 체크");
		int wishCheck = service.wishCheck(lno, id);
		return wishCheck;
	}
	
	@ResponseBody
	@RequestMapping(value="wishUpdate", method = RequestMethod.POST)
	public void wishUpdate(int lno, String id) {
		log.info(">>>>> 위시리스트 체크 후 추가, 삭제");
		service.wishUpdate(lno, id);
	}
	
	@ResponseBody
	@RequestMapping(value="wishTotal", method=RequestMethod.POST)
	public int wishTotal(int lno, String id) {
		log.info(">>>>> 위시리스트 총 개수");
		service.wishTotal(lno, id);
		return 0;
	}
	
	@RequestMapping(value="wishlist", method=RequestMethod.GET)
	public String wishlist(HttpSession session, Model model) {
		log.info(">>>>> 위시리스트 페이지 출력");
		String id = (String)session.getAttribute("id");
		List<LectureDTO> list = service.wishView(id);
		model.addAttribute("lDto", list);
		for (LectureDTO lectureDTO : list) {
			log.info("list : "+lectureDTO.toString());
		}
		return "lecture/wishlist";
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/cartAdd", method = RequestMethod.POST) public void
	 * cartAdd(int lno, HttpSession session, Model model) {
	 * log.info(">>>>> 장바구니에 강좌 추가"); String id =
	 * (String)session.getAttribute("id"); log.info(">>>>> lno = "+ lno);
	 * service.cartAdd(lno, id, session); }
	 */
	
	/*
	 * @RequestMapping(value = "/cart", method = RequestMethod.GET) public String
	 * cartView() { log.info(">>>>> 장바구니 페이지 출력"); return "lecture/cart"; }
	 */
}
