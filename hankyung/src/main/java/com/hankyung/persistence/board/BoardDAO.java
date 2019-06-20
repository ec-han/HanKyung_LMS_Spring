package com.hankyung.persistence.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.board.BoardDTO;

public interface BoardDAO {
	public List<BoardDTO> list(int btype);
	public int create(BoardDTO bDto);
	public BoardDTO read(BoardDTO bDto);
	public void increaseViewCnt(BoardDTO bDto);
	public int delete(BoardDTO bDto);
}
