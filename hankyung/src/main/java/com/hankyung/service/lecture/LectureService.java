package com.hankyung.service.lecture;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.lecture.LectureDTO;

public interface LectureService {
	public List<LectureDTO> cartlist(String id);
	public HashMap<String, List<LectureDTO>> homeList();
	public int countArticle(String search_option, String keyword);
	public List<LectureDTO> lectureList(String sort_option, String search_option, String keyword, int start, int end);
	public LectureDTO lectureView(int lno);
	public int price(String id);
	public void cartUpdate(int lno, String id);
	public int cartCheck(int lno, String id);
}
