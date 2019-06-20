package com.hankyung.persistence.lecture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.hankyung.domain.lecture.LectureDTO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class LectureDAOImpl implements LectureDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<LectureDTO> cartlist(String id) {
		return sqlSession.selectList("lecture.cartlist", id);
	}

	@Override
	public List<LectureDTO> popularList() {
		return sqlSession.selectList("lecture.popularList");
	}

	@Override
	public List<LectureDTO> newList() {
		return sqlSession.selectList("lecture.newList");
	}
	
	@Override
	public int countArticle(String search_option, String keyword) {
		Map<String, String> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		log.info(keyword);
		
		return sqlSession.selectOne("lecture.countArticle", map);
	}
	
	@Override
	public List<LectureDTO> lectureList(String sort_option, String search_option, String keyword, int start, int end) {
		Map<String, Object> map = new HashMap<>();
		map.put("sort_option", sort_option);
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("lecture.lectureList", map);
	}

	@Override
	public LectureDTO lectureView(int lno) {
		return sqlSession.selectOne("lecture.view", lno);
	}
}
