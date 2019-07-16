package com.hankyung.persistence.lecture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hankyung.domain.lecture.LectureBoardDTO;
import com.hankyung.domain.lecture.LectureDTO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository
public class LectureBoardDAOImpl implements LectureBoardDAO {
	@Inject
	private SqlSession session;
	@Override
	public List<LectureBoardDTO> list(String viewoption, String search_option, String sort_option, String keyword, int start,
			int end) {
		Map<String, Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("sort_option", sort_option);
		map.put("viewoption", viewoption);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		
		return session.selectList("lectureboard.list", map);
	}
	
	@Override
	public LectureDTO myLecture(int lno, String id) {
		Map<String, Object> map = new HashMap<>();
		map.put("lno", lno);
		map.put("id", id);
		return session.selectOne("lectureboard.myLecture", map);
	}

	@Override
	public int create(LectureBoardDTO lbDto) {
		log.info(lbDto.toString());
		return session.insert("lectureboard.create",lbDto);
	}

	@Override
	public int update(LectureBoardDTO lbDto) {
		return session.update("lectureboard.update",lbDto);
	}

	@Override
	public void increaseViewCnt(LectureBoardDTO lbDto) {
		session.update("lectureboard.increaseViewCnt", lbDto);
	}

	@Override
	public int delete(LectureBoardDTO lbDto) {
		return session.delete("lectureboard.delete",lbDto);
	}

	@Override
	public int countArticle(String viewoption, String search_option, String keyword) {
		Map<String, Object> map = new HashMap<>();
		map.put("viewoption", viewoption);
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		log.info(">>> keyword : "+keyword);
		
		return session.selectOne("lectureboard.countArticle", map);
	}

	@Override
	public LectureBoardDTO read(LectureBoardDTO lbDto) {
		return session.selectOne("lectureboard.read", lbDto);
	}

	@Override
	public void updateStep(int re_step, int ref) {
		Map<String, Integer> map = new HashMap<>();
		log.info("re_step: "+re_step);
		map.put("re_step", re_step);
		map.put("ref", ref);
		session.update("lectureboard.updateStep",map);
		
	}

	@Override
	public void answer(LectureBoardDTO lbDto) {
		session.insert("lectureboard.answer",lbDto);
	}

	@Override
	public List<LectureBoardDTO> noticeTitleList() {
		return session.selectList("lectureboard.noticeTitle");
	}
	
	@Override
	public List<LectureBoardDTO> questionTitle() {
		return session.selectList("lectureboard.questionTitle");
	}

	@Override
	public void addAttach(String fullName) {
		session.insert("lectureboard.addAttach", fullName);
	}

	@Override
	public List<String> getAttach(int bno) {
		return session.selectList("lectureboard.getAttach",bno);
	}

	@Override
	public List<HashMap<String, String>> attachList() {
		return session.selectList("lectureboard.attachList");
	}




	

}
