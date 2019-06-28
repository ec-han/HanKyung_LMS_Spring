package com.hankyung.service.lecture;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.persistence.lecture.LectureDAO;

import lombok.extern.slf4j.Slf4j;


@Service
@Slf4j
public class LectureServiceImpl implements LectureService{
	
	@Inject
	private LectureDAO lDao;

	@Override
	public HashMap<String, List<LectureDTO>> homeList() {
		List<LectureDTO> pList = lDao.popularList();
		List<LectureDTO> nList = lDao.newList();
		
		HashMap<String, List<LectureDTO>> map = new HashMap<>();
		map.put("pList", pList);
		map.put("nList", nList);

		return map;
	}

	@Override
	public int countArticle(String search_option, String keyword) {
		return lDao.countArticle(search_option, keyword);
	}
	
	@Override
	public List<LectureDTO> lectureList(String sort_option, String search_option, String keyword, int start, int end) {
		return lDao.lectureList(sort_option, search_option, keyword, start, end);
	}

	@Override
	public LectureDTO lectureView(int lno) {
		return lDao.lectureView(lno);
	}

	@Override
	public int wishCheck(int lno, String id) {
		return lDao.wishCheck(lno, id);
	}
	
	@Override
	public void wishUpdate(int lno, String id) {
		int result = lDao.wishCheck(lno, id);
		if (result > 0) {
			lDao.wishDelete(lno, id);
		} else {
			lDao.wishInsert(lno, id);
		}
	}

	@Override
	public int wishTotal(int lno, String id) {
		lDao.wishTotal(lno, id);
		return 0;
	}

	@Override
	public List<LectureDTO> wishView(String id) {
		return lDao.wishView(id);
	}

	@Override
	public void cartAdd(int lno, String id, HttpSession session) {
		LectureDTO lDto = lDao.lectureView(lno);
		log.info("LectureDTO : "+lDto.toString());
		ArrayList<LectureDTO> list = new ArrayList<LectureDTO>();
		if (session.getAttribute("list")==null) {
			list.add(lDto);
			session.setAttribute("list", list);
			log.info("최초 장바구니 생성!");
		} else {
			list = (ArrayList)session.getAttribute("list");
			list.add(lDto);
			log.info("장바구니 추가!");
		}
		//for (LectureDTO lectureDTO : list) {
		//	log.info(">>>>"+lectureDTO.toString());
		//}
	}

	@Override
	public List<LectureDTO> cartView(String id) {
		lDao.cartView(id);
		return null;
	}
}
