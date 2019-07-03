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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hankyung.domain.cart.CartDTO;
import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.service.Pager;
import com.hankyung.service.lecture.LectureService;
import com.mysql.cj.Session;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
@RequestMapping("lecture/*")
public class LectureController {
	
	
	@Inject
	private LectureService service;
	
	@RequestMapping(value="list", method = RequestMethod.GET)
	public ModelAndView list(Model model,
			@RequestParam(defaultValue="new") String sort_option,
			@RequestParam(defaultValue="all") String search_option,
			@RequestParam(defaultValue="") String keyword,
			@RequestParam(defaultValue="1") int curPage,
			HttpSession session
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
	public String lectureView(int lno, Model model, HttpSession session) {
		log.info(">>>>> 과정 상세정보 페이지 출력");
		LectureDTO lDto = service.lectureView(lno);
		if (session.getAttribute("id") != null) {
			String id = (String)session.getAttribute("id");
			int result = service.cartCheck(lno, id);
			model.addAttribute("result", result);
		}
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
	
	@RequestMapping(value="wishView", method=RequestMethod.GET)
	public String wishView() {
		log.info(">>>>> 위시리스트 페이지 출력");
		return "lecture/wish";
	}
	
	@RequestMapping(value="wishList", method=RequestMethod.GET)
	public String wishList(HttpSession session, Model model) {
		log.info(">>>>> 위시리스트 목록 출력");
		String id = (String)session.getAttribute("id");
		List<HashMap<String, String>> list = service.wishList(id);
		model.addAttribute("lDto", list);
		return "lecture/wish_list";
	}
	
	@ResponseBody
	@PostMapping(value="/wishDelete")
	public void wishDelete(int lno, HttpSession session) {
		log.info(">>>>> 위시리스트 삭제");
		String id = (String)session.getAttribute("id");
		service.wishDelete(lno, id);
	}
	
	@ResponseBody
	@GetMapping(value="/cartAdd")
	public int cartAdd(int lno, HttpSession session) {
		log.info(">>>>> 장바구니에 강좌 추가");
		String id = (String)session.getAttribute("id");
		int flag = service.cartAdd(lno, id, session);
		return flag;
	}
	
	@GetMapping(value="/cartView")
	public String cartView(HttpSession session) {
		log.info(">>>>> 장바구니 페이지 출력");
		return "lecture/cart";
	}
	
	@GetMapping(value="/cartList")
	public String cartList(HttpSession session) {
		log.info(">>>>> 장바구니리스트 목록 출력");
		return "lecture/cart_list";
	}
	
	@PostMapping(value="/cartDelete")
	public String cartDelete(int index, HttpSession session) {
		log.info(">>>>> 장바구니 삭제");
		service.cartDelete(index, session);
		return "lecture/cart";
	}
}
