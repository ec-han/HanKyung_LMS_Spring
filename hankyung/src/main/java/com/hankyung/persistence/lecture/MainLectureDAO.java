package com.hankyung.persistence.lecture;

import java.util.List;

import com.hankyung.domain.lecture.LectureDTO;

public interface MainLectureDAO {
	public List<LectureDTO> lectureList();
}
