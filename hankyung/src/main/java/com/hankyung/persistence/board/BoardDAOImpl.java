package com.hankyung.persistence.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.hankyung.domain.board.BoardDTO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class BoardDAOImpl  implements BoardDAO{
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<BoardDTO> list(int btype, String sort_option, String search_option, String keyword, int start,
			int end) {
		Map<String, Object> map = new HashMap<>();
		map.put("btype", btype);
		map.put("sort_option", sort_option);
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		
		return session.selectList("board.list", map);
	}

	@Override
	public int create(BoardDTO bDto) {
		return session.insert("board.create", bDto);
	}

	@Override
	public BoardDTO read(BoardDTO bDto) {
		return session.selectOne("board.read", bDto);
	}

	@Override
	public void increaseViewCnt(BoardDTO bDto) {
		session.update("board.increaseViewCnt", bDto);
	}

	@Override
	public int delete(BoardDTO bDto) {
		return session.delete("board.delete",bDto);
	}

	@Override
	public int update(BoardDTO bDto) {
		return session.update("board.update",bDto);
	}

	@Override
	public int countArticle(int btype, String search_option, String keyword) {
		Map<String, Object> map = new HashMap<>();
		map.put("btype", btype);
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		log.info(">>> keyword : "+keyword);
		
		return session.selectOne("board.countArticle", map);
	}

	


}
