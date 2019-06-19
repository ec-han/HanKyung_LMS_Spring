package com.hankyung.persistence.lecture;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.lecture.LectureDTO;

public interface LectureDAO {
	public List<LectureDTO> cartlist(String id);
	public List<LectureDTO> popularList();
	public List<LectureDTO> newList();
	public int countArticle(String search_option, String keyword);
	public List<LectureDTO> lectureList(String sort_option, String search_option, String keyword, int start, int end);
}
