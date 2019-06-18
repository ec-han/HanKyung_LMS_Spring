package com.hankyung.persistence.lecture;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.lecture.LectureDTO;

public interface LectureDAO {
	public List<LectureDTO> cartlist(String id);
}
