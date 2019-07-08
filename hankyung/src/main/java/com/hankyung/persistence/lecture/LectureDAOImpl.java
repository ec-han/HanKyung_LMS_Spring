package com.hankyung.persistence.lecture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hankyung.domain.cart.CartDTO;
import com.hankyung.domain.lecture.LectureDTO;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class LectureDAOImpl implements LectureDAO{
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<LectureDTO> popularList() {
		return sqlSession.selectList("lecture.popularList");
	}

	@Override
	public List<LectureDTO> newList() {
		return sqlSession.selectList("lecture.newList");
	}

	@Override
	public List<LectureDTO> myList(String id) {
		return sqlSession.selectList("lecture.myList", id);
	}
	
	@Override
	public int countArticle(String search_option, String keyword) {
		Map<String, String> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		log.info(">>> keyword : "+keyword);
		
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

	@Override
	public int wishCheck(int lno, String id) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("lno", lno);
		map.put("id", id);
		return sqlSession.selectOne("lecture.wishCheck", map);
	}

	@Override
	public void wishDelete(int lno, String id) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("lno", lno);
		map.put("id", id);
		sqlSession.delete("lecture.wishDelete", map);
	}

	@Override
	public void wishInsert(int lno, String id) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("lno", lno);
		map.put("id", id);
		sqlSession.insert("lecture.wishInsert", map);
	}

	@Override
	public int wishTotal(int lno, String id) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("lno", lno);
		map.put("id", id);
		return sqlSession.selectOne("lecture.wishTotal", map);
	}

	@Override
	public List<HashMap<String, String>> wishList(String id) {
		return sqlSession.selectList("lecture.wishList", id);
	}

	@Override
	public int cartCheck(int lno, String id) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("lno", lno);
		map.put("id", id);
		return sqlSession.selectOne("lecture.cartCheck", map);
	}

	@Override
	public LectureDTO teacherList(String id) {
		return sqlSession.selectOne("teacherList", id);
	}
}
