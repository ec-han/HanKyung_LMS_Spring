package com.hankyung.persistence.lecture;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hankyung.domain.lecture.LectureDTO;

@Repository
public class MainLectureDAOImpl implements MainLectureDAO {
	
	@Inject
	SqlSession sqlSession;

	@Override
	public List<LectureDTO> lectureList() {
		return sqlSession.selectList("lecture.mainLectureList");
	}

	
}
