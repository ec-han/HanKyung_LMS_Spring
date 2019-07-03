package com.hankyung.service.lecture;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.cart.CartDTO;
import com.hankyung.domain.lecture.LectureDTO;

public interface LectureService {
	public HashMap<String, List<LectureDTO>> homeList();
	public List<LectureDTO> myList(HttpSession session);
	public int countArticle(String search_option, String keyword);
	public List<LectureDTO> lectureList(String sort_option, String search_option, String keyword, int start, int end);
	public LectureDTO lectureView(int lno);
	public int wishCheck(int lno, String id);
	public void wishUpdate(int lno, String id);
	public int wishTotal(int lno, String id);
	public List<HashMap<String, String>> wishList(String id);
	public void wishDelete(int lno, String id);
	public int cartAdd(int lno, String id, HttpSession session);
	public void cartDelete(int index, HttpSession session);
	public int cartCheck(int lno, String id);
	
}
