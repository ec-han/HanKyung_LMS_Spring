package com.hankyung.persistence.cart;

import java.util.ArrayList;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hankyung.domain.lecture.LectureDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class CartDAOImpl implements CartDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void create(HttpSession session) {
		ArrayList<LectureDTO> list = (ArrayList)session.getAttribute("list");
		String id = (String)session.getAttribute("id");
		HashMap<String, Object> map = new HashMap<>();
		for (LectureDTO lectureDTO : list) {
			int lno = lectureDTO.getLno();
			log.info(">>>>> lno : "+lno);
			map.put("lno", lno);
			map.put("id", id);
			sqlSession.insert("cart.create", map);
		}
	}

}
