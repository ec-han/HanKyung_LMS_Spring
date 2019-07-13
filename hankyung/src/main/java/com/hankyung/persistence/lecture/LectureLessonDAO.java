package com.hankyung.persistence.lecture;

import java.util.List;

import com.hankyung.domain.lecture.LectureLessonDTO;

public interface LectureLessonDAO {
	public List<LectureLessonDTO> list(int lno);
	public LectureLessonDTO read(LectureLessonDTO llDto);
	public int update(LectureLessonDTO llDto);
}
