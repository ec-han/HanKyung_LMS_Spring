package com.hankyung.persistence.lecture;

import java.util.List;

import com.hankyung.domain.lecture.LectureAttendDTO;
import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.domain.lecture.LectureLessonDTO;

public interface LectureLessonDAO {
	public List<LectureLessonDTO> list(int lno);
	public LectureLessonDTO read(LectureLessonDTO llDto);
	public int update(LectureLessonDTO llDto, String attend_ck, String id);
	public int ckCount(LectureDTO lDto);
	public List<LectureAttendDTO> attend(LectureDTO lDto);
}
