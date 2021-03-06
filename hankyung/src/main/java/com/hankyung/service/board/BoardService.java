package com.hankyung.service.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.board.BoardDTO;

public interface BoardService {
	public List<BoardDTO> list(int btype, String sort_option, String search_option, String keyword, int start, int end);
	public int create(BoardDTO bDto);
	public int update(BoardDTO bDto);
	public BoardDTO read(BoardDTO bDto);
	public void increaseViewCnt(BoardDTO bDto, HttpSession session);
	public int delete(BoardDTO bDto);
	public int countArticle(int btype, String search_option, String keyword);
}
