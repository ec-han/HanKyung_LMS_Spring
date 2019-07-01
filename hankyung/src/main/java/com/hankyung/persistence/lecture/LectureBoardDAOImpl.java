package com.hankyung.persistence.lecture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.hankyung.domain.lecture.LectureBoardDTO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class LectureBoardDAOImpl implements LectureBoardDAO {
	@Inject
	private SqlSession session;
	@Override
	public List<LectureBoardDTO> list(String viewoption, String search_option, String keyword, int start,
			int end) {
		Map<String, Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("viewoption", viewoption);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		
		return session.selectList("lectureboard.list", map);
	}

	@Override
	public int create(LectureBoardDTO lbDto) {
		return session.insert("lectureboard.create",lbDto);
	}

	@Override
	public int update(LectureBoardDTO lbDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void increaseViewCnt(LectureBoardDTO lbDto) {
		session.update("lectureboard.increaseViewCnt", lbDto);
	}

	@Override
	public int delete(LectureBoardDTO lbDto) {
		return session.delete("lectureboard.delete",lbDto);
	}

	@Override
	public int countArticle(String viewoption, String search_option, String keyword) {
		Map<String, Object> map = new HashMap<>();
		map.put("viewoption", viewoption);
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		log.info(">>> keyword : "+keyword);
		
		return session.selectOne("lectureboard.countArticle", map);
	}

	@Override
	public LectureBoardDTO read(LectureBoardDTO lbDto) {
		return session.selectOne("lectureboard.read", lbDto);
	}

}
