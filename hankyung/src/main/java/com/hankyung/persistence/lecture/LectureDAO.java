package com.hankyung.persistence.lecture;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.domain.lecture.ScoreDTO;

public interface LectureDAO {
	public List<LectureDTO> popularList();
	public List<LectureDTO> myList(String id);
	public List<LectureDTO> newList();
	public int countArticle(String search_option, String keyword);
	public List<LectureDTO> lectureList(String sort_option, String search_option, String keyword, int start, int end);
	public LectureDTO lectureView(int lno);
	public int wishCheck(int lno, String id);
	public void wishDelete(int lno, String id);
	public void wishInsert(int lno, String id);
	public int wishTotal(int lno, String id);
	public List<HashMap<String, String>> wishList(String id);
	public int cartCheck(int lno, String id);
	public LectureDTO teacherList(String id);
	public List<ScoreDTO> scorelist();
}
