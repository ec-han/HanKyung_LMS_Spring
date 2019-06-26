package com.hankyung.persistence.lecture;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.board.BoardDTO;
import com.hankyung.domain.lecture.LectureBoardDTO;

public interface LectureBoardDAO {
	public List<LectureBoardDTO> list(String viewoption, String search_option, String keyword, int btype, int start, int end);
	public int create(LectureBoardDTO lbDto);
	public int update(LectureBoardDTO lbDto);
	public BoardDTO read(LectureBoardDTO lbDto);
	public void increaseViewCnt(LectureBoardDTO lbDto, HttpSession session);
	public int delete(LectureBoardDTO lbDto);
	public int countArticle(int btype, String search_option, String keyword);
}
