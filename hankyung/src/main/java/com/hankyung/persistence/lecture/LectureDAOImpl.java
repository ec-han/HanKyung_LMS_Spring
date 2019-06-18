package com.hankyung.persistence.lecture;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.hankyung.domain.lecture.LectureDTO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class LectureDAOImpl implements LectureDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<LectureDTO> cartlist(String id) {
		return sqlSession.selectList("lecture.cartlist", id);
	}

}
