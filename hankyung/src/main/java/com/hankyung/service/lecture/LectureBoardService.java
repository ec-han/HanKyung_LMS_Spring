package com.hankyung.service.lecture;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.lecture.LectureBoardDTO;

public interface LectureBoardService {
	public List<LectureBoardDTO> list(String viewoption, String search_option, String keyword, int start, int end);
	public int create(LectureBoardDTO lbDto);
	public int update(LectureBoardDTO lbDto);
	public LectureBoardDTO read(LectureBoardDTO lbDto);
	public void increaseViewCnt(LectureBoardDTO lbDto, HttpSession session);
	public int delete(LectureBoardDTO lbDto);
	public int countArticle(String viewoption, String search_option, String keyword);
}
