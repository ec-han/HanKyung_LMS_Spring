package com.hankyung.service.lecture;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.lecture.LectureBoardDTO;
import com.hankyung.domain.lecture.LectureDTO;

public interface LectureBoardService {
	public List<LectureBoardDTO> list(String viewoption, String search_option, String sort_option, String keyword, int start, int end);
	public LectureDTO myLecture(int lno, HttpSession session);
	public int create(LectureBoardDTO lbDto);
	public int update(LectureBoardDTO lbDto);
	public LectureBoardDTO read(LectureBoardDTO lbDto);
	public void increaseViewCnt(LectureBoardDTO lbDto, HttpSession session);
	public int delete(LectureBoardDTO lbDto);
	public int countArticle(String viewoption, String search_option, String keyword);
	public void answer(LectureBoardDTO lbDto); // 답글 등록
	public List<LectureBoardDTO> noticeTitleList();
	public List<LectureBoardDTO> questionTitle();
	public List<String> getAttach(int bno); // 첨부파일 목록
}
