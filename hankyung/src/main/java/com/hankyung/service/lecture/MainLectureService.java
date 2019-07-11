package com.hankyung.service.lecture;

import java.util.List;

import com.hankyung.domain.lecture.LectureDTO;

public interface MainLectureService {
	public List<LectureDTO> LectureList();
	public void LectureInsert();
}
