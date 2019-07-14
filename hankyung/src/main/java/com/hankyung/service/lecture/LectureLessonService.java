package com.hankyung.service.lecture;

import java.util.List;

import com.hankyung.domain.lecture.LectureLessonDTO;

public interface LectureLessonService {
	public List<LectureLessonDTO> list(int lno);
	public LectureLessonDTO read(LectureLessonDTO llDto);
	public int update(LectureLessonDTO llDto);
	public int ckCount(int lno);
}
