package com.hankyung.service.lecture;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hankyung.domain.lecture.LectureDTO;

public interface LectureService {
	public List<LectureDTO> cartlist(HttpSession session);
}
