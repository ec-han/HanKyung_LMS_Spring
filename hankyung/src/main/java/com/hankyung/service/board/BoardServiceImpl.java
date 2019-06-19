package com.hankyung.service.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hankyung.domain.board.BoardDTO;
import com.hankyung.persistence.board.BoardDAO;
import com.hankyung.persistence.lecture.LectureDAOImpl;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO bDao;
	
	@Override
	public List<BoardDTO> list(int btype) {
		return bDao.list(btype);	
	}

	@Override
	public int create(BoardDTO bDto) {
		return bDao.create(bDto);
	}

	@Override
	public BoardDTO read(BoardDTO bDto) {
		return bDao.read(bDto);
	}
	
}
