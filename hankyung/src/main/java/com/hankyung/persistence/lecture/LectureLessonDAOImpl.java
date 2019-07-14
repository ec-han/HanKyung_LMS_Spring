package com.hankyung.persistence.lecture;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hankyung.domain.lecture.LectureAttendDTO;
import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.domain.lecture.LectureLessonDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class LectureLessonDAOImpl implements LectureLessonDAO {
	@Inject
	private SqlSession session;
	
	@Override
	public List<LectureLessonDTO> list(int lno) {
		return session.selectList("lecturelesson.list",lno);
	}

	@Override
	public LectureLessonDTO read(LectureLessonDTO llDto) {
		return session.selectOne("lecturelesson.read",llDto);
	}

	@Override
	public int update(LectureLessonDTO llDto, String attend_ck, String id) {
		Map<String, Object> map = new HashMap<>();
		map.put("lno", llDto.getLno());
		map.put("class_no", llDto.getClass_no());
		map.put("attend_ck", attend_ck);
		map.put("id", id);
		log.info(llDto.toString());
		return session.update("lecturelesson.update",map);
	}

	@Override
	public int ckCount(LectureDTO lDto) {
		return session.selectOne("lecturelesson.count",lDto);
	}

	@Override
	public List<LectureAttendDTO> attend(LectureDTO lDto) {
		return session.selectList("lecturelesson.attend",lDto);
	}

}
