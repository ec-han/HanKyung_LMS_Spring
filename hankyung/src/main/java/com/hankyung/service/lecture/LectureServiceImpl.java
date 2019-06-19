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
	public HashMap<String, List<LectureDTO>> lectureList() {
		List<LectureDTO> pList = lDao.popularList();
		List<LectureDTO> nList = lDao.newList();
		HashMap<String, List<LectureDTO>> map = new HashMap<>();
		map.put("pList", pList);
		map.put("nList", nList);
		
		for (LectureDTO lectureDTO : pList) {
			log.info(lectureDTO.toString());
		}
		for (LectureDTO lectureDTO : nList) {
			log.info(lectureDTO.toString());
		}
		// log.info("????" + map.get(pList.get(0)));
		return map;
	}
}
