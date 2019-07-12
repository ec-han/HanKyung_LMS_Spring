package com.hankyung.persistence.lecture;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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

}
