package com.hankyung.service.board;

import java.util.List;

import com.hankyung.domain.board.BoardDTO;

public interface BoardService {
	public List<BoardDTO> list(int btype);
	public int create(BoardDTO bDto);
}
