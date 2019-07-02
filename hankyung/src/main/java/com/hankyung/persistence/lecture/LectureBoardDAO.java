package com.hankyung.persistence.lecture;

import java.util.List;

import com.hankyung.domain.lecture.LectureBoardDTO;

public interface LectureBoardDAO {
	public List<LectureBoardDTO> list(String viewoption, String search_option, String keyword, int start, int end);
	public int create(LectureBoardDTO lbDto);
	public int update(LectureBoardDTO lbDto);
	public LectureBoardDTO read(LectureBoardDTO lbDto);
	public void increaseViewCnt(LectureBoardDTO lbDto);
	public int delete(LectureBoardDTO lbDto);
	public int countArticle(String viewoption, String search_option, String keyword);
	public void updateStep(int re_step, int ref);
	public void answer(LectureBoardDTO lbDto);
}
