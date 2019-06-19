package com.hankyung.service.lecture;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.persistence.lecture.LectureDAO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class LectureServiceImpl implements LectureService{
	
	@Inject
	private LectureDAO lDao;
	
	@Override
	public List<LectureDTO> cartlist(HttpSession session) {
		String id = (String)session.getAttribute("id");
		return lDao.cartlist(id);
	}

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

}
