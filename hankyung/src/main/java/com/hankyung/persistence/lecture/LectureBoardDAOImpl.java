package com.hankyung.persistence.lecture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.hankyung.domain.board.BoardDTO;
import com.hankyung.domain.lecture.LectureBoardDTO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class LectureBoardDAOImpl implements LectureBoardDAO {
	@Inject
	private SqlSession session;
	@Override
	public List<LectureBoardDTO> list(String sort_option, String search_option, String keyword, String viewoption, int btype, int start,
			int end) {
		Map<String, Object> map = new HashMap<>();
		map.put("btype", btype);
		map.put("sort_option", sort_option);
		map.put("search_option", search_option);
		map.put("viewoption", viewoption);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		
		return session.selectList("lectureboard.list", map);
	}

	@Override
	public int create(LectureBoardDTO lbDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(LectureBoardDTO lbDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardDTO read(LectureBoardDTO lbDto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void increaseViewCnt(LectureBoardDTO lbDto, HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int delete(LectureBoardDTO lbDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int countArticle(int btype, String search_option, String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}

}
